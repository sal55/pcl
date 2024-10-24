// C-lang demo of PCL/IL API for Windows
// Synthesise a short hello-world IL program then process it on one of multiple different ways

// Uses PCL.ASM which needs assembling as follows:
//   nasm -fwin64 pcl.asm

// Building with GCC (with static linking)
//   gcc cdemo.c pcl.obj -s -o cdemo.exe

// Build with TCC (using dynamic linking as it doesn't like foreign OBJ files):
//   gcc pcl.obj -shared -s -o pcl.dll
//   tcc cdemo.c pcl.dll

// Not all outputs right now, eg. gcc doesn't like pcl_exec()

#include "pcl.h"
#include <stdio.h>

int main(void) {
    psymbol dmain, dputs;

    pcl_start("demo", 0);

        dmain=pc_makesymbol("main", export_id);
        dputs=pc_makesymbol("puts", import_id);

        pc_defproc(dmain, tpvoid, 0);
            pc_gen(kload, genstring("Hello, World!"));
            pc_setmode(tpu64, 0);

            pc_genxy(kcallp, 1,0, genmemaddr(dputs));

            pc_gen(kload, genint(0));
            pc_setmode(tpi64, 0);

            pc_gen(kstop, NULL);
            pc_gen(kretproc, NULL);

        pc_endproc();

        pc_addplib("msvcrt");           // Needed by most targets

    pcl_end();

// Any of the following can be used for the next stage
 
//  pcl_writepcl("hello.pcl");          // Dump as PCL text
//
    pcl_runpcl();                       // Run PCL via interpreter

//  pcl_writeasm("hello.asm", 'AA');        // Generate ASM for my AA assemble
//  pcl_writeasm("hello.asm", 'NASM');  // Generate ASM for NASM (only one of these available)

//  pcl_writeobj("hello.obj");          // Write Windows COFF object file

//  pcl_writeexe("hello.exe");          // Write Windows PE executable

//  pcl_writemx("hello.mx");            // Write my private executable format

//  pcl_exec(0);                        // Run native code in-memory

}
