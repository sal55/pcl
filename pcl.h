//C API for PCL IL

enum {
    tpvoid=0,

    tpr32,
    tpr64,

    tpu8,
    tpu16,
    tpu32,
    tpu64,

    tpi8,
    tpi16,
    tpi32,
    tpi64,

    tpblock,
    tpvector
};

enum {
    no_cc=0,
    eq_cc,
    ne_cc,
    lt_cc,
    le_cc,
    ge_cc,
    gt_cc
};

enum {
    Null_id=0,
    import_id,
    proc_id,
    static_id,
    local_id,
    param_id,
    label_id,
    export_id
};

enum {
    knop=0,

    kload,
    kiload,
    kiloadx,

    kstore,
    kistore,
    kistorex,

    kdupl,
    kdouble,
    kswapstk,
    kunload,

    kopnd,
    ktype,

    kloadbit,
    kloadbf,
    kstorebit,
    kstorebf,

    kcallp,
    kicallp,
    kretproc,
    kcallf,
    kicallf,
    kretfn,

    kjump,
    kijump,
    kjumpcc,
    kjumpt,
    kjumpf,
    kjumpret,
    kjumpretm,

    ksetcc,

    kstop,

    kto,
    kforup,
    kfordown,

    kiswap,

    kswitch,
    kswitchu,
    kswlabel,
    kendsw,

    kclear,

    kassem,

    kadd,

    ksub,
    kmul,
    kdiv,
    kidiv,
    kirem,
    kidivrem,
    kbitand,
    kbitor,
    kbitxor,
    kshl,
    kshr,
    kmin,
    kmax,
    kaddpx,
    ksubpx,
    ksubp,

    kneg,
    kabs,
    kbitnot,
    knot,
    ktoboolt,
    ktoboolf,
    ksqr,

    ksqrt,
    ksin,
    kcos,
    ktan,
    kasin,
    kacos,
    katan,
    klog,
    klog10,
    kexp,
    kround,
    kfloor,
    kceil,
    ksign,

    katan2,
    kpower,
    kfmod,

    kincrto,
    kdecrto,
    kincrload,
    kdecrload,
    kloadincr,
    kloaddecr,

    kaddto,
    ksubto,
    kmulto,
    kdivto,
    kidivto,
    kiremto,
    kbitandto,
    kbitorto,
    kbitxorto,
    kshlto,
    kshrto,
    kminto,
    kmaxto,
    kaddpxto,
    ksubpxto,

    knegto,
    kabsto,
    kbitnotto,
    knotto,
    ktoboolto,

    ktypepun,
    kfloat,
    kfix,
    ktruncate,
    kwiden,
    kfwiden,
    kfnarrow,

    kstartmx,
    kresetmx,
    kendmx,

    kdefproc,
    ktcproc,
    kendproc,
    kistatic,
    kzstatic,
    kdata,

    klabel,
    klabeldef,
    ksetjmp,
    klongjmp,

    ksetcall,
    ksetarg,
    kloadall,
    keval,
    kcomment,
    kendprog
};

typedef void* pcl;
typedef void* psymbol;
typedef long long int i64;
typedef unsigned char u8;
typedef double r64;
typedef char* stringz;

extern void     pcl_writepst(void* f);
extern stringz  pcl_writepcl(stringz filename);
extern void     pcl_genmcl(void);
extern void     pcl_genss(i64 obj);
extern stringz  pcl_writeasm(stringz filename, i64 atype);
extern void     pcl_writeobj(stringz filename);
extern void     pcl_writedll(stringz filename);
extern void     pcl_writeexe(stringz filename);
extern void     pcl_writemx(stringz filename);
extern void     pcl_exec(i64 cmdskip);
extern void     pcl_setflags(i64 highmem, i64 verbose, i64 shortnames, i64 hostcmdskip);
extern void     pcl_runpcl(void);
extern psymbol pcl_start(stringz name, i64 nunits);
extern void     pcl_end(void);
extern void     pc_gen(i64 opcode, pcl p);
extern void     pc_genix(i64 opcode, i64 scale, i64 offset);
extern void     pc_genx(i64 opcode, i64 x, pcl p);
extern void     pc_genxy(i64 opcode, i64 x, i64 y, pcl p);
extern void     pc_gencond(i64 opcode, i64 cond, pcl p);
extern pcl      genint(i64 a);
extern pcl      genreal(r64 x, i64 mode);
extern pcl      genrealimm(r64 x, i64 mode);
extern pcl      genstring(stringz s);
extern pcl      genpcstrimm(stringz s);
extern pcl      genlabel(i64 a);
extern pcl      genmem(psymbol d);
extern pcl      genmemaddr(psymbol d);
extern pcl      gendata(u8* s, i64 length);
extern void     gencomment(stringz s);
extern pcl      genname(stringz s);
extern pcl      gennameaddr(stringz s);
extern pcl      genassem(void* code);
extern stringz  strpmode(i64 mode, i64 size);
extern void     pc_setmode(i64 m, i64 size);
extern void     pc_setmode2(i64 m);
extern void     pc_setxy(i64 x, i64 y);
extern void     pc_setscaleoff(i64 scale, i64 offset);
extern void     pc_setoffset(i64 offset);
extern void     pc_addoffset(i64 offset);
extern void     pc_setincr(i64 n);
extern void     pc_setnargs(i64 n);
extern void     pc_setnvariadics(i64 n);
extern void     pc_setalign(i64 n);
extern psymbol  pc_makesymbol(stringz s, i64 id);
extern void     pc_addplib(stringz name);
extern void     pc_defproc(psymbol d, i64 mode, i64 threaded);
extern void     pc_addparam(psymbol d);
extern void     pc_addlocal(psymbol d);
extern void     pc_endproc(void);
