## 'PCL' Basic Docs

PCL is my Intermediate Language used for implementing my lower level systems language and also for C.

Here, the 'Host' is the front end compiler that writes PCL code, and the Source Language is the one that the host compiles.

### The Execution Model

* PCL uses only the primitive fixed width static types listed below
* It implements a stack virtual machine
* The stack can notionally hold values of any type and size, including block types of arbitrary but fixed width

### Abstractions

The PCL language tries to hide details of the target machine, such as:

* Machine registers (eg. having different register sets for integers and floats)
* The platform ABI, which includes call conventions
* Any limitations such as missing or restricted intructions

However the Source Language will have an idea of the likely target, for example it's not practical to implement a 64-bit language on an 8-bit target.

PCL expects targets to be byte-addressable, have 8-bit bytes, and with machine words, registers and stack slots having power-of-two widths.

They are also expected to have a flat address space, with a fixed size of pointer for both code and data.

### Function Arguments

#### Argument Evaluation Order

Normally this is right-to-left. Since arguments are numbered via `setarg`, the backend could reorder them if it wished, but that would be fiddly. I will probably add a way for the host to interrogate the backend to determine the prefered order.

#### Passing Block Arguments

That is, passing structs by value which are a fixed size, and passing arrays by value, also a fixed size. PCL notionally passes these by value. In practice, it follows the ABI in passing some of them, internally, by reference.

But to give the illusion of pass-by-value, such blocks are first copied to a temporary location (or they will be when I get round to it).

Functions can also return blocks, internally this is via extra argument with a reference to a location in the caller. This is taken care of the other size of PCL.

#### Multiple Return Values

PCL allows these, but needs some special ops to be used, such as `kjumpretm`. Deconstructing the results is also up to the host.

### PCL 'Source Code'

There is no syntax defined for PCL, as it is expected to be generated programmatically via the supplied API. There is a textual dump format used for checking what has been generated, but it doesn't contain the full into needed to be able to read that back in. Neither is there a binary file format - usually generated PCL code is processed immediately.

Somebody could however create such a language as another front-end language.

### PCL Example
This is a small benchmark function in my HLL:
````
func bitsinbyte(int b)int=
    int c,m
    c:=0
    m:=1
    while m<256 do
        if b iand m then ++c fi
         m<<:=1
    od
    return c
end
````

And this is the PCL the compiler generates, after it has been dumped by the PCL library (! lines are comments):
````
proc bitsinbyte(i64 b)i64:
    i64 c
    i64 m
!------------------------
    load      0                         i64
    store     c                         i64

    load      1                         i64
    store     m                         i64

    jump      L3                        ---
L2: 
    load      b                         i64
    load      m                         i64
    bitand                              i64
    jumpf     L6                        i64
    load      &c                        u64
    incrto                              i64 (1)
L6: 
L5: 
    load      1                         i64
    load      &m                        u64
    shlto                               i64
L3: 
    load      m                         i64
    load      256                       i64
    jumplt    L2                        i64
L4: 
    load      c                         i64
    jumpret   L1                        i64
!------------------------
L1: 
    retfn                               i64
endproc
````
It's not pretty or elegant, but it is at least clean. However only base identifiers are shown, otherwise, `c` would be written as `bitops.bitinbyte.c` since there is no lexical scope when an entire program is dumped.

### The Types

PCL only understands the primitive types shown below.

````
    void            Type not used or not set

    u8              Unsigned integers
    u16
    u32
    u64

    i8              Signed integers
    i16
    i32
    i64

    r32             Floating point
    r64

    block           Fixed-size data block of N bytes (represents all aggregate types)

    vector          (Placeholder for machine vector types)

    ref             (Machine address (alias for u64 etc)
````

### Opcode List

````
Opcode       Stack    Inline/    Description
             I - O    Attribs

knop         0 - 0               No-op (has internal code zero)

    Load
kload        0 - 1    A t        Z' := A     <M &M L &L C S>
kiload       1 - 1    t          Z' := Z^
kiloadx      2 - 1    t d        Z' := (Y + Z*s + d)^

    Store
kstore       1 - 0    A t        A := Z      <M>
kistore      2 - 0    t          Z^ := Y
kistorex     3 - 0    t s d      Y + Z*s + d)^ := X
kiswap       2 - 0    t          swap(Y^, Z^)

    Stack
kdupl        1 - 2               (Y', Z') := Z
kdouble      1 - 2               (Y', Z') := Z (count Z twice internally)
kswapstk     2 - 2    a b        swap(stack[a], stack[b]); index 1/2/3/4 = Z/Y/X/W
kunload      1 - 0    t          Pop stack

    Auxiliary operands
kopnd        0 - 0    A2/A3 t    Define auxiliary operand
ktype        0 - 0    t          Define auxiliary type

    Bits and Bitfields
kloadbit     2 - 1    t          Z' := Y.[Z]
kloadbf      3 - 1    t          Z' := X.[Y..Z]
kstorebit    3 - 0    t          Y^.[Z] := X
kstorebf     4 - 0    t          X^.[Y..Z] := W

    Call and Return
kcallp       n - 0    &M n v     Call &M with n args, then pop n args; v = varargs 
kicallp    n+1 - 0    n v        Call Z with nargs, then pop args (a=n+1)
kretproc     0 - 0               Return from proc
kcallf       n - 1    &M t n v   Call &M, then pop args, leave retval; v = varrgs <&M>
kicallf    n+1 - 1    t n v      Call Z, then pops args, leave retval
kretfn       0 - 0    t          Return from func with Z=retval

    Unconditional branching
kjump        0 - 0    L          goto L
kijump       1 - 0               goto Z

    Conditional branching
kjumpcc      2 - n    L t c p    goto L when Y c Z; p=1: Z':=Y, otherwise pop both
kjumpt       1 - 0    L t        goto L when Z is true
kjumpf       1 - 0    L t        goto L when Z is false

    Set return values
kjumpret     1 - 0    L t        goto L, common return point; deal with any ret value on stack
kjumpretm    a - 0    L t n      goto L, common return point; deal with multiple return values

ksetcc       2 - 1    t c        Z' := Y c Z (will be 1 or 0 for true/false)

kstop        1 - 0               Stop Z

    Looping
kto          0 - 0    L t        --M2 (aux); goto L when M2 <> 0 
kforup       0 - 0    L t n      M2 := n; goto L when M2 <= A3
kfordown     0 - 0    L t n      M2 -:= n; goto L when M2 >= A3

    Switch
kswitch      1 - 0    L x y      L=jumptab; B=elselab; x/y=min/max values
kswitchu     1 - 0    L x y      Implemented using computed-goto
kswlabel     0 - 0    L          jumptable entry
kendsw       0 - 0               Mark end of switch jumptable

kclear       1 - 0    t          Clear memory at Z^ to zeros

kassem       0 - 0    x          Inline assembly instruction

    Binary operators
kadd         2 - 1    t          Z' := Y + Z
ksub         2 - 1    t          Z' := Y - Z
kmul         2 - 1    t          Z' := Y * Z
kdiv         2 - 1    t          Z' := Y / Z
kidiv        2 - 1    t          Z' := Y % Z
kirem        2 - 1    t          Z' := Y rem Z
kidivrem     2 - 2    t          Z' := divrem(Y, Z)
kbitand      2 - 1    t          Z' := Y iand Z
kbitor       2 - 1    t          Z' := Y ior Z
kbitxor      2 - 1    t          Z' := Y ixor Z
kshl         2 - 1    t          Z' := Y << Z
kshr         2 - 1    t          Z' := Y >> Z
kmin         2 - 1    t          Z' := min(Y, Z)
kmax         2 - 1    t          Z' := max(Y, Z)
kaddpx       2 - 1    t s d      Z' := Y + Z*s + d
ksubpx       2 - 1    t s d      Z' := Y - Z*s + s
ksubp        2 - 1    t s        Z' := (Y - Z)/s

    Unary operators
kneg         1 - 1    t          Z' := -Z
kabs         1 - 1    t          Z' := abs Z
kbitnot      1 - 1    t          Z' := inot Z
knot         1 - 1    t          Z' := not Z
ktoboolt     1 - 1    t          Z' := istrue Z
ktoboolf     1 - 1    t          Z' := not istrue Z
ksqr         1 - 1    t          Z' := sqr Z

    Maths operators (unary)
ksqrt        1 - 1    t          Z' := sqrt Z
ksin         1 - 1    t          Z' := sin Z
kcos         1 - 1    t          Z' := cos Z
ktan         1 - 1    t          Z' := tan Z
kasin        1 - 1    t          Z' := asin Z
kacos        1 - 1    t          Z' := acos Z
katan        1 - 1    t          Z' := atan Z
klog         1 - 1    t          Z' := log Z
klog10       1 - 1    t          Z' := log10 Z
kexp         1 - 1    t          Z' := round Z
kround       1 - 1    t          Z' := round Z
kfloor       1 - 1    t          Z' := floor Z
kceil        1 - 1    t          Z' := ceil Z
ksign        1 - 1    t          Z' := sign Z

    Maths operators (binary)
katan2       2 - 1    t          Z' := atan2(Y, Z)
kpower       2 - 1    t          Z' := Y ** Z
kfmod        2 - 1    t          Z' := fmod(Y, Z)

    Increment (in-place increment)
kincrto      1 - 0    t n        Z^ +:= n
kdecrto      1 - 0    t n        Z^ -:= n
kincrload    1 - 1    t n        Z' := (Z +:= n)^
kdecrload    1 - 1    t n        Z' := (Z -:= n)^
kloadincr    1 - 1    t n        Z' := Z++^ (difficult to express step)
kloaddecr    1 - 1    t n        Z' := Z--^

    In-place binary operators
kaddto       2 - 0    t          Z^ +:= Y
ksubto       2 - 0    t          Z^ -:= Y
kmulto       2 - 0    t          Z^ *:= Y
kdivto       2 - 0    t          Z^ /:= Y
kidivto      2 - 0    t          Z^ %:= Y
kiremto      2 - 0    t          Z^ rem:= Y
kbitandto    2 - 0    t          Z^ iand:= Y
kbitorto     2 - 0    t          Z^ ior:= Y
kbitxorto    2 - 0    t          Z^ ixor:= Y
kshlto       2 - 0    t          Z^ <<:= Y
kshrto       2 - 0    t          Z^ >>:= Y
kminto       2 - 0    t          Z^ min:= Y
kmaxto       2 - 0    t          Z^ max:= Y
kaddpxto     2 - 0    t s d      Z^ +:= Y
ksubpxto     2 - 0    t s d      Z^ -:= Y

    Inplace unary operatirs
knegto       1 - 0    t          -:= Z^
kabsto       1 - 0    t          abs:= Z^
kbitnotto    1 - 0    t          inot-:= Z^
knotto       1 - 0    t          not:= Z^
ktoboolto    1 - 0    t          istrue:= Z^

    Type conversions
ktypepun     1 - 1    t u        Z' := t(u@(Z^))
kfloat       1 - 1    t u        Z' := cast(Z,t) Int   to real t
kfix         1 - 1    t u        Z' := cast(Z,t) Real   to int t
ktruncate    1 - 1    t u        Z' := cast(Z,u) Mask to width of u, but type is widened to t
kwiden       1 - 1    t u        Z' := cast(Z,t) Mask to width of u, but type is widened to t
kfwiden      1 - 1    t u        Z' := cast(Z,t) r32 to r64
kfnarrow     1 - 1    t u        Z' := cast(Z,t) r64 to r32

    Handle multple paths that yield one result
kstartmx     0 - 0    x          -
kresetmx     0 - 0    x          -
kendmx       0 - 0    x          -

    Define functions
kdefproc     0 - 0    M          ?
ktcproc      0 - 0    M          ?
kendproc     0 - 0               ?

    Define static variables
kistatic     0 - 0    M t        Define idata label (must be followed by correct db etc ops)
kzstatic     0 - 0    M t        Define zdata label and reserve sufficient space

    Data initialisation
kdata        0 - 0    A t        Constant data. For block types, there can be multiple C values

    Labels
klabel       0 - 0               ?
klabeldef    0 - 0               ?

ksetjmp      1 - 0               For C
klongjmp     1 - 1               For C

    Call-hinting
ksetcall     0 - 0    n          ?
ksetarg      0 - 0    n          ?
    
    Misc
kloadall     0 - 0               ?
keval        1 - 0               Evaluate Z [load to an actual register], then pop
kcomment     0 - 0    S          Comment S (a string)
kendprog     0 - 0               End-of-program marker.
````

#### Key

`Z` is the top of stack; elements below are `Y`, `X` and `W`. It notionally grows left to right. `t u` are types (most have one type; conversion ops usually have two).

### Number of Opcodes

There are about 150, which is quite a lot. Probably half could be dispensed with as their functionality can usually be achieved by sequences of the remaining instructions.

Ultimately, halving the opcode count would not dramatically simplify the PCL implementation, but it would the host compiler's job harder.

### Hint Instructions

**setcall, setarg**

Used to mark function calls. These make it easier to generate code for 64-bit ABIs which require stack alignment. On displays of PCL code, these are usually suppressed to reduce their clutter.

They could have been eliminated, but it would have made PCL implementation harder as strict tracking of stack usage would be needed plus backtracking to find where in the PCL code it starts to evaluate each argument.

This method is a little impure but is also much simpler, with only a few extra lines needed in the host.

**startmx, resetmx, endmx**

These are needed when there are multiple paths that can be taken to produce a single-value result. (A simple example is the `a ? b : c` operator in C; my language has more examples.)

They are needed to reset the operand stack, since the compiler does a linear pass and needs to scan all branches. And also to ensure the various results end up in the same register at the end.

(I think this is connected with 'phi' functions in SSA code.)

**Note** For a pure stack implementation (PCL is interpreted, or translated to stack-based native code), the `*mx`hints are not needed: the value will end up on top of the stack whatever happens!

### The API

See files like pcl.q or pcl.h.

* **pcl_** functions are the higher level ones to control the whole process, such as `pcl_writeexe`.
* **pc_** functions create individual PCL instructions or symbol table entries (with a couple of exceptions)
* **gen** functionn create operands

The `pcl` type is a reference to one PCL instruction. There is no special data type to represent an operand, so `gen*` functions return a `pcl` reference but with a missing opcode.  It usually works like this:
````
  pc_gen(kload, genint(123))
  pc_gen(kstop)
````
`genint(123` returns an empty pcl instruction; if such an instruction is the second operand to `pc_gen`, it will use that and fill in the given opcode.

Otherwise, as in `pc_gen(kstop)`, it will create a new pcl instruction.

For an overview of the process, see `qdemo.q` (also `cdemo.c`, but C's lack of optional arguments makes that example less clean).

### pcl_* Functions
````
pcl_start([name],[N])   Start a new PCL program
pcl_end                 End the program (inserts kendprog)

pcl_writepcl(F)         Dump PCL as text to a file, or omit F to return a string
pcl_writepst(F)         (To be revised) Dump PCL symbol table to file /handle/ F,
                        or omit F to write to console

pcl_runpcl              Interpret the PCL program. The return value is the program
                        stop-code

pcl_genmcl              Convert to 'MCL', an internal native code reprentation

pcl_genss               Convert MCL to 'SS', which is actual binary code

pcl_writeasm(F)         Dump MCL as either AA-format ASM or NASM-format (only
                        one will have been configured)

pcl_writeobj(F)         Write SS code as an OS-format object code file

pcl_writedll(F)         Write SS code as an OS-format shared library file

pcl_writeexe(F)         Write SS code as an OS-format binary executable

pcl_writemx(F)          Convert SS to 'MCU' and write in my private MX binary format

pcl_exec                Convert SS to 'MCU', fix that up as 'MCX', and execute it

pcl_setflags(           Optional args, uses named args to set relevant flags
    highmem=-1,         Set to 1 for RIP address mode in low-mem, or 2 to enable
                        high-loading code. (Set automatically for DLL/OBJ targets)
    verbose=-1,         Set to 1 for some extra info
    shortnmes=-1,       Set to 1 for short names on PCL/MCL dumps
    hostcmdskip=-1      Set to N to set number of command params to skip,
                        when using -runp/-run on the command line. Rest are passed
                        to target program
)
````

**Notes**

* While there can be multiple steps to get to EXE, for example PCL -> MCL -> SS -> EXE, only one function needs to be called. It will ensure any previous steps have been done.
* This was developed on Windows hence names like 'exe dll obj' in the function names. But if this ever works on Linux for example, then they will perform the equivalent task. The filename used will be whatever has been passed.

### The PCL Interpreter

This has some compromises, especially executing code compiled from C:

* Most arithmetic, compare and logic operations are done at 64 bits, even if the instruction says different. This is to limit the number of possibilities, but it means some C code that would overflow 32 bits, may behave differently
* (Using my C compiler) For C code implementing var-arg functions , separate preprocessing can't be used (as a different version of stdarg.h is needed for interpreted)
* (Other C compilers) Var-arg implementation code that relies on a downward growing stack will not work
* Callback functions (external libraries being passed references to funtions in interpreted code) will not work for any language.

### Missing PCL Instructions

* Nothing has been done with 'vector' types, mainly because they don't feature in my source languages.
* No overflow detection in generated code
* No way to capture the overflow or carry flag for arithmetic ops (for example `cadd` could return two values: the normal result, and any carry).

There are no special features for things like closures, generators, continuations (I don't know what half of them are). If they were to come up, and they couldn't be expressed in existing PCL code, then I would add something.

There are however `setjmp longjump` ops for C, as well as `assem` for my inline assembly, and special `tcproc` functions for threaded-code (ie. naked functions).



