module pcl

proc main =

    pcl_start("demo")

        dmain:=pc_makesymbol("main", export_id)
        dputs:=pc_makesymbol("puts", import_id)

        pc_defproc(dmain)
            pc_gen(kload, genstring("Hello, World!"))
            pc_setmode(tpu64)

            pc_genxy(kcallp, 1,0, genmemaddr(dputs))

            pc_gen(kload, genint(0))
            pc_setmode(tpi64)

            pc_gen(kstop)
            pc_gen(kretproc)

        pc_endproc()

        pc_addplib("msvcrt")            ! Needed by most targets

    pcl_end()

! Any of the following can be used for the next stage

!   pcl_writepcl("hello.pcl")           ! Dump as PCL text

    pcl_runpcl()                        ! Run PCL via interpreter

!   pcl_writeasm("hello.asm")           ! Generate ASM for my AA assemble
!   pcl_writeasm("hello.asm", 'NASM')   ! Generate ASM for NASM

!   pcl_writeexe("hello.exe")           ! Write Windows PE executable

!   pcl_setflags(highmem:2)             ! needed if to be linked via gcc or ld
!   pcl_writeobj("hello.obj")           ! Write Windows COFF object file

!   pcl_writemx("hello.mx")             ! Write my private executable format

!   pcl_exec(0)                         ! Run native code in-memory
end
