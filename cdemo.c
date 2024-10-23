#include <pcl.h>
#include <stdio.h>

int main(void) {
	psymbol dmain, dputs;

	pcl_start("demo", 0);

		dmain:=pc_makesymbol("main", export_id);
		dputs:=pc_makesymbol("puts", import_id);

		pc_defproc(dmain, tpvoid, 0);
			pc_gen(kload, genstring("Hello, World!"));
			pc_setmode(tpu64, 0);

			pc_genxy(kcallp, 1,0, genmemaddr(dputs));

			pc_gen(kload, genint(0));
			pc_setmode(tpi64, 0);

			pc_gen(kstop, NULL);
			pc_gen(kretproc, NULL);

		pc_endproc();

		pc_addplib("msvcrt");			// Needed by most targets

	pcl_end();

// Any of the following can be used for the next stage
 
//	pcl_writepcl("hello.pcl");			// Dump as PCL text

	pcl_runpcl();						// Run PCL via interpreter

//	pcl_writeasm("hello.asm", 'AA');		// Generate ASM for my AA assemble
//	pcl_writeasm("hello.asm", 'NASM');	// Generate ASM for NASM (only one of these available)
//
//	pcl_writeexe("hello.exe");			// Write Windows PE executable
//
//	pcl_writeobj("hello.obj");			// Write Windows COFF object file
//
//	pcl_writemx("hello.mx");			// Write my private executable format
//
//	pcl_exec(0);						// Run native code in-memory

}
