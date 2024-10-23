;NASM VERSION
    default rel
    extern fmod
    extern sin
    extern cos
    extern tan
    extern asin
    extern acos
    extern atan
    extern log
    extern log10
    extern exp
    extern floor
    extern ceil
    extern pow

    global $cmdskip
    global pcstart
    global pccurr
    global pcend
    global strpmode
    global addstr
    global assemused
    global mmpos
    global igetmsourceinfo
    global assemtype
    global pstdnames
    global psize
    global psigned
    global pfloat
    global pmin
    global piwrb
    global pclnames
    global pclhastype
    global pclextra
    global ccnames
    global idnames
    global mclnames
    global mclnopnds
    global mclcodes
    global regnames
    global regcodes
    global dregnames
    global regsizes
    global regindices
    global xmmregnames
    global fregnames
    global mregnames
    global jmpccnames
    global jmpcccodes
    global setccnames
    global setcccodes
    global cmovccnames
    global cmovcccodes
    global segmentnames
    global reftypenames
    global opndnames_ma
    global mlabelno
    global mccode
    global mccodex
    global regmodes
    global phighmem
    global idomcl_assem
    global igethostfn
    global mcxdirnames
    global mcxrelocnames
    global nsymimports
    global nsymexports
    extern __getmainargs
    extern printf
    extern sprintf
    extern strlen
    extern fprintf
    extern memcpy
    extern toupper
    extern strncpy
    extern strcpy
    extern sscanf
    extern puts
    extern free
    extern memset
    extern malloc
    extern realloc
    extern ftell
    extern fseek
    extern fread
    extern fwrite
    extern fopen
    extern fclose
    extern getchar
    extern fgets
    extern tolower
    extern strcat
    extern fgetc
    extern ungetc
    extern strchr
    extern strcmp
    extern strncmp
    extern memcmp
    extern GetStdHandle
    extern SetConsoleCtrlHandler
    extern SetConsoleMode
    extern CreateProcessA
    extern GetLastError
    extern WaitForSingleObject
    extern GetExitCodeProcess
    extern CloseHandle
    extern GetNumberOfConsoleInputEvents
    extern LoadLibraryA
    extern GetProcAddress
    extern LoadCursorA
    extern RegisterClassExA
    extern DefWindowProcA
    extern ReadConsoleInputA
    extern system
    extern Sleep
    extern GetModuleFileNameA
    extern clock
    extern GetTickCount64
    extern GetLocalTime
    extern PeekMessageA
    extern VirtualAlloc
    extern VirtualProtect
    extern FindFirstFileA
    extern FindNextFileA
    extern FindClose
    global pcl_start
    global pc_makesymbol
    global pcl_end
    global pc_gen
    global pcl_writepcl
    global pcl_genmcl
    global pcl_genss
    global pcl_writeasm
    global pcl_writeobj
    global pcl_writedll
    global pcl_writeexe
    global pcl_writemx
    global pcl_exec
    global pcl_setflags
    global pc_genix
    global pc_genx
    global pc_genxy
    global pc_gencond
    global genint
    global genreal
    global genrealimm
    global genstring
    global genpcstrimm
    global genlabel
    global genmem
    global genmemaddr
    global gendata
    global gencomment
    global genname
    global gennameaddr
    global genassem
    global pc_setmode
    global pc_setmode2
    global pc_setxy
    global pc_setscaleoff
    global pc_setoffset
    global pc_addoffset
    global pc_setincr
    global pc_setnargs
    global pc_setnvariadics
    global pc_setalign
    global pc_addplib
    global pc_defproc
    global pc_addparam
    global pc_addlocal
    global pc_endproc
    global pcl_writepst
    global pcl_runpcl
    global mgenint
    global genmc
    global merror
    global mgenreg
    global mgenindex
    global mgenxreg
    global mgenlabel
    global mgenmemaddr
    extern exit

    segment .bss
    alignb    8
msys.fmtparam:
    resb      8
    alignb    8
msys.$cmdskip:
$cmdskip:
    resb      8
    segment .data
    align     8
msys.needgap:
    dq  0
    align     8
msys.outdev:
    dq  1
    align     8
msys.outchan:
    dq  0
    align     8
msys.fmtstr:
    dq  0
    segment .bss
    alignb    8
msys.outchan_stack:
    resb      80
    alignb    8
msys.outdev_stack:
    resb      80
    alignb    8
msys.fmtstr_stack:
    resb      80
msys.needgap_stack:
    resb      10
    alignb    8
msys.ptr_stack:
    resb      80
    segment .data
    align     8
msys.niostack:
    dq  0
msys.digits:
    dq  0x3736353433323130
    dq  0x4645444342413938
;ENDDATA
    align     8
msys.defaultfmt:
    db        0
    db        0
    db        10
    db        0
    db        32
    db        102
    db        0
    db        0
    db        0
    db        82
    db        0
    db        0
    db        0
    db        0
    db        0
    db        0
    segment .bss
    alignb    8
msys.rd_buffer:
    resb      8
    alignb    8
msys.rd_length:
    resb      8
    alignb    8
msys.rd_pos:
    resb      8
    alignb    8
msys.rd_lastpos:
    resb      8
    alignb    8
msys.termchar:
    resb      8
    alignb    8
msys.itemerror:
    resb      8
msys.printbuffer:
    resb      4096
    alignb    8
msys.printptr:
    resb      8
    alignb    8
msys.printlen:
    resb      8
    alignb    8
msys.nsysparams:
    resb      8
    alignb    8
msys.ncmdparams:
    resb      8
    alignb    8
msys.nenvstrings:
    resb      8
    alignb    8
msys.sysparams:
    resb      1024
    alignb    8
msys.cmdparams:
    resb      8
    alignb    8
msys.envstrings:
    resb      8
    alignb    8
msys.callbackstack:
    resb      576
    segment .data
    align     8
msys.ncallbacks:
    dq  0
    segment .bss
msys.start.startupinfo:
    resb      128
    alignb    8
msys.getfmt.fmt:
    resb      16
msys.strint.str:
    resb      100
msys.strword.str:
    resb      100
msys.strreal.str:
    resb      320
    alignb    8
mlib.allocupper:
    resb      2408
    alignb    8
mlib.alloccode:
    resb      8
    alignb    8
mlib.allocbytes:
    resb      8
    segment .data
    align     8
mlib.fdebug:
    dq  0
    segment .bss
    alignb    8
mlib.rfsize:
    resb      8
    alignb    8
mlib.maxmemory:
    resb      8
    alignb    8
mlib.maxalloccode:
    resb      8
    segment .data
mlib.pcm_setup:
    db        0
    align     8
mlib.show:
    dq  0
    align     8
mlib.memtotal:
    dq  0
    align     8
mlib.smallmemtotal:
    dq  0
    align     8
mlib.smallmemobjs:
    dq  0
    align     8
mlib.maxmemtotal:
    dq  0
    segment .bss
    alignb    8
mlib.memalloctable:
    resb      24
    alignb    4
mlib.memallocsize:
    resb      12
    alignb    8
mlib.pcheapstart:
    resb      8
    alignb    8
mlib.pcheapend:
    resb      8
    alignb    8
mlib.pcheapptr:
    resb      8
mlib.sizeindextable:
    resb      2049
    alignb    8
mlib.freelist:
    resb      72
    segment .data
    align     8
mlib.pmnames:
    dq  L4729
    dq  L4730
    dq  L4731
    dq  L4732
    dq  L4733
    dq  L4734
    align     8
mlib.seed:
    dq  0x2989881111111272
    dq  0x1673267373358264
    segment .bss
    alignb    8
mlib.pcm_newblock.totalheapsize:
    resb      8
    segment .data
    align     4
mlib.pcm_round.allocbytes:
    dd        0
    dd        16
    dd        32
    dd        64
    dd        128
    dd        256
    dd        512
    dd        1024
    dd        2048
    segment .bss
mlib.changeext.newfile:
    resb      260
mlib.extractpath.str:
    resb      260
mlib.extractbasefile.str:
    resb      100
    segment .data
    align     8
mlib.nextcmdparamnew.infile:
    dq  0
    align     8
mlib.nextcmdparamnew.filestart:
    dq  0
    align     8
mlib.nextcmdparamnew.fileptr:
    dq  0
mlib.nextcmdparamnew.colonseen:
    db        0
    segment .bss
mlib.nextcmdparamnew.str:
    resb      300
mlib.readnextfileitem.str:
    resb      256
mlib.padstr.str:
    resb      256
mlib.chr.str:
    resb      8
    alignb    8
mwindows.hconsole:
    resb      8
    alignb    8
mwindows.hconsolein:
    resb      8
    alignb    8
mwindows.lastkey:
    resb      20
    alignb    8
mwindows.pendkey:
    resb      20
    alignb    8
mwindows.keypending:
    resb      8
    segment .data
    align     8
mwindows.wndproc_callbackfn:
    dq  0
    align     8
mwindows.init_flag:
    dq  0
    segment .bss
mwindows.os_gxregisterclass.registered:
    resb      1
    segment .data
    align     8
mwindows.mainwndproc.count:
    dq  0
    segment .bss
mwindows.os_gethostname.name:
    resb      300
    alignb    8
mwindows.os_gethostname.n:
    resb      8
    alignb    8
mwindows.os_peek.lastticks:
    resb      8
    alignb    8
pc_api.pclseqno:
    resb      8
    alignb    8
pc_api.pcstart:
pcstart:
    resb      8
    alignb    8
pc_api.pccurr:
pccurr:
    resb      8
    alignb    8
pc_api.pcend:
pcend:
    resb      8
    alignb    8
pc_api.pcalloc:
    resb      8
pc_api.pcfixed:
    resb      1
    alignb    8
pc_api.pcseqno:
    resb      8
    alignb    8
pc_api.pcneedfntable:
    resb      8
    segment .data
    align     8
pc_api.initpcalloc:
    dq  0x10000
    segment .bss
    alignb    8
pc_api.longstring:
    resb      8
    alignb    8
pc_api.longstringlen:
    resb      8
    alignb    8
pc_api.errormess:
    resb      8
pc_api.strpmode.str:
    resb      32
pc_api.getfullname.str:
    resb      256
pc_api.addstr.str:
    resb      256
    alignb    8
pc_decls.frameoffset:
    resb      8
    alignb    8
pc_decls.paramoffset:
    resb      8
    alignb    8
pc_decls.framebytes:
    resb      8
    alignb    8
pc_decls.usedparams:
    resb      8
    alignb    8
pc_decls.usedxparams:
    resb      8
    alignb    8
pc_decls.highreg:
    resb      8
    alignb    8
pc_decls.highxreg:
    resb      8
    alignb    8
pc_decls.bspill:
    resb      8
    alignb    8
pc_decls.bxspill:
    resb      8
    alignb    8
pc_decls.bxspilloffset:
    resb      8
pc_decls.r10used:
    resb      1
pc_decls.r11used:
    resb      1
pc_decls.r13used:
    resb      1
    alignb    8
pc_decls.maxregvars:
    resb      8
    alignb    8
pc_decls.maxxregvars:
    resb      8
    alignb    8
pc_decls.nproccalls:
    resb      8
    alignb    8
pc_decls.highargs:
    resb      8
pc_decls.localshadow:
    resb      1
pc_decls.assemused:
assemused:
    resb      1
    alignb    8
pc_decls.passno:
    resb      8
    alignb    8
pc_decls.mmlabelno:
    resb      8
    alignb    8
pc_decls.mmpos:
mmpos:
    resb      8
    alignb    8
pc_decls.psymboltable:
    resb      8
    alignb    8
pc_decls.psymboltablex:
    resb      8
    alignb    8
pc_decls.currprog:
    resb      8
    alignb    8
pc_decls.currfunc:
    resb      8
    alignb    8
pc_decls.blockretname:
    resb      8
    alignb    8
pc_decls.entryproc:
    resb      8
    alignb    8
pc_decls.sbuffer:
    resb      16
    segment .data
    align     8
pc_decls.pdest:
    dq  pc_decls.sbuffer
    segment .bss
    alignb    8
pc_decls.plibfiles:
    resb      400
    alignb    8
pc_decls.plibinst:
    resb      400
    alignb    8
pc_decls.nplibfiles:
    resb      8
    alignb    8
pc_decls.igetmsourceinfo:
igetmsourceinfo:
    resb      8
pc_decls.pcldone:
    resb      1
pc_decls.mcldone:
    resb      1
pc_decls.ssdone:
    resb      1
pc_decls.pverbose:
    resb      1
    alignb    8
pc_decls.pcmdskip:
    resb      8
    segment .data
    align     8
pc_decls.assemtype:
assemtype:
    dq  0x4141
    segment .bss
    alignb    8
pc_diags.currlineno:
    resb      8
    alignb    8
pc_diags.currfileno:
    resb      8
    alignb    8
pc_diags.sbuffer:
    resb      16
    segment .data
    align     8
pc_diags.dest:
    dq  pc_diags.sbuffer
    segment .bss
    alignb    8
pc_diags.destlinestart:
    resb      8
pc_diags.stropnd.str:
    resb      512
pc_diags.stropndstack.str:
    resb      512
    segment .data
    align     8
pc_run.dostep:
    dq  0
    segment .bss
    alignb    8
pc_run.go:
    resb      8
    alignb    8
pc_run.labeltable:
    resb      8
    segment .data
    align     8
pc_tables.pstdnames:
pstdnames:
    dq  L4735
    dq  L4736
    dq  L4737
    dq  L4738
    dq  L4739
    dq  L4740
    dq  L4741
    dq  L4742
    dq  L4743
    dq  L4744
    dq  L4745
    dq  L4746
    dq  L4747
    dq  L4748
pc_tables.psize:
psize:
    dq  0x108040201080400
    db        2
    db        4
    db        8
    db        0
    db        0
    db        0
;ENDDATA
pc_tables.psigned:
psigned:
    dq  0x100000000000000
    db        1
    db        1
    db        1
    db        0
    db        0
    db        0
;ENDDATA
pc_tables.pfloat:
pfloat:
    dq  0x10100
    db        0
    db        0
    db        0
    db        0
    db        0
    db        0
;ENDDATA
pc_tables.pmin:
pmin:
    dq  0x906050505020100
    db        9
    db        9
    db        10
    db        11
    db        12
    db        0
;ENDDATA
pc_tables.piwrb:
piwrb:
    dq  0xA06060606020100
    db        10
    db        10
    db        10
    db        0
    db        0
    db        0
;ENDDATA
    align     8
pc_tables.opndnames:
    dq  L4749
    dq  L4750
    dq  L4751
    dq  L4752
    dq  L4753
    dq  L4754
    dq  L4755
    dq  L4756
    dq  L4757
    dq  L4758
    dq  L4759
    dq  L4760
    dq  L4761
    align     8
pc_tables.pclnames:
pclnames:
    dq  L4762
    dq  L4763
    dq  L4764
    dq  L4765
    dq  L4766
    dq  L4767
    dq  L4768
    dq  L4769
    dq  L4770
    dq  L4771
    dq  L4772
    dq  L4773
    dq  L4774
    dq  L4775
    dq  L4776
    dq  L4777
    dq  L4778
    dq  L4779
    dq  L4780
    dq  L4781
    dq  L4782
    dq  L4783
    dq  L4784
    dq  L4785
    dq  L4786
    dq  L4787
    dq  L4788
    dq  L4789
    dq  L4790
    dq  L4791
    dq  L4792
    dq  L4793
    dq  L4794
    dq  L4795
    dq  L4796
    dq  L4797
    dq  L4798
    dq  L4799
    dq  L4800
    dq  L4801
    dq  L4802
    dq  L4803
    dq  L4804
    dq  L4805
    dq  L4806
    dq  L4807
    dq  L4808
    dq  L4809
    dq  L4810
    dq  L4811
    dq  L4812
    dq  L4813
    dq  L4814
    dq  L4815
    dq  L4816
    dq  L4817
    dq  L4818
    dq  L4819
    dq  L4820
    dq  L4821
    dq  L4822
    dq  L4823
    dq  L4824
    dq  L4825
    dq  L4826
    dq  L4827
    dq  L4828
    dq  L4829
    dq  L4830
    dq  L4831
    dq  L4832
    dq  L4833
    dq  L4834
    dq  L4835
    dq  L4836
    dq  L4837
    dq  L4838
    dq  L4839
    dq  L4840
    dq  L4841
    dq  L4842
    dq  L4843
    dq  L4844
    dq  L4845
    dq  L4846
    dq  L4847
    dq  L4848
    dq  L4849
    dq  L4850
    dq  L4851
    dq  L4852
    dq  L4853
    dq  L4854
    dq  L4855
    dq  L4856
    dq  L4857
    dq  L4858
    dq  L4859
    dq  L4860
    dq  L4861
    dq  L4862
    dq  L4863
    dq  L4864
    dq  L4865
    dq  L4866
    dq  L4867
    dq  L4868
    dq  L4869
    dq  L4870
    dq  L4871
    dq  L4872
    dq  L4873
    dq  L4874
    dq  L4875
    dq  L4876
    dq  L4877
    dq  L4878
    dq  L4879
    dq  L4880
    dq  L4881
    dq  L4882
    dq  L4883
    dq  L4884
    dq  L4885
    dq  L4886
    dq  L4887
    dq  L4888
    dq  L4889
    dq  L4890
    dq  L4891
    dq  L4892
    dq  L4893
    dq  L4894
    dq  L4895
    dq  L4896
    dq  L4897
    dq  L4898
    dq  L4899
    dq  L4900
    dq  L4901
pc_tables.pclhastype:
pclhastype:
    dq  0x1010101010100
    dq  0x101010101010000
    dq  0x1010100000001
    dq  0x1010101010100
    dq  0x1010101
    dq  0x101010101010001
    dq  0x101010101010101
    dq  0x201010101010101
    dq  0x101010101010102
    dq  0x101010101010101
    dq  0x101010101010101
    dq  0x101010101010101
    dq  0x101010101010101
    dq  0x202020101010101
    dq  0x1010002020202
    dq  0x101010000
    dq  0x100000000000000
    db        1
    db        1
    db        1
    db        1
;ENDDATA
pc_tables.pclextra:
pclextra:
    dq  0x2000002000000
    dq  0x200
    dq  0x20200020200
    dq  0x100
    dq  0x20200010100
    dq  0x100
    dq  0
    dq  0x10202
    dq  0
    dq  0
    dq  0x101010101000000
    dq  1
    dq  0x101000000000000
    dq  0
    dq  0x1010100000000
    dq  0
    dq  0x10100
    db        0
    db        0
    db        0
    db        0
;ENDDATA
    align     8
pc_tables.ccnames:
ccnames:
    dq  L4902
    dq  L4903
    dq  L4904
    dq  L4905
    dq  L4906
    dq  L4907
    dq  L4908
    align     8
pc_tables.idnames:
idnames:
    dq  L4909
    dq  L4910
    dq  L4911
    dq  L4912
    dq  L4913
    dq  L4914
    dq  L4915
    dq  L4916
    segment .bss
    alignb    8
mc_genmcl.debug:
    resb      8
    alignb    8
mc_genmcl.framebytes:
    resb      8
    alignb    8
mc_genmcl.pxoffset:
    resb      8
    alignb    8
mc_genmcl.px_handlertable:
    resb      1120
    segment .data
mc_genmcl.scondcodes:
    db        4
    db        5
    db        12
    db        14
    db        13
    db        15
;ENDDATA
mc_genmcl.ucondcodes:
    db        4
    db        5
    db        2
    db        6
    db        3
    db        7
;ENDDATA
    segment .bss
    alignb    8
mc_genmcl.ppseqno:
    resb      8
    segment .data
mc_genmcl.inithandlers.initdone:
    db        0
mc_genmcl.inithandlers.dupltable:
    db        "@?"
;ENDDATA
    db        20
    db        17
;ENDDATA
    db        18
    db        17
;ENDDATA
    db        21
    db        17
;ENDDATA
    db        "vu"
;ENDDATA
    db        "xw"
;ENDDATA
    db        "xw"
;ENDDATA
    db        "]."
;ENDDATA
    db        "^/"
;ENDDATA
    segment .bss
mc_genss.rex:
    resb      1
mc_genss.sizeoverride:
    resb      1
mc_genss.addroverride:
    resb      1
mc_genss.f2override:
    resb      1
mc_genss.f3override:
    resb      1
mc_genss.nowmask:
    resb      1
mc_genss.usesizeb:
    resb      1
    alignb    8
mc_genss.extraparam:
    resb      8
    segment .data
    align     8
mc_genss.currseg:
    dq  0
    segment .bss
    alignb    8
mc_genss.currdata:
    resb      8
    alignb    8
mc_genss.currrelocs:
    resb      8
    alignb    8
mc_genss.nrelocs:
    resb      8
    segment .data
    align     8
mc_genss.instrno:
    dq  2
    segment .bss
mc_genss.ishighreg:
    resb      16
    alignb    8
mc_genss.currmcl:
    resb      8
    alignb    8
mc_genss.ripentry:
    resb      8
    segment .data
    align     8
mc_genss.genrm.scaletable:
    dq  0
    dq  1
    dq  0
    dq  2
    dq  0
    dq  0
    dq  0
    dq  3
    segment .bss
    alignb    8
mc_libmcl.mclseqno:
    resb      8
    alignb    8
mc_libmcl.smallinttable:
    resb      96
    alignb    8
mc_libmcl.nametable:
    resb      160
    alignb    8
mc_libmcl.nnametable:
    resb      8
    alignb    8
mc_libmcl.mgenextname.table:
    resb      160
    alignb    8
mc_libmcl.mgenextname.ntable:
    resb      8
    segment .data
    align     8
mc_decls.valtypenames:
    dq  L4917
    dq  L4918
    dq  L4919
    dq  L4920
    dq  L4921
    dq  L4922
    dq  L4923
    dq  L4924
    dq  L4925
    align     8
mc_decls.mclnames:
mclnames:
    dq  L4926
    dq  L4927
    dq  L4928
    dq  L4929
    dq  L4930
    dq  L4931
    dq  L4932
    dq  L4933
    dq  L4934
    dq  L4935
    dq  L4936
    dq  L4937
    dq  L4938
    dq  L4939
    dq  L4940
    dq  L4941
    dq  L4942
    dq  L4943
    dq  L4944
    dq  L4945
    dq  L4946
    dq  L4947
    dq  L4948
    dq  L4949
    dq  L4950
    dq  L4951
    dq  L4952
    dq  L4953
    dq  L4954
    dq  L4955
    dq  L4956
    dq  L4957
    dq  L4958
    dq  L4959
    dq  L4960
    dq  L4961
    dq  L4962
    dq  L4963
    dq  L4964
    dq  L4965
    dq  L4966
    dq  L4967
    dq  L4968
    dq  L4969
    dq  L4970
    dq  L4971
    dq  L4972
    dq  L4973
    dq  L4974
    dq  L4975
    dq  L4976
    dq  L4977
    dq  L4978
    dq  L4979
    dq  L4980
    dq  L4981
    dq  L4982
    dq  L4983
    dq  L4984
    dq  L4985
    dq  L4986
    dq  L4987
    dq  L4988
    dq  L4989
    dq  L4990
    dq  L4991
    dq  L4992
    dq  L4993
    dq  L4994
    dq  L4995
    dq  L4996
    dq  L4997
    dq  L4998
    dq  L4999
    dq  L5000
    dq  L5001
    dq  L5002
    dq  L5003
    dq  L5004
    dq  L5005
    dq  L5006
    dq  L5007
    dq  L5008
    dq  L5009
    dq  L5010
    dq  L5011
    dq  L5012
    dq  L5013
    dq  L5014
    dq  L5015
    dq  L5016
    dq  L5017
    dq  L5018
    dq  L5019
    dq  L5020
    dq  L5021
    dq  L5022
    dq  L5023
    dq  L5024
    dq  L5025
    dq  L5026
    dq  L5027
    dq  L5028
    dq  L5029
    dq  L5030
    dq  L5031
    dq  L5032
    dq  L5033
    dq  L5034
    dq  L5035
    dq  L5036
    dq  L5037
    dq  L5038
    dq  L5039
    dq  L5040
    dq  L5041
    dq  L5042
    dq  L5043
    dq  L5044
    dq  L5045
    dq  L5046
    dq  L5047
    dq  L5048
    dq  L5049
    dq  L5050
    dq  L5051
    dq  L5052
    dq  L5053
    dq  L5054
    dq  L5055
    dq  L5056
    dq  L5057
    dq  L5058
    dq  L5059
    dq  L5060
    dq  L5061
    dq  L5062
    dq  L5063
    dq  L5064
    dq  L5065
    dq  L5066
    dq  L5067
    dq  L5068
    dq  L5069
    dq  L5070
    dq  L5071
    dq  L5072
    dq  L5073
    dq  L5074
    dq  L5075
mc_decls.mclnopnds:
mclnopnds:
    dq  0
    dq  0x202010102010001
    dq  0x10202020202
    dq  0x202020202020101
    dq  0x202010103020101
    dq  0x202020202020202
    dq  0x10101010202
    dq  0x202020202020000
    dq  0x202020202020202
    dq  0x202020202020202
    dq  0x202020202020202
    dq  0x101010303020202
    dq  0x10101
    dq  0x200000000000000
    dq  0x1010101020202
    dq  0x1010101010000
    dq  0x101010101
    dq  0x1020000
    db        0
    db        0
    db        0
    db        0
    db        0
    db        0
;ENDDATA
mc_decls.mclcodes:
mclcodes:
    dq  0
    dq  0x9000
    dq  0xC9C3E80000000000
    dq  0x30205000000E900
    dq  0x104060700000405
    dq  0x100050704070006
    dq  0x10002030302
    dq  0x51ACA4BDBC000000
    dq  0x5E59595C5C585851
    dq  0xEF5454575700005E
    dq  0xDB
    dq  0x302006263F36600
    dq  0xFAF9C9E9C1030200
    dq  0x5DE0E1F3F2FBFFFE
    dq  0x5F5D5F
    dq  0xD708040201000000
    dq  0xE3E3E2E1E0
    dq  0xEBE8EE0000003100
    db        233
    db        234
    db        236
    db        237
    db        0
    db        244
;ENDDATA
    align     8
mc_decls.regnames:
regnames:
    dq  L5076
    dq  L5077
    dq  L5078
    dq  L5079
    dq  L5080
    dq  L5081
    dq  L5082
    dq  L5083
    dq  L5084
    dq  L5085
    dq  L5086
    dq  L5087
    dq  L5088
    dq  L5089
    dq  L5090
    dq  L5091
    dq  L5092
    dq  L5093
    dq  L5094
    dq  L5095
    dq  L5096
mc_decls.regcodes:
regcodes:
    dq  0xC0603070B0A0000
    dq  0x5090802010F0E0D
    db        4
    db        4
    db        7
    db        5
    db        6
;ENDDATA
    align     8
mc_decls.condnames:
    dq  L5097
    dq  L5098
    dq  L5099
    dq  L5100
    dq  L5101
    dq  L5102
    dq  L5103
    dq  L5104
    dq  L5105
    dq  L5106
    dq  L5107
    dq  L5108
    dq  L5109
    dq  L5110
    dq  L5111
    dq  L5112
    dq  L5113
    dq  L5114
    dq  L5115
    dq  L5116
    align     8
mc_decls.asmcondnames:
    dq  L5117
    dq  L5118
    dq  L5119
    dq  L5120
    dq  L5121
    dq  L5122
    dq  L5123
    dq  L5124
    dq  L5125
    dq  L5126
    dq  L5127
    dq  L5128
    dq  L5129
    dq  L5130
    dq  L5131
    dq  L5132
    dq  L5133
    dq  L5134
    dq  L5135
    dq  L5136
    align     8
mc_decls.asmrevcond:
    dq  1
    dq  0
    dq  3
    dq  2
    dq  5
    dq  4
    dq  7
    dq  6
    dq  9
    dq  8
    dq  0xB
    dq  0xA
    dq  0xD
    dq  0xC
    dq  0xF
    dq  0xE
    dq  0x11
    dq  0x10
    dq  0x13
    dq  0x12
    align     8
mc_decls.dregnames:
dregnames:
    dq  L5137
    dq  L5138
    dq  L5139
    dq  L5140
    dq  L5141
    dq  L5142
    dq  L5143
    dq  L5144
    dq  L5145
    dq  L5146
    dq  L5147
    dq  L5148
    dq  L5149
    dq  L5150
    dq  L5151
    dq  L5152
    dq  L5153
    dq  L5154
    dq  L5155
    dq  L5156
    dq  L5157
    dq  L5158
    dq  L5159
    dq  L5160
    dq  L5161
    dq  L5162
    dq  L5163
    dq  L5164
    dq  L5165
    dq  L5166
    dq  L5167
    dq  L5168
    dq  L5169
    dq  L5170
    dq  L5171
    dq  L5172
    dq  L5173
    dq  L5174
    dq  L5175
    dq  L5176
    dq  L5177
    dq  L5178
    dq  L5179
    dq  L5180
    dq  L5181
    dq  L5182
    dq  L5183
    dq  L5184
    dq  L5185
    dq  L5186
    dq  L5187
    dq  L5188
    dq  L5189
    dq  L5190
    dq  L5191
    dq  L5192
    dq  L5193
    dq  L5194
    dq  L5195
    dq  L5196
    dq  L5197
    dq  L5198
    dq  L5199
    dq  L5200
    dq  L5201
    dq  L5202
    dq  L5203
    dq  L5204
    dq  L5205
    dq  L5206
    dq  L5207
    dq  L5208
    dq  L5209
    dq  L5210
    dq  L5211
    dq  L5212
    dq  L5213
    dq  L5214
    dq  L5215
    dq  L5216
    dq  L5217
    dq  L5218
    dq  L5219
    dq  L5220
    dq  L5221
    dq  L5222
    dq  L5223
    dq  L5224
    dq  L5225
    dq  L5226
    dq  L5227
    dq  L5228
    dq  L5229
    dq  L5230
    dq  L5231
    dq  L5232
    dq  L5233
    dq  L5234
    dq  L5235
    dq  L5236
    dq  L5237
    dq  L5238
    dq  L5239
    dq  L5240
    dq  L5241
    dq  L5242
    dq  L5243
    dq  L5244
    dq  L5245
    dq  L5246
    dq  L5247
    dq  L5248
    dq  L5249
    dq  L5250
    dq  L5251
    dq  L5252
    dq  L5253
    dq  L5254
    dq  L5255
    dq  L5256
    dq  L5257
    dq  L5258
    dq  L5259
    dq  L5260
    dq  L5261
    dq  L5262
    dq  L5263
    dq  L5264
    dq  L5265
    dq  L5266
    dq  L5267
    dq  L5268
    dq  L5269
    dq  L5270
    dq  L5271
    dq  L5272
    dq  L5273
mc_decls.regsizes:
regsizes:
    dq  0x808080808080808
    dq  0x808080808080808
    dq  0x404040404040404
    dq  0x404040404040404
    dq  0x202020202020202
    dq  0x202020202020202
    dq  0x101010101010101
    dq  0x101010101010101
    dq  0x808080001010101
    dq  0x808080808080808
    dq  0x404040808080808
    dq  0x404040404040404
    dq  0x202020404040404
    dq  0x202020202020202
    dq  0x101010202020202
    dq  0x101010101010101
    dq  0x101010101010101
    db        1
;ENDDATA
mc_decls.regindices:
regindices:
    dq  0x807060504030201
    dq  0x100F0E0D0C0B0A09
    dq  0x807060504030201
    dq  0x100F0E0D0C0B0A09
    dq  0x807060504030201
    dq  0x100F0E0D0C0B0A09
    dq  0x807060504030201
    dq  0x100F0E0D0C0B0A09
    dq  0xB05010014131211
    dq  0x20E0D100F04060C
    dq  0xB05010A09080703
    dq  0x20E0D100F04060C
    dq  0xB05010A09080703
    dq  0x20E0D100F04060C
    dq  0xB05010A09080703
    dq  0xF0406141312110C
    dq  0x9080703020E0D10
    db        10
;ENDDATA
    align     8
mc_decls.xmmregnames:
xmmregnames:
    dq  L5274
    dq  L5275
    dq  L5276
    dq  L5277
    dq  L5278
    dq  L5279
    dq  L5280
    dq  L5281
    dq  L5282
    dq  L5283
    dq  L5284
    dq  L5285
    dq  L5286
    dq  L5287
    dq  L5288
    dq  L5289
    align     8
mc_decls.fregnames:
fregnames:
    dq  L5290
    dq  L5291
    dq  L5292
    dq  L5293
    dq  L5294
    dq  L5295
    dq  L5296
    dq  L5297
    align     8
mc_decls.mregnames:
mregnames:
    dq  L5298
    dq  L5299
    dq  L5300
    dq  L5301
    dq  L5302
    dq  L5303
    dq  L5304
    dq  L5305
    align     8
mc_decls.jmpccnames:
jmpccnames:
    dq  L5306
    dq  L5307
    dq  L5308
    dq  L5309
    dq  L5310
    dq  L5311
    dq  L5312
    dq  L5313
    dq  L5314
    dq  L5315
    dq  L5316
    dq  L5317
    dq  L5318
    dq  L5319
    dq  L5320
    dq  L5321
    dq  L5322
    dq  L5323
mc_decls.jmpcccodes:
jmpcccodes:
    dq  0x706050403020100
    dq  0xF0E0D0C0B0A0908
    db        2
    db        3
;ENDDATA
    align     8
mc_decls.setccnames:
setccnames:
    dq  L5324
    dq  L5325
    dq  L5326
    dq  L5327
    dq  L5328
    dq  L5329
    dq  L5330
    dq  L5331
    dq  L5332
    dq  L5333
    dq  L5334
    dq  L5335
    dq  L5336
    dq  L5337
    dq  L5338
    dq  L5339
mc_decls.setcccodes:
setcccodes:
    dq  0x706050403020100
    dq  0xF0E0D0C0B0A0908
;ENDDATA
    align     8
mc_decls.cmovccnames:
cmovccnames:
    dq  L5340
    dq  L5341
    dq  L5342
    dq  L5343
    dq  L5344
    dq  L5345
    dq  L5346
    dq  L5347
    dq  L5348
    dq  L5349
    dq  L5350
    dq  L5351
    dq  L5352
    dq  L5353
    dq  L5354
    dq  L5355
mc_decls.cmovcccodes:
cmovcccodes:
    dq  0x706050403020100
    dq  0xF0E0D0C0B0A0908
;ENDDATA
    align     8
mc_decls.segmentnames:
segmentnames:
    dq  L5356
    dq  L5357
    dq  L5358
    dq  L5359
    dq  L5360
    dq  L5361
    align     8
mc_decls.reftypenames:
reftypenames:
    dq  L5362
    dq  L5363
    dq  L5364
    align     8
mc_decls.opndnames_ma:
opndnames_ma:
    dq  L5365
    dq  L5366
    dq  L5367
    dq  L5368
    dq  L5369
    dq  L5370
    align     8
mc_decls.opndcatnames:
    dq  L5371
    dq  L5372
    dq  L5373
    dq  L5374
    dq  L5375
    dq  L5376
    segment .bss
    alignb    8
mc_decls.mlabelno:
mlabelno:
    resb      8
    alignb    8
mc_decls.pclopnd:
    resb      160
mc_decls.pclreg:
    resb      20
mc_decls.pclmode:
    resb      20
mc_decls.pclcount:
    resb      20
mc_decls.pclloc:
    resb      20
mc_decls.pcltempflags:
    resb      20
    alignb    8
mc_decls.pcltempopnds:
    resb      160
    alignb    8
mc_decls.noperands:
    resb      8
    alignb    8
mc_decls.mstackdepth:
    resb      8
    segment .data
    align     8
mc_decls.locnames:
    dq  L5377
    dq  L5378
    dq  L5379
    segment .bss
mc_decls.workregs:
    resb      16
mc_decls.workxregs:
    resb      16
mc_decls.spillregs:
    resb      16
mc_decls.spillxregs:
    resb      16
mc_decls.regset:
    resb      16
mc_decls.xregset:
    resb      16
mc_decls.isregvar:
    resb      16
mc_decls.isxregvar:
    resb      16
mc_decls.noxorclear:
    resb      1
    segment .data
    align     8
mc_decls.xregnames:
    dq  L5380
    dq  L5381
    dq  L5382
    dq  L5383
    dq  L5384
    dq  L5385
    dq  L5386
    dq  L5387
    dq  L5388
    dq  L5389
    dq  L5390
    dq  L5391
    dq  L5392
    dq  L5393
    dq  L5394
    dq  L5395
    dq  L5396
    segment .bss
mc_decls.callalign:
    resb      16
mc_decls.callblockret:
    resb      16
    alignb    4
mc_decls.callblocksize:
    resb      64
    alignb    4
mc_decls.callargsize:
    resb      256
    alignb    8
mc_decls.ncalldepth:
    resb      8
    alignb    8
mc_decls.lababs32:
    resb      8
    alignb    8
mc_decls.lababs64:
    resb      8
    alignb    8
mc_decls.labneg32:
    resb      8
    alignb    8
mc_decls.labneg64:
    resb      8
    alignb    8
mc_decls.labmask63:
    resb      8
    alignb    8
mc_decls.laboffset64:
    resb      8
    alignb    8
mc_decls.labzero:
    resb      8
    segment .data
    align     8
mc_decls.kk0used:
    dq  0
    segment .bss
    alignb    8
mc_decls.mccode:
mccode:
    resb      8
    alignb    8
mc_decls.mccodex:
mccodex:
    resb      8
    segment .data
    align     8
mc_decls.currsegment:
    dq  0
    segment .bss
    alignb    8
mc_decls.dstackopnd:
    resb      8
    alignb    8
mc_decls.dframeopnd:
    resb      8
    alignb    8
mc_decls.regtable:
    resb      1024
    alignb    8
mc_decls.frameregtable:
    resb      1544
    alignb    8
mc_decls.cstringlist:
    resb      8
    alignb    8
mc_decls.vstringlist:
    resb      8
    alignb    8
mc_decls.creallist:
    resb      8
    alignb    8
mc_decls.creal32list:
    resb      8
    alignb    8
mc_decls.currasmproc:
    resb      8
    alignb    8
mc_decls.lab_funcnametable:
    resb      8
    alignb    8
mc_decls.lab_funcaddrtable:
    resb      8
    alignb    8
mc_decls.lab_funcnprocs:
    resb      8
    alignb    8
mc_decls.ss_zdatalen:
    resb      8
    alignb    8
mc_decls.ss_zdata:
    resb      8
    alignb    8
mc_decls.ss_idata:
    resb      8
    alignb    8
mc_decls.ss_code:
    resb      8
    alignb    8
mc_decls.ss_idatarelocs:
    resb      8
    alignb    8
mc_decls.ss_coderelocs:
    resb      8
    alignb    8
mc_decls.ss_nidatarelocs:
    resb      8
    alignb    8
mc_decls.ss_ncoderelocs:
    resb      8
    alignb    8
mc_decls.ss_symboltable:
    resb      8
    alignb    8
mc_decls.ss_nsymbols:
    resb      8
    alignb    8
mc_decls.ss_symboltablesize:
    resb      8
    alignb    8
mc_decls.labeldeftable:
    resb      8
    alignb    8
mc_decls.aaseqno:
    resb      8
    segment .data
mc_decls.regmodes:
regmodes:
    dq  0x600000005000403
;ENDDATA
    segment .bss
mc_decls.pmode:
    resb      1
    alignb    8
mc_decls.currpcl:
    resb      8
    alignb    8
mc_decls.mclprocentry:
    resb      8
    alignb    8
mc_decls.mce_oldmccodex:
    resb      8
    alignb    8
mc_decls.mce_nextmcl:
    resb      8
mc_decls.fppeephole:
    resb      1
mc_decls.fpregoptim:
    resb      1
mc_decls.fpshortnames:
    resb      1
mc_decls.fpcheckunusedlocals:
    resb      1
mc_decls.phighmem:
phighmem:
    resb      1
    alignb    8
mc_decls.riplist:
    resb      8
    alignb    8
mc_decls.idomcl_assem:
idomcl_assem:
    resb      8
    alignb    8
mc_decls.igethostfn:
igethostfn:
    resb      8
    alignb    8
mc_decls.blockdefs:
    resb      400
    alignb    8
mc_decls.nblocktemps:
    resb      8
    segment .data
    align     8
mc_decls.multregs:
    dq  1
    dq  2
    dq  3
    dq  0xB
    dq  0xC
    dq  0xD
    align     8
mc_decls.multxregs:
    dq  1
    dq  2
    dq  3
    dq  4
    dq  5
    dq  6
    segment .bss
mc_decls.ploadopx:
    resb      14
mc_decls.ploadop:
    resb      14
    segment .data
    align     8
mc_objdecls.relocnames:
    dq  L5397
    dq  L5398
    dq  L5399
    dq  L5400
    dq  L5401
    dq  L5402
    dq  L5403
    segment .bss
    alignb    8
mc_writenasm.nregnames:
    resb      1024
mc_writenasm.currseg:
    resb      1
mc_writenasm.strmcl.str:
    resb      512
mc_writenasm.mstropnd.str:
    resb      512
mc_writenasm.strvalue.str:
    resb      512
    segment .data
    align     8
mc_writenasm.getregname.prefix:
    dq  L5404
    dq  L5405
    dq  L5406
    dq  L5407
    dq  L5408
    dq  L5408
    dq  L5408
    dq  L5409
    dq  L5410
    dq  L5410
    dq  L5410
    dq  L5410
    dq  L5410
    dq  L5410
    dq  L5410
    dq  L5411
    dq  L5412
    segment .bss
mc_writenasm.getregname.str:
    resb      32
mc_writenasm.getxregname.str:
    resb      32
mc_writenasm.getdispname.str:
    resb      256
mc_writenasm.gettempname.str:
    resb      128
    alignb    8
mc_writeexe.libinsttable:
    resb      400
    alignb    8
mc_writeexe.libinstnames:
    resb      400
    alignb    8
mc_writeexe.libnotable:
    resb      400
    alignb    8
mc_writeexe.basereloclist:
    resb      8
    alignb    8
mc_writeexe.nbaserelocs:
    resb      8
    alignb    8
mc_writeexe.maxrelocaddr:
    resb      8
    alignb    8
mc_writeexe.blockbases:
    resb      4000
    alignb    4
mc_writeexe.blockcounts:
    resb      2000
    alignb    4
mc_writeexe.blockbytes:
    resb      2000
mc_writeexe.blockpadding:
    resb      500
    alignb    8
mc_writeexe.nbaseblocks:
    resb      8
    alignb    8
mc_writeexe.basetablesize:
    resb      8
    alignb    8
mc_writeexe.imagebase:
    resb      8
    alignb    8
mc_writeexe.imagesize:
    resb      8
    alignb    8
mc_writeexe.filesize:
    resb      8
    alignb    8
mc_writeexe.thunktable:
    resb      8
    alignb    8
mc_writeexe.fileiatoffset:
    resb      8
    alignb    8
mc_writeexe.fileiatsize:
    resb      8
    alignb    8
mc_writeexe.stentrypoint:
    resb      8
    alignb    8
mc_writeexe.stentrypoint2:
    resb      8
    alignb    8
mc_writeexe.stentrypoint3:
    resb      8
    alignb    8
mc_writeexe.sectiontable:
    resb      720
    alignb    8
mc_writeexe.nsections:
    resb      8
    alignb    8
mc_writeexe.importdir:
    resb      8
    alignb    8
mc_writeexe.importtable:
    resb      144048
    alignb    8
mc_writeexe.nimports:
    resb      8
    alignb    8
mc_writeexe.exporttable:
    resb      16000
    alignb    8
mc_writeexe.nexports:
    resb      8
    alignb    8
mc_writeexe.dllfilename:
    resb      8
    alignb    8
mc_writeexe.isdll:
    resb      8
    alignb    8
mc_writeexe.dlltable:
    resb      2400
    alignb    8
mc_writeexe.ndlls:
    resb      8
    alignb    8
mc_writeexe.datastart:
    resb      8
    alignb    8
mc_writeexe.dataptr:
    resb      8
    alignb    8
mc_writeexe.userentrypoint:
    resb      8
    alignb    8
mc_writeexe.exportdirvirtaddr:
    resb      8
    alignb    8
mc_writeexe.exportdirvirtsize:
    resb      8
    alignb    8
mc_writeexe.exportdiroffset:
    resb      8
    alignb    8
mc_writeexe.blockdirvirtaddr:
    resb      8
    alignb    8
mc_writeexe.blockdirvirtsize:
    resb      8
    alignb    8
mc_writeexe.blockdiroffset:
    resb      8
    segment .data
mc_writeexe.writedosstub.stubdata:
    dq  0x300905A4D
    dq  0xFFFF00000004
    dq  0xB8
    dq  0x40
    dq  0
    dq  0
    dq  0
    dq  0x8000000000
    dq  0xCD09B4000EBA1F0E
    dq  0x685421CD4C01B821
    dq  0x72676F7270207369
    dq  0x6F6E6E6163206D61
    dq  0x6E75722065622074
    dq  0x20534F44206E6920
    dq  0xA0D0D2E65646F6D
    dq  0x24
;ENDDATA
    segment .bss
    alignb    8
mc_writeobj.symtaboffset:
    resb      8
    alignb    8
mc_writeobj.datastart:
    resb      8
    alignb    8
mc_writeobj.dataptr:
    resb      8
    alignb    8
mc_writeobj.symboltable:
    resb      234018
    alignb    8
mc_writeobj.nsymbols:
    resb      8
    segment .data
    align     8
mc_writeobj.stoffset:
    dq  0
    segment .bss
    alignb    8
mc_writeobj.stringtable:
    resb      40000
    alignb    8
mc_writeobj.stringlengths:
    resb      40000
    segment .data
    align     8
mc_writeobj.nextstringoffset:
    dq  0
    align     8
mc_writeobj.nstrings:
    dq  0
    segment .bss
    alignb    8
mc_writeobj.writerelocs.s:
    resb      10
    alignb    8
mc_writeobj.makesymbol.r:
    resb      18
    alignb    8
mc_writeobj.strtoaux.r:
    resb      18
    alignb    8
mc_writeobj.sectiontoaux.r:
    resb      18
mc_writeobj.getqualname.str:
    resb      256
    segment .data
    align     8
mx_decls.mcxdirnames:
mcxdirnames:
    dq  L5413
    dq  L5414
    dq  L5415
    dq  L5416
    dq  L5417
    dq  L5418
    dq  L5419
    dq  L5420
    dq  L5421
    dq  L5422
    dq  L5423
    dq  L5424
    dq  L5425
    dq  L5426
    align     8
mx_decls.mcxrelocnames:
mcxrelocnames:
    dq  L5427
    dq  L5428
    dq  L5429
    dq  L5430
    dq  L5431
    dq  L5432
    segment .bss
    alignb    8
mx_decls.dllnametable:
    resb      160
    alignb    8
mx_decls.dllinsttable:
    resb      160
    alignb    8
mx_decls.ndlllibs:
    resb      8
    alignb    8
mx_decls.libnametable:
    resb      160
    alignb    8
mx_decls.libtable:
    resb      160
mx_decls.librelocated:
    resb      20
mx_decls.libinitdone:
    resb      20
    alignb    8
mx_decls.nlibs:
    resb      8
    alignb    8
mx_decls.symbolnametable:
    resb      24000
mx_decls.symboldefined:
    resb      3000
    alignb    8
mx_decls.symboladdress:
    resb      24000
    alignb    2
mx_decls.symbollibindex:
    resb      6000
mx_decls.symboldllindex:
    resb      3000
    alignb    8
mx_decls.nsymbols:
    resb      8
    segment .data
    align     8
mx_decls.nsymimports:
nsymimports:
    dq  0
    align     8
mx_decls.nsymexports:
nsymexports:
    dq  0
    align     8
mx_lib.rsegmentnames:
    dq  L5433
    dq  L5434
    dq  L5435
    dq  L5436
    dq  L5437
    dq  L5438
    segment .bss
    alignb    8
mx_write.dest:
    resb      8
    alignb    8
mx_write.entrypoint:
    resb      8
    segment .text
;Proc start
msys.start:
;>>
    %define msys.start.nargs -8
    %define msys.start.nargs64 -16
    %define msys.start.args -24
    %define msys.start.res -32
    %define msys.start.j -40
    %define msys.start.i -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
;---------------
    sub       rsp,	8
    lea       rax,	[msys.start.startupinfo]
    push      rax
    lea       rcx,	[rbp + msys.start.nargs]
    lea       rdx,	[rbp + msys.start.args]
    lea       r8,	[msys.envstrings]
    xor       r9d,	r9d
    sub       rsp,	32
    call      __getmainargs
    add       rsp,	48
    movsxd    rax,	eax
    mov       [rbp + msys.start.res],	rax
    movsxd    rax,	dword [rbp + msys.start.nargs]
    mov       [msys.nsysparams],	rax
    mov       rax,	[msys.nsysparams]
    cmp       rax,	128
    jle       L3
    lea       rcx,	[rel L5439]
    call      printf
    mov       rcx,	50
    call      exit
L3:
L2:
    movsxd    rax,	dword [rbp + msys.start.nargs]
    mov       [rbp + msys.start.nargs64],	rax
    mov       rax,	1
    mov       [rbp + msys.start.i],	rax
    mov       rax,	[rbp + msys.start.nargs64]
    cmp       rax,	1
    jl        L6
L4:
    mov       rax,	[rbp + msys.start.args]
    mov       r10,	[rbp + msys.start.i]
    mov       r11,	[rax + r10*8-8]
    lea       rax,	[msys.sysparams]
    mov       r10,	[rbp + msys.start.i]
    mov       [rax + r10*8-8],	r11
L5:
    mov       rax,	[rbp + msys.start.i]
    inc       rax
    mov       [rbp + msys.start.i],	rax
    cmp       rax,	[rbp + msys.start.nargs64]
    jle       L4
L6:
    mov       rax,	[msys.$cmdskip]
    add       rax,	1
    mov       r10,	[msys.nsysparams]
    sub       r10,	rax
    mov       [msys.ncmdparams],	r10
    lea       rax,	[msys.sysparams]
    mov       r10,	[msys.$cmdskip]
    lea       rax,	[rax + r10*8]
    mov       [msys.cmdparams],	rax
    mov       rax,	1
    mov       [rbp + msys.start.j],	rax
    xor       eax,	eax
    mov       [msys.nenvstrings],	rax
    jmp       L8
L7:
    inc       qword [msys.nenvstrings]
    inc       qword [rbp + msys.start.j]
L8:
    mov       rax,	[msys.envstrings]
    mov       r10,	[rbp + msys.start.j]
    mov       r11,	[rax + r10*8-8]
    test      r11,	r11
    jnz       L7
L9:
L1:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc pushio
msys.pushio:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[msys.niostack]
    cmp       rax,	10
    jl        L12
    lea       rcx,	[rel L5440]
    call      printf
    mov       rcx,	53
    call      exit
L12:
L11:
    inc       qword [msys.niostack]
    mov       rax,	[msys.outchan]
    lea       r10,	[msys.outchan_stack]
    mov       r11,	[msys.niostack]
    mov       [r10 + r11*8-8],	rax
    mov       rax,	[msys.outdev]
    lea       r10,	[msys.outdev_stack]
    mov       r11,	[msys.niostack]
    mov       [r10 + r11*8-8],	rax
    mov       rax,	[msys.fmtstr]
    lea       r10,	[msys.fmtstr_stack]
    mov       r11,	[msys.niostack]
    mov       [r10 + r11*8-8],	rax
    mov       al,	[msys.needgap]
    lea       r10,	[msys.needgap_stack]
    mov       r11,	[msys.niostack]
    mov       [r10 + r11-1],	al
    xor       eax,	eax
    mov       [msys.needgap],	rax
    xor       eax,	eax
    mov       [msys.fmtstr],	rax
    xor       eax,	eax
    mov       [msys.outchan],	rax
L10:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_startfile
msys.m$print_startfile:
;>>
    %define msys.m$print_startfile.dev 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      msys.pushio
    mov       rax,	[rbp + msys.m$print_startfile.dev]
    mov       [msys.outchan],	rax
    mov       rax,	[rbp + msys.m$print_startfile.dev]
    test      rax,	rax
    jz        L15
    mov       rax,	2
    mov       [msys.outdev],	rax
    jmp       L14
L15:
    mov       rax,	1
    mov       [msys.outdev],	rax
L14:
    call      msys.resetprintbuffer
L13:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_startstr
msys.m$print_startstr:
;>>
    %define msys.m$print_startstr.s 16
    %define msys.m$print_startstr.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      msys.pushio
    mov       rax,	[rbp + msys.m$print_startstr.s]
    lea       r10,	[msys.ptr_stack]
    mov       r11,	[msys.niostack]
    mov       [r10 + r11*8-8],	rax
    lea       rax,	[msys.ptr_stack]
    mov       r10,	[msys.niostack]
    lea       rax,	[rax + r10*8-8]
    mov       [rbp + msys.m$print_startstr.p],	rax
    mov       rax,	[rbp + msys.m$print_startstr.p]
    mov       [msys.outchan],	rax
    mov       rax,	3
    mov       [msys.outdev],	rax
L16:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc m$print_startptr
msys.m$print_startptr:
;>>
    %define msys.m$print_startptr.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      msys.pushio
    mov       rax,	[rbp + msys.m$print_startptr.p]
    mov       [msys.outchan],	rax
    mov       rax,	3
    mov       [msys.outdev],	rax
L17:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_startcon
msys.m$print_startcon:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      msys.pushio
    mov       rax,	1
    mov       [msys.outdev],	rax
    call      msys.resetprintbuffer
L18:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_setfmt
msys.m$print_setfmt:
;>>
    %define msys.m$print_setfmt.format 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + msys.m$print_setfmt.format]
    mov       [msys.fmtstr],	rax
L19:
;---------------
    pop       rbp
    ret       
;End 
;Proc m$print_end
msys.m$print_end:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    xor       eax,	eax
    mov       [msys.needgap],	rax
    mov       rcx,	1
    call      msys.nextfmtchars
    mov       rax,	[msys.niostack]
    cmp       rax,	1
    jnz       L22
    mov       rax,	[msys.outdev]
    cmp       rax,	1
    jz        L23
    cmp       rax,	2
    jnz       L22
L23:
    call      msys.dumpprintbuffer
L22:
L21:
    mov       rax,	[msys.niostack]
    cmp       rax,	0
    jnz       L25
    jmp       L20
L25:
L24:
    lea       rax,	[msys.outchan_stack]
    mov       r10,	[msys.niostack]
    mov       r11,	[rax + r10*8-8]
    mov       [msys.outchan],	r11
    lea       rax,	[msys.outdev_stack]
    mov       r10,	[msys.niostack]
    mov       r11,	[rax + r10*8-8]
    mov       [msys.outdev],	r11
    lea       rax,	[msys.fmtstr_stack]
    mov       r10,	[msys.niostack]
    mov       r11,	[rax + r10*8-8]
    mov       [msys.fmtstr],	r11
    lea       rax,	[msys.needgap_stack]
    mov       r10,	[msys.niostack]
    movzx     r11,	byte [rax + r10-1]
    mov       [msys.needgap],	r11
    dec       qword [msys.niostack]
L20:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_ptr
msys.m$print_ptr:
;>>
    %define msys.m$print_ptr.a 16
    %define msys.m$print_ptr.fmtstyle 24
    %define msys.m$print_ptr.s -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.m$print_ptr.fmtstyle]
    cmp       rax,	0
    jnz       L28
    lea       rax,	[rel L5441]
    mov       [rbp + msys.m$print_ptr.fmtstyle],	rax
L28:
L27:
    mov       rcx,	[rbp + msys.m$print_ptr.a]
    mov       rdx,	[rbp + msys.m$print_ptr.fmtstyle]
    call      msys.m$print_u64
L26:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc m$print_ptr_nf
msys.m$print_ptr_nf:
;>>
    %define msys.m$print_ptr_nf.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + msys.m$print_ptr_nf.a]
    xor       edx,	edx
    call      msys.m$print_ptr
L29:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_i64
msys.m$print_i64:
;>>
    %define msys.m$print_i64.a 16
    %define msys.m$print_i64.fmtstyle 24
    %define msys.m$print_i64.s -40
    %define msys.m$print_i64.fmt -56
    %define msys.m$print_i64.n -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_i64.fmtstyle]
    cmp       rax,	0
    jnz       L32
    mov       rax,	[rbp + msys.m$print_i64.a]
    cmp       rax,	0
    jl        L34
    mov       rcx,	[rbp + msys.m$print_i64.a]
    lea       rdx,	[rbp + msys.m$print_i64.s]
    mov       r8,	10
    xor       r9d,	r9d
    call      msys.u64tostr
    mov       [rbp + msys.m$print_i64.n],	rax
    jmp       L33
L34:
    mov       rax,	[rbp + msys.m$print_i64.a]
    mov       r10,	-9223372036854775808
    cmp       rax,	r10
    jnz       L35
    lea       rax,	[msys.defaultfmt]
    lea       r10,	[rbp + msys.m$print_i64.fmt]
    movdqu    XMM4,	[rax]
    movdqu    [r10],	XMM4
    jmp       L36
L35:
    mov       al,	45
    mov       [rbp + msys.m$print_i64.s],	al
    lea       rax,	[rbp + msys.m$print_i64.s+1]
    mov       r10,	[rbp + msys.m$print_i64.a]
    neg       r10
    mov       rcx,	r10
    mov       rdx,	rax
    mov       r8,	10
    xor       r9d,	r9d
    call      msys.u64tostr
    add       rax,	1
    mov       [rbp + msys.m$print_i64.n],	rax
L33:
    lea       rcx,	[rbp + msys.m$print_i64.s]
    mov       rdx,	[rbp + msys.m$print_i64.n]
    call      msys.printstr_n
    jmp       L31
L32:
    mov       rcx,	[rbp + msys.m$print_i64.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_i64.fmt]
    call      msys.strtofmt
    movzx     rax,	byte [rbp + msys.m$print_i64.fmt+14]
    cmp       rax,	86
    jnz       L38
    mov       rax,	[rbp + msys.m$print_i64.a]
    mov       [msys.fmtparam],	rax
    xor       eax,	eax
    mov       [msys.needgap],	rax
    jmp       L37
L38:
;dofmt:
L36:
    mov       rcx,	[rbp + msys.m$print_i64.a]
    lea       rdx,	[rbp + msys.m$print_i64.fmt]
    call      msys.tostr_i64
L37:
L31:
    mov       rax,	1
    mov       [msys.needgap],	rax
L30:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc m$print_i64_nf
msys.m$print_i64_nf:
;>>
    %define msys.m$print_i64_nf.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + msys.m$print_i64_nf.a]
    xor       edx,	edx
    call      msys.m$print_i64
L39:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_bool
msys.m$print_bool:
;>>
    %define msys.m$print_bool.a 16
    %define msys.m$print_bool.fmtstyle 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.m$print_bool.a]
    test      rax,	rax
    jz        L42
    lea       rcx,	[rel L5442]
    mov       rdx,	[rbp + msys.m$print_bool.fmtstyle]
    call      msys.m$print_str
    jmp       L41
L42:
    lea       rcx,	[rel L5443]
    mov       rdx,	[rbp + msys.m$print_bool.fmtstyle]
    call      msys.m$print_str
L41:
L40:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_u64
msys.m$print_u64:
;>>
    %define msys.m$print_u64.a 16
    %define msys.m$print_u64.fmtstyle 24
    %define msys.m$print_u64.s -40
    %define msys.m$print_u64.fmt -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_u64.fmtstyle]
    cmp       rax,	0
    jnz       L45
    lea       rcx,	[rbp + msys.m$print_u64.s]
    lea       rdx,	[rel L5444]
    mov       r8,	[rbp + msys.m$print_u64.a]
    call      sprintf
    lea       rcx,	[rbp + msys.m$print_u64.s]
    call      msys.printstr
    jmp       L44
L45:
    mov       rcx,	[rbp + msys.m$print_u64.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_u64.fmt]
    call      msys.strtofmt
    mov       rcx,	[rbp + msys.m$print_u64.a]
    lea       rdx,	[rbp + msys.m$print_u64.fmt]
    call      msys.tostr_u64
L44:
    mov       rax,	1
    mov       [msys.needgap],	rax
L43:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc m$print_r64
msys.m$print_r64:
;>>
    %define msys.m$print_r64.x 16
    %define msys.m$print_r64.fmtstyle 24
    %define msys.m$print_r64.s -360
    %define msys.m$print_r64.fmt -376
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	416
    movq      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_r64.fmtstyle]
    cmp       rax,	0
    jnz       L48
    lea       rcx,	[rbp + msys.m$print_r64.s]
    lea       rdx,	[rel L5445]
    movq      XMM2,	[rbp + msys.m$print_r64.x]
    movq      r8,	XMM2
    call      sprintf
    lea       rcx,	[rbp + msys.m$print_r64.s]
    call      msys.printstr
    jmp       L47
L48:
    mov       rcx,	[rbp + msys.m$print_r64.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_r64.fmt]
    call      msys.strtofmt
    movq      XMM0,	[rbp + msys.m$print_r64.x]
    lea       rdx,	[rbp + msys.m$print_r64.fmt]
    call      msys.tostr_r64
L47:
    mov       rax,	1
    mov       [msys.needgap],	rax
L46:
;---------------
    add       rsp,	416
    pop       rbp
    ret       
;End 
;Proc m$print_r32
msys.m$print_r32:
;>>
    %define msys.m$print_r32.x 16
    %define msys.m$print_r32.fmtstyle 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    movd      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    movd      XMM4,	[rbp + msys.m$print_r32.x]
    cvtss2sd  XMM4,	XMM4
    movq      XMM0,	XMM4
    mov       rdx,	[rbp + msys.m$print_r32.fmtstyle]
    call      msys.m$print_r64
L49:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_c8
msys.m$print_c8:
;>>
    %define msys.m$print_c8.a 16
    %define msys.m$print_c8.fmtstyle 24
    %define msys.m$print_c8.s -16
    %define msys.m$print_c8.fmt -32
    %define msys.m$print_c8.n -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_c8.a]
    mov       [rbp + msys.m$print_c8.s],	rax
    xor       eax,	eax
    mov       [rbp + msys.m$print_c8.s+8],	al
    lea       rcx,	[rbp + msys.m$print_c8.s]
    call      msys.getutfsize
    mov       [rbp + msys.m$print_c8.n],	rax
    lea       rcx,	[rbp + msys.m$print_c8.s]
    mov       rdx,	[rbp + msys.m$print_c8.n]
    call      msys.printstr_n
    mov       rax,	1
    mov       [msys.needgap],	rax
L50:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc m$print_str
msys.m$print_str:
;>>
    %define msys.m$print_str.s 16
    %define msys.m$print_str.fmtstyle 24
    %define msys.m$print_str.fmt -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_str.s]
    cmp       rax,	0
    jnz       L53
    lea       rcx,	[rel L5446]
    call      msys.printstr
    jmp       L51
L53:
L52:
    mov       rax,	[rbp + msys.m$print_str.fmtstyle]
    cmp       rax,	0
    jnz       L55
    mov       rcx,	[rbp + msys.m$print_str.s]
    call      msys.printstr
    jmp       L54
L55:
    mov       rcx,	[rbp + msys.m$print_str.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_str.fmt]
    call      msys.strtofmt
    mov       rcx,	[rbp + msys.m$print_str.s]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_str.fmt]
    call      msys.tostr_str
L54:
    mov       rax,	1
    mov       [msys.needgap],	rax
L51:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc m$print_strn
msys.m$print_strn:
;>>
    %define msys.m$print_strn.s 16
    %define msys.m$print_strn.length 24
    %define msys.m$print_strn.fmtstyle 32
    %define msys.m$print_strn.fmt -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_strn.s]
    cmp       rax,	0
    jnz       L58
    lea       rcx,	[rel L5446]
    call      msys.printstr
    jmp       L56
L58:
L57:
    mov       rax,	[rbp + msys.m$print_strn.fmtstyle]
    cmp       rax,	0
    jnz       L60
    mov       rcx,	[rbp + msys.m$print_strn.s]
    mov       rdx,	[rbp + msys.m$print_strn.length]
    call      msys.printstr_n
    jmp       L59
L60:
    mov       rcx,	[rbp + msys.m$print_strn.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[rbp + msys.m$print_strn.fmt]
    call      msys.strtofmt
    mov       rcx,	[rbp + msys.m$print_strn.s]
    mov       rdx,	[rbp + msys.m$print_strn.length]
    lea       r8,	[rbp + msys.m$print_strn.fmt]
    call      msys.tostr_str
L59:
    mov       rax,	1
    mov       [msys.needgap],	rax
L56:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc m$print_str_nf
msys.m$print_str_nf:
;>>
    %define msys.m$print_str_nf.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + msys.m$print_str_nf.s]
    xor       edx,	edx
    call      msys.m$print_str
L61:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_strsl
msys.m$print_strsl:
;>>
    %define msys.m$print_strsl.s 16
    %define msys.m$print_strsl.fmtstyle 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       ecx,	ecx
    call      msys.nextfmtchars
    mov       rax,	[rbp + msys.m$print_strsl.fmtstyle]
    cmp       rax,	0
    jnz       L64
    mov       rax,	[rbp + msys.m$print_strsl.s]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + msys.m$print_strsl.s]
    mov       r11,	[rax]
    mov       rcx,	r11
    mov       rdx,	r10
    call      msys.printstr_n
    jmp       L63
L64:
    lea       rcx,	[rel L5447]
    call      mlib.abortprogram
L63:
    mov       rax,	1
    mov       [msys.needgap],	rax
L62:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_newline
msys.m$print_newline:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    xor       eax,	eax
    mov       [msys.needgap],	rax
    mov       rcx,	1
    call      msys.nextfmtchars
    lea       rcx,	[rel L5448]
    call      msys.printstr
L65:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$print_nogap
msys.m$print_nogap:
;>>
;---------------
    xor       eax,	eax
    mov       [msys.needgap],	rax
L66:
;---------------
    ret       
;End 
;Proc m$print_space
msys.m$print_space:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    xor       eax,	eax
    mov       [msys.needgap],	rax
    lea       rcx,	[rel L5449]
    call      msys.printstr
L67:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc printstr
msys.printstr:
;>>
    %define msys.printstr.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + msys.printstr.s]
    call      strlen
    mov       rcx,	[rbp + msys.printstr.s]
    mov       rdx,	rax
    call      msys.printstr_n
L68:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc printstr_n
msys.printstr_n:
;>>
    %define msys.printstr_n.s 16
    %define msys.printstr_n.n 24
    %define msys.printstr_n.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + msys.printstr_n.s]
    mov       rdx,	[rbp + msys.printstr_n.n]
    xor       r8d,	r8d
    call      msys.dumpstr
L69:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc printstrn_app
msys.printstrn_app:
;>>
    %define msys.printstrn_app.s 16
    %define msys.printstrn_app.length 24
    %define msys.printstrn_app.f 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + msys.printstrn_app.length]
    test      rax,	rax
    jz        L72
    mov       rax,	[rbp + msys.printstrn_app.f]
    cmp       rax,	0
    jnz       L74
    lea       rcx,	[rel L5450]
    mov       rdx,	[rbp + msys.printstrn_app.length]
    mov       r8,	[rbp + msys.printstrn_app.s]
    call      printf
    jmp       L73
L74:
    mov       rcx,	[rbp + msys.printstrn_app.f]
    lea       rdx,	[rel L5450]
    mov       r8,	[rbp + msys.printstrn_app.length]
    mov       r9,	[rbp + msys.printstrn_app.s]
    call      fprintf
L73:
L72:
L71:
L70:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc printchar
msys.printchar:
;>>
    %define msys.printchar.ch 16
    %define msys.printchar.str -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       al,	[rbp + msys.printchar.ch]
    mov       [rbp + msys.printchar.str],	al
    xor       eax,	eax
    mov       [rbp + msys.printchar.str+1],	al
    lea       rcx,	[rbp + msys.printchar.str]
    mov       rdx,	1
    call      msys.printstr_n
L75:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc nextfmtchars
msys.nextfmtchars:
;>>
    %define msys.nextfmtchars.lastx 16
    %define msys.nextfmtchars.c -8
    %define msys.nextfmtchars.pstart -16
    %define msys.nextfmtchars.n -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[msys.fmtstr]
    test      rax,	rax
    jnz       L78
    mov       rax,	[msys.needgap]
    test      rax,	rax
    jz        L80
    mov       rcx,	32
    call      msys.printchar
L80:
L79:
    xor       eax,	eax
    mov       [msys.needgap],	rax
    jmp       L76
L78:
L77:
    mov       rax,	[msys.fmtstr]
    mov       [rbp + msys.nextfmtchars.pstart],	rax
    xor       eax,	eax
    mov       [rbp + msys.nextfmtchars.n],	rax
L81:
    mov       rax,	[msys.fmtstr]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.nextfmtchars.c],	r10b
    movzx     rax,	byte [rbp + msys.nextfmtchars.c]
    cmp       rax,	35
    jz        L84
    cmp       rax,	0
    jz        L85
    cmp       rax,	126
    jz        L86
    jmp       L87
L84:
    mov       rax,	[rbp + msys.nextfmtchars.lastx]
    test      rax,	rax
    jz        L89
    jmp       L90
L89:
L88:
    inc       qword [msys.fmtstr]
    mov       rax,	[rbp + msys.nextfmtchars.n]
    test      rax,	rax
    jz        L92
    mov       rcx,	[rbp + msys.nextfmtchars.pstart]
    mov       rdx,	[rbp + msys.nextfmtchars.n]
    call      msys.printstr_n
L92:
L91:
    jmp       L76
L85:
    mov       rax,	[rbp + msys.nextfmtchars.n]
    test      rax,	rax
    jz        L94
    mov       rcx,	[rbp + msys.nextfmtchars.pstart]
    mov       rdx,	[rbp + msys.nextfmtchars.n]
    call      msys.printstr_n
    jmp       L93
L94:
    mov       rax,	[rbp + msys.nextfmtchars.lastx]
    test      rax,	rax
    jnz       L95
    lea       rcx,	[rel L5451]
    mov       rdx,	1
    call      msys.printstr_n
L95:
L93:
    jmp       L76
L86:
    mov       rax,	[rbp + msys.nextfmtchars.n]
    test      rax,	rax
    jz        L97
    mov       rcx,	[rbp + msys.nextfmtchars.pstart]
    mov       rdx,	[rbp + msys.nextfmtchars.n]
    call      msys.printstr_n
    xor       eax,	eax
    mov       [rbp + msys.nextfmtchars.n],	rax
L97:
L96:
    inc       qword [msys.fmtstr]
    mov       rax,	[msys.fmtstr]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.nextfmtchars.c],	r10b
    movzx     rax,	byte [rbp + msys.nextfmtchars.c]
    test      rax,	rax
    jz        L99
    inc       qword [msys.fmtstr]
    movzx     rax,	byte [rbp + msys.nextfmtchars.c]
    mov       rcx,	rax
    call      msys.printchar
L99:
L98:
    mov       rax,	[msys.fmtstr]
    mov       [rbp + msys.nextfmtchars.pstart],	rax
    jmp       L83
L87:
;skip:
L90:
    inc       qword [rbp + msys.nextfmtchars.n]
    inc       qword [msys.fmtstr]
L83:
    jmp       L81
L82:
L76:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc strtofmt
msys.strtofmt:
;>>
    %define msys.strtofmt.s 16
    %define msys.strtofmt.slen 24
    %define msys.strtofmt.fmt 32
    %define msys.strtofmt.c -8
    %define msys.strtofmt.base -16
    %define msys.strtofmt.wset -24
    %define msys.strtofmt.n -32
    %define msys.strtofmt.str -136
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	176
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    lea       rax,	[msys.defaultfmt]
    mov       r10,	[rbp + msys.strtofmt.fmt]
    movdqu    XMM4,	[rax]
    movdqu    [r10],	XMM4
    mov       rax,	[rbp + msys.strtofmt.s]
    cmp       rax,	0
    jnz       L102
    jmp       L100
L102:
L101:
    mov       rax,	[rbp + msys.strtofmt.slen]
    cmp       rax,	-1
    jnz       L104
    mov       rcx,	[rbp + msys.strtofmt.s]
    call      strlen
    mov       [rbp + msys.strtofmt.slen],	rax
L104:
L103:
    lea       rcx,	[rbp + msys.strtofmt.str]
    mov       rdx,	[rbp + msys.strtofmt.s]
    mov       r8,	[rbp + msys.strtofmt.slen]
    call      memcpy
    xor       eax,	eax
    mov       r10,	[rbp + msys.strtofmt.slen]
    mov       [rbp + r10 + msys.strtofmt.str],	al
    lea       rax,	[rbp + msys.strtofmt.str]
    mov       [rbp + msys.strtofmt.s],	rax
    xor       eax,	eax
    mov       [rbp + msys.strtofmt.wset],	al
    jmp       L106
L105:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.strtofmt.c],	r10
    inc       qword [rbp + msys.strtofmt.s]
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	65
    jnz       L109
    mov       al,	65
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+8],	al
    jmp       L108
L109:
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	97
    jnz       L110
    mov       al,	97
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+8],	al
    jmp       L108
L110:
    mov       rcx,	[rbp + msys.strtofmt.c]
    call      toupper
    movsxd    rax,	eax
    sub       rax,	66
    cmp       rax,	25
    jae       L113
    lea       r10,	[rel L112]
    jmp       [r10 + rax*8]
    segment .data
L112:
    dq  L114
    dq  L143
    dq  L142
    dq  L139
    dq  L140
    dq  L141
    dq  L115
    dq  L113
    dq  L125
    dq  L113
    dq  L113
    dq  L144
    dq  L147
    dq  L116
    dq  L132
    dq  L124
    dq  L113
    dq  L129
    dq  L135
    dq  L138
    dq  L145
    dq  L113
    dq  L117
    dq  L146
    dq  L128
    segment .text
L114:
    mov       al,	2
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+2],	al
    jmp       L111
L115:
    mov       al,	16
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+2],	al
    jmp       L111
L116:
    mov       al,	8
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+2],	al
    jmp       L111
L117:
    xor       eax,	eax
    mov       [rbp + msys.strtofmt.base],	rax
L118:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.strtofmt.c],	r10
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	48
    jl        L121
    cmp       rax,	57
    jg        L121
    mov       rax,	[rbp + msys.strtofmt.base]
    imul      rax,	10
    add       rax,	[rbp + msys.strtofmt.c]
    sub       rax,	48
    mov       [rbp + msys.strtofmt.base],	rax
    inc       qword [rbp + msys.strtofmt.s]
    jmp       L120
L121:
    jmp       L119
L120:
    jmp       L118
L119:
    mov       rax,	[rbp + msys.strtofmt.base]
    cmp       rax,	2
    jl        L123
    cmp       rax,	16
    jg        L123
    mov       al,	[rbp + msys.strtofmt.base]
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+2],	al
L123:
L122:
    jmp       L111
L124:
    mov       al,	34
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+3],	al
    jmp       L111
L125:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      toupper
    movsxd    rax,	eax
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+9],	al
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L127
    inc       qword [rbp + msys.strtofmt.s]
L127:
L126:
    jmp       L111
L128:
    mov       al,	48
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+4],	al
    jmp       L111
L129:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.strtofmt.fmt]
    mov       [rax+7],	r10b
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L131
    inc       qword [rbp + msys.strtofmt.s]
L131:
L130:
    jmp       L111
L132:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.strtofmt.fmt]
    mov       [rax+4],	r10b
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L134
    inc       qword [rbp + msys.strtofmt.s]
L134:
L133:
    jmp       L111
L135:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.strtofmt.fmt]
    mov       [rax+10],	r10b
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L137
    inc       qword [rbp + msys.strtofmt.s]
L137:
L136:
    jmp       L111
L138:
    mov       al,	87
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+11],	al
    jmp       L111
L139:
    mov       al,	101
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+5],	al
    jmp       L111
L140:
    mov       al,	102
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+5],	al
    jmp       L111
L141:
    mov       al,	103
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+5],	al
    jmp       L111
L142:
    mov       al,	68
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+13],	al
    jmp       L111
L143:
    mov       al,	67
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+12],	al
    jmp       L111
L144:
    mov       al,	77
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+12],	al
    jmp       L111
L145:
    mov       al,	86
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+14],	al
    jmp       L111
L146:
    mov       rax,	[rbp + msys.strtofmt.fmt]
    lea       rax,	[rax+15]
    or        byte [rax],	1
    jmp       L111
L147:
    mov       rax,	[rbp + msys.strtofmt.fmt]
    lea       rax,	[rax+15]
    or        byte [rax],	2
    jmp       L111
L113:
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	46
    jz        L149
    cmp       rax,	44
    jz        L150
    cmp       rax,	95
    jz        L150
    cmp       rax,	43
    jz        L151
    cmp       rax,	126
    jz        L152
    cmp       rax,	42
    jz        L153
    jmp       L154
L149:
    mov       al,	1
    mov       [rbp + msys.strtofmt.wset],	al
    jmp       L148
L150:
    mov       al,	[rbp + msys.strtofmt.c]
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+7],	al
    jmp       L148
L151:
    mov       al,	43
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+6],	al
    jmp       L148
L152:
    mov       al,	126
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+3],	al
    jmp       L148
L153:
    mov       rax,	[msys.fmtparam]
    mov       [rbp + msys.strtofmt.n],	rax
    jmp       L155
L154:
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	48
    jl        L157
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	57
    jg        L157
    mov       rax,	[rbp + msys.strtofmt.c]
    sub       rax,	48
    mov       [rbp + msys.strtofmt.n],	rax
L158:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.strtofmt.c],	r10
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L161
    jmp       L159
L161:
L160:
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	48
    jl        L163
    mov       rax,	[rbp + msys.strtofmt.c]
    cmp       rax,	57
    jg        L163
    inc       qword [rbp + msys.strtofmt.s]
    mov       rax,	[rbp + msys.strtofmt.n]
    imul      rax,	10
    add       rax,	[rbp + msys.strtofmt.c]
    sub       rax,	48
    mov       [rbp + msys.strtofmt.n],	rax
    jmp       L162
L163:
    jmp       L159
L162:
    jmp       L158
L159:
;gotwidth:
L155:
    movzx     rax,	byte [rbp + msys.strtofmt.wset]
    test      rax,	rax
    jnz       L165
    mov       al,	[rbp + msys.strtofmt.n]
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10],	al
    mov       al,	1
    mov       [rbp + msys.strtofmt.wset],	al
    jmp       L164
L165:
    mov       al,	[rbp + msys.strtofmt.n]
    mov       r10,	[rbp + msys.strtofmt.fmt]
    mov       [r10+1],	al
L164:
L157:
L156:
L148:
L111:
L108:
L106:
    mov       rax,	[rbp + msys.strtofmt.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jnz       L105
L107:
L100:
;---------------
    add       rsp,	176
    pop       rbp
    ret       
;End 
;Proc domultichar
msys.domultichar:
;>>
    %define msys.domultichar.p 16
    %define msys.domultichar.n 24
    %define msys.domultichar.dest 32
    %define msys.domultichar.fmt 40
    %define msys.domultichar.str -24
    %define msys.domultichar.q -32
    %define msys.domultichar.i -40
    %define msys.domultichar.nchars -48
    %define msys.domultichar.av_1 -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    lea       rax,	[rbp + msys.domultichar.str]
    mov       [rbp + msys.domultichar.q],	rax
    mov       rax,	[rbp + msys.domultichar.n]
    mov       [rbp + msys.domultichar.nchars],	rax
    mov       rax,	[rbp + msys.domultichar.n]
    mov       [rbp + msys.domultichar.av_1],	rax
    mov       rax,	[rbp + msys.domultichar.av_1]
    cmp       rax,	0
    jle       L169
L167:
    mov       rax,	[rbp + msys.domultichar.p]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L171
    jmp       L169
L171:
L170:
    mov       rax,	[rbp + msys.domultichar.p]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.domultichar.q]
    mov       [rax],	r10b
    inc       qword [rbp + msys.domultichar.q]
    inc       qword [rbp + msys.domultichar.p]
L168:
    dec       qword [rbp + msys.domultichar.av_1]
    jnz       L167
L169:
    xor       eax,	eax
    mov       r10,	[rbp + msys.domultichar.q]
    mov       [r10],	al
    lea       rcx,	[rbp + msys.domultichar.str]
    call      strlen
    lea       rcx,	[rbp + msys.domultichar.str]
    mov       rdx,	[rbp + msys.domultichar.dest]
    mov       r8,	rax
    mov       r9,	[rbp + msys.domultichar.fmt]
    call      msys.expandstr
L166:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc expandstr
msys.expandstr:
;>>
    %define msys.expandstr.s 16
    %define msys.expandstr.t 24
    %define msys.expandstr.n 32
    %define msys.expandstr.fmt 40
    %define msys.expandstr.i -8
    %define msys.expandstr.w -16
    %define msys.expandstr.m -24
    %define msys.expandstr.av_1 -32
    %define msys.expandstr.av_2 -40
    %define msys.expandstr.av_3 -48
    %define msys.expandstr.av_4 -56
    %define msys.expandstr.av_5 -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.expandstr.w],	r10
    mov       rax,	[rbp + msys.expandstr.w]
    cmp       rax,	0
    jz        L175
    mov       rax,	[rbp + msys.expandstr.w]
    cmp       rax,	[rbp + msys.expandstr.n]
    jg        L174
L175:
    mov       rcx,	[rbp + msys.expandstr.t]
    mov       rdx,	[rbp + msys.expandstr.s]
    mov       r8,	[rbp + msys.expandstr.n]
    call      strncpy
    xor       eax,	eax
    mov       r10,	[rbp + msys.expandstr.t]
    mov       r11,	[rbp + msys.expandstr.n]
    mov       [r10 + r11],	al
    mov       rax,	[rbp + msys.expandstr.n]
    jmp       L172
L174:
L173:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+9]
    cmp       r10,	76
    jnz       L177
    mov       rcx,	[rbp + msys.expandstr.t]
    mov       rdx,	[rbp + msys.expandstr.s]
    mov       r8,	[rbp + msys.expandstr.n]
    call      strncpy
    mov       rax,	[rbp + msys.expandstr.n]
    add       [rbp + msys.expandstr.t],	rax
    mov       rax,	1
    mov       [rbp + msys.expandstr.i],	rax
    mov       rax,	[rbp + msys.expandstr.w]
    sub       rax,	[rbp + msys.expandstr.n]
    mov       [rbp + msys.expandstr.av_1],	rax
    mov       rax,	[rbp + msys.expandstr.av_1]
    cmp       rax,	1
    jl        L180
L178:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
L179:
    mov       rax,	[rbp + msys.expandstr.i]
    inc       rax
    mov       [rbp + msys.expandstr.i],	rax
    cmp       rax,	[rbp + msys.expandstr.av_1]
    jle       L178
L180:
    xor       eax,	eax
    mov       r10,	[rbp + msys.expandstr.t]
    mov       [r10],	al
    jmp       L176
L177:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+9]
    cmp       r10,	82
    jnz       L181
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    cmp       r10,	48
    jnz       L183
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+2]
    test      r10,	r10
    jz        L183
    mov       rax,	[rbp + msys.expandstr.s]
    movzx     r10,	byte [rax]
    cmp       r10,	45
    jz        L184
    mov       rax,	[rbp + msys.expandstr.s]
    movzx     r10,	byte [rax]
    cmp       r10,	43
    jnz       L183
L184:
    mov       rax,	[rbp + msys.expandstr.s]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
    mov       rax,	[rbp + msys.expandstr.w]
    sub       rax,	[rbp + msys.expandstr.n]
    mov       [rbp + msys.expandstr.av_2],	rax
    mov       rax,	[rbp + msys.expandstr.av_2]
    cmp       rax,	0
    jle       L187
L185:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
L186:
    dec       qword [rbp + msys.expandstr.av_2]
    jnz       L185
L187:
    mov       rax,	[rbp + msys.expandstr.n]
    sub       rax,	1
    mov       r10,	[rbp + msys.expandstr.s]
    lea       r10,	[r10+1]
    mov       rcx,	[rbp + msys.expandstr.t]
    mov       rdx,	r10
    mov       r8,	rax
    call      strncpy
    mov       rax,	[rbp + msys.expandstr.t]
    mov       r10,	[rbp + msys.expandstr.n]
    lea       rax,	[rax + r10]
    sub       rax,	1
    xor       r10d,	r10d
    mov       [rax],	r10b
    jmp       L182
L183:
    mov       rax,	[rbp + msys.expandstr.w]
    sub       rax,	[rbp + msys.expandstr.n]
    mov       [rbp + msys.expandstr.av_3],	rax
    mov       rax,	[rbp + msys.expandstr.av_3]
    cmp       rax,	0
    jle       L190
L188:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
L189:
    dec       qword [rbp + msys.expandstr.av_3]
    jnz       L188
L190:
    mov       rcx,	[rbp + msys.expandstr.t]
    mov       rdx,	[rbp + msys.expandstr.s]
    mov       r8,	[rbp + msys.expandstr.n]
    call      strncpy
    xor       eax,	eax
    mov       r10,	[rbp + msys.expandstr.t]
    mov       r11,	[rbp + msys.expandstr.n]
    mov       [r10 + r11],	al
L182:
    jmp       L176
L181:
    mov       rax,	[rbp + msys.expandstr.w]
    sub       rax,	[rbp + msys.expandstr.n]
    add       rax,	1
    sar       rax,	1
    mov       [rbp + msys.expandstr.m],	rax
    mov       rax,	[rbp + msys.expandstr.m]
    mov       [rbp + msys.expandstr.av_4],	rax
    mov       rax,	[rbp + msys.expandstr.av_4]
    cmp       rax,	0
    jle       L193
L191:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
L192:
    dec       qword [rbp + msys.expandstr.av_4]
    jnz       L191
L193:
    mov       rcx,	[rbp + msys.expandstr.t]
    mov       rdx,	[rbp + msys.expandstr.s]
    mov       r8,	[rbp + msys.expandstr.n]
    call      strncpy
    mov       rax,	[rbp + msys.expandstr.n]
    add       [rbp + msys.expandstr.t],	rax
    mov       rax,	[rbp + msys.expandstr.w]
    sub       rax,	[rbp + msys.expandstr.n]
    sub       rax,	[rbp + msys.expandstr.m]
    mov       [rbp + msys.expandstr.av_5],	rax
    mov       rax,	[rbp + msys.expandstr.av_5]
    cmp       rax,	0
    jle       L196
L194:
    mov       rax,	[rbp + msys.expandstr.fmt]
    movzx     r10,	byte [rax+4]
    mov       rax,	[rbp + msys.expandstr.t]
    mov       [rax],	r10b
    inc       qword [rbp + msys.expandstr.t]
L195:
    dec       qword [rbp + msys.expandstr.av_5]
    jnz       L194
L196:
    xor       eax,	eax
    mov       r10,	[rbp + msys.expandstr.t]
    mov       [r10],	al
L176:
    mov       rax,	[rbp + msys.expandstr.w]
L172:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc u64tostr
msys.u64tostr:
;>>
    %define msys.u64tostr.aa 16
    %define msys.u64tostr.s 24
    %define msys.u64tostr.base 32
    %define msys.u64tostr.sep 40
    %define msys.u64tostr.t -360
    %define msys.u64tostr.dd -368
    %define msys.u64tostr.i -376
    %define msys.u64tostr.j -384
    %define msys.u64tostr.k -392
    %define msys.u64tostr.g -400
    %define msys.u64tostr.cc -408
    %define msys.u64tostr.dummy -416
    %define msys.u64tostr.s0 -424
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	432
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    xor       eax,	eax
    mov       [rbp + msys.u64tostr.i],	rax
    xor       eax,	eax
    mov       [rbp + msys.u64tostr.k],	rax
    mov       rax,	[rbp + msys.u64tostr.base]
    cmp       rax,	10
    jnz       L199
    mov       rax,	3
    jmp       L198
L199:
    mov       rax,	4
L198:
    mov       [rbp + msys.u64tostr.g],	rax
L200:
    mov       rax,	[rbp + msys.u64tostr.aa]
    mov       r10,	[rbp + msys.u64tostr.base]
    xor       rdx,	rdx
    div       r10
    xchg      rax,	rdx
    mov       [rbp + msys.u64tostr.dd],	rax
    mov       rax,	[rbp + msys.u64tostr.aa]
    mov       r10,	[rbp + msys.u64tostr.base]
    xor       rdx,	rdx
    div       r10
    mov       [rbp + msys.u64tostr.aa],	rax
    lea       rax,	[msys.digits]
    mov       r10,	[rbp + msys.u64tostr.dd]
    movzx     r11,	byte [rax + r10]
    inc       qword [rbp + msys.u64tostr.i]
    mov       rax,	[rbp + msys.u64tostr.i]
    mov       [rbp + rax + msys.u64tostr.t],	r11b
    inc       qword [rbp + msys.u64tostr.k]
    mov       rax,	[rbp + msys.u64tostr.sep]
    test      rax,	rax
    jz        L204
    mov       rax,	[rbp + msys.u64tostr.aa]
    cmp       rax,	0
    jz        L204
    mov       rax,	[rbp + msys.u64tostr.k]
    cmp       rax,	[rbp + msys.u64tostr.g]
    jnz       L204
    inc       qword [rbp + msys.u64tostr.i]
    mov       rax,	[rbp + msys.u64tostr.i]
    mov       r10b,	[rbp + msys.u64tostr.sep]
    mov       [rbp + rax + msys.u64tostr.t],	r10b
    xor       eax,	eax
    mov       [rbp + msys.u64tostr.k],	rax
L204:
L203:
L201:
    mov       rax,	[rbp + msys.u64tostr.aa]
    cmp       rax,	0
    jnz       L200
L202:
    mov       rax,	[rbp + msys.u64tostr.i]
    mov       [rbp + msys.u64tostr.j],	rax
    mov       rax,	[rbp + msys.u64tostr.s]
    mov       [rbp + msys.u64tostr.s0],	rax
    jmp       L206
L205:
    mov       rax,	[rbp + msys.u64tostr.i]
    dec       qword [rbp + msys.u64tostr.i]
    movzx     r10,	byte [rbp + rax + msys.u64tostr.t]
    mov       rax,	[rbp + msys.u64tostr.s]
    mov       [rax],	r10b
    inc       qword [rbp + msys.u64tostr.s]
L206:
    mov       rax,	[rbp + msys.u64tostr.i]
    test      rax,	rax
    jnz       L205
L207:
    xor       eax,	eax
    mov       r10,	[rbp + msys.u64tostr.s]
    mov       [r10],	al
    mov       rax,	[rbp + msys.u64tostr.j]
L197:
;---------------
    add       rsp,	432
    pop       rbp
    ret       
;End 
;Proc i64tostrfmt
msys.i64tostrfmt:
;>>
    %define msys.i64tostrfmt.aa 16
    %define msys.i64tostrfmt.s 24
    %define msys.i64tostrfmt.fmt 32
    %define msys.i64tostrfmt.str -360
    %define msys.i64tostrfmt.i -368
    %define msys.i64tostrfmt.j -376
    %define msys.i64tostrfmt.k -384
    %define msys.i64tostrfmt.n -392
    %define msys.i64tostrfmt.w -400
    %define msys.i64tostrfmt.usigned -408
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	448
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       eax,	eax
    mov       [rbp + msys.i64tostrfmt.usigned],	rax
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+11]
    test      r10,	r10
    jz        L210
    mov       rax,	1
    mov       [rbp + msys.i64tostrfmt.usigned],	rax
L210:
L209:
    mov       rax,	[rbp + msys.i64tostrfmt.aa]
    mov       r10,	-9223372036854775808
    cmp       rax,	r10
    jnz       L212
    mov       rax,	[rbp + msys.i64tostrfmt.usigned]
    test      rax,	rax
    jnz       L212
    mov       al,	45
    mov       [rbp + msys.i64tostrfmt.str],	al
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+7]
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r11,	byte [rax+2]
    lea       rax,	[rbp + msys.i64tostrfmt.str+1]
    mov       rcx,	rax
    mov       rdx,	r11
    mov       r8,	r10
    call      msys.i64mintostr
    add       rax,	1
    mov       [rbp + msys.i64tostrfmt.n],	rax
    jmp       L211
L212:
    mov       rax,	[rbp + msys.i64tostrfmt.usigned]
    test      rax,	rax
    jnz       L216
    mov       rax,	[rbp + msys.i64tostrfmt.aa]
    cmp       rax,	0
    jl        L215
L216:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+6]
    test      r10,	r10
    jz        L214
L215:
    mov       rax,	[rbp + msys.i64tostrfmt.aa]
    cmp       rax,	0
    jge       L218
    mov       rax,	[rbp + msys.i64tostrfmt.aa]
    neg       rax
    mov       [rbp + msys.i64tostrfmt.aa],	rax
    mov       al,	45
    mov       [rbp + msys.i64tostrfmt.str],	al
    jmp       L217
L218:
    mov       al,	43
    mov       [rbp + msys.i64tostrfmt.str],	al
L217:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+7]
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r11,	byte [rax+2]
    lea       rax,	[rbp + msys.i64tostrfmt.str+1]
    mov       rcx,	[rbp + msys.i64tostrfmt.aa]
    mov       rdx,	rax
    mov       r8,	r11
    mov       r9,	r10
    call      msys.u64tostr
    add       rax,	1
    mov       [rbp + msys.i64tostrfmt.n],	rax
    jmp       L213
L214:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+7]
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r11,	byte [rax+2]
    mov       rcx,	[rbp + msys.i64tostrfmt.aa]
    lea       rdx,	[rbp + msys.i64tostrfmt.str]
    mov       r8,	r11
    mov       r9,	r10
    call      msys.u64tostr
    mov       [rbp + msys.i64tostrfmt.n],	rax
L213:
L211:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    test      r10,	r10
    jz        L220
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    mov       rax,	[rbp + msys.i64tostrfmt.n]
    mov       [rbp + rax + msys.i64tostrfmt.str],	r10b
    inc       qword [rbp + msys.i64tostrfmt.n]
    mov       rax,	[rbp + msys.i64tostrfmt.n]
    xor       r10d,	r10d
    mov       [rbp + rax + msys.i64tostrfmt.str],	r10b
L220:
L219:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+2]
    cmp       r10,	10
    jg        L223
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    test      r10,	r10
    jz        L222
L223:
    mov       rax,	[rbp + msys.i64tostrfmt.fmt]
    movzx     r10,	byte [rax+8]
    cmp       r10,	97
    jnz       L222
    lea       rcx,	[rbp + msys.i64tostrfmt.str]
    call      mlib.convlcstring
L222:
L221:
    lea       rcx,	[rbp + msys.i64tostrfmt.str]
    mov       rdx,	[rbp + msys.i64tostrfmt.s]
    mov       r8,	[rbp + msys.i64tostrfmt.n]
    mov       r9,	[rbp + msys.i64tostrfmt.fmt]
    call      msys.expandstr
L208:
;---------------
    add       rsp,	448
    pop       rbp
    ret       
;End 
;Proc u64tostrfmt
msys.u64tostrfmt:
;>>
    %define msys.u64tostrfmt.aa 16
    %define msys.u64tostrfmt.s 24
    %define msys.u64tostrfmt.fmt 32
    %define msys.u64tostrfmt.str -360
    %define msys.u64tostrfmt.i -368
    %define msys.u64tostrfmt.j -376
    %define msys.u64tostrfmt.k -384
    %define msys.u64tostrfmt.n -392
    %define msys.u64tostrfmt.w -400
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	432
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+7]
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r11,	byte [rax+2]
    mov       rcx,	[rbp + msys.u64tostrfmt.aa]
    lea       rdx,	[rbp + msys.u64tostrfmt.str]
    mov       r8,	r11
    mov       r9,	r10
    call      msys.u64tostr
    mov       [rbp + msys.u64tostrfmt.n],	rax
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    test      r10,	r10
    jz        L226
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    mov       rax,	[rbp + msys.u64tostrfmt.n]
    mov       [rbp + rax + msys.u64tostrfmt.str],	r10b
    inc       qword [rbp + msys.u64tostrfmt.n]
    mov       rax,	[rbp + msys.u64tostrfmt.n]
    xor       r10d,	r10d
    mov       [rbp + rax + msys.u64tostrfmt.str],	r10b
L226:
L225:
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+2]
    cmp       r10,	10
    jg        L229
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+10]
    test      r10,	r10
    jz        L228
    mov       rax,	[rbp + msys.u64tostrfmt.fmt]
    movzx     r10,	byte [rax+8]
    cmp       r10,	97
    jnz       L228
L229:
L228:
L227:
    lea       rcx,	[rbp + msys.u64tostrfmt.str]
    mov       rdx,	[rbp + msys.u64tostrfmt.s]
    mov       r8,	[rbp + msys.u64tostrfmt.n]
    mov       r9,	[rbp + msys.u64tostrfmt.fmt]
    call      msys.expandstr
L224:
;---------------
    add       rsp,	432
    pop       rbp
    ret       
;End 
;Proc i64mintostr
msys.i64mintostr:
;>>
    %define msys.i64mintostr.s 16
    %define msys.i64mintostr.base 24
    %define msys.i64mintostr.sep 32
    %define msys.i64mintostr.t -360
    %define msys.i64mintostr.i -368
    %define msys.i64mintostr.j -376
    %define msys.i64mintostr.k -384
    %define msys.i64mintostr.g -392
    %define msys.i64mintostr.neg -400
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	432
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + msys.i64mintostr.base]
    cmp       rax,	10
    jz        L232
    cmp       rax,	16
    jz        L233
    cmp       rax,	2
    jz        L234
    jmp       L235
L232:
    lea       rax,	[rbp + msys.i64mintostr.t]
    mov       rcx,	rax
    lea       rdx,	[rel L5452]
    call      strcpy
    mov       rax,	3
    mov       [rbp + msys.i64mintostr.j],	rax
    jmp       L231
L233:
    lea       rax,	[rbp + msys.i64mintostr.t]
    mov       rcx,	rax
    lea       rdx,	[rel L5453]
    call      strcpy
    mov       rax,	1
    mov       [rbp + msys.i64mintostr.j],	rax
    jmp       L231
L234:
    lea       rax,	[rbp + msys.i64mintostr.t]
    mov       rcx,	rax
    lea       rdx,	[rel L5454]
    call      strcpy
    mov       rax,	7
    mov       [rbp + msys.i64mintostr.j],	rax
    jmp       L231
L235:
    lea       rax,	[rbp + msys.i64mintostr.t]
    mov       rcx,	rax
    lea       rdx,	[rel L5455]
    call      strcpy
L231:
    lea       rax,	[rbp + msys.i64mintostr.t]
    mov       rcx,	rax
    call      strlen
    mov       [rbp + msys.i64mintostr.i],	rax
    mov       rax,	[rbp + msys.i64mintostr.i]
    add       [rbp + msys.i64mintostr.s],	rax
    mov       rax,	[rbp + msys.i64mintostr.sep]
    test      rax,	rax
    jz        L237
    mov       rax,	[rbp + msys.i64mintostr.j]
    add       [rbp + msys.i64mintostr.s],	rax
L237:
L236:
    xor       eax,	eax
    mov       r10,	[rbp + msys.i64mintostr.s]
    mov       [r10],	al
    xor       eax,	eax
    mov       [rbp + msys.i64mintostr.k],	rax
    mov       rax,	[rbp + msys.i64mintostr.base]
    cmp       rax,	10
    jnz       L239
    mov       rax,	3
    jmp       L238
L239:
    mov       rax,	4
L238:
    mov       [rbp + msys.i64mintostr.g],	rax
    jmp       L241
L240:
    dec       qword [rbp + msys.i64mintostr.s]
    mov       rax,	[rbp + msys.i64mintostr.i]
    dec       qword [rbp + msys.i64mintostr.i]
    movzx     r10,	byte [rbp + rax + msys.i64mintostr.t-1]
    mov       rax,	[rbp + msys.i64mintostr.s]
    mov       [rax],	r10b
    mov       rax,	[rbp + msys.i64mintostr.sep]
    test      rax,	rax
    jz        L244
    mov       rax,	[rbp + msys.i64mintostr.i]
    test      rax,	rax
    jz        L244
    inc       qword [rbp + msys.i64mintostr.k]
    mov       rax,	[rbp + msys.i64mintostr.k]
    cmp       rax,	[rbp + msys.i64mintostr.g]
    jnz       L244
    dec       qword [rbp + msys.i64mintostr.s]
    mov       al,	[rbp + msys.i64mintostr.sep]
    mov       r10,	[rbp + msys.i64mintostr.s]
    mov       [r10],	al
    xor       eax,	eax
    mov       [rbp + msys.i64mintostr.k],	rax
L244:
L243:
L241:
    mov       rax,	[rbp + msys.i64mintostr.i]
    test      rax,	rax
    jnz       L240
L242:
    mov       rcx,	[rbp + msys.i64mintostr.s]
    call      strlen
L230:
;---------------
    add       rsp,	432
    pop       rbp
    ret       
;End 
;Proc strtostrfmt
msys.strtostrfmt:
;>>
    %define msys.strtostrfmt.s 16
    %define msys.strtostrfmt.t 24
    %define msys.strtostrfmt.n 32
    %define msys.strtostrfmt.fmt 40
    %define msys.strtostrfmt.u -8
    %define msys.strtostrfmt.v -16
    %define msys.strtostrfmt.str -272
    %define msys.strtostrfmt.w -280
    %define msys.strtostrfmt.nheap -288
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	320
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    xor       eax,	eax
    mov       [rbp + msys.strtostrfmt.nheap],	rax
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jnz       L248
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+8]
    test      r10,	r10
    jz        L247
L248:
    mov       rax,	[rbp + msys.strtostrfmt.n]
    cmp       rax,	256
    jge       L250
    lea       rax,	[rbp + msys.strtostrfmt.str]
    mov       [rbp + msys.strtostrfmt.u],	rax
    jmp       L249
L250:
    mov       rax,	[rbp + msys.strtostrfmt.n]
    add       rax,	3
    mov       [rbp + msys.strtostrfmt.nheap],	rax
    mov       rcx,	[rbp + msys.strtostrfmt.nheap]
    call      mlib.pcm_alloc
    mov       [rbp + msys.strtostrfmt.u],	rax
L249:
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jz        L252
    mov       rax,	[rbp + msys.strtostrfmt.u]
    mov       [rbp + msys.strtostrfmt.v],	rax
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + msys.strtostrfmt.v]
    mov       [rax],	r10b
    inc       qword [rbp + msys.strtostrfmt.v]
    mov       rax,	[rbp + msys.strtostrfmt.n]
    test      rax,	rax
    jz        L254
    mov       rcx,	[rbp + msys.strtostrfmt.v]
    mov       rdx,	[rbp + msys.strtostrfmt.s]
    call      strcpy
    mov       rax,	[rbp + msys.strtostrfmt.n]
    add       [rbp + msys.strtostrfmt.v],	rax
L254:
L253:
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + msys.strtostrfmt.v]
    mov       [rax],	r10b
    inc       qword [rbp + msys.strtostrfmt.v]
    xor       eax,	eax
    mov       r10,	[rbp + msys.strtostrfmt.v]
    mov       [r10],	al
    mov       rax,	2
    add       [rbp + msys.strtostrfmt.n],	rax
    jmp       L251
L252:
    mov       rcx,	[rbp + msys.strtostrfmt.u]
    mov       rdx,	[rbp + msys.strtostrfmt.s]
    mov       r8,	[rbp + msys.strtostrfmt.n]
    call      memcpy
L251:
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax+8]
    cmp       r10,	97
    jz        L256
    cmp       r10,	65
    jz        L257
    jmp       L258
L256:
    mov       rcx,	[rbp + msys.strtostrfmt.u]
    call      mlib.convlcstring
    jmp       L255
L257:
    mov       rcx,	[rbp + msys.strtostrfmt.u]
    call      mlib.convucstring
L258:
L255:
    mov       rax,	[rbp + msys.strtostrfmt.u]
    mov       [rbp + msys.strtostrfmt.s],	rax
L247:
L246:
    mov       rax,	[rbp + msys.strtostrfmt.fmt]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.strtostrfmt.w],	r10
    mov       rax,	[rbp + msys.strtostrfmt.w]
    cmp       rax,	[rbp + msys.strtostrfmt.n]
    jle       L260
    mov       rcx,	[rbp + msys.strtostrfmt.s]
    mov       rdx,	[rbp + msys.strtostrfmt.t]
    mov       r8,	[rbp + msys.strtostrfmt.n]
    mov       r9,	[rbp + msys.strtostrfmt.fmt]
    call      msys.expandstr
    mov       [rbp + msys.strtostrfmt.n],	rax
    jmp       L259
L260:
    mov       rcx,	[rbp + msys.strtostrfmt.t]
    mov       rdx,	[rbp + msys.strtostrfmt.s]
    mov       r8,	[rbp + msys.strtostrfmt.n]
    call      memcpy
L259:
    mov       rax,	[rbp + msys.strtostrfmt.nheap]
    test      rax,	rax
    jz        L262
    mov       rcx,	[rbp + msys.strtostrfmt.u]
    mov       rdx,	[rbp + msys.strtostrfmt.nheap]
    call      mlib.pcm_free
L262:
L261:
    mov       rax,	[rbp + msys.strtostrfmt.n]
L245:
;---------------
    add       rsp,	320
    pop       rbp
    ret       
;End 
;Proc tostr_i64
msys.tostr_i64:
;>>
    %define msys.tostr_i64.a 16
    %define msys.tostr_i64.fmt 24
    %define msys.tostr_i64.str -360
    %define msys.tostr_i64.n -368
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	400
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.tostr_i64.fmt]
    movzx     r10,	byte [rax+12]
    cmp       r10,	0
    jz        L265
    cmp       r10,	77
    jz        L266
    jmp       L267
L265:
    mov       rcx,	[rbp + msys.tostr_i64.a]
    lea       rdx,	[rbp + msys.tostr_i64.str]
    mov       r8,	[rbp + msys.tostr_i64.fmt]
    call      msys.i64tostrfmt
    mov       [rbp + msys.tostr_i64.n],	rax
    jmp       L264
L266:
    lea       rcx,	[rbp + msys.tostr_i64.a]
    mov       rdx,	8
    lea       r8,	[rbp + msys.tostr_i64.str]
    mov       r9,	[rbp + msys.tostr_i64.fmt]
    call      msys.domultichar
    mov       [rbp + msys.tostr_i64.n],	rax
    jmp       L264
L267:
    mov       rcx,	[rbp + msys.tostr_i64.a]
    xor       edx,	edx
    call      msys.m$print_c8
    jmp       L263
L264:
    lea       rcx,	[rbp + msys.tostr_i64.str]
    mov       rdx,	[rbp + msys.tostr_i64.n]
    call      msys.printstr_n
L263:
;---------------
    add       rsp,	400
    pop       rbp
    ret       
;End 
;Proc tostr_u64
msys.tostr_u64:
;>>
    %define msys.tostr_u64.a 16
    %define msys.tostr_u64.fmt 24
    %define msys.tostr_u64.str -360
    %define msys.tostr_u64.n -368
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	400
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.tostr_u64.fmt]
    movzx     r10,	byte [rax+12]
    cmp       r10,	77
    jz        L270
    cmp       r10,	67
    jz        L271
    jmp       L272
L270:
    lea       rcx,	[rbp + msys.tostr_u64.a]
    mov       rdx,	8
    lea       r8,	[rbp + msys.tostr_u64.str]
    mov       r9,	[rbp + msys.tostr_u64.fmt]
    call      msys.domultichar
    mov       [rbp + msys.tostr_u64.n],	rax
    jmp       L269
L271:
    mov       rcx,	[rbp + msys.tostr_u64.a]
    xor       edx,	edx
    call      msys.m$print_c8
    jmp       L268
L272:
    mov       rcx,	[rbp + msys.tostr_u64.a]
    lea       rdx,	[rbp + msys.tostr_u64.str]
    mov       r8,	[rbp + msys.tostr_u64.fmt]
    call      msys.u64tostrfmt
    mov       [rbp + msys.tostr_u64.n],	rax
L269:
    lea       rcx,	[rbp + msys.tostr_u64.str]
    mov       rdx,	[rbp + msys.tostr_u64.n]
    call      msys.printstr_n
L268:
;---------------
    add       rsp,	400
    pop       rbp
    ret       
;End 
;Proc tostr_r64
msys.tostr_r64:
;>>
    %define msys.tostr_r64.x 16
    %define msys.tostr_r64.fmt 24
    %define msys.tostr_r64.str -360
    %define msys.tostr_r64.str2 -720
    %define msys.tostr_r64.cfmt -736
    %define msys.tostr_r64.n -744
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	784
    movq      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    mov       al,	37
    mov       [rbp + msys.tostr_r64.cfmt],	al
    mov       rax,	[rbp + msys.tostr_r64.fmt]
    movsx     r10,	byte [rax+1]
    test      r10,	r10
    jz        L275
    mov       al,	46
    mov       [rbp + msys.tostr_r64.cfmt+1],	al
    mov       al,	42
    mov       [rbp + msys.tostr_r64.cfmt+2],	al
    mov       rax,	[rbp + msys.tostr_r64.fmt]
    movzx     r10,	byte [rax+5]
    mov       [rbp + msys.tostr_r64.cfmt+3],	r10b
    xor       eax,	eax
    mov       [rbp + msys.tostr_r64.cfmt+4],	al
    mov       rax,	[rbp + msys.tostr_r64.fmt]
    movsx     r10,	byte [rax+1]
    lea       rcx,	[rbp + msys.tostr_r64.str]
    lea       rdx,	[rbp + msys.tostr_r64.cfmt]
    mov       r8,	r10
    movq      XMM3,	[rbp + msys.tostr_r64.x]
    movq      r9,	XMM3
    call      sprintf
    jmp       L274
L275:
    mov       rax,	[rbp + msys.tostr_r64.fmt]
    movzx     r10,	byte [rax+5]
    mov       [rbp + msys.tostr_r64.cfmt+1],	r10b
    xor       eax,	eax
    mov       [rbp + msys.tostr_r64.cfmt+2],	al
    lea       rcx,	[rbp + msys.tostr_r64.str]
    lea       rdx,	[rbp + msys.tostr_r64.cfmt]
    movq      XMM2,	[rbp + msys.tostr_r64.x]
    movq      r8,	XMM2
    call      sprintf
L274:
    lea       rcx,	[rbp + msys.tostr_r64.str]
    call      strlen
    mov       [rbp + msys.tostr_r64.n],	rax
    mov       rax,	[rbp + msys.tostr_r64.fmt]
    movzx     r10,	byte [rax]
    mov       rax,	[rbp + msys.tostr_r64.n]
    cmp       rax,	r10
    jge       L277
    lea       rcx,	[rbp + msys.tostr_r64.str]
    lea       rdx,	[rbp + msys.tostr_r64.str2]
    mov       r8,	[rbp + msys.tostr_r64.n]
    mov       r9,	[rbp + msys.tostr_r64.fmt]
    call      msys.expandstr
    mov       [rbp + msys.tostr_r64.n],	rax
    lea       rcx,	[rbp + msys.tostr_r64.str]
    lea       rdx,	[rbp + msys.tostr_r64.str2]
    call      strcpy
L277:
L276:
    lea       rcx,	[rbp + msys.tostr_r64.str]
    mov       rdx,	[rbp + msys.tostr_r64.n]
    call      msys.printstr_n
L273:
;---------------
    add       rsp,	784
    pop       rbp
    ret       
;End 
;Proc tostr_str
msys.tostr_str:
;>>
    %define msys.tostr_str.s 16
    %define msys.tostr_str.oldlen 24
    %define msys.tostr_str.fmt 32
    %define msys.tostr_str.newlen -8
    %define msys.tostr_str.n -16
    %define msys.tostr_str.t -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + msys.tostr_str.oldlen]
    cmp       rax,	-1
    jnz       L280
    mov       rcx,	[rbp + msys.tostr_str.s]
    call      strlen
    mov       [rbp + msys.tostr_str.oldlen],	rax
L280:
L279:
    mov       rax,	[rbp + msys.tostr_str.oldlen]
    mov       [rbp + msys.tostr_str.newlen],	rax
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jnz       L283
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax]
    cmp       r10,	[rbp + msys.tostr_str.newlen]
    jg        L283
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax+8]
    test      r10,	r10
    jnz       L283
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movsx     r10,	byte [rax+1]
    test      r10,	r10
    jz        L282
L283:
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jz        L285
    mov       rax,	2
    add       [rbp + msys.tostr_str.newlen],	rax
L285:
L284:
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax]
    cmp       r10,	[rbp + msys.tostr_str.newlen]
    jle       L287
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.tostr_str.newlen],	r10
L287:
L286:
    mov       rax,	[rbp + msys.tostr_str.newlen]
    add       rax,	1
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [rbp + msys.tostr_str.t],	rax
    mov       rcx,	[rbp + msys.tostr_str.s]
    mov       rdx,	[rbp + msys.tostr_str.t]
    mov       r8,	[rbp + msys.tostr_str.oldlen]
    mov       r9,	[rbp + msys.tostr_str.fmt]
    call      msys.strtostrfmt
    mov       [rbp + msys.tostr_str.n],	rax
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movsx     r10,	byte [rax+1]
    test      r10,	r10
    jz        L289
    mov       rax,	[rbp + msys.tostr_str.fmt]
    movsx     r10,	byte [rax+1]
    cmp       [rbp + msys.tostr_str.n],	r10
    jle       L5456
    mov       [rbp + msys.tostr_str.n],	r10
L5456:
L289:
L288:
    mov       rcx,	[rbp + msys.tostr_str.t]
    mov       rdx,	[rbp + msys.tostr_str.n]
    call      msys.printstr_n
    mov       rax,	[rbp + msys.tostr_str.newlen]
    add       rax,	1
    mov       rcx,	[rbp + msys.tostr_str.t]
    mov       rdx,	rax
    call      mlib.pcm_free
    jmp       L281
L282:
    mov       rcx,	[rbp + msys.tostr_str.s]
    mov       rdx,	[rbp + msys.tostr_str.oldlen]
    call      msys.printstr_n
L281:
L278:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc getfmt
msys.getfmt:
;>>
    %define msys.getfmt.fmtstyle 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + msys.getfmt.fmtstyle]
    test      rax,	rax
    jz        L292
    mov       rcx,	[rbp + msys.getfmt.fmtstyle]
    mov       rdx,	-1
    lea       r8,	[msys.getfmt.fmt]
    call      msys.strtofmt
    lea       rax,	[msys.getfmt.fmt]
    jmp       L291
L292:
    lea       rax,	[msys.defaultfmt]
L291:
L290:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc strint
msys.strint:
;>>
    %define msys.strint.a 16
    %define msys.strint.fmtstyle 24
    %define msys.strint.fmt -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[msys.strint.str]
    call      msys.m$print_startstr
    mov       rcx,	[rbp + msys.strint.fmtstyle]
    call      msys.getfmt
;DUPLOP
    mov       r10,	rax
    mov       [rbp + msys.strint.fmt],	r10
    mov       rcx,	[rbp + msys.strint.a]
    mov       rdx,	rax
    call      msys.tostr_i64
    call      msys.m$print_end
    lea       rcx,	[msys.strint.str]
    mov       rdx,	[rbp + msys.strint.fmt]
    call      msys.getstr
L293:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getstrint
msys.getstrint:
;>>
    %define msys.getstrint.a 16
    %define msys.getstrint.dest 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + msys.getstrint.dest]
    call      msys.m$print_startstr
    xor       ecx,	ecx
    call      msys.getfmt
    mov       rcx,	[rbp + msys.getstrint.a]
    mov       rdx,	rax
    call      msys.tostr_i64
    call      msys.m$print_end
L294:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc strword
msys.strword:
;>>
    %define msys.strword.a 16
    %define msys.strword.fmtstyle 24
    %define msys.strword.fmt -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[msys.strword.str]
    call      msys.m$print_startstr
    mov       rcx,	[rbp + msys.strword.fmtstyle]
    call      msys.getfmt
;DUPLOP
    mov       r10,	rax
    mov       [rbp + msys.strword.fmt],	r10
    mov       rcx,	[rbp + msys.strword.a]
    mov       rdx,	rax
    call      msys.tostr_u64
    call      msys.m$print_end
    lea       rcx,	[msys.strword.str]
    mov       rdx,	[rbp + msys.strword.fmt]
    call      msys.getstr
L295:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc strreal
msys.strreal:
;>>
    %define msys.strreal.a 16
    %define msys.strreal.fmtstyle 24
    %define msys.strreal.fmt -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    movq      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[msys.strreal.str]
    call      msys.m$print_startstr
    mov       rcx,	[rbp + msys.strreal.fmtstyle]
    call      msys.getfmt
;DUPLOP
    mov       r10,	rax
    mov       [rbp + msys.strreal.fmt],	r10
    movq      XMM0,	[rbp + msys.strreal.a]
    mov       rdx,	rax
    call      msys.tostr_r64
    call      msys.m$print_end
    lea       rcx,	[msys.strreal.str]
    mov       rdx,	[rbp + msys.strreal.fmt]
    call      msys.getstr
L296:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getstr
msys.getstr:
;>>
    %define msys.getstr.s 16
    %define msys.getstr.fmt 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.getstr.fmt]
    movzx     r10,	byte [rax+13]
    test      r10,	r10
    jz        L299
    mov       rcx,	[rbp + msys.getstr.s]
    call      mlib.pcm_copyheapstring
    jmp       L298
L299:
    mov       rax,	[rbp + msys.getstr.s]
L298:
L297:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc initreadbuffer
msys.initreadbuffer:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[msys.rd_buffer]
    test      rax,	rax
    jz        L302
    jmp       L300
L302:
L301:
    mov       rcx,	16384
    call      mlib.pcm_alloc
    mov       [msys.rd_buffer],	rax
    xor       eax,	eax
    mov       r10,	[msys.rd_buffer]
    mov       [r10],	al
    mov       rax,	[msys.rd_buffer]
    mov       [msys.rd_lastpos],	rax
    mov       [msys.rd_pos],	rax
L300:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$read_conline
msys.m$read_conline:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      msys.initreadbuffer
    xor       ecx,	ecx
    mov       rdx,	[msys.rd_buffer]
    mov       r8,	16384
    call      mlib.readlinen
    mov       rcx,	[msys.rd_buffer]
    call      strlen
    mov       [msys.rd_length],	rax
    mov       rax,	[msys.rd_buffer]
    mov       [msys.rd_pos],	rax
    xor       eax,	eax
    mov       [msys.rd_lastpos],	rax
L303:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$read_fileline
msys.m$read_fileline:
;>>
    %define msys.m$read_fileline.f 16
    %define msys.m$read_fileline.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      msys.initreadbuffer
    mov       rax,	[rbp + msys.m$read_fileline.f]
    cmp       rax,	1
    jnz       L306
    lea       rcx,	[rel L5457]
    call      mlib.abortprogram
    jmp       L304
L306:
L305:
    mov       rcx,	[rbp + msys.m$read_fileline.f]
    mov       rdx,	[msys.rd_buffer]
    mov       r8,	16384
    call      mlib.readlinen
    mov       rcx,	[msys.rd_buffer]
    call      strlen
    mov       [msys.rd_length],	rax
    mov       rax,	[msys.rd_buffer]
    mov       [msys.rd_pos],	rax
    xor       eax,	eax
    mov       [msys.rd_lastpos],	rax
L304:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc m$read_strline
msys.m$read_strline:
;>>
    %define msys.m$read_strline.s 16
    %define msys.m$read_strline.n -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      msys.initreadbuffer
    mov       rcx,	[rbp + msys.m$read_strline.s]
    call      strlen
    mov       [rbp + msys.m$read_strline.n],	rax
    mov       rax,	[rbp + msys.m$read_strline.n]
    cmp       rax,	16384
    jge       L309
    mov       rcx,	[msys.rd_buffer]
    mov       rdx,	[rbp + msys.m$read_strline.s]
    call      strcpy
    jmp       L308
L309:
    mov       rcx,	[msys.rd_buffer]
    mov       rdx,	[rbp + msys.m$read_strline.s]
    mov       r8,	16383
    call      memcpy
    mov       rax,	[msys.rd_buffer]
    lea       rax,	[rax+16384]
    sub       rax,	1
    xor       r10d,	r10d
    mov       [rax],	r10b
L308:
    mov       rax,	[rbp + msys.m$read_strline.n]
    mov       [msys.rd_length],	rax
    mov       rax,	[msys.rd_buffer]
    mov       [msys.rd_pos],	rax
    xor       eax,	eax
    mov       [msys.rd_lastpos],	rax
L307:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc readitem
msys.readitem:
;>>
    %define msys.readitem.itemlength 16
    %define msys.readitem.p -8
    %define msys.readitem.s -16
    %define msys.readitem.itemstr -24
    %define msys.readitem.quotechar -32
    %define msys.readitem.c -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[msys.rd_buffer]
    test      rax,	rax
    jnz       L312
    call      msys.initreadbuffer
L312:
L311:
    mov       rax,	[msys.rd_pos]
    mov       [rbp + msys.readitem.s],	rax
    jmp       L314
L313:
    inc       qword [rbp + msys.readitem.s]
L314:
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	32
    jz        L313
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	9
    jz        L313
L315:
    mov       rax,	[rbp + msys.readitem.s]
    mov       [rbp + msys.readitem.itemstr],	rax
    mov       rax,	[rbp + msys.readitem.s]
    mov       [msys.rd_pos],	rax
    mov       [msys.rd_lastpos],	rax
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L317
    xor       eax,	eax
    mov       [msys.termchar],	rax
    xor       eax,	eax
    mov       r10,	[rbp + msys.readitem.itemlength]
    mov       [r10],	rax
    mov       rax,	[rbp + msys.readitem.s]
    jmp       L310
L317:
L316:
    xor       eax,	eax
    mov       [rbp + msys.readitem.quotechar],	al
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	34
    jnz       L319
    mov       al,	34
    mov       [rbp + msys.readitem.quotechar],	al
    inc       qword [rbp + msys.readitem.s]
    jmp       L318
L319:
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	39
    jnz       L320
    mov       al,	39
    mov       [rbp + msys.readitem.quotechar],	al
    inc       qword [rbp + msys.readitem.s]
L320:
L318:
    mov       rax,	[rbp + msys.readitem.s]
    mov       [rbp + msys.readitem.itemstr],	rax
    mov       [rbp + msys.readitem.p],	rax
    jmp       L322
L321:
    mov       rax,	[rbp + msys.readitem.s]
    inc       qword [rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.readitem.c],	r10b
    movzx     rax,	byte [rbp + msys.readitem.c]
    cmp       rax,	32
    jz        L325
    cmp       rax,	9
    jz        L325
    cmp       rax,	44
    jz        L325
    cmp       rax,	61
    jz        L325
    jmp       L326
L325:
    movzx     rax,	byte [rbp + msys.readitem.quotechar]
    test      rax,	rax
    jnz       L329
    mov       rax,	[rbp + msys.readitem.p]
    cmp       rax,	[rbp + msys.readitem.s]
    jnz       L328
L329:
    jmp       L330
L328:
L327:
    movzx     rax,	byte [rbp + msys.readitem.c]
    mov       [msys.termchar],	rax
    jmp       L323
L326:
;normalchar:
L330:
    movzx     rax,	byte [rbp + msys.readitem.c]
    movzx     r10,	byte [rbp + msys.readitem.quotechar]
    cmp       rax,	r10
    jnz       L332
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    movzx     rax,	byte [rbp + msys.readitem.quotechar]
    cmp       r10,	rax
    jnz       L334
    movzx     rax,	byte [rbp + msys.readitem.c]
    mov       r10,	[rbp + msys.readitem.p]
    mov       [r10],	al
    inc       qword [rbp + msys.readitem.s]
    inc       qword [rbp + msys.readitem.p]
    jmp       L333
L334:
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    mov       [msys.termchar],	r10
    mov       rax,	[msys.termchar]
    cmp       rax,	44
    jz        L337
    cmp       rax,	61
    jnz       L336
L337:
    inc       qword [rbp + msys.readitem.s]
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    mov       [msys.termchar],	r10
L336:
L335:
    jmp       L323
L333:
    jmp       L331
L332:
    movzx     rax,	byte [rbp + msys.readitem.c]
    mov       r10,	[rbp + msys.readitem.p]
    mov       [r10],	al
    inc       qword [rbp + msys.readitem.p]
L331:
L324:
L322:
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jnz       L321
L323:
    mov       rax,	[rbp + msys.readitem.s]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L339
    xor       eax,	eax
    mov       [msys.termchar],	rax
L339:
L338:
    mov       rax,	[rbp + msys.readitem.p]
    sub       rax,	[rbp + msys.readitem.itemstr]
    mov       r10,	[rbp + msys.readitem.itemlength]
    mov       [r10],	rax
    mov       rax,	[rbp + msys.readitem.s]
    mov       [msys.rd_pos],	rax
    mov       rax,	[rbp + msys.readitem.itemstr]
L310:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc strtoint
msys.strtoint:
;>>
    %define msys.strtoint.s 16
    %define msys.strtoint.length 24
    %define msys.strtoint.base 32
    %define msys.strtoint.signd -8
    %define msys.strtoint.aa -16
    %define msys.strtoint.c -24
    %define msys.strtoint.d -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       eax,	eax
    mov       [msys.itemerror],	rax
    mov       rax,	[rbp + msys.strtoint.length]
    cmp       rax,	-1
    jnz       L342
    mov       rcx,	[rbp + msys.strtoint.s]
    call      strlen
    mov       [rbp + msys.strtoint.length],	rax
L342:
L341:
    xor       eax,	eax
    mov       [rbp + msys.strtoint.signd],	al
    mov       rax,	[rbp + msys.strtoint.length]
    test      rax,	rax
    jz        L344
    mov       rax,	[rbp + msys.strtoint.s]
    movzx     r10,	byte [rax]
    cmp       r10,	45
    jnz       L344
    mov       al,	1
    mov       [rbp + msys.strtoint.signd],	al
    inc       qword [rbp + msys.strtoint.s]
    dec       qword [rbp + msys.strtoint.length]
    jmp       L343
L344:
    mov       rax,	[rbp + msys.strtoint.length]
    test      rax,	rax
    jz        L345
    mov       rax,	[rbp + msys.strtoint.s]
    movzx     r10,	byte [rax]
    cmp       r10,	43
    jnz       L345
    inc       qword [rbp + msys.strtoint.s]
    dec       qword [rbp + msys.strtoint.length]
L345:
L343:
    xor       eax,	eax
    mov       [rbp + msys.strtoint.aa],	rax
    jmp       L347
L346:
    mov       rax,	[rbp + msys.strtoint.s]
    inc       qword [rbp + msys.strtoint.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.strtoint.c],	r10
    dec       qword [rbp + msys.strtoint.length]
    mov       rax,	[rbp + msys.strtoint.c]
    cmp       rax,	65
    jl        L350
    cmp       rax,	70
    jg        L350
    mov       rax,	[rbp + msys.strtoint.c]
    sub       rax,	65
    add       rax,	10
    mov       [rbp + msys.strtoint.d],	rax
    jmp       L349
L350:
    mov       rax,	[rbp + msys.strtoint.c]
    cmp       rax,	97
    jl        L351
    cmp       rax,	102
    jg        L351
    mov       rax,	[rbp + msys.strtoint.c]
    sub       rax,	97
    add       rax,	10
    mov       [rbp + msys.strtoint.d],	rax
    jmp       L349
L351:
    mov       rax,	[rbp + msys.strtoint.c]
    cmp       rax,	48
    jl        L352
    cmp       rax,	57
    jg        L352
    mov       rax,	[rbp + msys.strtoint.c]
    sub       rax,	48
    mov       [rbp + msys.strtoint.d],	rax
    jmp       L349
L352:
    mov       rax,	[rbp + msys.strtoint.c]
    cmp       rax,	95
    jz        L354
    cmp       rax,	39
    jnz       L353
L354:
    jmp       L347
L353:
    mov       rax,	1
    mov       [msys.itemerror],	rax
    jmp       L348
L349:
    mov       rax,	[rbp + msys.strtoint.d]
    cmp       rax,	[rbp + msys.strtoint.base]
    jb        L356
    mov       rax,	1
    mov       [msys.itemerror],	rax
    jmp       L348
L356:
L355:
    mov       rax,	[rbp + msys.strtoint.aa]
    imul      rax,	[rbp + msys.strtoint.base]
    add       rax,	[rbp + msys.strtoint.d]
    mov       [rbp + msys.strtoint.aa],	rax
L347:
    mov       rax,	[rbp + msys.strtoint.length]
    test      rax,	rax
    jnz       L346
L348:
    movzx     rax,	byte [rbp + msys.strtoint.signd]
    test      rax,	rax
    jz        L358
    mov       rax,	[rbp + msys.strtoint.aa]
    neg       rax
    jmp       L357
L358:
    mov       rax,	[rbp + msys.strtoint.aa]
L357:
L340:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc m$read_i64
msys.m$read_i64:
;>>
    %define msys.m$read_i64.fmt 16
    %define msys.m$read_i64.s -8
    %define msys.m$read_i64.length -16
    %define msys.m$read_i64.c -24
    %define msys.m$read_i64.aa -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + msys.m$read_i64.fmt]
    call      toupper
    movsxd    rax,	eax
    mov       [rbp + msys.m$read_i64.fmt],	rax
    mov       rax,	[rbp + msys.m$read_i64.fmt]
    cmp       rax,	67
    jz        L361
    cmp       rax,	84
    jz        L362
    cmp       rax,	69
    jz        L363
    jmp       L364
L361:
    mov       rax,	[msys.rd_pos]
    mov       [msys.rd_lastpos],	rax
    mov       rax,	[msys.rd_pos]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L366
    mov       rax,	[msys.rd_pos]
    inc       qword [msys.rd_pos]
    movzx     r10,	byte [rax]
    mov       rax,	r10
    jmp       L359
L366:
    xor       eax,	eax
    jmp       L359
L365:
    jmp       L360
L362:
    mov       rax,	[msys.termchar]
    jmp       L359
L363:
    mov       rax,	[msys.itemerror]
    jmp       L359
L364:
L360:
    lea       rcx,	[rbp + msys.m$read_i64.length]
    call      msys.readitem
    mov       [rbp + msys.m$read_i64.s],	rax
    mov       rax,	[rbp + msys.m$read_i64.fmt]
    cmp       rax,	0
    jz        L368
    cmp       rax,	73
    jz        L368
    cmp       rax,	66
    jz        L369
    cmp       rax,	72
    jz        L370
    jmp       L371
L368:
    mov       rcx,	[rbp + msys.m$read_i64.s]
    mov       rdx,	[rbp + msys.m$read_i64.length]
    mov       r8,	10
    call      msys.strtoint
    jmp       L359
L369:
    mov       rcx,	[rbp + msys.m$read_i64.s]
    mov       rdx,	[rbp + msys.m$read_i64.length]
    mov       r8,	2
    call      msys.strtoint
    jmp       L359
L370:
    mov       rcx,	[rbp + msys.m$read_i64.s]
    mov       rdx,	[rbp + msys.m$read_i64.length]
    mov       r8,	16
    call      msys.strtoint
    jmp       L359
L371:
L367:
    xor       eax,	eax
L359:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc m$read_r64
msys.m$read_r64:
;>>
    %define msys.m$read_r64.fmt 16
    %define msys.m$read_r64.str -512
    %define msys.m$read_r64.s -520
    %define msys.m$read_r64.length -528
    %define msys.m$read_r64.numlength -536
    %define msys.m$read_r64.x -544
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	576
;---------------
    lea       rcx,	[rbp + msys.m$read_r64.length]
    call      msys.readitem
    mov       [rbp + msys.m$read_r64.s],	rax
    mov       rax,	[rbp + msys.m$read_r64.length]
    cmp       rax,	0
    jz        L375
    mov       rax,	[rbp + msys.m$read_r64.length]
    cmp       rax,	512
    jl        L374
L375:
    movq      XMM0,	[rel L5458]
    jmp       L372
L374:
L373:
    lea       rcx,	[rbp + msys.m$read_r64.str]
    mov       rdx,	[rbp + msys.m$read_r64.s]
    mov       r8,	[rbp + msys.m$read_r64.length]
    call      memcpy
    xor       eax,	eax
    mov       r10,	[rbp + msys.m$read_r64.length]
    mov       [rbp + r10 + msys.m$read_r64.str],	al
    xor       eax,	eax
    mov       [msys.itemerror],	rax
    lea       rcx,	[rbp + msys.m$read_r64.str]
    lea       rdx,	[rel L5459]
    lea       r8,	[rbp + msys.m$read_r64.x]
    lea       r9,	[rbp + msys.m$read_r64.numlength]
    call      sscanf
    movsxd    rax,	eax
    cmp       rax,	0
    jz        L378
    movsxd    rax,	dword [rbp + msys.m$read_r64.numlength]
    cmp       rax,	[rbp + msys.m$read_r64.length]
    jz        L377
L378:
    movq      XMM4,	[rel L5460]
    movq      [rbp + msys.m$read_r64.x],	XMM4
    mov       rax,	1
    mov       [msys.itemerror],	rax
L377:
L376:
    movq      XMM0,	[rbp + msys.m$read_r64.x]
L372:
;---------------
    add       rsp,	576
    pop       rbp
    ret       
;End 
;Proc m$read_str
msys.m$read_str:
;>>
    %define msys.m$read_str.dest 16
    %define msys.m$read_str.destlen 24
    %define msys.m$read_str.fmt 32
    %define msys.m$read_str.s -8
    %define msys.m$read_str.length -16
    %define msys.m$read_str.numlength -24
    %define msys.m$read_str.x -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       eax,	eax
    mov       [msys.itemerror],	rax
    mov       rax,	[rbp + msys.m$read_str.fmt]
    cmp       rax,	76
    jz        L382
    cmp       rax,	108
    jnz       L381
L382:
    mov       rax,	[msys.rd_pos]
    mov       [rbp + msys.m$read_str.s],	rax
    mov       rax,	[msys.rd_buffer]
    mov       r10,	[msys.rd_length]
    lea       rax,	[rax + r10]
    sub       rax,	[msys.rd_pos]
    mov       [rbp + msys.m$read_str.length],	rax
    jmp       L380
L381:
    lea       rcx,	[rbp + msys.m$read_str.length]
    call      msys.readitem
    mov       [rbp + msys.m$read_str.s],	rax
    mov       rax,	[rbp + msys.m$read_str.fmt]
    cmp       rax,	78
    jz        L385
    cmp       rax,	110
    jnz       L384
L385:
    mov       rcx,	[rbp + msys.m$read_str.s]
    mov       rdx,	[rbp + msys.m$read_str.length]
    call      mlib.iconvlcn
L384:
L383:
L380:
    mov       rax,	[rbp + msys.m$read_str.destlen]
    cmp       rax,	0
    jle       L387
    mov       rax,	[rbp + msys.m$read_str.length]
    cmp       rax,	[rbp + msys.m$read_str.destlen]
    jl        L389
    mov       rax,	[rbp + msys.m$read_str.destlen]
    sub       rax,	1
    mov       [rbp + msys.m$read_str.length],	rax
    mov       rax,	1
    mov       [msys.itemerror],	rax
L389:
L388:
L387:
L386:
    mov       rcx,	[rbp + msys.m$read_str.dest]
    mov       rdx,	[rbp + msys.m$read_str.s]
    mov       r8,	[rbp + msys.m$read_str.length]
    call      memcpy
    xor       eax,	eax
    mov       r10,	[rbp + msys.m$read_str.dest]
    mov       r11,	[rbp + msys.m$read_str.length]
    mov       [r10 + r11],	al
L379:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc readstr
msys.readstr:
;>>
    %define msys.readstr.dest 16
    %define msys.readstr.fmt 24
    %define msys.readstr.destlen 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + msys.readstr.dest]
    mov       rdx,	[rbp + msys.readstr.destlen]
    mov       r8,	[rbp + msys.readstr.fmt]
    call      msys.m$read_str
L390:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc rereadln
msys.rereadln:
;>>
;---------------
    mov       rax,	[msys.rd_buffer]
    mov       [msys.rd_pos],	rax
    mov       rax,	[msys.rd_pos]
    mov       [msys.rd_lastpos],	rax
L391:
;---------------
    ret       
;End 
;Proc reread
msys.reread:
;>>
;---------------
    mov       rax,	[msys.rd_lastpos]
    mov       [msys.rd_pos],	rax
L392:
;---------------
    ret       
;End 
;Proc valint
msys.valint:
;>>
    %define msys.valint.s 16
    %define msys.valint.fmt 24
    %define msys.valint.old_pos -8
    %define msys.valint.old_lastpos -16
    %define msys.valint.aa -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    call      msys.initreadbuffer
    mov       rax,	[msys.rd_pos]
    mov       [rbp + msys.valint.old_pos],	rax
    mov       rax,	[msys.rd_lastpos]
    mov       [rbp + msys.valint.old_lastpos],	rax
    mov       rax,	[rbp + msys.valint.s]
    mov       [msys.rd_pos],	rax
    mov       rcx,	[rbp + msys.valint.fmt]
    call      msys.m$read_i64
    mov       [rbp + msys.valint.aa],	rax
    mov       rax,	[rbp + msys.valint.old_pos]
    mov       [msys.rd_pos],	rax
    mov       rax,	[rbp + msys.valint.old_lastpos]
    mov       [msys.rd_lastpos],	rax
    mov       rax,	[rbp + msys.valint.aa]
L393:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc valreal
msys.valreal:
;>>
    %define msys.valreal.s 16
    %define msys.valreal.old_pos -8
    %define msys.valreal.old_lastpos -16
    %define msys.valreal.x -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    call      msys.initreadbuffer
    mov       rax,	[msys.rd_pos]
    mov       [rbp + msys.valreal.old_pos],	rax
    mov       rax,	[msys.rd_lastpos]
    mov       [rbp + msys.valreal.old_lastpos],	rax
    mov       rax,	[rbp + msys.valreal.s]
    mov       [msys.rd_pos],	rax
    xor       ecx,	ecx
    call      msys.m$read_r64
    movq      [rbp + msys.valreal.x],	XMM0
    mov       rax,	[rbp + msys.valreal.old_pos]
    mov       [msys.rd_pos],	rax
    mov       rax,	[rbp + msys.valreal.old_lastpos]
    mov       [msys.rd_lastpos],	rax
    movq      XMM0,	[rbp + msys.valreal.x]
L394:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc mclunimpl
msys.mclunimpl:
;>>
    %define msys.mclunimpl.mess 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    lea       rcx,	[rel L5461]
    mov       rdx,	[rbp + msys.mclunimpl.mess]
    call      printf
    mov       rcx,	1
    call      exit
L395:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc dumpstr
msys.dumpstr:
;>>
    %define msys.dumpstr.s 16
    %define msys.dumpstr.n 24
    %define msys.dumpstr.fbuffer 32
    %define msys.dumpstr.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[msys.outdev]
    cmp       rax,	3
    jnz       L398
    mov       rax,	[msys.outchan]
    mov       [rbp + msys.dumpstr.p],	rax
    mov       rax,	[rbp + msys.dumpstr.n]
    test      rax,	rax
    jz        L400
    mov       rax,	[rbp + msys.dumpstr.p]
    mov       r10,	[rax]
    mov       rcx,	r10
    mov       rdx,	[rbp + msys.dumpstr.s]
    mov       r8,	[rbp + msys.dumpstr.n]
    call      memcpy
    mov       rax,	[rbp + msys.dumpstr.p]
    mov       r10,	[rbp + msys.dumpstr.n]
    add       [rax],	r10
L400:
L399:
    mov       rax,	[rbp + msys.dumpstr.p]
    mov       r10,	[rax]
    xor       eax,	eax
    mov       [r10],	al
    jmp       L396
L398:
L397:
    mov       rax,	[rbp + msys.dumpstr.n]
    cmp       rax,	0
    jnz       L402
    jmp       L396
L402:
L401:
    mov       rax,	[rbp + msys.dumpstr.fbuffer]
    test      rax,	rax
    jz        L404
    mov       rax,	[rbp + msys.dumpstr.n]
    cmp       rax,	2
    jl        L404
    mov       rax,	[msys.outdev]
    cmp       rax,	1
    jnz       L404
    dec       qword [msys.printptr]
    mov       rax,	[msys.printptr]
    movzx     r10,	byte [rax]
    cmp       r10,	10
    jnz       L406
    mov       rax,	[msys.printptr]
    sub       rax,	1
    movzx     r10,	byte [rax]
    cmp       r10,	13
    jnz       L408
    mov       rax,	[msys.printptr]
    sub       rax,	1
    xor       r10d,	r10d
    mov       [rax],	r10b
    jmp       L407
L408:
    xor       eax,	eax
    mov       r10,	[msys.printptr]
    mov       [r10],	al
L407:
    lea       rcx,	[msys.printbuffer]
    call      puts
    jmp       L396
L406:
L405:
L404:
L403:
    mov       rax,	[msys.outdev]
    cmp       rax,	1
    jz        L410
    cmp       rax,	2
    jz        L411
    jmp       L412
L410:
    lea       rcx,	[rel L5462]
    mov       rdx,	[rbp + msys.dumpstr.n]
    mov       r8,	[rbp + msys.dumpstr.s]
    call      printf
    jmp       L409
L411:
    mov       rcx,	[msys.outchan]
    lea       rdx,	[rel L5462]
    mov       r8,	[rbp + msys.dumpstr.n]
    mov       r9,	[rbp + msys.dumpstr.s]
    call      fprintf
L412:
L409:
L396:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc dumpprintbuffer
msys.dumpprintbuffer:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[msys.printlen]
    test      rax,	rax
    jz        L415
    lea       rcx,	[msys.printbuffer]
    mov       rdx,	[msys.printlen]
    mov       r8,	1
    call      msys.dumpstr
L415:
L414:
    call      msys.resetprintbuffer
L413:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc resetprintbuffer
msys.resetprintbuffer:
;>>
;---------------
    lea       rax,	[msys.printbuffer]
    mov       [msys.printptr],	rax
    xor       eax,	eax
    mov       [msys.printlen],	rax
L416:
;---------------
    ret       
;End 
;Proc addtobuffer
msys.addtobuffer:
;>>
    %define msys.addtobuffer.s 16
    %define msys.addtobuffer.n 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[msys.printlen]
    add       rax,	[rbp + msys.addtobuffer.n]
    cmp       rax,	4088
    jl        L419
    call      msys.dumpprintbuffer
L419:
L418:
    mov       rax,	[rbp + msys.addtobuffer.n]
    cmp       rax,	4096
    jge       L421
    mov       rcx,	[msys.printptr]
    mov       rdx,	[rbp + msys.addtobuffer.s]
    mov       r8,	[rbp + msys.addtobuffer.n]
    call      memcpy
    mov       rax,	[rbp + msys.addtobuffer.n]
    add       [msys.printptr],	rax
    mov       rax,	[rbp + msys.addtobuffer.n]
    add       [msys.printlen],	rax
    jmp       L417
L421:
L420:
    mov       rcx,	[rbp + msys.addtobuffer.s]
    mov       rdx,	[rbp + msys.addtobuffer.n]
    xor       r8d,	r8d
    call      msys.dumpstr
L417:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$power_i64
msys.m$power_i64:
;>>
    %define msys.m$power_i64.a 16
    %define msys.m$power_i64.n 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + msys.m$power_i64.n]
    cmp       rax,	0
    jge       L424
    xor       eax,	eax
    jmp       L423
L424:
    mov       rax,	[rbp + msys.m$power_i64.n]
    cmp       rax,	0
    jnz       L425
    mov       rax,	1
    jmp       L423
L425:
    mov       rax,	[rbp + msys.m$power_i64.n]
    cmp       rax,	1
    jnz       L426
    mov       rax,	[rbp + msys.m$power_i64.a]
    jmp       L423
L426:
    mov       rax,	[rbp + msys.m$power_i64.n]
    and       rax,	1
    cmp       rax,	0
    jnz       L427
    mov       rax,	[rbp + msys.m$power_i64.n]
    sar       rax,	1
    mov       r10,	[rbp + msys.m$power_i64.a]
    imul      r10,	r10
    mov       rcx,	r10
    mov       rdx,	rax
    call      msys.m$power_i64
    jmp       L423
L427:
    mov       rax,	[rbp + msys.m$power_i64.n]
    sub       rax,	1
    sar       rax,	1
    mov       r10,	[rbp + msys.m$power_i64.a]
    imul      r10,	r10
    mov       rcx,	r10
    mov       rdx,	rax
    call      msys.m$power_i64
    imul      rax,	[rbp + msys.m$power_i64.a]
L423:
L422:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc getutfsize
msys.getutfsize:
;>>
    %define msys.getutfsize.s 16
    %define msys.getutfsize.a -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + msys.getutfsize.s]
    inc       qword [rbp + msys.getutfsize.s]
    movzx     r10,	byte [rax]
    mov       [rbp + msys.getutfsize.a],	r10
    mov       rax,	[rbp + msys.getutfsize.a]
    cmp       rax,	0
    jnz       L430
    xor       eax,	eax
    jmp       L429
L430:
    mov       eax,	[rbp + msys.getutfsize.a]
    shr       eax,	7
    and       eax,	1
    cmp       rax,	0
    jnz       L431
    mov       rax,	1
    jmp       L429
L431:
    mov       rax,	[rbp + msys.getutfsize.a]
    shr       rax,	5
    and       rax,	7
    cmp       rax,	6
    jnz       L432
    mov       rax,	2
    jmp       L429
L432:
    mov       rax,	[rbp + msys.getutfsize.a]
    shr       rax,	4
    and       rax,	15
    cmp       rax,	14
    jnz       L433
    mov       rax,	3
    jmp       L429
L433:
    mov       rax,	[rbp + msys.getutfsize.a]
    shr       rax,	3
    and       rax,	31
    cmp       rax,	30
    jnz       L434
    mov       rax,	4
    jmp       L429
L434:
    mov       rax,	1
L429:
L428:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc fraction
msys.fraction:
;>>
    %define msys.fraction.x 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    movq      [rbp+16],	XMM0
;---------------
    movq      XMM0,	[rbp + msys.fraction.x]
    movq      XMM1,	[rel L5463]
    call      fmod
L435:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc m$sign_i64
msys.m$sign_i64:
;>>
    %define msys.m$sign_i64.a 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + msys.m$sign_i64.a]
    cmp       rax,	0
    jge       L438
    mov       rax,	-1
    jmp       L437
L438:
    mov       rax,	[rbp + msys.m$sign_i64.a]
    cmp       rax,	0
    jle       L440
    mov       rax,	1
    jmp       L439
L440:
    xor       eax,	eax
L439:
L437:
L436:
;---------------
    pop       rbp
    ret       
;End 
;Proc m$sign_r64
msys.m$sign_r64:
;>>
    %define msys.m$sign_r64.x 16
    push      rbp
    mov       rbp,	rsp
    movq      [rbp+16],	XMM0
;---------------
    movq      XMM4,	[rbp + msys.m$sign_r64.x]
    comisd    XMM4,	[rel L5464]
    jae       L443
    movq      XMM0,	[rel L5465]
    jmp       L441
L443:
L442:
    movq      XMM4,	[rbp + msys.m$sign_r64.x]
    comisd    XMM4,	[rel L5466]
    jbe       L445
    movq      XMM0,	[rel L5467]
    jmp       L441
L445:
L444:
    movq      XMM0,	[rel L5468]
L441:
;---------------
    pop       rbp
    ret       
;End 
;Proc pcm_alloc
mlib.pcm_alloc:
;>>
    %define mlib.pcm_alloc.n 16
    %define mlib.pcm_alloc.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mlib.pcm_setup]
    test      rax,	rax
    jnz       L448
    call      mlib.pcm_init
L448:
L447:
    mov       rax,	[rbp + mlib.pcm_alloc.n]
    cmp       rax,	2048
    jle       L450
    mov       rcx,	[rbp + mlib.pcm_alloc.n]
    call      mlib.pcm_getac
    mov       [mlib.alloccode],	rax
    lea       rax,	[mlib.allocupper]
    mov       r10,	[mlib.alloccode]
    mov       r11,	[rax + r10*8]
    mov       [mlib.allocbytes],	r11
    mov       rcx,	[mlib.allocbytes]
    call      mlib.allocmem
    mov       [rbp + mlib.pcm_alloc.p],	rax
    mov       rax,	[rbp + mlib.pcm_alloc.p]
    test      rax,	rax
    jnz       L452
    lea       rcx,	[rel L5469]
    call      mlib.abortprogram
L452:
L451:
    mov       rax,	[rbp + mlib.pcm_alloc.p]
    jmp       L446
L450:
L449:
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_alloc.n]
    movzx     r11,	byte [rax + r10]
    mov       [mlib.alloccode],	r11
    lea       rax,	[mlib.allocupper]
    mov       r10,	[mlib.alloccode]
    mov       r11,	[rax + r10*8]
    mov       [mlib.allocbytes],	r11
    mov       rax,	[mlib.allocbytes]
    add       [mlib.smallmemtotal],	rax
    lea       rax,	[mlib.freelist]
    mov       r10,	[mlib.alloccode]
    mov       r11,	[rax + r10*8]
    mov       [rbp + mlib.pcm_alloc.p],	r11
    test      r11,	r11
    jz        L454
    lea       rax,	[mlib.freelist]
    mov       r10,	[mlib.alloccode]
    mov       r11,	[rax + r10*8]
    mov       rax,	[r11]
    lea       r10,	[mlib.freelist]
    mov       r11,	[mlib.alloccode]
    mov       [r10 + r11*8],	rax
    mov       rax,	[rbp + mlib.pcm_alloc.p]
    jmp       L446
L454:
L453:
    mov       rax,	[mlib.pcheapptr]
    mov       [rbp + mlib.pcm_alloc.p],	rax
    mov       rax,	[mlib.allocbytes]
    add       [mlib.pcheapptr],	rax
    mov       rax,	[mlib.pcheapptr]
    cmp       rax,	[mlib.pcheapend]
    jb        L456
    mov       rcx,	[mlib.allocbytes]
    call      mlib.pcm_newblock
    mov       [rbp + mlib.pcm_alloc.p],	rax
    mov       rax,	[rbp + mlib.pcm_alloc.p]
    jmp       L446
L456:
L455:
    mov       rax,	[rbp + mlib.pcm_alloc.p]
L446:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_free
mlib.pcm_free:
;>>
    %define mlib.pcm_free.p 16
    %define mlib.pcm_free.n 24
    %define mlib.pcm_free.acode -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.pcm_free.n]
    cmp       rax,	0
    jnz       L459
    jmp       L457
L459:
L458:
    mov       rax,	[rbp + mlib.pcm_free.n]
    cmp       rax,	2048
    jle       L461
    mov       rcx,	[rbp + mlib.pcm_free.p]
    call      free
    jmp       L457
L461:
L460:
    mov       rax,	[rbp + mlib.pcm_free.p]
    test      rax,	rax
    jz        L463
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_free.n]
    movzx     r11,	byte [rax + r10]
    mov       [rbp + mlib.pcm_free.acode],	r11
    lea       rax,	[mlib.allocupper]
    mov       r10,	[rbp + mlib.pcm_free.acode]
    mov       r11,	[rax + r10*8]
    sub       [mlib.smallmemtotal],	r11
    lea       rax,	[mlib.freelist]
    mov       r10,	[rbp + mlib.pcm_free.acode]
    mov       r11,	[rax + r10*8]
    mov       rax,	[rbp + mlib.pcm_free.p]
    mov       [rax],	r11
    mov       rax,	[rbp + mlib.pcm_free.p]
    lea       r10,	[mlib.freelist]
    mov       r11,	[rbp + mlib.pcm_free.acode]
    mov       [r10 + r11*8],	rax
L463:
L462:
L457:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_freeac
mlib.pcm_freeac:
;>>
    %define mlib.pcm_freeac.p 16
    %define mlib.pcm_freeac.alloc 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rax,	[mlib.allocupper]
    mov       r10,	[rbp + mlib.pcm_freeac.alloc]
    mov       r11,	[rax + r10*8]
    mov       rcx,	[rbp + mlib.pcm_freeac.p]
    mov       rdx,	r11
    call      mlib.pcm_free
L464:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcm_clearmem
mlib.pcm_clearmem:
;>>
    %define mlib.pcm_clearmem.p 16
    %define mlib.pcm_clearmem.n 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.pcm_clearmem.p]
    xor       edx,	edx
    mov       r8,	[rbp + mlib.pcm_clearmem.n]
    call      memset
L465:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcm_init
mlib.pcm_init:
;>>
    %define mlib.pcm_init.j -8
    %define mlib.pcm_init.k -16
    %define mlib.pcm_init.k1 -24
    %define mlib.pcm_init.k2 -32
    %define mlib.pcm_init.size -40
    %define mlib.pcm_init.av_1 -48
    %define mlib.pcm_init.i -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    xor       eax,	eax
    mov       [mlib.alloccode],	rax
    movzx     rax,	byte [mlib.pcm_setup]
    test      rax,	rax
    jz        L468
    jmp       L466
L468:
L467:
    xor       ecx,	ecx
    call      mlib.pcm_newblock
    mov       rax,	1
    mov       [rbp + mlib.pcm_init.i],	rax
L469:
    mov       rax,	1
    mov       [rbp + mlib.pcm_init.j],	rax
    mov       rax,	16
    mov       [rbp + mlib.pcm_init.k],	rax
    jmp       L473
L472:
    mov       rax,	[rbp + mlib.pcm_init.k]
    shl       rax,	1
    mov       [rbp + mlib.pcm_init.k],	rax
    inc       qword [rbp + mlib.pcm_init.j]
L473:
    mov       rax,	[rbp + mlib.pcm_init.i]
    cmp       rax,	[rbp + mlib.pcm_init.k]
    jg        L472
L474:
    mov       al,	[rbp + mlib.pcm_init.j]
    lea       r10,	[mlib.sizeindextable]
    mov       r11,	[rbp + mlib.pcm_init.i]
    mov       [r10 + r11],	al
L470:
    mov       rax,	[rbp + mlib.pcm_init.i]
    inc       rax
    mov       [rbp + mlib.pcm_init.i],	rax
    cmp       rax,	2048
    jle       L469
L471:
    mov       rax,	16
    mov       [mlib.allocupper+8],	rax
    mov       rax,	16
    mov       [rbp + mlib.pcm_init.size],	rax
    mov       rax,	2
    mov       [rbp + mlib.pcm_init.i],	rax
L475:
    mov       rax,	[rbp + mlib.pcm_init.size]
    shl       rax,	1
    mov       [rbp + mlib.pcm_init.size],	rax
    mov       rax,	[rbp + mlib.pcm_init.size]
    lea       r10,	[mlib.allocupper]
    mov       r11,	[rbp + mlib.pcm_init.i]
    mov       [r10 + r11*8],	rax
    mov       rax,	[rbp + mlib.pcm_init.size]
    cmp       rax,	33554432
    jl        L479
    mov       rax,	[rbp + mlib.pcm_init.i]
    mov       [rbp + mlib.pcm_init.k],	rax
    jmp       L477
L479:
L478:
L476:
    mov       rax,	[rbp + mlib.pcm_init.i]
    inc       rax
    mov       [rbp + mlib.pcm_init.i],	rax
    cmp       rax,	27
    jle       L475
L477:
    mov       rax,	[rbp + mlib.pcm_init.k]
    add       rax,	1
    mov       [rbp + mlib.pcm_init.i],	rax
    mov       rax,	300
    mov       [rbp + mlib.pcm_init.av_1],	rax
    mov       rax,	[rbp + mlib.pcm_init.i]
    cmp       rax,	[rbp + mlib.pcm_init.av_1]
    jg        L482
L480:
    mov       rax,	33554432
    add       [rbp + mlib.pcm_init.size],	rax
    mov       rax,	[rbp + mlib.pcm_init.size]
    mov       r10,	8589934592
    cmp       rax,	r10
    jge       L484
    mov       rax,	[rbp + mlib.pcm_init.size]
    lea       r10,	[mlib.allocupper]
    mov       r11,	[rbp + mlib.pcm_init.i]
    mov       [r10 + r11*8],	rax
    mov       rax,	[rbp + mlib.pcm_init.size]
    mov       [mlib.maxmemory],	rax
    jmp       L483
L484:
    mov       rax,	[rbp + mlib.pcm_init.i]
    sub       rax,	1
    mov       [mlib.maxalloccode],	rax
    jmp       L482
L483:
L481:
    mov       rax,	[rbp + mlib.pcm_init.i]
    inc       rax
    mov       [rbp + mlib.pcm_init.i],	rax
    cmp       rax,	[rbp + mlib.pcm_init.av_1]
    jle       L480
L482:
    mov       al,	1
    mov       [mlib.pcm_setup],	al
L466:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc pcm_getac
mlib.pcm_getac:
;>>
    %define mlib.pcm_getac.size 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.pcm_getac.size]
    cmp       rax,	2048
    jg        L487
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_getac.size]
    movzx     r11,	byte [rax + r10]
    mov       rax,	r11
    jmp       L485
L487:
L486:
    mov       rax,	[rbp + mlib.pcm_getac.size]
    add       rax,	255
    sar       rax,	8
    mov       [rbp + mlib.pcm_getac.size],	rax
    mov       rax,	[rbp + mlib.pcm_getac.size]
    cmp       rax,	2048
    jg        L489
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_getac.size]
    movzx     r11,	byte [rax + r10]
    add       r11,	8
    mov       rax,	r11
    jmp       L485
L489:
L488:
    mov       rax,	[rbp + mlib.pcm_getac.size]
    add       rax,	63
    sar       rax,	6
    mov       [rbp + mlib.pcm_getac.size],	rax
    mov       rax,	[rbp + mlib.pcm_getac.size]
    cmp       rax,	2048
    jg        L491
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_getac.size]
    movzx     r11,	byte [rax + r10]
    add       r11,	14
    mov       rax,	r11
    jmp       L485
L491:
L490:
    mov       rax,	[rbp + mlib.pcm_getac.size]
    sub       rax,	2048
    add       rax,	2047
    sar       rax,	11
    add       rax,	22
    mov       [rbp + mlib.pcm_getac.size],	rax
    mov       rax,	[rbp + mlib.pcm_getac.size]
L485:
;---------------
    pop       rbp
    ret       
;End 
;Proc pcm_newblock
mlib.pcm_newblock:
;>>
    %define mlib.pcm_newblock.itemsize 16
    %define mlib.pcm_newblock.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	2097152
    add       [mlib.pcm_newblock.totalheapsize],	rax
    xor       eax,	eax
    mov       [mlib.alloccode],	rax
    mov       rcx,	2097152
    call      mlib.allocmem
    mov       [rbp + mlib.pcm_newblock.p],	rax
    mov       rax,	[rbp + mlib.pcm_newblock.p]
    cmp       rax,	0
    jnz       L494
    lea       rcx,	[rel L5470]
    call      mlib.abortprogram
L494:
L493:
    mov       rcx,	[rbp + mlib.pcm_newblock.p]
    xor       edx,	edx
    mov       r8,	2097152
    call      memset
    mov       rax,	[rbp + mlib.pcm_newblock.p]
    mov       [mlib.pcheapptr],	rax
    mov       rax,	[rbp + mlib.pcm_newblock.p]
    lea       rax,	[rax+2097152]
    mov       [mlib.pcheapend],	rax
    mov       rax,	[mlib.pcheapstart]
    cmp       rax,	0
    jnz       L496
    mov       rax,	[rbp + mlib.pcm_newblock.p]
    mov       [mlib.pcheapstart],	rax
L496:
L495:
    mov       rax,	[rbp + mlib.pcm_newblock.itemsize]
    add       [mlib.pcheapptr],	rax
    mov       rax,	[rbp + mlib.pcm_newblock.p]
L492:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_round
mlib.pcm_round:
;>>
    %define mlib.pcm_round.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.pcm_round.n]
    cmp       rax,	2048
    jle       L499
    mov       rax,	[rbp + mlib.pcm_round.n]
    jmp       L498
L499:
    lea       rax,	[mlib.sizeindextable]
    mov       r10,	[rbp + mlib.pcm_round.n]
    movzx     r11,	byte [rax + r10]
    lea       rax,	[mlib.pcm_round.allocbytes]
    movsxd    r10,	dword [rax + r11*4]
    mov       rax,	r10
L498:
L497:
;---------------
    pop       rbp
    ret       
;End 
;Proc pcm_allocz
mlib.pcm_allocz:
;>>
    %define mlib.pcm_allocz.n 16
    %define mlib.pcm_allocz.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.pcm_allocz.n]
    call      mlib.pcm_alloc
    mov       [rbp + mlib.pcm_allocz.p],	rax
    mov       rcx,	[rbp + mlib.pcm_allocz.p]
    xor       edx,	edx
    mov       r8,	[rbp + mlib.pcm_allocz.n]
    call      memset
    mov       rax,	[rbp + mlib.pcm_allocz.p]
L500:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_copyheapstring
mlib.pcm_copyheapstring:
;>>
    %define mlib.pcm_copyheapstring.s 16
    %define mlib.pcm_copyheapstring.q -8
    %define mlib.pcm_copyheapstring.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.pcm_copyheapstring.s]
    cmp       rax,	0
    jnz       L503
    xor       eax,	eax
    jmp       L501
L503:
L502:
    mov       rcx,	[rbp + mlib.pcm_copyheapstring.s]
    call      strlen
    add       rax,	1
    mov       [rbp + mlib.pcm_copyheapstring.n],	rax
    mov       rcx,	[rbp + mlib.pcm_copyheapstring.n]
    call      mlib.pcm_alloc
    mov       [rbp + mlib.pcm_copyheapstring.q],	rax
    mov       rcx,	[rbp + mlib.pcm_copyheapstring.q]
    mov       rdx,	[rbp + mlib.pcm_copyheapstring.s]
    mov       r8,	[rbp + mlib.pcm_copyheapstring.n]
    call      memcpy
    mov       rax,	[rbp + mlib.pcm_copyheapstring.q]
L501:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_copyheapstringn
mlib.pcm_copyheapstringn:
;>>
    %define mlib.pcm_copyheapstringn.s 16
    %define mlib.pcm_copyheapstringn.n 24
    %define mlib.pcm_copyheapstringn.q -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.pcm_copyheapstringn.s]
    cmp       rax,	0
    jnz       L506
    xor       eax,	eax
    jmp       L504
L506:
L505:
    mov       rax,	[rbp + mlib.pcm_copyheapstringn.n]
    add       rax,	1
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [rbp + mlib.pcm_copyheapstringn.q],	rax
    mov       rcx,	[rbp + mlib.pcm_copyheapstringn.q]
    mov       rdx,	[rbp + mlib.pcm_copyheapstringn.s]
    mov       r8,	[rbp + mlib.pcm_copyheapstringn.n]
    call      memcpy
    xor       eax,	eax
    mov       r10,	[rbp + mlib.pcm_copyheapstringn.q]
    mov       r11,	[rbp + mlib.pcm_copyheapstringn.n]
    mov       [r10 + r11],	al
    mov       rax,	[rbp + mlib.pcm_copyheapstringn.q]
L504:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_copyheapblock
mlib.pcm_copyheapblock:
;>>
    %define mlib.pcm_copyheapblock.s 16
    %define mlib.pcm_copyheapblock.length 24
    %define mlib.pcm_copyheapblock.q -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.pcm_copyheapblock.length]
    cmp       rax,	0
    jnz       L509
    xor       eax,	eax
    jmp       L507
L509:
L508:
    mov       rcx,	[rbp + mlib.pcm_copyheapblock.length]
    call      mlib.pcm_alloc
    mov       [rbp + mlib.pcm_copyheapblock.q],	rax
    mov       rcx,	[rbp + mlib.pcm_copyheapblock.q]
    mov       rdx,	[rbp + mlib.pcm_copyheapblock.s]
    mov       r8,	[rbp + mlib.pcm_copyheapblock.length]
    call      memcpy
    mov       rax,	[rbp + mlib.pcm_copyheapblock.q]
L507:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc allocmem
mlib.allocmem:
;>>
    %define mlib.allocmem.n 16
    %define mlib.allocmem.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.allocmem.n]
    call      malloc
    mov       [rbp + mlib.allocmem.p],	rax
    mov       rax,	[rbp + mlib.allocmem.p]
    test      rax,	rax
    jz        L512
    mov       rax,	[rbp + mlib.allocmem.p]
    jmp       L510
L512:
L511:
    call      msys.m$print_startcon
    mov       rcx,	[rbp + mlib.allocmem.n]
    call      msys.m$print_i64_nf
    mov       rcx,	[mlib.memtotal]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5471]
    call      mlib.abortprogram
    xor       eax,	eax
L510:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc reallocmem
mlib.reallocmem:
;>>
    %define mlib.reallocmem.p 16
    %define mlib.reallocmem.n 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.reallocmem.p]
    mov       rdx,	[rbp + mlib.reallocmem.n]
    call      realloc
    mov       [rbp + mlib.reallocmem.p],	rax
    mov       rax,	[rbp + mlib.reallocmem.p]
    test      rax,	rax
    jz        L515
    mov       rax,	[rbp + mlib.reallocmem.p]
    jmp       L513
L515:
L514:
    call      msys.m$print_startcon
    mov       rcx,	[rbp + mlib.reallocmem.n]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5472]
    call      mlib.abortprogram
    xor       eax,	eax
L513:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc abortprogram
mlib.abortprogram:
;>>
    %define mlib.abortprogram.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      msys.m$print_startcon
    mov       rcx,	[rbp + mlib.abortprogram.s]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    lea       rcx,	[rel L5473]
    call      msys.m$print_str_nf
    call      msys.m$print_end
    mov       rcx,	5
    call      exit
L516:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc getfilesize
mlib.getfilesize:
;>>
    %define mlib.getfilesize.handlex 16
    %define mlib.getfilesize.p -8
    %define mlib.getfilesize.size -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.getfilesize.handlex]
    call      ftell
    movsxd    rax,	eax
    mov       [rbp + mlib.getfilesize.p],	eax
    mov       rcx,	[rbp + mlib.getfilesize.handlex]
    xor       edx,	edx
    mov       r8,	2
    call      fseek
    mov       rcx,	[rbp + mlib.getfilesize.handlex]
    call      ftell
    movsxd    rax,	eax
    mov       [rbp + mlib.getfilesize.size],	eax
    mov       eax,	[rbp + mlib.getfilesize.p]
    mov       rcx,	[rbp + mlib.getfilesize.handlex]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      fseek
    mov       eax,	[rbp + mlib.getfilesize.size]
L517:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc readrandom
mlib.readrandom:
;>>
    %define mlib.readrandom.handlex 16
    %define mlib.readrandom.mem 24
    %define mlib.readrandom.offset 32
    %define mlib.readrandom.size 40
    %define mlib.readrandom.a -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rcx,	[rbp + mlib.readrandom.handlex]
    mov       rdx,	[rbp + mlib.readrandom.offset]
    xor       r8d,	r8d
    call      fseek
    mov       rcx,	[rbp + mlib.readrandom.mem]
    mov       rdx,	1
    mov       r8,	[rbp + mlib.readrandom.size]
    mov       r9,	[rbp + mlib.readrandom.handlex]
    call      fread
    mov       [rbp + mlib.readrandom.a],	rax
L518:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc writerandom
mlib.writerandom:
;>>
    %define mlib.writerandom.handlex 16
    %define mlib.writerandom.mem 24
    %define mlib.writerandom.offset 32
    %define mlib.writerandom.size 40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rcx,	[rbp + mlib.writerandom.handlex]
    mov       rdx,	[rbp + mlib.writerandom.offset]
    xor       r8d,	r8d
    call      fseek
    mov       rcx,	[rbp + mlib.writerandom.mem]
    mov       rdx,	1
    mov       r8,	[rbp + mlib.writerandom.size]
    mov       r9,	[rbp + mlib.writerandom.handlex]
    call      fwrite
L519:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc setfilepos
mlib.setfilepos:
;>>
    %define mlib.setfilepos.file 16
    %define mlib.setfilepos.offset 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.setfilepos.file]
    mov       rdx,	[rbp + mlib.setfilepos.offset]
    xor       r8d,	r8d
    call      fseek
    movsxd    rax,	eax
L520:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc getfilepos
mlib.getfilepos:
;>>
    %define mlib.getfilepos.file 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.getfilepos.file]
    call      ftell
    movsxd    rax,	eax
L521:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc readfile
mlib.readfile:
;>>
    %define mlib.readfile.filename 16
    %define mlib.readfile.f -8
    %define mlib.readfile.size -16
    %define mlib.readfile.m -24
    %define mlib.readfile.p -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.readfile.filename]
    lea       rdx,	[rel L5474]
    call      fopen
    mov       [rbp + mlib.readfile.f],	rax
    mov       rax,	[rbp + mlib.readfile.f]
    cmp       rax,	0
    jnz       L524
    xor       eax,	eax
    jmp       L522
L524:
L523:
    mov       rcx,	[rbp + mlib.readfile.f]
    call      mlib.getfilesize
    mov       [rbp + mlib.readfile.size],	rax
    mov       [mlib.rfsize],	rax
    mov       rax,	[rbp + mlib.readfile.size]
    add       rax,	2
    mov       rcx,	rax
    call      malloc
    mov       [rbp + mlib.readfile.m],	rax
    mov       rax,	[rbp + mlib.readfile.m]
    cmp       rax,	0
    jnz       L526
    xor       eax,	eax
    jmp       L522
L526:
L525:
    mov       rcx,	[rbp + mlib.readfile.f]
    mov       rdx,	[rbp + mlib.readfile.m]
    xor       r8d,	r8d
    mov       r9,	[rbp + mlib.readfile.size]
    call      mlib.readrandom
    mov       rax,	[rbp + mlib.readfile.m]
    mov       r10,	[rbp + mlib.readfile.size]
    lea       rax,	[rax + r10]
    mov       [rbp + mlib.readfile.p],	rax
    xor       eax,	eax
    mov       r10,	[rbp + mlib.readfile.p]
    mov       [r10],	ax
    mov       rcx,	[rbp + mlib.readfile.f]
    call      fclose
    mov       rax,	[rbp + mlib.readfile.m]
L522:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc writefile
mlib.writefile:
;>>
    %define mlib.writefile.filename 16
    %define mlib.writefile.data 24
    %define mlib.writefile.size 32
    %define mlib.writefile.f -8
    %define mlib.writefile.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.writefile.filename]
    lea       rdx,	[rel L5475]
    call      fopen
    mov       [rbp + mlib.writefile.f],	rax
    mov       rax,	[rbp + mlib.writefile.f]
    cmp       rax,	0
    jnz       L529
    xor       eax,	eax
    jmp       L527
L529:
L528:
    mov       rcx,	[rbp + mlib.writefile.f]
    mov       rdx,	[rbp + mlib.writefile.data]
    xor       r8d,	r8d
    mov       r9,	[rbp + mlib.writefile.size]
    call      mlib.writerandom
    mov       [rbp + mlib.writefile.n],	rax
    mov       rcx,	[rbp + mlib.writefile.f]
    call      fclose
    mov       rax,	[rbp + mlib.writefile.n]
L527:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc checkfile
mlib.checkfile:
;>>
    %define mlib.checkfile.file 16
    %define mlib.checkfile.f -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.checkfile.file]
    lea       rdx,	[rel L5476]
    call      fopen
    mov       [rbp + mlib.checkfile.f],	rax
    test      rax,	rax
    jz        L532
    mov       rcx,	[rbp + mlib.checkfile.f]
    call      fclose
    mov       rax,	1
    jmp       L530
L532:
L531:
    xor       eax,	eax
L530:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc readlinen
mlib.readlinen:
;>>
    %define mlib.readlinen.handlex 16
    %define mlib.readlinen.buffer 24
    %define mlib.readlinen.size 32
    %define mlib.readlinen.ch -8
    %define mlib.readlinen.p -16
    %define mlib.readlinen.n -24
    %define mlib.readlinen.buff -128
    %define mlib.readlinen.crseen -136
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	176
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mlib.readlinen.handlex]
    cmp       rax,	0
    jnz       L535
    call      mwindows.os_getstdin
    mov       [rbp + mlib.readlinen.handlex],	rax
L535:
L534:
    mov       rax,	[rbp + mlib.readlinen.handlex]
    cmp       rax,	0
    jnz       L537
    xor       eax,	eax
    mov       [rbp + mlib.readlinen.n],	rax
    mov       rax,	[rbp + mlib.readlinen.buffer]
    mov       [rbp + mlib.readlinen.p],	rax
L538:
    call      getchar
    movsxd    rax,	eax
    mov       [rbp + mlib.readlinen.ch],	rax
    mov       rax,	[rbp + mlib.readlinen.ch]
    cmp       rax,	13
    jz        L542
    mov       rax,	[rbp + mlib.readlinen.ch]
    cmp       rax,	10
    jz        L542
    mov       rax,	[rbp + mlib.readlinen.ch]
    cmp       rax,	-1
    jnz       L541
L542:
    xor       eax,	eax
    mov       r10,	[rbp + mlib.readlinen.p]
    mov       [r10],	al
    jmp       L533
L541:
L540:
    mov       rax,	[rbp + mlib.readlinen.p]
    inc       qword [rbp + mlib.readlinen.p]
    mov       r10b,	[rbp + mlib.readlinen.ch]
    mov       [rax],	r10b
    inc       qword [rbp + mlib.readlinen.n]
    mov       rax,	[rbp + mlib.readlinen.size]
    sub       rax,	2
    mov       r10,	[rbp + mlib.readlinen.n]
    cmp       r10,	rax
    jl        L544
    xor       eax,	eax
    mov       r10,	[rbp + mlib.readlinen.p]
    mov       [r10],	al
    jmp       L533
L544:
L543:
    jmp       L538
L539:
L537:
L536:
    xor       eax,	eax
    mov       r10,	[rbp + mlib.readlinen.buffer]
    mov       [r10],	al
    mov       rax,	[rbp + mlib.readlinen.size]
    sub       rax,	2
    mov       rcx,	[rbp + mlib.readlinen.buffer]
    mov       rdx,	rax
    mov       r8,	[rbp + mlib.readlinen.handlex]
    call      fgets
    cmp       rax,	0
    jnz       L546
    jmp       L533
L546:
L545:
    mov       rcx,	[rbp + mlib.readlinen.buffer]
    call      strlen
    mov       [rbp + mlib.readlinen.n],	rax
    mov       rax,	[rbp + mlib.readlinen.n]
    cmp       rax,	0
    jnz       L548
    jmp       L533
L548:
L547:
    mov       rax,	[rbp + mlib.readlinen.buffer]
    mov       r10,	[rbp + mlib.readlinen.n]
    lea       rax,	[rax + r10]
    sub       rax,	1
    mov       [rbp + mlib.readlinen.p],	rax
    xor       eax,	eax
    mov       [rbp + mlib.readlinen.crseen],	al
    jmp       L550
L549:
    mov       rax,	[rbp + mlib.readlinen.p]
    movzx     r10,	byte [rax]
    cmp       r10,	13
    jz        L554
    mov       rax,	[rbp + mlib.readlinen.p]
    movzx     r10,	byte [rax]
    cmp       r10,	10
    jnz       L553
L554:
    mov       al,	1
    mov       [rbp + mlib.readlinen.crseen],	al
L553:
L552:
    mov       rax,	[rbp + mlib.readlinen.p]
    dec       qword [rbp + mlib.readlinen.p]
    xor       r10d,	r10d
    mov       [rax],	r10b
L550:
    mov       rax,	[rbp + mlib.readlinen.p]
    cmp       rax,	[rbp + mlib.readlinen.buffer]
    jb        L555
    mov       rax,	[rbp + mlib.readlinen.p]
    movzx     r10,	byte [rax]
    cmp       r10,	13
    jz        L549
    mov       rax,	[rbp + mlib.readlinen.p]
    movzx     r10,	byte [rax]
    cmp       r10,	10
    jz        L549
L555:
L551:
    movzx     rax,	byte [rbp + mlib.readlinen.crseen]
    test      rax,	rax
    jnz       L557
    mov       rax,	[rbp + mlib.readlinen.n]
    add       rax,	4
    cmp       rax,	[rbp + mlib.readlinen.size]
    jle       L557
    call      msys.m$print_startcon
    mov       rcx,	[rbp + mlib.readlinen.size]
    call      msys.m$print_i64_nf
    mov       rcx,	[rbp + mlib.readlinen.n]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5477]
    call      mlib.abortprogram
L557:
L556:
L533:
;---------------
    add       rsp,	176
    pop       rbp
    ret       
;End 
;Proc iconvlcn
mlib.iconvlcn:
;>>
    %define mlib.iconvlcn.s 16
    %define mlib.iconvlcn.n 24
    %define mlib.iconvlcn.av_1 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.iconvlcn.n]
    mov       [rbp + mlib.iconvlcn.av_1],	rax
    mov       rax,	[rbp + mlib.iconvlcn.av_1]
    cmp       rax,	0
    jle       L561
L559:
    mov       rax,	[rbp + mlib.iconvlcn.s]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      tolower
    movsxd    rax,	eax
    mov       r10,	[rbp + mlib.iconvlcn.s]
    mov       [r10],	al
    inc       qword [rbp + mlib.iconvlcn.s]
L560:
    dec       qword [rbp + mlib.iconvlcn.av_1]
    jnz       L559
L561:
L558:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc iconvucn
mlib.iconvucn:
;>>
    %define mlib.iconvucn.s 16
    %define mlib.iconvucn.n 24
    %define mlib.iconvucn.av_1 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.iconvucn.n]
    mov       [rbp + mlib.iconvucn.av_1],	rax
    mov       rax,	[rbp + mlib.iconvucn.av_1]
    cmp       rax,	0
    jle       L565
L563:
    mov       rax,	[rbp + mlib.iconvucn.s]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      toupper
    movsxd    rax,	eax
    mov       r10,	[rbp + mlib.iconvucn.s]
    mov       [r10],	al
    inc       qword [rbp + mlib.iconvucn.s]
L564:
    dec       qword [rbp + mlib.iconvucn.av_1]
    jnz       L563
L565:
L562:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc convlcstring
mlib.convlcstring:
;>>
    %define mlib.convlcstring.s 16
    %define mlib.convlcstring.s0 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.convlcstring.s]
    mov       [rbp + mlib.convlcstring.s0],	rax
    jmp       L568
L567:
    mov       rax,	[rbp + mlib.convlcstring.s]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      tolower
    movsxd    rax,	eax
    mov       r10,	[rbp + mlib.convlcstring.s]
    mov       [r10],	al
    inc       qword [rbp + mlib.convlcstring.s]
L568:
    mov       rax,	[rbp + mlib.convlcstring.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jnz       L567
L569:
    mov       rax,	[rbp + mlib.convlcstring.s0]
L566:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc convucstring
mlib.convucstring:
;>>
    %define mlib.convucstring.s 16
    %define mlib.convucstring.s0 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.convucstring.s]
    mov       [rbp + mlib.convucstring.s0],	rax
    jmp       L572
L571:
    mov       rax,	[rbp + mlib.convucstring.s]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      toupper
    movsxd    rax,	eax
    mov       r10,	[rbp + mlib.convucstring.s]
    mov       [r10],	al
    inc       qword [rbp + mlib.convucstring.s]
L572:
    mov       rax,	[rbp + mlib.convucstring.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jnz       L571
L573:
    mov       rax,	[rbp + mlib.convucstring.s0]
L570:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc changeext
mlib.changeext:
;>>
    %define mlib.changeext.s 16
    %define mlib.changeext.newext 24
    %define mlib.changeext.newext2 -32
    %define mlib.changeext.sext -40
    %define mlib.changeext.n -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rax,	[mlib.changeext.newfile]
    mov       rcx,	rax
    mov       rdx,	[rbp + mlib.changeext.s]
    call      strcpy
    mov       rax,	[rbp + mlib.changeext.newext]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jz        L576
    cmp       r10,	46
    jz        L577
    jmp       L578
L576:
    xor       eax,	eax
    mov       [rbp + mlib.changeext.newext2],	al
    xor       eax,	eax
    mov       [rbp + mlib.changeext.newext2+1],	al
    jmp       L575
L577:
    lea       rax,	[rbp + mlib.changeext.newext2]
    mov       rcx,	rax
    mov       rdx,	[rbp + mlib.changeext.newext]
    call      strcpy
    jmp       L575
L578:
    lea       rax,	[rbp + mlib.changeext.newext2]
    mov       rcx,	rax
    lea       rdx,	[rel L5478]
    call      strcpy
    lea       rax,	[rbp + mlib.changeext.newext2]
    mov       rcx,	rax
    mov       rdx,	[rbp + mlib.changeext.newext]
    call      strcat
L575:
    mov       rcx,	[rbp + mlib.changeext.s]
    mov       rdx,	1
    call      mlib.extractext
    mov       [rbp + mlib.changeext.sext],	rax
    mov       rax,	[rbp + mlib.changeext.sext]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jz        L580
    cmp       r10,	46
    jz        L581
    jmp       L582
L580:
    lea       rax,	[rbp + mlib.changeext.newext2]
    lea       r10,	[mlib.changeext.newfile]
    mov       rcx,	r10
    mov       rdx,	rax
    call      strcat
    jmp       L579
L581:
    lea       rax,	[rbp + mlib.changeext.newext2+1]
    lea       r10,	[mlib.changeext.newfile]
    mov       rcx,	r10
    mov       rdx,	rax
    call      strcat
    jmp       L579
L582:
    mov       rax,	[rbp + mlib.changeext.sext]
    sub       rax,	[rbp + mlib.changeext.s]
    sub       rax,	2
    mov       [rbp + mlib.changeext.n],	rax
    lea       rax,	[rbp + mlib.changeext.newext2]
    lea       r10,	[mlib.changeext.newfile]
    mov       r11,	[rbp + mlib.changeext.n]
    lea       r10,	[r10 + r11]
    lea       r10,	[r10+1]
    mov       rcx,	r10
    mov       rdx,	rax
    call      strcpy
L579:
    lea       rax,	[mlib.changeext.newfile]
L574:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc extractext
mlib.extractext:
;>>
    %define mlib.extractext.s 16
    %define mlib.extractext.period 24
    %define mlib.extractext.t -8
    %define mlib.extractext.u -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.extractext.s]
    call      mlib.extractfile
    mov       [rbp + mlib.extractext.t],	rax
    mov       rax,	[rbp + mlib.extractext.t]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L585
    lea       rax,	[rel L5479]
    jmp       L583
L585:
L584:
    mov       rcx,	[rbp + mlib.extractext.t]
    call      strlen
    mov       r10,	[rbp + mlib.extractext.t]
    lea       r10,	[r10 + rax]
    sub       r10,	1
    mov       [rbp + mlib.extractext.u],	r10
    jmp       L587
L586:
    mov       rax,	[rbp + mlib.extractext.u]
    movzx     r10,	byte [rax]
    cmp       r10,	46
    jnz       L590
    mov       rax,	[rbp + mlib.extractext.u]
    movzx     r10,	byte [rax+1]
    cmp       r10,	0
    jnz       L592
    mov       rax,	[rbp + mlib.extractext.period]
    test      rax,	rax
    jz        L594
    lea       rax,	[rel L5480]
    jmp       L593
L594:
    lea       rax,	[rel L5481]
L593:
    jmp       L583
L592:
L591:
    mov       rax,	[rbp + mlib.extractext.u]
    lea       rax,	[rax+1]
    jmp       L583
L590:
L589:
    dec       qword [rbp + mlib.extractext.u]
L587:
    mov       rax,	[rbp + mlib.extractext.u]
    cmp       rax,	[rbp + mlib.extractext.t]
    jae       L586
L588:
    lea       rax,	[rel L5481]
L583:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc extractpath
mlib.extractpath:
;>>
    %define mlib.extractpath.s 16
    %define mlib.extractpath.t -8
    %define mlib.extractpath.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.extractpath.s]
    call      strlen
    mov       r10,	[rbp + mlib.extractpath.s]
    lea       r10,	[r10 + rax]
    sub       r10,	1
    mov       [rbp + mlib.extractpath.t],	r10
    jmp       L597
L596:
    mov       rax,	[rbp + mlib.extractpath.t]
    movzx     r10,	byte [rax]
    cmp       r10,	92
    jz        L600
    cmp       r10,	47
    jz        L600
    cmp       r10,	58
    jz        L600
    jmp       L601
L600:
    mov       rax,	[rbp + mlib.extractpath.t]
    sub       rax,	[rbp + mlib.extractpath.s]
    add       rax,	1
    mov       [rbp + mlib.extractpath.n],	rax
    lea       rcx,	[mlib.extractpath.str]
    mov       rdx,	[rbp + mlib.extractpath.s]
    mov       r8,	[rbp + mlib.extractpath.n]
    call      memcpy
    xor       eax,	eax
    lea       r10,	[mlib.extractpath.str]
    mov       r11,	[rbp + mlib.extractpath.n]
    mov       [r10 + r11],	al
    lea       rax,	[mlib.extractpath.str]
    jmp       L595
L601:
L599:
    dec       qword [rbp + mlib.extractpath.t]
L597:
    mov       rax,	[rbp + mlib.extractpath.t]
    cmp       rax,	[rbp + mlib.extractpath.s]
    jae       L596
L598:
    lea       rax,	[rel L5481]
L595:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc extractfile
mlib.extractfile:
;>>
    %define mlib.extractfile.s 16
    %define mlib.extractfile.t -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.extractfile.s]
    call      mlib.extractpath
    mov       [rbp + mlib.extractfile.t],	rax
    mov       rax,	[rbp + mlib.extractfile.t]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L604
    mov       rax,	[rbp + mlib.extractfile.s]
    jmp       L602
L604:
L603:
    mov       rcx,	[rbp + mlib.extractfile.t]
    call      strlen
    mov       r10,	[rbp + mlib.extractfile.s]
    lea       r10,	[r10 + rax]
    mov       rax,	r10
L602:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc extractbasefile
mlib.extractbasefile:
;>>
    %define mlib.extractbasefile.s 16
    %define mlib.extractbasefile.f -8
    %define mlib.extractbasefile.e -16
    %define mlib.extractbasefile.n -24
    %define mlib.extractbasefile.flen -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.extractbasefile.s]
    call      mlib.extractfile
    mov       [rbp + mlib.extractbasefile.f],	rax
    mov       rcx,	[rbp + mlib.extractbasefile.f]
    call      strlen
    mov       [rbp + mlib.extractbasefile.flen],	rax
    mov       rax,	[rbp + mlib.extractbasefile.flen]
    cmp       rax,	0
    jnz       L607
    lea       rax,	[rel L5481]
    jmp       L605
L607:
L606:
    mov       rcx,	[rbp + mlib.extractbasefile.f]
    xor       edx,	edx
    call      mlib.extractext
    mov       [rbp + mlib.extractbasefile.e],	rax
    mov       rax,	[rbp + mlib.extractbasefile.e]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jz        L609
    mov       rcx,	[rbp + mlib.extractbasefile.e]
    call      strlen
    mov       r10,	[rbp + mlib.extractbasefile.flen]
    sub       r10,	rax
    sub       r10,	1
    mov       [rbp + mlib.extractbasefile.n],	r10
    lea       rcx,	[mlib.extractbasefile.str]
    mov       rdx,	[rbp + mlib.extractbasefile.f]
    mov       r8,	[rbp + mlib.extractbasefile.n]
    call      memcpy
    xor       eax,	eax
    lea       r10,	[mlib.extractbasefile.str]
    mov       r11,	[rbp + mlib.extractbasefile.n]
    mov       [r10 + r11],	al
    lea       rax,	[mlib.extractbasefile.str]
    jmp       L605
L609:
L608:
    mov       rax,	[rbp + mlib.extractbasefile.f]
    mov       r10,	[rbp + mlib.extractbasefile.flen]
    lea       rax,	[rax + r10]
    sub       rax,	1
    movzx     r10,	byte [rax]
    cmp       r10,	46
    jnz       L611
    mov       rax,	[rbp + mlib.extractbasefile.flen]
    sub       rax,	1
    lea       rcx,	[mlib.extractbasefile.str]
    mov       rdx,	[rbp + mlib.extractbasefile.f]
    mov       r8,	rax
    call      memcpy
    xor       eax,	eax
    lea       r10,	[mlib.extractbasefile.str]
    mov       r11,	[rbp + mlib.extractbasefile.flen]
    mov       [r10 + r11-1],	al
    lea       rax,	[mlib.extractbasefile.str]
    jmp       L605
L611:
L610:
    mov       rax,	[rbp + mlib.extractbasefile.f]
L605:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc addext
mlib.addext:
;>>
    %define mlib.addext.s 16
    %define mlib.addext.newext 24
    %define mlib.addext.sext -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.addext.s]
    mov       rdx,	1
    call      mlib.extractext
    mov       [rbp + mlib.addext.sext],	rax
    mov       rax,	[rbp + mlib.addext.sext]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L614
    mov       rcx,	[rbp + mlib.addext.s]
    mov       rdx,	[rbp + mlib.addext.newext]
    call      mlib.changeext
    jmp       L612
L614:
L613:
    mov       rax,	[rbp + mlib.addext.s]
L612:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_alloc32
mlib.pcm_alloc32:
;>>
    %define mlib.pcm_alloc32.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	32
    mov       [mlib.allocbytes],	rax
    mov       rax,	32
    add       [mlib.smallmemtotal],	rax
    mov       rax,	[mlib.freelist+16]
    mov       [rbp + mlib.pcm_alloc32.p],	rax
    test      rax,	rax
    jz        L617
    mov       rax,	[mlib.freelist+16]
    mov       r10,	[rax]
    mov       [mlib.freelist+16],	r10
    mov       rax,	[rbp + mlib.pcm_alloc32.p]
    jmp       L615
L617:
L616:
    mov       rcx,	32
    call      mlib.pcm_alloc
L615:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcm_free32
mlib.pcm_free32:
;>>
    %define mlib.pcm_free32.p 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	32
    sub       [mlib.smallmemtotal],	rax
    mov       rax,	[mlib.freelist+16]
    mov       r10,	[rbp + mlib.pcm_free32.p]
    mov       [r10],	rax
    mov       rax,	[rbp + mlib.pcm_free32.p]
    mov       [mlib.freelist+16],	rax
L618:
;---------------
    pop       rbp
    ret       
;End 
;Proc outbyte
mlib.outbyte:
;>>
    %define mlib.outbyte.f 16
    %define mlib.outbyte.x 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rbp + mlib.outbyte.x]
    mov       rdx,	1
    mov       r8,	1
    mov       r9,	[rbp + mlib.outbyte.f]
    call      fwrite
L619:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc outword16
mlib.outword16:
;>>
    %define mlib.outword16.f 16
    %define mlib.outword16.x 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rbp + mlib.outword16.x]
    mov       rdx,	2
    mov       r8,	1
    mov       r9,	[rbp + mlib.outword16.f]
    call      fwrite
L620:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc outword32
mlib.outword32:
;>>
    %define mlib.outword32.f 16
    %define mlib.outword32.x 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rbp + mlib.outword32.x]
    mov       rdx,	4
    mov       r8,	1
    mov       r9,	[rbp + mlib.outword32.f]
    call      fwrite
L621:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc outword64
mlib.outword64:
;>>
    %define mlib.outword64.f 16
    %define mlib.outword64.x 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rbp + mlib.outword64.x]
    mov       rdx,	8
    mov       r8,	1
    mov       r9,	[rbp + mlib.outword64.f]
    call      fwrite
L622:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc outstring
mlib.outstring:
;>>
    %define mlib.outstring.f 16
    %define mlib.outstring.s 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.outstring.s]
    call      strlen
    add       rax,	1
    mov       rcx,	[rbp + mlib.outstring.s]
    mov       rdx,	rax
    mov       r8,	1
    mov       r9,	[rbp + mlib.outstring.f]
    call      fwrite
L623:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc outblock
mlib.outblock:
;>>
    %define mlib.outblock.f 16
    %define mlib.outblock.p 24
    %define mlib.outblock.n 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.outblock.p]
    mov       rdx,	[rbp + mlib.outblock.n]
    mov       r8,	1
    mov       r9,	[rbp + mlib.outblock.f]
    call      fwrite
L624:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc myeof
mlib.myeof:
;>>
    %define mlib.myeof.f 16
    %define mlib.myeof.c -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.myeof.f]
    call      fgetc
    movsxd    rax,	eax
    mov       [rbp + mlib.myeof.c],	rax
    mov       rax,	[rbp + mlib.myeof.c]
    cmp       rax,	-1
    jnz       L627
    mov       rax,	1
    jmp       L625
L627:
L626:
    mov       rcx,	[rbp + mlib.myeof.c]
    mov       rdx,	[rbp + mlib.myeof.f]
    call      ungetc
    xor       eax,	eax
L625:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc strbuffer_add
mlib.strbuffer_add:
;>>
    %define mlib.strbuffer_add.dest 16
    %define mlib.strbuffer_add.s 24
    %define mlib.strbuffer_add.n 32
    %define mlib.strbuffer_add.newlen -8
    %define mlib.strbuffer_add.oldlen -16
    %define mlib.strbuffer_add.newptr -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mlib.strbuffer_add.n]
    cmp       rax,	-1
    jnz       L630
    mov       rcx,	[rbp + mlib.strbuffer_add.s]
    call      strlen
    mov       [rbp + mlib.strbuffer_add.n],	rax
L630:
L629:
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    movsxd    r10,	dword [rax+8]
    mov       [rbp + mlib.strbuffer_add.oldlen],	r10
    mov       rax,	[rbp + mlib.strbuffer_add.oldlen]
    cmp       rax,	0
    jnz       L632
    mov       rax,	[rbp + mlib.strbuffer_add.n]
    add       rax,	1
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10],	rax
    mov       eax,	[mlib.allocbytes]
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10+12],	eax
    mov       eax,	[rbp + mlib.strbuffer_add.n]
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10+8],	eax
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    mov       r10,	[rax]
    mov       rcx,	r10
    mov       rdx,	[rbp + mlib.strbuffer_add.s]
    mov       r8,	[rbp + mlib.strbuffer_add.n]
    call      memcpy
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    mov       r10,	[rax]
    xor       eax,	eax
    mov       r11,	[rbp + mlib.strbuffer_add.n]
    mov       [r10 + r11],	al
    jmp       L628
L632:
L631:
    mov       rax,	[rbp + mlib.strbuffer_add.oldlen]
    add       rax,	[rbp + mlib.strbuffer_add.n]
    mov       [rbp + mlib.strbuffer_add.newlen],	rax
    mov       rax,	[rbp + mlib.strbuffer_add.newlen]
    add       rax,	1
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    movsxd    r11,	dword [r10+12]
    cmp       rax,	r11
    jle       L634
    mov       rax,	[rbp + mlib.strbuffer_add.newlen]
    add       rax,	1
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [rbp + mlib.strbuffer_add.newptr],	rax
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    mov       r10,	[rax]
    mov       rcx,	[rbp + mlib.strbuffer_add.newptr]
    mov       rdx,	r10
    mov       r8,	[rbp + mlib.strbuffer_add.oldlen]
    call      memcpy
    mov       rax,	[rbp + mlib.strbuffer_add.newptr]
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10],	rax
    mov       eax,	[mlib.allocbytes]
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10+12],	eax
L634:
L633:
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    mov       r10,	[rax]
    mov       rax,	[rbp + mlib.strbuffer_add.oldlen]
    lea       r10,	[r10 + rax]
    mov       rcx,	r10
    mov       rdx,	[rbp + mlib.strbuffer_add.s]
    mov       r8,	[rbp + mlib.strbuffer_add.n]
    call      memcpy
    mov       rax,	[rbp + mlib.strbuffer_add.dest]
    mov       r10,	[rax]
    xor       eax,	eax
    mov       r11,	[rbp + mlib.strbuffer_add.newlen]
    mov       [r10 + r11],	al
    mov       eax,	[rbp + mlib.strbuffer_add.newlen]
    mov       r10,	[rbp + mlib.strbuffer_add.dest]
    mov       [r10+8],	eax
L628:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc gs_init
mlib.gs_init:
;>>
    %define mlib.gs_init.dest 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.gs_init.dest]
    mov       rdx,	16
    call      mlib.pcm_clearmem
L635:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_free
mlib.gs_free:
;>>
    %define mlib.gs_free.dest 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.gs_free.dest]
    movsxd    r10,	dword [rax+12]
    test      r10,	r10
    jz        L638
    mov       rax,	[rbp + mlib.gs_free.dest]
    movsxd    r10,	dword [rax+12]
    mov       rax,	[rbp + mlib.gs_free.dest]
    mov       r11,	[rax]
    mov       rcx,	r11
    mov       rdx,	r10
    call      mlib.pcm_free
L638:
L637:
L636:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_str
mlib.gs_str:
;>>
    %define mlib.gs_str.dest 16
    %define mlib.gs_str.s 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.gs_str.dest]
    mov       rdx,	[rbp + mlib.gs_str.s]
    mov       r8,	-1
    call      mlib.strbuffer_add
L639:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_char
mlib.gs_char:
;>>
    %define mlib.gs_char.dest 16
    %define mlib.gs_char.c 24
    %define mlib.gs_char.s -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       al,	[rbp + mlib.gs_char.c]
    mov       [rbp + mlib.gs_char.s],	al
    xor       eax,	eax
    mov       [rbp + mlib.gs_char.s+1],	al
    mov       rcx,	[rbp + mlib.gs_char.dest]
    lea       rdx,	[rbp + mlib.gs_char.s]
    mov       r8,	1
    call      mlib.strbuffer_add
L640:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc gs_strn
mlib.gs_strn:
;>>
    %define mlib.gs_strn.dest 16
    %define mlib.gs_strn.s 24
    %define mlib.gs_strn.length 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.gs_strn.dest]
    mov       rdx,	[rbp + mlib.gs_strn.s]
    mov       r8,	[rbp + mlib.gs_strn.length]
    call      mlib.strbuffer_add
L641:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_strvar
mlib.gs_strvar:
;>>
    %define mlib.gs_strvar.dest 16
    %define mlib.gs_strvar.s 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.gs_strvar.s]
    mov       r10,	[rax]
    mov       rcx,	[rbp + mlib.gs_strvar.dest]
    mov       rdx,	r10
    mov       r8,	-1
    call      mlib.strbuffer_add
L642:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_strint
mlib.gs_strint:
;>>
    %define mlib.gs_strint.dest 16
    %define mlib.gs_strint.a 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.gs_strint.a]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + mlib.gs_strint.dest]
    mov       rdx,	rax
    mov       r8,	-1
    call      mlib.strbuffer_add
L643:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_strln
mlib.gs_strln:
;>>
    %define mlib.gs_strln.dest 16
    %define mlib.gs_strln.s 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.gs_strln.dest]
    mov       rdx,	[rbp + mlib.gs_strln.s]
    call      mlib.gs_str
    mov       rcx,	[rbp + mlib.gs_strln.dest]
    call      mlib.gs_line
L644:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_strsp
mlib.gs_strsp:
;>>
    %define mlib.gs_strsp.dest 16
    %define mlib.gs_strsp.s 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.gs_strsp.dest]
    mov       rdx,	[rbp + mlib.gs_strsp.s]
    call      mlib.gs_str
    mov       rcx,	[rbp + mlib.gs_strsp.dest]
    lea       rdx,	[rel L5482]
    call      mlib.gs_str
L645:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_line
mlib.gs_line:
;>>
    %define mlib.gs_line.dest 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mlib.gs_line.dest]
    lea       rdx,	[rel L5483]
    mov       r8,	-1
    call      mlib.strbuffer_add
L646:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_getcol
mlib.gs_getcol:
;>>
    %define mlib.gs_getcol.dest 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.gs_getcol.dest]
    movsxd    r10,	dword [rax+8]
    mov       rax,	r10
L647:
;---------------
    pop       rbp
    ret       
;End 
;Proc gs_leftstr
mlib.gs_leftstr:
;>>
    %define mlib.gs_leftstr.dest 16
    %define mlib.gs_leftstr.s 24
    %define mlib.gs_leftstr.w 32
    %define mlib.gs_leftstr.padch 40
    %define mlib.gs_leftstr.col -8
    %define mlib.gs_leftstr.i -16
    %define mlib.gs_leftstr.n -24
    %define mlib.gs_leftstr.slen -32
    %define mlib.gs_leftstr.str -2592
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	2624
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mlib.gs_leftstr.dest]
    movsxd    r10,	dword [rax+8]
    mov       [rbp + mlib.gs_leftstr.col],	r10
    lea       rcx,	[rbp + mlib.gs_leftstr.str]
    mov       rdx,	[rbp + mlib.gs_leftstr.s]
    call      strcpy
    mov       rcx,	[rbp + mlib.gs_leftstr.s]
    call      strlen
    mov       [rbp + mlib.gs_leftstr.slen],	rax
    mov       rax,	[rbp + mlib.gs_leftstr.w]
    sub       rax,	[rbp + mlib.gs_leftstr.slen]
    mov       [rbp + mlib.gs_leftstr.n],	rax
    mov       rax,	[rbp + mlib.gs_leftstr.n]
    cmp       rax,	0
    jle       L650
    mov       rax,	1
    mov       [rbp + mlib.gs_leftstr.i],	rax
    mov       rax,	[rbp + mlib.gs_leftstr.n]
    cmp       rax,	1
    jl        L653
L651:
    mov       rax,	[rbp + mlib.gs_leftstr.slen]
    add       rax,	[rbp + mlib.gs_leftstr.i]
    mov       r10b,	[rbp + mlib.gs_leftstr.padch]
    mov       [rbp + rax + mlib.gs_leftstr.str-1],	r10b
L652:
    mov       rax,	[rbp + mlib.gs_leftstr.i]
    inc       rax
    mov       [rbp + mlib.gs_leftstr.i],	rax
    cmp       rax,	[rbp + mlib.gs_leftstr.n]
    jle       L651
L653:
    mov       rax,	[rbp + mlib.gs_leftstr.slen]
    add       rax,	[rbp + mlib.gs_leftstr.n]
    xor       r10d,	r10d
    mov       [rbp + rax + mlib.gs_leftstr.str],	r10b
L650:
L649:
    mov       rcx,	[rbp + mlib.gs_leftstr.dest]
    lea       rdx,	[rbp + mlib.gs_leftstr.str]
    call      mlib.gs_str
L648:
;---------------
    add       rsp,	2624
    pop       rbp
    ret       
;End 
;Proc gs_leftint
mlib.gs_leftint:
;>>
    %define mlib.gs_leftint.dest 16
    %define mlib.gs_leftint.a 24
    %define mlib.gs_leftint.w 32
    %define mlib.gs_leftint.padch 40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rcx,	[rbp + mlib.gs_leftint.a]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + mlib.gs_leftint.dest]
    mov       rdx,	rax
    mov       r8,	[rbp + mlib.gs_leftint.w]
    mov       r9,	[rbp + mlib.gs_leftint.padch]
    call      mlib.gs_leftstr
L654:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gs_padto
mlib.gs_padto:
;>>
    %define mlib.gs_padto.dest 16
    %define mlib.gs_padto.col 24
    %define mlib.gs_padto.ch 32
    %define mlib.gs_padto.n -8
    %define mlib.gs_padto.str -2568
    %define mlib.gs_padto.i -2576
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	2608
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mlib.gs_padto.dest]
    movsxd    r10,	dword [rax+8]
    mov       rax,	[rbp + mlib.gs_padto.col]
    sub       rax,	r10
    mov       [rbp + mlib.gs_padto.n],	rax
    mov       rax,	[rbp + mlib.gs_padto.n]
    cmp       rax,	0
    jg        L657
    jmp       L655
L657:
L656:
    mov       rax,	1
    mov       [rbp + mlib.gs_padto.i],	rax
    mov       rax,	[rbp + mlib.gs_padto.n]
    cmp       rax,	1
    jl        L660
L658:
    mov       al,	[rbp + mlib.gs_padto.ch]
    mov       r10,	[rbp + mlib.gs_padto.i]
    mov       [rbp + r10 + mlib.gs_padto.str-1],	al
L659:
    mov       rax,	[rbp + mlib.gs_padto.i]
    inc       rax
    mov       [rbp + mlib.gs_padto.i],	rax
    cmp       rax,	[rbp + mlib.gs_padto.n]
    jle       L658
L660:
    xor       eax,	eax
    mov       r10,	[rbp + mlib.gs_padto.n]
    mov       [rbp + r10 + mlib.gs_padto.str],	al
    mov       rcx,	[rbp + mlib.gs_padto.dest]
    lea       rdx,	[rbp + mlib.gs_padto.str]
    call      mlib.gs_str
L655:
;---------------
    add       rsp,	2608
    pop       rbp
    ret       
;End 
;Proc gs_println
mlib.gs_println:
;>>
    %define mlib.gs_println.dest 16
    %define mlib.gs_println.f 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.gs_println.dest]
    movsxd    r10,	dword [rax+8]
    cmp       r10,	0
    jnz       L663
    jmp       L661
L663:
L662:
    mov       rax,	[rbp + mlib.gs_println.dest]
    mov       r10,	[rax]
    mov       rax,	[rbp + mlib.gs_println.dest]
    movsxd    r11,	dword [rax+8]
    xor       eax,	eax
    mov       [r10 + r11],	al
    mov       rax,	[rbp + mlib.gs_println.f]
    cmp       rax,	0
    jnz       L665
    call      msys.m$print_startcon
    mov       rax,	[rbp + mlib.gs_println.dest]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_nogap
    lea       rcx,	[rel L5484]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    jmp       L664
L665:
    mov       rcx,	[rbp + mlib.gs_println.f]
    call      msys.m$print_startfile
    mov       rax,	[rbp + mlib.gs_println.dest]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_nogap
    lea       rcx,	[rel L5484]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L664:
L661:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc nextcmdparamnew
mlib.nextcmdparamnew:
;>>
    %define mlib.nextcmdparamnew.paramno 16
    %define mlib.nextcmdparamnew.name 24
    %define mlib.nextcmdparamnew.value 32
    %define mlib.nextcmdparamnew.defext 40
    %define mlib.nextcmdparamnew.q -8
    %define mlib.nextcmdparamnew.item -16
    %define mlib.nextcmdparamnew.fileext -24
    %define mlib.nextcmdparamnew.rest -32
    %define mlib.nextcmdparamnew.length -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
;reenter:
L667:
    xor       eax,	eax
    mov       r10,	[rbp + mlib.nextcmdparamnew.value]
    mov       [r10],	rax
    xor       eax,	eax
    mov       r10,	[rbp + mlib.nextcmdparamnew.name]
    mov       [r10],	rax
    mov       rax,	[mlib.nextcmdparamnew.infile]
    test      rax,	rax
    jz        L669
    lea       rcx,	[mlib.nextcmdparamnew.fileptr]
    lea       rdx,	[rbp + mlib.nextcmdparamnew.item]
    call      mlib.readnextfileitem
    cmp       rax,	0
    jnz       L671
    mov       rcx,	[mlib.nextcmdparamnew.filestart]
    call      free
    xor       eax,	eax
    mov       [mlib.nextcmdparamnew.infile],	rax
    jmp       L667
L671:
L670:
    jmp       L668
L669:
    mov       rax,	[rbp + mlib.nextcmdparamnew.paramno]
    mov       r10,	[rax]
    cmp       r10,	[msys.ncmdparams]
    jle       L673
    xor       eax,	eax
    jmp       L666
L673:
L672:
    mov       rax,	[rbp + mlib.nextcmdparamnew.paramno]
    mov       r10,	[rax]
    mov       rax,	[msys.cmdparams]
    mov       r11,	[rax + r10*8]
    mov       [rbp + mlib.nextcmdparamnew.item],	r11
    mov       rax,	[rbp + mlib.nextcmdparamnew.paramno]
    inc       qword [rax]
    mov       rcx,	[rbp + mlib.nextcmdparamnew.item]
    call      strlen
    mov       [rbp + mlib.nextcmdparamnew.length],	rax
    mov       rax,	[rbp + mlib.nextcmdparamnew.item]
    movzx     r10,	byte [rax]
    cmp       r10,	64
    jnz       L675
    mov       rax,	[rbp + mlib.nextcmdparamnew.item]
    lea       rax,	[rax+1]
    mov       rcx,	rax
    call      mlib.readfile
    mov       [mlib.nextcmdparamnew.fileptr],	rax
    mov       [mlib.nextcmdparamnew.filestart],	rax
    mov       rax,	[mlib.nextcmdparamnew.filestart]
    cmp       rax,	0
    jnz       L677
    call      msys.m$print_startcon
    lea       rcx,	[rel L5485]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + mlib.nextcmdparamnew.item]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	7
    call      exit
L677:
L676:
    mov       rax,	1
    mov       [mlib.nextcmdparamnew.infile],	rax
    jmp       L667
L675:
L674:
    mov       rax,	[rbp + mlib.nextcmdparamnew.item]
    movzx     r10,	byte [rax]
    cmp       r10,	58
    jnz       L679
    mov       al,	1
    mov       [mlib.nextcmdparamnew.colonseen],	al
    mov       rax,	4
    jmp       L666
L679:
L678:
L668:
    xor       eax,	eax
    mov       r10,	[rbp + mlib.nextcmdparamnew.value]
    mov       [r10],	rax
    mov       rax,	[rbp + mlib.nextcmdparamnew.item]
    movzx     r10,	byte [rax]
    cmp       r10,	45
    jnz       L681
    movzx     rax,	byte [mlib.nextcmdparamnew.colonseen]
    test      rax,	rax
    jz        L683
    xor       eax,	eax
    jmp       L682
L683:
    mov       rax,	1
L682:
    mov       r10,	[rbp + mlib.nextcmdparamnew.item]
    lea       r10,	[r10 + rax]
    mov       rax,	[rbp + mlib.nextcmdparamnew.name]
    mov       [rax],	r10
    mov       rcx,	[rbp + mlib.nextcmdparamnew.item]
    mov       rdx,	58
    call      strchr
    mov       [rbp + mlib.nextcmdparamnew.q],	rax
    mov       rax,	[rbp + mlib.nextcmdparamnew.q]
    test      rax,	rax
    jnz       L685
    mov       rcx,	[rbp + mlib.nextcmdparamnew.item]
    mov       rdx,	61
    call      strchr
    mov       [rbp + mlib.nextcmdparamnew.q],	rax
L685:
L684:
    mov       rax,	[rbp + mlib.nextcmdparamnew.q]
    test      rax,	rax
    jz        L687
    mov       rax,	[rbp + mlib.nextcmdparamnew.q]
    lea       rax,	[rax+1]
    mov       r10,	[rbp + mlib.nextcmdparamnew.value]
    mov       [r10],	rax
    xor       eax,	eax
    mov       r10,	[rbp + mlib.nextcmdparamnew.q]
    mov       [r10],	al
L687:
L686:
    movzx     rax,	byte [mlib.nextcmdparamnew.colonseen]
    test      rax,	rax
    jz        L689
    mov       rax,	5
    jmp       L688
L689:
    mov       rax,	1
L688:
    jmp       L666
L681:
L680:
    mov       rcx,	[rbp + mlib.nextcmdparamnew.item]
    xor       edx,	edx
    call      mlib.extractext
    mov       [rbp + mlib.nextcmdparamnew.fileext],	rax
    mov       rax,	[rbp + mlib.nextcmdparamnew.item]
    mov       r10,	[rbp + mlib.nextcmdparamnew.name]
    mov       [r10],	rax
    mov       rax,	[rbp + mlib.nextcmdparamnew.fileext]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jnz       L691
    mov       rax,	[rbp + mlib.nextcmdparamnew.name]
    mov       r10,	[rax]
    lea       rcx,	[mlib.nextcmdparamnew.str]
    mov       rdx,	r10
    call      strcpy
    mov       rax,	[rbp + mlib.nextcmdparamnew.defext]
    test      rax,	rax
    jz        L693
    movzx     rax,	byte [mlib.nextcmdparamnew.colonseen]
    test      rax,	rax
    jnz       L693
    lea       rcx,	[mlib.nextcmdparamnew.str]
    mov       rdx,	[rbp + mlib.nextcmdparamnew.defext]
    call      mlib.addext
    mov       r10,	[rbp + mlib.nextcmdparamnew.name]
    mov       [r10],	rax
L693:
L692:
    jmp       L690
L691:
    mov       rcx,	[rbp + mlib.nextcmdparamnew.fileext]
    lea       rdx,	[rel L5486]
    call      mlib.eqstring
    test      rax,	rax
    jnz       L695
    mov       rcx,	[rbp + mlib.nextcmdparamnew.fileext]
    lea       rdx,	[rel L5487]
    call      mlib.eqstring
    test      rax,	rax
    jz        L694
L695:
    movzx     rax,	byte [mlib.nextcmdparamnew.colonseen]
    test      rax,	rax
    jz        L697
    mov       rax,	5
    jmp       L696
L697:
    mov       rax,	3
L696:
    jmp       L666
L694:
L690:
    movzx     rax,	byte [mlib.nextcmdparamnew.colonseen]
    test      rax,	rax
    jz        L699
    mov       rax,	5
    jmp       L698
L699:
    mov       rax,	2
L698:
L666:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc readnextfileitem
mlib.readnextfileitem:
;>>
    %define mlib.readnextfileitem.fileptr 16
    %define mlib.readnextfileitem.item 24
    %define mlib.readnextfileitem.p -8
    %define mlib.readnextfileitem.pstart -16
    %define mlib.readnextfileitem.pend -24
    %define mlib.readnextfileitem.n -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.readnextfileitem.fileptr]
    mov       r10,	[rax]
    mov       [rbp + mlib.readnextfileitem.p],	r10
;reenter:
L701:
L702:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	32
    jz        L705
    cmp       r10,	9
    jz        L705
    cmp       r10,	13
    jz        L705
    cmp       r10,	10
    jz        L705
    cmp       r10,	26
    jz        L706
    cmp       r10,	0
    jz        L706
    jmp       L707
L705:
    inc       qword [rbp + mlib.readnextfileitem.p]
    jmp       L704
L706:
    xor       eax,	eax
    jmp       L700
L707:
    jmp       L703
L704:
    jmp       L702
L703:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	33
    jz        L709
    cmp       r10,	35
    jz        L709
    jmp       L710
L709:
    inc       qword [rbp + mlib.readnextfileitem.p]
L711:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    inc       qword [rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	10
    jz        L713
    cmp       r10,	26
    jz        L714
    cmp       r10,	0
    jz        L714
    jmp       L715
L713:
    jmp       L701
L714:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    sub       rax,	1
    mov       r10,	[rbp + mlib.readnextfileitem.fileptr]
    mov       [r10],	rax
    xor       eax,	eax
    jmp       L700
L715:
    jmp       L711
L712:
L710:
L708:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	34
    jz        L717
    jmp       L718
L717:
    inc       qword [rbp + mlib.readnextfileitem.p]
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    mov       [rbp + mlib.readnextfileitem.pstart],	rax
L719:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jz        L722
    cmp       r10,	26
    jz        L722
    cmp       r10,	34
    jz        L723
    jmp       L724
L722:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5488]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	8
    call      exit
    jmp       L721
L723:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    inc       qword [rbp + mlib.readnextfileitem.p]
    mov       [rbp + mlib.readnextfileitem.pend],	rax
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	44
    jnz       L726
    inc       qword [rbp + mlib.readnextfileitem.p]
L726:
L725:
    jmp       L720
L724:
L721:
    inc       qword [rbp + mlib.readnextfileitem.p]
    jmp       L719
L720:
    jmp       L716
L718:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    mov       [rbp + mlib.readnextfileitem.pstart],	rax
L727:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	0
    jz        L730
    cmp       r10,	26
    jz        L730
    cmp       r10,	32
    jz        L731
    cmp       r10,	9
    jz        L731
    cmp       r10,	44
    jz        L731
    cmp       r10,	13
    jz        L731
    cmp       r10,	10
    jz        L731
    jmp       L732
L730:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    mov       [rbp + mlib.readnextfileitem.pend],	rax
    jmp       L728
L731:
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    inc       qword [rbp + mlib.readnextfileitem.p]
    mov       [rbp + mlib.readnextfileitem.pend],	rax
    jmp       L728
L732:
L729:
    inc       qword [rbp + mlib.readnextfileitem.p]
    jmp       L727
L728:
L716:
    mov       rax,	[rbp + mlib.readnextfileitem.pend]
    sub       rax,	[rbp + mlib.readnextfileitem.pstart]
    mov       [rbp + mlib.readnextfileitem.n],	rax
    mov       rax,	[rbp + mlib.readnextfileitem.n]
    cmp       rax,	256
    jl        L734
    call      msys.m$print_startcon
    lea       rcx,	[rel L5489]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	9
    call      exit
L734:
L733:
    lea       rcx,	[mlib.readnextfileitem.str]
    mov       rdx,	[rbp + mlib.readnextfileitem.pstart]
    mov       r8,	[rbp + mlib.readnextfileitem.n]
    call      memcpy
    xor       eax,	eax
    lea       r10,	[mlib.readnextfileitem.str]
    mov       r11,	[rbp + mlib.readnextfileitem.n]
    mov       [r10 + r11],	al
    lea       rax,	[mlib.readnextfileitem.str]
    mov       r10,	[rbp + mlib.readnextfileitem.item]
    mov       [r10],	rax
    mov       rax,	[rbp + mlib.readnextfileitem.p]
    mov       r10,	[rbp + mlib.readnextfileitem.fileptr]
    mov       [r10],	rax
    mov       rax,	1
L700:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc ipadstr
mlib.ipadstr:
;>>
    %define mlib.ipadstr.s 16
    %define mlib.ipadstr.width 24
    %define mlib.ipadstr.padchar 32
    %define mlib.ipadstr.n -8
    %define mlib.ipadstr.av_1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.ipadstr.s]
    call      strlen
    mov       [rbp + mlib.ipadstr.n],	rax
    mov       rax,	[rbp + mlib.ipadstr.width]
    sub       rax,	[rbp + mlib.ipadstr.n]
    mov       [rbp + mlib.ipadstr.av_1],	rax
    mov       rax,	[rbp + mlib.ipadstr.av_1]
    cmp       rax,	0
    jle       L738
L736:
    mov       rcx,	[rbp + mlib.ipadstr.s]
    mov       rdx,	[rbp + mlib.ipadstr.padchar]
    call      strcat
L737:
    dec       qword [rbp + mlib.ipadstr.av_1]
    jnz       L736
L738:
L735:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc padstr
mlib.padstr:
;>>
    %define mlib.padstr.s 16
    %define mlib.padstr.width 24
    %define mlib.padstr.padchar 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    lea       rcx,	[mlib.padstr.str]
    mov       rdx,	[rbp + mlib.padstr.s]
    call      strcpy
    lea       rcx,	[mlib.padstr.str]
    mov       rdx,	[rbp + mlib.padstr.width]
    mov       r8,	[rbp + mlib.padstr.padchar]
    call      mlib.ipadstr
    lea       rax,	[mlib.padstr.str]
L739:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc chr
mlib.chr:
;>>
    %define mlib.chr.c 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       al,	[rbp + mlib.chr.c]
    mov       [mlib.chr.str],	al
    xor       eax,	eax
    mov       [mlib.chr.str+1],	al
    lea       rax,	[mlib.chr.str]
L740:
;---------------
    pop       rbp
    ret       
;End 
;Proc cmpstring
mlib.cmpstring:
;>>
    %define mlib.cmpstring.s 16
    %define mlib.cmpstring.t 24
    %define mlib.cmpstring.res -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.cmpstring.s]
    mov       rdx,	[rbp + mlib.cmpstring.t]
    call      strcmp
    movsxd    rax,	eax
    mov       [rbp + mlib.cmpstring.res],	rax
    cmp       rax,	0
    jge       L743
    mov       rax,	-1
    jmp       L742
L743:
    mov       rax,	[rbp + mlib.cmpstring.res]
    cmp       rax,	0
    jle       L744
    mov       rax,	1
    jmp       L742
L744:
    xor       eax,	eax
L742:
L741:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc cmpstringn
mlib.cmpstringn:
;>>
    %define mlib.cmpstringn.s 16
    %define mlib.cmpstringn.t 24
    %define mlib.cmpstringn.n 32
    %define mlib.cmpstringn.res -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.cmpstringn.s]
    mov       rdx,	[rbp + mlib.cmpstringn.t]
    mov       r8,	[rbp + mlib.cmpstringn.n]
    call      strncmp
    movsxd    rax,	eax
    mov       [rbp + mlib.cmpstringn.res],	rax
    cmp       rax,	0
    jge       L747
    mov       rax,	-1
    jmp       L746
L747:
    mov       rax,	[rbp + mlib.cmpstringn.res]
    cmp       rax,	0
    jle       L748
    mov       rax,	1
    jmp       L746
L748:
    xor       eax,	eax
L746:
L745:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc eqstring
mlib.eqstring:
;>>
    %define mlib.eqstring.s 16
    %define mlib.eqstring.t 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mlib.eqstring.s]
    mov       rdx,	[rbp + mlib.eqstring.t]
    call      strcmp
    movsxd    rax,	eax
    cmp       rax,	0
    setz      al
    movzx     eax,	al
L749:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc cmpbytes
mlib.cmpbytes:
;>>
    %define mlib.cmpbytes.p 16
    %define mlib.cmpbytes.q 24
    %define mlib.cmpbytes.n 32
    %define mlib.cmpbytes.res -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.cmpbytes.p]
    mov       rdx,	[rbp + mlib.cmpbytes.q]
    mov       r8,	[rbp + mlib.cmpbytes.n]
    call      memcmp
    movsxd    rax,	eax
    mov       [rbp + mlib.cmpbytes.res],	rax
    cmp       rax,	0
    jge       L752
    mov       rax,	-1
    jmp       L751
L752:
    mov       rax,	[rbp + mlib.cmpbytes.res]
    cmp       rax,	0
    jle       L753
    mov       rax,	1
    jmp       L751
L753:
    xor       eax,	eax
L751:
L750:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc eqbytes
mlib.eqbytes:
;>>
    %define mlib.eqbytes.p 16
    %define mlib.eqbytes.q 24
    %define mlib.eqbytes.n 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mlib.eqbytes.p]
    mov       rdx,	[rbp + mlib.eqbytes.q]
    mov       r8,	[rbp + mlib.eqbytes.n]
    call      memcmp
    movsxd    rax,	eax
    cmp       rax,	0
    setz      al
    movzx     eax,	al
L754:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc mseed
mlib.mseed:
;>>
    %define mlib.mseed.a 16
    %define mlib.mseed.b 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.mseed.a]
    mov       [mlib.seed],	rax
    mov       rax,	[rbp + mlib.mseed.b]
    test      rax,	rax
    jz        L757
    mov       rax,	[rbp + mlib.mseed.b]
    mov       [mlib.seed+8],	rax
    jmp       L756
L757:
    lea       rax,	[mlib.seed]
    lea       rax,	[rax+8]
    mov       r10,	[rbp + mlib.mseed.a]
    xor       [rax],	r10
L756:
L755:
;---------------
    pop       rbp
    ret       
;End 
;Proc mrandom
mlib.mrandom:
;>>
    %define mlib.mrandom.x -8
    %define mlib.mrandom.y -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
;---------------
    mov       rax,	[mlib.seed]
    mov       [rbp + mlib.mrandom.x],	rax
    mov       rax,	[mlib.seed+8]
    mov       [rbp + mlib.mrandom.y],	rax
    mov       rax,	[rbp + mlib.mrandom.y]
    mov       [mlib.seed],	rax
    mov       rax,	[rbp + mlib.mrandom.x]
    shl       rax,	23
    xor       [rbp + mlib.mrandom.x],	rax
    mov       rax,	[rbp + mlib.mrandom.x]
    xor       rax,	[rbp + mlib.mrandom.y]
    mov       r10,	[rbp + mlib.mrandom.x]
    sar       r10,	17
    xor       rax,	r10
    mov       r10,	[rbp + mlib.mrandom.y]
    sar       r10,	26
    xor       rax,	r10
    mov       [mlib.seed+8],	rax
    mov       rax,	[mlib.seed+8]
    add       rax,	[rbp + mlib.mrandom.y]
L758:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc mrandomp
mlib.mrandomp:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mlib.mrandom
    mov       r10,	9223372036854775807
    and       rax,	r10
L759:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc mrandomint
mlib.mrandomint:
;>>
    %define mlib.mrandomint.n 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      mlib.mrandomp
    mov       r10,	[rbp + mlib.mrandomint.n]
    cqo       
    idiv      r10
    xchg      rax,	rdx
L760:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc mrandomrange
mlib.mrandomrange:
;>>
    %define mlib.mrandomrange.a 16
    %define mlib.mrandomrange.b 24
    %define mlib.mrandomrange.span -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.mrandomrange.b]
    sub       rax,	[rbp + mlib.mrandomrange.a]
    add       rax,	1
    mov       [rbp + mlib.mrandomrange.span],	rax
    mov       rax,	[rbp + mlib.mrandomrange.span]
    cmp       rax,	0
    jg        L763
    xor       eax,	eax
    jmp       L761
L763:
L762:
    call      mlib.mrandomp
    mov       r10,	[rbp + mlib.mrandomrange.span]
    cqo       
    idiv      r10
    xchg      rax,	rdx
    add       rax,	[rbp + mlib.mrandomrange.a]
L761:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc mrandomreal
mlib.mrandomreal:
;>>
    %define mlib.mrandomreal.x -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
L765:
    call      mlib.mrandomp
    cvtsi2sd  XMM4,	rax
    divsd     XMM4,	[rel L5490]
    movq      [rbp + mlib.mrandomreal.x],	XMM4
L766:
    movq      XMM4,	[rbp + mlib.mrandomreal.x]
    comisd    XMM4,	[rel L5491]
    jz        L765
L767:
    movq      XMM0,	[rbp + mlib.mrandomreal.x]
L764:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc mrandomreal1
mlib.mrandomreal1:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mlib.mrandomp
    mov       r10,	9223372036854775807
    cqo       
    idiv      r10
    cvtsi2sd  XMM4,	rax
    movq      XMM0,	XMM4
L768:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc readline
mlib.readline:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      msys.m$read_conline
    mov       rax,	[msys.rd_buffer]
L769:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc roundtoblock
mlib.roundtoblock:
;>>
    %define mlib.roundtoblock.n 16
    %define mlib.roundtoblock.align 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mlib.roundtoblock.align]
    sub       rax,	1
    mov       r10,	[rbp + mlib.roundtoblock.n]
    and       r10,	rax
    cmp       r10,	0
    jnz       L772
    mov       rax,	[rbp + mlib.roundtoblock.n]
    jmp       L770
L772:
L771:
    mov       rax,	[rbp + mlib.roundtoblock.align]
    sub       rax,	1
    mov       r10,	[rbp + mlib.roundtoblock.n]
    and       r10,	rax
    mov       rax,	[rbp + mlib.roundtoblock.align]
    sub       rax,	r10
    mov       r10,	[rbp + mlib.roundtoblock.n]
    add       r10,	rax
    mov       rax,	r10
L770:
;---------------
    pop       rbp
    ret       
;End 
;Proc pcm_allocnfz
mlib.pcm_allocnfz:
;>>
    %define mlib.pcm_allocnfz.n 16
    %define mlib.pcm_allocnfz.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mlib.pcm_allocnfz.n]
    and       rax,	7
    test      rax,	rax
    jz        L775
    mov       rax,	[rbp + mlib.pcm_allocnfz.n]
    and       rax,	7
    mov       r10,	8
    sub       r10,	rax
    mov       rax,	[rbp + mlib.pcm_allocnfz.n]
    add       rax,	r10
    mov       [rbp + mlib.pcm_allocnfz.n],	rax
L775:
L774:
    mov       rax,	[mlib.pcheapptr]
    mov       [rbp + mlib.pcm_allocnfz.p],	rax
    mov       rax,	[rbp + mlib.pcm_allocnfz.n]
    add       [mlib.pcheapptr],	rax
    mov       rax,	[mlib.pcheapptr]
    cmp       rax,	[mlib.pcheapend]
    jb        L777
    mov       rcx,	[rbp + mlib.pcm_allocnfz.n]
    call      mlib.pcm_newblock
    mov       [rbp + mlib.pcm_allocnfz.p],	rax
L777:
L776:
    mov       rax,	[rbp + mlib.pcm_allocnfz.p]
L773:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc os_init
mwindows.os_init:
;>>
    %define mwindows.os_init.i -8
    %define mwindows.os_init.count -16
    %define mwindows.os_init.info -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
;---------------
    mov       eax,	-11
    mov       eax,	eax
    mov       rcx,	rax
    call      GetStdHandle
    mov       [mwindows.hconsole],	rax
    mov       eax,	-10
    mov       eax,	eax
    mov       rcx,	rax
    call      GetStdHandle
    mov       [mwindows.hconsolein],	rax
    xor       eax,	eax
    mov       [mwindows.lastkey+8],	ax
    xor       eax,	eax
    mov       [mwindows.keypending],	rax
    xor       ecx,	ecx
    mov       rdx,	1
    call      SetConsoleCtrlHandler
    mov       rcx,	[mwindows.hconsole]
    mov       rdx,	3
    call      SetConsoleMode
    mov       rax,	1
    mov       [mwindows.init_flag],	rax
L778:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc os_execwait
mwindows.os_execwait:
;>>
    %define mwindows.os_execwait.cmdline 16
    %define mwindows.os_execwait.newconsole 24
    %define mwindows.os_execwait.workdir 32
    %define mwindows.os_execwait.exitcode -8
    %define mwindows.os_execwait.status -16
    %define mwindows.os_execwait.cflags -24
    %define mwindows.os_execwait.si -128
    %define mwindows.os_execwait.xpi -152
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	192
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       eax,	eax
    mov       [rbp + mwindows.os_execwait.cflags],	rax
    lea       rax,	[rbp + mwindows.os_execwait.si]
    xor       r10,	r10
    mov       r11,	13
L5492:
    mov       [rax],	r10
    add       rax,	8
    dec       r11
    jnz       L5492
    lea       rax,	[rbp + mwindows.os_execwait.xpi]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       [rax+16],	r10
    mov       rax,	[rbp + mwindows.os_execwait.newconsole]
    cmp       rax,	0
    jz        L781
    cmp       rax,	1
    jz        L782
    cmp       rax,	2
    jz        L783
    jmp       L784
L781:
    mov       rax,	32
    mov       [rbp + mwindows.os_execwait.cflags],	rax
    jmp       L780
L782:
    mov       rax,	48
    mov       [rbp + mwindows.os_execwait.cflags],	rax
    jmp       L780
L783:
    mov       rax,	48
    mov       [rbp + mwindows.os_execwait.cflags],	rax
L784:
L780:
    mov       eax,	104
    mov       [rbp + mwindows.os_execwait.si],	eax
    lea       rax,	[rbp + mwindows.os_execwait.xpi]
    push      rax
    lea       rax,	[rbp + mwindows.os_execwait.si]
    push      rax
    push      0
    push      0
    mov       eax,	[rbp + mwindows.os_execwait.cflags]
    push      rax
    push      1
    xor       ecx,	ecx
    mov       rdx,	[rbp + mwindows.os_execwait.cmdline]
    xor       r8d,	r8d
    xor       r9d,	r9d
    sub       rsp,	32
    call      CreateProcessA
    add       rsp,	80
    mov       [rbp + mwindows.os_execwait.status],	rax
    mov       rax,	[rbp + mwindows.os_execwait.status]
    cmp       rax,	0
    jnz       L786
    call      GetLastError
    mov       eax,	eax
    mov       [rbp + mwindows.os_execwait.status],	rax
    lea       rcx,	[rel L5493]
    mov       rdx,	[rbp + mwindows.os_execwait.status]
    call      printf
    mov       rax,	-1
    jmp       L779
L786:
L785:
    mov       rax,	[rbp + mwindows.os_execwait.xpi]
    mov       rcx,	rax
    mov       rdx,	4294967295
    call      WaitForSingleObject
    mov       rax,	[rbp + mwindows.os_execwait.xpi]
    mov       rcx,	rax
    lea       rdx,	[rbp + mwindows.os_execwait.exitcode]
    call      GetExitCodeProcess
    mov       rax,	[rbp + mwindows.os_execwait.xpi]
    mov       rcx,	rax
    call      CloseHandle
    mov       rax,	[rbp + mwindows.os_execwait.xpi+8]
    mov       rcx,	rax
    call      CloseHandle
    mov       eax,	[rbp + mwindows.os_execwait.exitcode]
L779:
;---------------
    add       rsp,	192
    pop       rbp
    ret       
;End 
;Proc os_execcmd
mwindows.os_execcmd:
;>>
    %define mwindows.os_execcmd.cmdline 16
    %define mwindows.os_execcmd.newconsole 24
    %define mwindows.os_execcmd.exitcode -8
    %define mwindows.os_execcmd.i -16
    %define mwindows.os_execcmd.j -24
    %define mwindows.os_execcmd.k -32
    %define mwindows.os_execcmd.si -136
    %define mwindows.os_execcmd.xpi -160
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	192
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rax,	[rbp + mwindows.os_execcmd.si]
    xor       r10,	r10
    mov       r11,	13
L5494:
    mov       [rax],	r10
    add       rax,	8
    dec       r11
    jnz       L5494
    lea       rax,	[rbp + mwindows.os_execcmd.xpi]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       [rax+16],	r10
    mov       eax,	104
    mov       [rbp + mwindows.os_execcmd.si],	eax
    lea       rax,	[rbp + mwindows.os_execcmd.xpi]
    push      rax
    lea       rax,	[rbp + mwindows.os_execcmd.si]
    push      rax
    push      0
    push      0
    mov       rax,	[rbp + mwindows.os_execcmd.newconsole]
    test      rax,	rax
    jz        L789
    mov       rax,	16
    jmp       L788
L789:
    xor       eax,	eax
L788:
    mov       r10,	32
    or        r10,	rax
    push      r10
    push      1
    xor       ecx,	ecx
    mov       rdx,	[rbp + mwindows.os_execcmd.cmdline]
    xor       r8d,	r8d
    xor       r9d,	r9d
    sub       rsp,	32
    call      CreateProcessA
    add       rsp,	80
    mov       rax,	[rbp + mwindows.os_execcmd.xpi]
    mov       rcx,	rax
    call      CloseHandle
    mov       rax,	[rbp + mwindows.os_execcmd.xpi+8]
    mov       rcx,	rax
    call      CloseHandle
    mov       rax,	1
L787:
;---------------
    add       rsp,	192
    pop       rbp
    ret       
;End 
;Proc os_getch
mwindows.os_getch:
;>>
    %define mwindows.os_getch.k -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    call      mwindows.os_getchx
    and       rax,	255
    mov       [rbp + mwindows.os_getch.k],	rax
    mov       rax,	[rbp + mwindows.os_getch.k]
L790:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc os_kbhit
mwindows.os_kbhit:
;>>
    %define mwindows.os_kbhit.count -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	[mwindows.init_flag]
    test      rax,	rax
    jnz       L793
    call      mwindows.os_init
L793:
L792:
    mov       rcx,	[mwindows.hconsolein]
    lea       rdx,	[rbp + mwindows.os_kbhit.count]
    call      GetNumberOfConsoleInputEvents
    mov       eax,	[rbp + mwindows.os_kbhit.count]
    cmp       rax,	1
    setg      al
    movzx     eax,	al
L791:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc os_getdllinst
mwindows.os_getdllinst:
;>>
    %define mwindows.os_getdllinst.name 16
    %define mwindows.os_getdllinst.hinst -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mwindows.os_getdllinst.name]
    call      LoadLibraryA
    mov       [rbp + mwindows.os_getdllinst.hinst],	rax
    mov       rax,	[rbp + mwindows.os_getdllinst.hinst]
L794:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc os_getdllprocaddr
mwindows.os_getdllprocaddr:
;>>
    %define mwindows.os_getdllprocaddr.hinst 16
    %define mwindows.os_getdllprocaddr.name 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mwindows.os_getdllprocaddr.hinst]
    mov       rdx,	[rbp + mwindows.os_getdllprocaddr.name]
    call      GetProcAddress
L795:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_initwindows
mwindows.os_initwindows:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mwindows.os_init
    lea       rcx,	[rel L5495]
    call      mwindows.os_gxregisterclass
L796:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_gxregisterclass
mwindows.os_gxregisterclass:
;>>
    %define mwindows.os_gxregisterclass.classname 16
    %define mwindows.os_gxregisterclass.r -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mwindows.os_gxregisterclass.registered]
    test      rax,	rax
    jz        L799
    jmp       L797
L799:
L798:
    lea       rax,	[rbp + mwindows.os_gxregisterclass.r]
    xor       r10,	r10
    mov       r11,	10
L5496:
    mov       [rax],	r10
    add       rax,	8
    dec       r11
    jnz       L5496
    mov       eax,	80
    mov       [rbp + mwindows.os_gxregisterclass.r],	eax
    mov       eax,	40
    mov       [rbp + mwindows.os_gxregisterclass.r+4],	eax
    lea       rax,	[mwindows.mainwndproc]
    mov       [rbp + mwindows.os_gxregisterclass.r+8],	rax
    xor       eax,	eax
    mov       [rbp + mwindows.os_gxregisterclass.r+24],	rax
    xor       eax,	eax
    mov       [rbp + mwindows.os_gxregisterclass.r+32],	rax
    xor       ecx,	ecx
    mov       rdx,	32512
    call      LoadCursorA
    mov       [rbp + mwindows.os_gxregisterclass.r+40],	rax
    mov       rax,	16
    mov       [rbp + mwindows.os_gxregisterclass.r+48],	rax
    xor       eax,	eax
    mov       [rbp + mwindows.os_gxregisterclass.r+56],	rax
    mov       rax,	[rbp + mwindows.os_gxregisterclass.classname]
    mov       [rbp + mwindows.os_gxregisterclass.r+64],	rax
    xor       eax,	eax
    mov       [rbp + mwindows.os_gxregisterclass.r+72],	rax
    lea       rcx,	[rbp + mwindows.os_gxregisterclass.r]
    call      RegisterClassExA
    mov       eax,	eax
    cmp       rax,	0
    jnz       L801
    call      GetLastError
    mov       eax,	eax
    lea       rcx,	[rel L5497]
    mov       rdx,	[rbp + mwindows.os_gxregisterclass.classname]
    mov       r8,	rax
    call      printf
    mov       rcx,	1
    call      exit
L801:
L800:
    mov       al,	1
    mov       [mwindows.os_gxregisterclass.registered],	al
L797:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc mainwndproc
mwindows.mainwndproc:
;>>
    %define mwindows.mainwndproc.hwnd 16
    %define mwindows.mainwndproc.message 24
    %define mwindows.mainwndproc.wparam 32
    %define mwindows.mainwndproc.lparam 40
    %define mwindows.mainwndproc.m -48
    %define mwindows.mainwndproc.i -56
    %define mwindows.mainwndproc.result -64
    %define mwindows.mainwndproc.l -72
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mwindows.mainwndproc.hwnd]
    mov       [rbp + mwindows.mainwndproc.m],	rax
    mov       eax,	[rbp + mwindows.mainwndproc.message]
    mov       [rbp + mwindows.mainwndproc.m+8],	eax
    mov       rax,	[rbp + mwindows.mainwndproc.wparam]
    mov       [rbp + mwindows.mainwndproc.m+16],	rax
    mov       rax,	[rbp + mwindows.mainwndproc.lparam]
    mov       [rbp + mwindows.mainwndproc.m+24],	rax
    xor       eax,	eax
    mov       [rbp + mwindows.mainwndproc.m+40],	eax
    xor       eax,	eax
    mov       [rbp + mwindows.mainwndproc.m+44],	eax
    mov       rax,	[mwindows.wndproc_callbackfn]
    test      rax,	rax
    jz        L804
    lea       rcx,	[rbp + mwindows.mainwndproc.m]
    mov       rax,	[mwindows.wndproc_callbackfn]
    call      rax
    mov       [rbp + mwindows.mainwndproc.result],	rax
    jmp       L803
L804:
    xor       eax,	eax
    mov       [rbp + mwindows.mainwndproc.result],	rax
L803:
    mov       eax,	[rbp + mwindows.mainwndproc.m+8]
    cmp       rax,	2
    jnz       L806
    xor       eax,	eax
    jmp       L802
L806:
L805:
    mov       rax,	[rbp + mwindows.mainwndproc.result]
    test      rax,	rax
    jnz       L808
    mov       eax,	[rbp + mwindows.mainwndproc.message]
    mov       rcx,	[rbp + mwindows.mainwndproc.hwnd]
    mov       rdx,	rax
    mov       r8,	[rbp + mwindows.mainwndproc.wparam]
    mov       r9,	[rbp + mwindows.mainwndproc.lparam]
    call      DefWindowProcA
    jmp       L807
L808:
    xor       eax,	eax
L807:
L802:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc os_setmesshandler
mwindows.os_setmesshandler:
;>>
    %define mwindows.os_setmesshandler.addr 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mwindows.os_setmesshandler.addr]
    mov       [mwindows.wndproc_callbackfn],	rax
L809:
;---------------
    pop       rbp
    ret       
;End 
;Proc os_getchx
mwindows.os_getchx:
;>>
    %define mwindows.os_getchx.count -8
    %define mwindows.os_getchx.charcode -16
    %define mwindows.os_getchx.keyshift -24
    %define mwindows.os_getchx.keycode -32
    %define mwindows.os_getchx.altdown -40
    %define mwindows.os_getchx.ctrldown -48
    %define mwindows.os_getchx.shiftdown -56
    %define mwindows.os_getchx.capslock -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    mov       rax,	[mwindows.init_flag]
    test      rax,	rax
    jnz       L812
    call      mwindows.os_init
L812:
L811:
    mov       rax,	[mwindows.keypending]
    test      rax,	rax
    jz        L814
    lea       rax,	[mwindows.pendkey]
    lea       r10,	[mwindows.lastkey]
    mov       r11,	[rax]
    mov       [r10],	r11
    mov       r11,	[rax+8]
    mov       [r10+8],	r11
    mov       r11d,	[rax+16]
    mov       [r10+16],	r11d
    xor       eax,	eax
    mov       [mwindows.keypending],	rax
    jmp       L813
L814:
    movzx     rax,	word [mwindows.lastkey+8]
    cmp       rax,	0
    jnz       L816
L817:
    xor       eax,	eax
    mov       [rbp + mwindows.os_getchx.count],	rax
    mov       rcx,	[mwindows.hconsolein]
    lea       rdx,	[mwindows.lastkey]
    mov       r8,	1
    lea       r9,	[rbp + mwindows.os_getchx.count]
    call      ReadConsoleInputA
L818:
    movzx     rax,	word [mwindows.lastkey]
    cmp       rax,	1
    jnz       L817
    mov       eax,	[mwindows.lastkey+4]
    cmp       rax,	1
    jnz       L817
L819:
L816:
L815:
L813:
    mov       eax,	[mwindows.lastkey+16]
    and       rax,	3
    test      rax,	rax
    jz        L821
    mov       rax,	1
    jmp       L820
L821:
    xor       eax,	eax
L820:
    mov       [rbp + mwindows.os_getchx.altdown],	rax
    mov       eax,	[mwindows.lastkey+16]
    and       rax,	12
    test      rax,	rax
    jz        L823
    mov       rax,	1
    jmp       L822
L823:
    xor       eax,	eax
L822:
    mov       [rbp + mwindows.os_getchx.ctrldown],	rax
    mov       eax,	[mwindows.lastkey+16]
    and       rax,	16
    test      rax,	rax
    jz        L825
    mov       rax,	1
    jmp       L824
L825:
    xor       eax,	eax
L824:
    mov       [rbp + mwindows.os_getchx.shiftdown],	rax
    mov       eax,	[mwindows.lastkey+16]
    and       rax,	128
    test      rax,	rax
    jz        L827
    mov       rax,	1
    jmp       L826
L827:
    xor       eax,	eax
L826:
    mov       [rbp + mwindows.os_getchx.capslock],	rax
    lea       rax,	[mwindows.lastkey]
    lea       rax,	[rax+8]
    dec       word [rax]
    movzx     rax,	byte [mwindows.lastkey+14]
    mov       [rbp + mwindows.os_getchx.charcode],	rax
    movzx     rax,	word [mwindows.lastkey+10]
    and       rax,	255
    mov       [rbp + mwindows.os_getchx.keycode],	rax
    mov       rax,	[rbp + mwindows.os_getchx.charcode]
    cmp       rax,	0
    jge       L829
    mov       rax,	[rbp + mwindows.os_getchx.charcode]
    cmp       rax,	-128
    jge       L831
    xor       eax,	eax
    mov       [rbp + mwindows.os_getchx.charcode],	rax
    jmp       L830
L831:
    mov       rax,	256
    add       [rbp + mwindows.os_getchx.charcode],	rax
L830:
L829:
L828:
    mov       rax,	[rbp + mwindows.os_getchx.altdown]
    test      rax,	rax
    jz        L833
    mov       rax,	[rbp + mwindows.os_getchx.ctrldown]
    test      rax,	rax
    jz        L833
    mov       rax,	[rbp + mwindows.os_getchx.charcode]
    cmp       rax,	166
    jnz       L833
    xor       eax,	eax
    mov       [rbp + mwindows.os_getchx.ctrldown],	rax
    mov       [rbp + mwindows.os_getchx.altdown],	rax
    jmp       L832
L833:
    mov       rax,	[rbp + mwindows.os_getchx.altdown]
    test      rax,	rax
    jnz       L836
    mov       rax,	[rbp + mwindows.os_getchx.ctrldown]
    test      rax,	rax
    jz        L835
L836:
    xor       eax,	eax
    mov       [rbp + mwindows.os_getchx.charcode],	rax
    mov       rax,	[rbp + mwindows.os_getchx.keycode]
    cmp       rax,	65
    jl        L838
    mov       rax,	[rbp + mwindows.os_getchx.keycode]
    cmp       rax,	90
    jg        L838
    mov       rax,	[rbp + mwindows.os_getchx.keycode]
    sub       rax,	64
    mov       [rbp + mwindows.os_getchx.charcode],	rax
L838:
L837:
L835:
L834:
L832:
    mov       rax,	[rbp + mwindows.os_getchx.capslock]
    shl       rax,	3
    mov       r10,	[rbp + mwindows.os_getchx.altdown]
    shl       r10,	2
    or        rax,	r10
    mov       r10,	[rbp + mwindows.os_getchx.ctrldown]
    shl       r10,	1
    or        rax,	r10
    or        rax,	[rbp + mwindows.os_getchx.shiftdown]
    mov       [rbp + mwindows.os_getchx.keyshift],	rax
    mov       rax,	[rbp + mwindows.os_getchx.keyshift]
    shl       rax,	24
    mov       r10,	[rbp + mwindows.os_getchx.keycode]
    shl       r10,	16
    or        rax,	r10
    or        rax,	[rbp + mwindows.os_getchx.charcode]
L810:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc os_getos
mwindows.os_getos:
;>>
;---------------
    lea       rax,	[rel L5498]
L839:
;---------------
    ret       
;End 
;Proc os_gethostsize
mwindows.os_gethostsize:
;>>
;---------------
    mov       rax,	64
L840:
;---------------
    ret       
;End 
;Proc os_shellexec
mwindows.os_shellexec:
;>>
    %define mwindows.os_shellexec.opc 16
    %define mwindows.os_shellexec.file 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mwindows.os_shellexec.file]
    call      system
    movsxd    rax,	eax
L841:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_sleep
mwindows.os_sleep:
;>>
    %define mwindows.os_sleep.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mwindows.os_sleep.a]
    call      Sleep
L842:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_getstdin
mwindows.os_getstdin:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    lea       rcx,	[rel L5499]
    lea       rdx,	[rel L5500]
    call      fopen
L843:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_getstdout
mwindows.os_getstdout:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    lea       rcx,	[rel L5501]
    lea       rdx,	[rel L5502]
    call      fopen
L844:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_gethostname
mwindows.os_gethostname:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    xor       ecx,	ecx
    lea       rdx,	[mwindows.os_gethostname.name]
    mov       r8,	300
    call      GetModuleFileNameA
    lea       rax,	[mwindows.os_gethostname.name]
L845:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_getmpath
mwindows.os_getmpath:
;>>
;---------------
    lea       rax,	[rel L5503]
L846:
;---------------
    ret       
;End 
;Proc os_clock
mwindows.os_clock:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      clock
    movsxd    rax,	eax
L847:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_ticks
mwindows.os_ticks:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      GetTickCount64
L848:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_iswindows
mwindows.os_iswindows:
;>>
;---------------
    mov       rax,	1
L849:
;---------------
    ret       
;End 
;Proc os_getsystime
mwindows.os_getsystime:
;>>
    %define mwindows.os_getsystime.tm 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mwindows.os_getsystime.tm]
    call      GetLocalTime
L850:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc os_peek
mwindows.os_peek:
;>>
    %define mwindows.os_peek.ticks -8
    %define mwindows.os_peek.m -112
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	144
;---------------
    call      GetTickCount64
    mov       [rbp + mwindows.os_peek.ticks],	rax
    mov       rax,	[rbp + mwindows.os_peek.ticks]
    sub       rax,	[mwindows.os_peek.lastticks]
    cmp       rax,	1000
    jl        L853
    mov       rax,	[rbp + mwindows.os_peek.ticks]
    mov       [mwindows.os_peek.lastticks],	rax
    sub       rsp,	8
    push      0
    lea       rcx,	[rbp + mwindows.os_peek.m]
    xor       edx,	edx
    xor       r8d,	r8d
    xor       r9d,	r9d
    sub       rsp,	32
    call      PeekMessageA
    add       rsp,	48
L853:
L852:
L851:
;---------------
    add       rsp,	144
    pop       rbp
    ret       
;End 
;Proc os_allocexecmem
mwindows.os_allocexecmem:
;>>
    %define mwindows.os_allocexecmem.n 16
    %define mwindows.os_allocexecmem.p -8
    %define mwindows.os_allocexecmem.oldprot -16
    %define mwindows.os_allocexecmem.status -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    xor       ecx,	ecx
    mov       rdx,	[rbp + mwindows.os_allocexecmem.n]
    mov       r8,	12288
    mov       r9,	1
    call      VirtualAlloc
    mov       [rbp + mwindows.os_allocexecmem.p],	rax
    mov       rax,	[rbp + mwindows.os_allocexecmem.p]
    cmp       rax,	0
    jnz       L856
    xor       eax,	eax
    jmp       L854
L856:
L855:
    mov       rcx,	[rbp + mwindows.os_allocexecmem.p]
    mov       rdx,	[rbp + mwindows.os_allocexecmem.n]
    mov       r8,	64
    lea       r9,	[rbp + mwindows.os_allocexecmem.oldprot]
    call      VirtualProtect
    mov       eax,	eax
    mov       [rbp + mwindows.os_allocexecmem.status],	rax
    mov       rax,	[rbp + mwindows.os_allocexecmem.status]
    cmp       rax,	0
    jnz       L858
    xor       eax,	eax
    jmp       L854
L858:
L857:
    mov       rax,	[rbp + mwindows.os_allocexecmem.p]
L854:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc dirlist
mwindows.dirlist:
;>>
    %define mwindows.dirlist.filespec 16
    %define mwindows.dirlist.dest 24
    %define mwindows.dirlist.capacity 32
    %define mwindows.dirlist.t 40
    %define mwindows.dirlist.hfind -8
    %define mwindows.dirlist.file -336
    %define mwindows.dirlist.nfiles -344
    %define mwindows.dirlist.path -648
    %define mwindows.dirlist.fullfilename -952
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	992
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    xor       eax,	eax
    mov       [rbp + mwindows.dirlist.nfiles],	rax
    mov       rcx,	[rbp + mwindows.dirlist.filespec]
    call      mlib.extractpath
    lea       rcx,	[rbp + mwindows.dirlist.path]
    mov       rdx,	rax
    call      strcpy
    mov       rcx,	[rbp + mwindows.dirlist.filespec]
    lea       rdx,	[rbp + mwindows.dirlist.file]
    call      FindFirstFileA
    mov       [rbp + mwindows.dirlist.hfind],	rax
    cmp       rax,	-1
    jz        L861
L862:
    mov       eax,	[rbp + mwindows.dirlist.file]
    and       rax,	16
    test      rax,	rax
    jz        L866
    mov       rax,	[rbp + mwindows.dirlist.t]
    and       rax,	2
    cmp       rax,	0
    jnz       L868
    jmp       L863
L868:
L867:
    jmp       L865
L866:
    mov       rax,	[rbp + mwindows.dirlist.t]
    and       rax,	1
    cmp       rax,	0
    jnz       L870
    jmp       L863
L870:
L869:
L865:
    mov       rax,	[rbp + mwindows.dirlist.nfiles]
    cmp       rax,	[rbp + mwindows.dirlist.capacity]
    jl        L872
    mov       rax,	-1
    mov       [rbp + mwindows.dirlist.nfiles],	rax
    jmp       L864
L872:
L871:
    mov       rax,	[rbp + mwindows.dirlist.t]
    and       rax,	4
    test      rax,	rax
    jz        L874
    lea       rax,	[rbp + mwindows.dirlist.file+44]
    mov       rcx,	rax
    call      mlib.convlcstring
L874:
L873:
    lea       rcx,	[rbp + mwindows.dirlist.fullfilename]
    lea       rdx,	[rbp + mwindows.dirlist.path]
    call      strcpy
    lea       rax,	[rbp + mwindows.dirlist.file+44]
    lea       rcx,	[rbp + mwindows.dirlist.fullfilename]
    mov       rdx,	rax
    call      strcat
    lea       rcx,	[rbp + mwindows.dirlist.fullfilename]
    call      mlib.pcm_copyheapstring
    inc       qword [rbp + mwindows.dirlist.nfiles]
    mov       r10,	[rbp + mwindows.dirlist.nfiles]
    mov       r11,	[rbp + mwindows.dirlist.dest]
    mov       [r11 + r10*8-8],	rax
L863:
    mov       rcx,	[rbp + mwindows.dirlist.hfind]
    lea       rdx,	[rbp + mwindows.dirlist.file]
    call      FindNextFileA
    mov       eax,	eax
    test      rax,	rax
    jnz       L862
L864:
    mov       rcx,	[rbp + mwindows.dirlist.hfind]
    call      FindClose
L861:
L860:
    mov       rax,	[rbp + mwindows.dirlist.nfiles]
L859:
;---------------
    add       rsp,	992
    pop       rbp
    ret       
;End 
;Proc os_calldllfunction
mwindll.os_calldllfunction:
;>>
    %define mwindll.os_calldllfunction.fnaddr 16
    %define mwindll.os_calldllfunction.retcode 24
    %define mwindll.os_calldllfunction.nargs 32
    %define mwindll.os_calldllfunction.args 40
    %define mwindll.os_calldllfunction.argcodes 48
    %define mwindll.os_calldllfunction.a -8
    %define mwindll.os_calldllfunction.x -16
    %define mwindll.os_calldllfunction.nextra -24
    %define mwindll.os_calldllfunction.pushedbytes -32
    %define mwindll.os_calldllfunction.av_1 -40
    %define mwindll.os_calldllfunction.i -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    xor       eax,	eax
    mov       [rbp + mwindll.os_calldllfunction.nextra],	rax
    mov       rax,	[rbp + mwindll.os_calldllfunction.nargs]
    cmp       rax,	4
    jge       L877
    mov       rax,	4
    sub       rax,	[rbp + mwindll.os_calldllfunction.nargs]
    mov       [rbp + mwindll.os_calldllfunction.nextra],	rax
    jmp       L876
L877:
    mov       eax,	[rbp + mwindll.os_calldllfunction.nargs]
    and       eax,	1
    test      rax,	rax
    jz        L878
    mov       rax,	1
    mov       [rbp + mwindll.os_calldllfunction.nextra],	rax
L878:
L876:
    mov       rax,	[rbp + mwindll.os_calldllfunction.nextra]
    add       rax,	[rbp + mwindll.os_calldllfunction.nargs]
    imul      rax,	8
    mov       [rbp + mwindll.os_calldllfunction.pushedbytes],	rax
    mov       rax,	[rbp + mwindll.os_calldllfunction.nextra]
    mov       [rbp + mwindll.os_calldllfunction.av_1],	rax
    mov       rax,	[rbp + mwindll.os_calldllfunction.av_1]
    cmp       rax,	0
    jle       L881
L879:
    push      0
L880:
    dec       qword [rbp + mwindll.os_calldllfunction.av_1]
    jnz       L879
L881:
    mov       rax,	[rbp + mwindll.os_calldllfunction.nargs]
    mov       [rbp + mwindll.os_calldllfunction.i],	rax
    mov       rax,	[rbp + mwindll.os_calldllfunction.i]
    cmp       rax,	1
    jl        L884
L882:
    mov       rax,	[rbp + mwindll.os_calldllfunction.args]
    mov       r10,	[rbp + mwindll.os_calldllfunction.i]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + mwindll.os_calldllfunction.a],	r11
    push      qword [rbp + mwindll.os_calldllfunction.a]
L883:
    mov       rax,	[rbp + mwindll.os_calldllfunction.i]
    dec       rax
    mov       [rbp + mwindll.os_calldllfunction.i],	rax
    cmp       rax,	1
    jge       L882
L884:
    mov       rcx,	[rsp]
    movq      XMM0,	[rsp]
    mov       rdx,	[rsp+8]
    movq      XMM1,	[rsp+8]
    mov       r8,	[rsp+16]
    movq      XMM2,	[rsp+16]
    mov       r9,	[rsp+24]
    movq      XMM3,	[rsp+24]
    mov       rax,	[rbp + mwindll.os_calldllfunction.retcode]
    cmp       rax,	73
    jnz       L886
    mov       rax,	[rbp + mwindll.os_calldllfunction.fnaddr]
    call      rax
    mov       [rbp + mwindll.os_calldllfunction.a],	rax
    add       rsp,	[rbp + mwindll.os_calldllfunction.pushedbytes]
    mov       rax,	[rbp + mwindll.os_calldllfunction.a]
    jmp       L885
L886:
    mov       rax,	[rbp + mwindll.os_calldllfunction.fnaddr]
    call      rax
    movq      [rbp + mwindll.os_calldllfunction.x],	XMM0
    add       rsp,	[rbp + mwindll.os_calldllfunction.pushedbytes]
    movq      XMM4,	[rbp + mwindll.os_calldllfunction.x]
    movq      rax,	XMM4
L885:
L875:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc pcl_start
pc_api.pcl_start:
pcl_start:
;>>
    %define pc_api.pcl_start.name 16
    %define pc_api.pcl_start.nunits 24
    %define pc_api.pcl_start.nn -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	305419777
    mov       [rbp + pc_api.pcl_start.nn],	rax
    movzx     rax,	byte [pc_decls.pcldone]
    test      rax,	rax
    jz        L889
    lea       rcx,	[rel L5504]
    call      pc_api.pclerror
L889:
L888:
    mov       rax,	[rbp + pc_api.pcl_start.name]
    test      rax,	rax
    jz        L891
    mov       rcx,	[rbp + pc_api.pcl_start.name]
    xor       edx,	edx
    call      pc_api.pc_makesymbol
    mov       [pc_decls.currprog],	rax
L891:
L890:
    mov       rax,	[pc_api.initpcalloc]
    mov       [pc_api.pcalloc],	rax
    mov       rax,	[rbp + pc_api.pcl_start.nunits]
    test      rax,	rax
    jz        L893
    mov       rax,	[rbp + pc_api.pcl_start.nunits]
    imul      rax,	9
    sar       rax,	3
    mov       [rbp + pc_api.pcl_start.nunits],	rax
    jmp       L895
L894:
    mov       rax,	[pc_api.pcalloc]
    shl       rax,	1
    mov       [pc_api.pcalloc],	rax
L895:
    mov       rax,	[pc_api.pcalloc]
    cmp       rax,	[rbp + pc_api.pcl_start.nunits]
    jl        L894
L896:
L893:
L892:
    mov       rax,	[pc_api.pcalloc]
    imul      rax,	32
    mov       rcx,	rax
    call      mlib.pcm_allocz
    mov       [pc_api.pcstart],	rax
    mov       rax,	[pc_api.pcstart]
    mov       r10,	[pc_api.pcalloc]
    shl       r10,	5
    lea       rax,	[rax + r10]
    sub       rax,	256
    mov       [pc_api.pcend],	rax
    mov       rax,	[pc_api.pcstart]
    sub       rax,	32
    mov       [pc_api.pccurr],	rax
    xor       eax,	eax
    mov       [pc_api.pcfixed],	al
    xor       eax,	eax
    mov       [pc_api.pcseqno],	rax
    xor       eax,	eax
    mov       [pc_api.pcneedfntable],	rax
    xor       eax,	eax
    mov       [pc_decls.mmlabelno],	rax
    mov       rax,	[pc_decls.currprog]
L887:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcl_end
pc_api.pcl_end:
pcl_end:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[pc_api.pccurr]
    cmp       rax,	[pc_api.pccurr]
    jb        L899
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax]
    cmp       r10,	134
    jz        L899
    mov       rcx,	134
    xor       edx,	edx
    call      pc_api.pc_gen
L899:
L898:
    mov       al,	1
    mov       [pc_decls.pcldone],	al
L897:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writepcl
pc_api.pcl_writepcl:
pcl_writepcl:
;>>
    %define pc_api.pcl_writepcl.filename 16
    %define pc_api.pcl_writepcl.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_diags.writeallpcl
    mov       [rbp + pc_api.pcl_writepcl.d],	rax
    mov       rax,	[rbp + pc_api.pcl_writepcl.filename]
    test      rax,	rax
    jz        L902
    movzx     rax,	byte [pc_decls.pverbose]
    test      rax,	rax
    jz        L904
    call      msys.m$print_startcon
    lea       rcx,	[rel L5505]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.pcl_writepcl.filename]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L904:
L903:
    mov       rax,	[rbp + pc_api.pcl_writepcl.d]
    movsxd    r10,	dword [rax+8]
    mov       rax,	[rbp + pc_api.pcl_writepcl.d]
    mov       r11,	[rax]
    mov       rcx,	[rbp + pc_api.pcl_writepcl.filename]
    mov       rdx,	r11
    mov       r8,	r10
    call      mlib.writefile
    lea       rax,	[rel L5506]
    jmp       L901
L902:
    mov       rax,	[rbp + pc_api.pcl_writepcl.d]
    mov       r10,	[rax]
    mov       rax,	r10
L901:
L900:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcl_genmcl
pc_api.pcl_genmcl:
pcl_genmcl:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mc_genmcl.genmcl
L905:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_genss
pc_api.pcl_genss:
pcl_genss:
;>>
    %define pc_api.pcl_genss.obj 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      mc_genmcl.genmcl
    mov       rcx,	[rbp + pc_api.pcl_genss.obj]
    call      mc_genss.genss
L906:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writeasm
pc_api.pcl_writeasm:
pcl_writeasm:
;>>
    %define pc_api.pcl_writeasm.filename 16
    %define pc_api.pcl_writeasm.atype 24
    %define pc_api.pcl_writeasm.asmstr -8
    %define pc_api.pcl_writeasm.f -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      mc_genmcl.genmcl
    call      mc_writenasm.getassemstr
    mov       [rbp + pc_api.pcl_writeasm.asmstr],	rax
    mov       rax,	[rbp + pc_api.pcl_writeasm.filename]
    test      rax,	rax
    jz        L909
    movzx     rax,	byte [pc_decls.pverbose]
    test      rax,	rax
    jz        L911
    call      msys.m$print_startcon
    lea       rcx,	[rel L5507]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.pcl_writeasm.filename]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L911:
L910:
    mov       rcx,	[rbp + pc_api.pcl_writeasm.filename]
    lea       rdx,	[rel L5508]
    call      fopen
    mov       [rbp + pc_api.pcl_writeasm.f],	rax
    mov       rcx,	[rbp + pc_api.pcl_writeasm.asmstr]
    mov       rdx,	[rbp + pc_api.pcl_writeasm.f]
    call      mlib.gs_println
    mov       rcx,	[rbp + pc_api.pcl_writeasm.f]
    call      fclose
    mov       rcx,	[rbp + pc_api.pcl_writeasm.asmstr]
    call      mlib.gs_free
    xor       eax,	eax
    jmp       L908
L909:
    mov       rax,	[rbp + pc_api.pcl_writeasm.asmstr]
    mov       r10,	[rax]
    mov       rax,	r10
L908:
L907:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcl_writeobj
pc_api.pcl_writeobj:
pcl_writeobj:
;>>
    %define pc_api.pcl_writeobj.filename 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       al,	2
    mov       [mc_decls.phighmem],	al
    call      mc_genmcl.genmcl
    mov       rcx,	1
    call      mc_genss.genss
    mov       rcx,	[rbp + pc_api.pcl_writeobj.filename]
    call      mc_writeobj.writecoff
L912:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writedll
pc_api.pcl_writedll:
pcl_writedll:
;>>
    %define pc_api.pcl_writedll.filename 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       al,	2
    mov       [mc_decls.phighmem],	al
    call      mc_genmcl.genmcl
    xor       ecx,	ecx
    call      mc_genss.genss
    xor       ecx,	ecx
    mov       rdx,	[rbp + pc_api.pcl_writedll.filename]
    mov       r8,	1
    call      mc_writeexe.genexe
    mov       rcx,	[rbp + pc_api.pcl_writedll.filename]
    mov       rdx,	1
    call      mc_writeexe.writeexe
L913:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writeexe
pc_api.pcl_writeexe:
pcl_writeexe:
;>>
    %define pc_api.pcl_writeexe.filename 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      mc_genmcl.genmcl
    xor       ecx,	ecx
    call      mc_genss.genss
    xor       ecx,	ecx
    mov       rdx,	[rbp + pc_api.pcl_writeexe.filename]
    xor       r8d,	r8d
    call      mc_writeexe.genexe
    mov       rcx,	[rbp + pc_api.pcl_writeexe.filename]
    xor       edx,	edx
    call      mc_writeexe.writeexe
L914:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writemx
pc_api.pcl_writemx:
pcl_writemx:
;>>
    %define pc_api.pcl_writemx.filename 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      mc_genmcl.genmcl
    xor       ecx,	ecx
    call      mc_genss.genss
    mov       rcx,	[rbp + pc_api.pcl_writemx.filename]
    call      mx_write.writemcx
L915:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_exec
pc_api.pcl_exec:
pcl_exec:
;>>
    %define pc_api.pcl_exec.cmdskip 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      mc_genmcl.genmcl
    xor       ecx,	ecx
    call      mc_genss.genss
    lea       rcx,	[rel L5509]
    mov       rdx,	[rbp + pc_api.pcl_exec.cmdskip]
    call      mx_run.runlibfile
L916:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_setflags
pc_api.pcl_setflags:
pcl_setflags:
;>>
    %define pc_api.pcl_setflags.highmem 16
    %define pc_api.pcl_setflags.verbose 24
    %define pc_api.pcl_setflags.shortnames 32
    %define pc_api.pcl_setflags.hostcmdskip 40
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + pc_api.pcl_setflags.highmem]
    cmp       rax,	0
    jl        L919
    mov       al,	[rbp + pc_api.pcl_setflags.highmem]
    mov       [mc_decls.phighmem],	al
L919:
L918:
    mov       rax,	[rbp + pc_api.pcl_setflags.verbose]
    cmp       rax,	0
    jl        L921
    mov       al,	[rbp + pc_api.pcl_setflags.verbose]
    mov       [pc_decls.pverbose],	al
L921:
L920:
    mov       rax,	[rbp + pc_api.pcl_setflags.shortnames]
    cmp       rax,	0
    jl        L923
    mov       al,	[rbp + pc_api.pcl_setflags.shortnames]
    mov       [mc_decls.fpshortnames],	al
L923:
L922:
    mov       rax,	[rbp + pc_api.pcl_setflags.hostcmdskip]
    cmp       rax,	0
    jl        L925
    mov       rax,	[rbp + pc_api.pcl_setflags.hostcmdskip]
    mov       [pc_decls.pcmdskip],	rax
L925:
L924:
L917:
;---------------
    pop       rbp
    ret       
;End 
;Proc extendpclblock
pc_api.extendpclblock:
;>>
    %define pc_api.extendpclblock.newpcalloc -8
    %define pc_api.extendpclblock.lengthused -16
    %define pc_api.extendpclblock.newpcstart -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    mov       rax,	[pc_api.pcalloc]
    imul      rax,	2
    mov       [rbp + pc_api.extendpclblock.newpcalloc],	rax
    mov       rax,	[pc_api.pccurr]
    sub       rax,	[pc_api.pcstart]
    shr       rax,	5
    add       rax,	1
    mov       [rbp + pc_api.extendpclblock.lengthused],	rax
    mov       rax,	32
    imul      rax,	[rbp + pc_api.extendpclblock.newpcalloc]
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [rbp + pc_api.extendpclblock.newpcstart],	rax
    mov       rax,	[rbp + pc_api.extendpclblock.lengthused]
    imul      rax,	32
    mov       rcx,	[rbp + pc_api.extendpclblock.newpcstart]
    mov       rdx,	[pc_api.pcstart]
    mov       r8,	rax
    call      memcpy
    mov       rax,	[rbp + pc_api.extendpclblock.newpcalloc]
    sub       rax,	[rbp + pc_api.extendpclblock.lengthused]
    imul      rax,	32
    mov       r10,	[rbp + pc_api.extendpclblock.newpcstart]
    mov       r11,	[rbp + pc_api.extendpclblock.lengthused]
    shl       r11,	5
    lea       r10,	[r10 + r11]
    mov       rcx,	r10
    mov       rdx,	rax
    call      mlib.pcm_clearmem
    mov       rax,	[pc_api.pccurr]
    sub       rax,	[pc_api.pcstart]
    shr       rax,	5
    mov       r10,	[rbp + pc_api.extendpclblock.newpcstart]
    shl       rax,	5
    lea       r10,	[r10 + rax]
    mov       [pc_api.pccurr],	r10
    mov       rax,	[rbp + pc_api.extendpclblock.newpcstart]
    mov       r10,	[rbp + pc_api.extendpclblock.newpcalloc]
    shl       r10,	5
    lea       rax,	[rax + r10]
    sub       rax,	256
    mov       [pc_api.pcend],	rax
    mov       rax,	[pc_api.pcalloc]
    imul      rax,	32
    mov       rcx,	[pc_api.pcstart]
    mov       rdx,	rax
    call      mlib.pcm_free
    mov       rax,	[rbp + pc_api.extendpclblock.newpcstart]
    mov       [pc_api.pcstart],	rax
    mov       rax,	[rbp + pc_api.extendpclblock.newpcalloc]
    mov       [pc_api.pcalloc],	rax
L926:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc newpcl
pc_api.newpcl:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[pc_api.pccurr]
    cmp       rax,	[pc_api.pcend]
    jb        L929
    call      pc_api.extendpclblock
L929:
L928:
    add       qword [pc_api.pccurr],	32
    mov       eax,	[pc_decls.mmpos]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+24],	eax
    inc       qword [pc_api.pclseqno]
    mov       rax,	[pc_api.pclseqno]
    mov       r10,	[pc_api.pccurr]
    lea       r10,	[r10+28]
    mov       edi,	[r10]
    mov       r11,	-4294967041
    shl       eax,	8
    and       edi,	r11d
    or        edi,	eax
    mov       [r10],	edi
    mov       rax,	[pc_api.pccurr]
L927:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_gen
pc_api.pc_gen:
pc_gen:
;>>
    %define pc_api.pc_gen.opcode 16
    %define pc_api.pc_gen.p 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_api.pc_gen.opcode]
    cmp       rax,	2
    jz        L932
    cmp       rax,	5
    jz        L933
    jmp       L934
L932:
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax]
    cmp       r10,	56
    jnz       L936
    mov       al,	3
    mov       r10,	[pc_api.pccurr]
    mov       [r10],	al
    jmp       L930
L936:
L935:
    jmp       L931
L933:
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax]
    cmp       r10,	56
    jnz       L938
    mov       al,	6
    mov       r10,	[pc_api.pccurr]
    mov       [r10],	al
    jmp       L930
L938:
L937:
L934:
L931:
    mov       rax,	[rbp + pc_api.pc_gen.p]
    cmp       rax,	0
    jnz       L940
    call      pc_api.newpcl
    mov       [rbp + pc_api.pc_gen.p],	rax
L940:
L939:
    mov       al,	[rbp + pc_api.pc_gen.opcode]
    mov       r10,	[rbp + pc_api.pc_gen.p]
    mov       [r10],	al
L930:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_genix
pc_api.pc_genix:
pc_genix:
;>>
    %define pc_api.pc_genix.opcode 16
    %define pc_api.pc_genix.scale 24
    %define pc_api.pc_genix.offset 32
    %define pc_api.pc_genix.p -8
    %define pc_api.pc_genix.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       eax,	eax
    test      ax,	ax
    jz        L943
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax]
    cmp       r10,	1
    jnz       L943
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jnz       L943
    mov       rax,	[rbp + pc_api.pc_genix.opcode]
    cmp       rax,	57
    jnz       L945
    mov       rax,	[pc_api.pccurr]
    lea       rax,	[rax+8]
    neg       qword [rax]
    mov       rax,	56
    mov       [rbp + pc_api.pc_genix.opcode],	rax
L945:
L944:
    mov       rax,	[pc_api.pccurr]
    sub       rax,	32
    movzx     r10,	byte [rax]
    cmp       r10,	56
    jnz       L947
    mov       rax,	[pc_api.pccurr]
    sub       rax,	32
    mov       [rbp + pc_api.pc_genix.p],	rax
    mov       rax,	[pc_api.pccurr]
    mov       r10,	[rax+8]
    imul      r10,	[rbp + pc_api.pc_genix.scale]
    add       r10,	[rbp + pc_api.pc_genix.offset]
    mov       rax,	[rbp + pc_api.pc_genix.p]
    lea       rax,	[rax+20]
    add       [rax],	r10d
    mov       al,	[rbp + pc_api.pc_genix.opcode]
    mov       r10,	[rbp + pc_api.pc_genix.p]
    mov       [r10],	al
    mov       rax,	[pc_api.pccurr]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       [rax+16],	r10
    mov       [rax+24],	r10
    mov       rax,	[rbp + pc_api.pc_genix.p]
    mov       [pc_api.pccurr],	rax
    jmp       L941
L947:
L946:
L943:
L942:
    call      pc_api.newpcl
    mov       [rbp + pc_api.pc_genix.p],	rax
    mov       al,	[rbp + pc_api.pc_genix.opcode]
    mov       r10,	[rbp + pc_api.pc_genix.p]
    mov       [r10],	al
    mov       eax,	[rbp + pc_api.pc_genix.scale]
    mov       r10,	[rbp + pc_api.pc_genix.p]
    mov       [r10+16],	eax
    mov       eax,	[rbp + pc_api.pc_genix.offset]
    mov       r10,	[rbp + pc_api.pc_genix.p]
    mov       [r10+20],	eax
L941:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pc_genx
pc_api.pc_genx:
pc_genx:
;>>
    %define pc_api.pc_genx.opcode 16
    %define pc_api.pc_genx.x 24
    %define pc_api.pc_genx.p 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + pc_api.pc_genx.p]
    cmp       rax,	0
    jnz       L950
    call      pc_api.newpcl
    mov       [rbp + pc_api.pc_genx.p],	rax
L950:
L949:
    mov       al,	[rbp + pc_api.pc_genx.opcode]
    mov       r10,	[rbp + pc_api.pc_genx.p]
    mov       [r10],	al
    mov       eax,	[rbp + pc_api.pc_genx.x]
    mov       r10,	[rbp + pc_api.pc_genx.p]
    mov       [r10+16],	eax
L948:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_genxy
pc_api.pc_genxy:
pc_genxy:
;>>
    %define pc_api.pc_genxy.opcode 16
    %define pc_api.pc_genxy.x 24
    %define pc_api.pc_genxy.y 32
    %define pc_api.pc_genxy.p 40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + pc_api.pc_genxy.p]
    cmp       rax,	0
    jnz       L953
    call      pc_api.newpcl
    mov       [rbp + pc_api.pc_genxy.p],	rax
L953:
L952:
    mov       al,	[rbp + pc_api.pc_genxy.opcode]
    mov       r10,	[rbp + pc_api.pc_genxy.p]
    mov       [r10],	al
    mov       eax,	[rbp + pc_api.pc_genxy.x]
    mov       r10,	[rbp + pc_api.pc_genxy.p]
    mov       [r10+16],	eax
    mov       eax,	[rbp + pc_api.pc_genxy.y]
    mov       r10,	[rbp + pc_api.pc_genxy.p]
    mov       [r10+20],	eax
L951:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_gencond
pc_api.pc_gencond:
pc_gencond:
;>>
    %define pc_api.pc_gencond.opcode 16
    %define pc_api.pc_gencond.cond 24
    %define pc_api.pc_gencond.p 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + pc_api.pc_gencond.p]
    cmp       rax,	0
    jnz       L956
    call      pc_api.newpcl
    mov       [rbp + pc_api.pc_gencond.p],	rax
L956:
L955:
    mov       al,	[rbp + pc_api.pc_gencond.opcode]
    mov       r10,	[rbp + pc_api.pc_gencond.p]
    mov       [r10],	al
    mov       al,	[rbp + pc_api.pc_gencond.cond]
    mov       r10,	[rbp + pc_api.pc_gencond.p]
    mov       [r10+2],	al
L954:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genint
pc_api.genint:
genint:
;>>
    %define pc_api.genint.a 16
    %define pc_api.genint.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genint.p],	rax
    mov       rax,	[rbp + pc_api.genint.a]
    mov       r10,	[rbp + pc_api.genint.p]
    mov       [r10+8],	rax
    mov       al,	4
    mov       r10,	[rbp + pc_api.genint.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genint.p]
L957:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genreal
pc_api.genreal:
genreal:
;>>
    %define pc_api.genreal.x 16
    %define pc_api.genreal.mode 24
    %define pc_api.genreal.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    movq      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genreal.p],	rax
    movq      XMM4,	[rbp + pc_api.genreal.x]
    mov       rax,	[rbp + pc_api.genreal.p]
    movq      [rax+8],	XMM4
    mov       rax,	[rbp + pc_api.genreal.mode]
    cmp       rax,	2
    jnz       L960
    mov       rax,	5
    jmp       L959
L960:
    mov       rax,	6
L959:
    mov       r10,	[rbp + pc_api.genreal.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genreal.p]
L958:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genrealimm
pc_api.genrealimm:
genrealimm:
;>>
    %define pc_api.genrealimm.x 16
    %define pc_api.genrealimm.mode 24
    %define pc_api.genrealimm.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    movq      [rbp+16],	XMM0
    mov       [rbp+24],	rdx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genrealimm.p],	rax
    movq      XMM4,	[rbp + pc_api.genrealimm.x]
    mov       rax,	[rbp + pc_api.genrealimm.p]
    movq      [rax+8],	XMM4
    mov       rax,	[rbp + pc_api.genrealimm.mode]
    cmp       rax,	2
    jnz       L963
    mov       rax,	10
    jmp       L962
L963:
    mov       rax,	11
L962:
    mov       r10,	[rbp + pc_api.genrealimm.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genrealimm.p]
L961:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genstring
pc_api.genstring:
genstring:
;>>
    %define pc_api.genstring.s 16
    %define pc_api.genstring.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genstring.p],	rax
    mov       rcx,	[rbp + pc_api.genstring.s]
    call      mlib.pcm_copyheapstring
    mov       r10,	[rbp + pc_api.genstring.p]
    mov       [r10+8],	rax
    mov       al,	7
    mov       r10,	[rbp + pc_api.genstring.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genstring.p]
L964:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genpcstrimm
pc_api.genpcstrimm:
genpcstrimm:
;>>
    %define pc_api.genpcstrimm.s 16
    %define pc_api.genpcstrimm.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genpcstrimm.p],	rax
    mov       rcx,	[rbp + pc_api.genpcstrimm.s]
    call      mlib.pcm_copyheapstring
    mov       r10,	[rbp + pc_api.genpcstrimm.p]
    mov       [r10+8],	rax
    mov       al,	8
    mov       r10,	[rbp + pc_api.genpcstrimm.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genpcstrimm.p]
L965:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genlabel
pc_api.genlabel:
genlabel:
;>>
    %define pc_api.genlabel.a 16
    %define pc_api.genlabel.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genlabel.p],	rax
    mov       rax,	[rbp + pc_api.genlabel.a]
    mov       r10,	[rbp + pc_api.genlabel.p]
    mov       [r10+8],	rax
    mov       al,	3
    mov       r10,	[rbp + pc_api.genlabel.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genlabel.p]
L966:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genmem
pc_api.genmem:
genmem:
;>>
    %define pc_api.genmem.d 16
    %define pc_api.genmem.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genmem.p],	rax
    mov       rax,	[rbp + pc_api.genmem.d]
    mov       r10,	[rbp + pc_api.genmem.p]
    mov       [r10+8],	rax
    mov       al,	1
    mov       r10,	[rbp + pc_api.genmem.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genmem.p]
L967:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genmemaddr
pc_api.genmemaddr:
genmemaddr:
;>>
    %define pc_api.genmemaddr.d 16
    %define pc_api.genmemaddr.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genmemaddr.p],	rax
    mov       rax,	[rbp + pc_api.genmemaddr.d]
    mov       r10,	[rbp + pc_api.genmemaddr.p]
    mov       [r10+8],	rax
    mov       al,	2
    mov       r10,	[rbp + pc_api.genmemaddr.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genmemaddr.p]
L968:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc gendata
pc_api.gendata:
gendata:
;>>
    %define pc_api.gendata.s 16
    %define pc_api.gendata.length 24
    %define pc_api.gendata.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.gendata.p],	rax
    mov       rax,	[rbp + pc_api.gendata.s]
    mov       r10,	[rbp + pc_api.gendata.p]
    mov       [r10+8],	rax
    mov       al,	12
    mov       r10,	[rbp + pc_api.gendata.p]
    mov       [r10+1],	al
    mov       al,	11
    mov       r10,	[rbp + pc_api.gendata.p]
    mov       [r10+3],	al
    mov       eax,	[rbp + pc_api.gendata.length]
    mov       r10,	[rbp + pc_api.gendata.p]
    mov       [r10+4],	eax
    mov       rax,	[rbp + pc_api.gendata.p]
L969:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc gencomment
pc_api.gencomment:
gencomment:
;>>
    %define pc_api.gencomment.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_api.gencomment.s]
    call      pc_api.genpcstrimm
    mov       rcx,	133
    mov       rdx,	rax
    call      pc_api.pc_gen
L970:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genname
pc_api.genname:
genname:
;>>
    %define pc_api.genname.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_api.genname.s]
    xor       edx,	edx
    call      pc_api.pc_makesymbol
    mov       rcx,	rax
    call      pc_api.genmem
L971:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gennameaddr
pc_api.gennameaddr:
gennameaddr:
;>>
    %define pc_api.gennameaddr.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_api.gennameaddr.s]
    xor       edx,	edx
    call      pc_api.pc_makesymbol
    mov       rcx,	rax
    call      pc_api.genmemaddr
L972:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genassem
pc_api.genassem:
genassem:
;>>
    %define pc_api.genassem.code 16
    %define pc_api.genassem.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    call      pc_api.newpcl
    mov       [rbp + pc_api.genassem.p],	rax
    mov       rax,	[rbp + pc_api.genassem.code]
    mov       r10,	[rbp + pc_api.genassem.p]
    mov       [r10+8],	rax
    mov       al,	9
    mov       r10,	[rbp + pc_api.genassem.p]
    mov       [r10+1],	al
    mov       rax,	[rbp + pc_api.genassem.p]
L973:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc strpmode
pc_api.strpmode:
strpmode:
;>>
    %define pc_api.strpmode.mode 16
    %define pc_api.strpmode.size 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[pc_api.strpmode.str]
    lea       rdx,	[rel L5510]
    call      strcpy
    mov       rax,	[rbp + pc_api.strpmode.mode]
    cmp       rax,	11
    jz        L976
    cmp       rax,	0
    jz        L977
    jmp       L978
L976:
    lea       rcx,	[pc_api.strpmode.str]
    lea       rdx,	[rel L5511]
    call      strcpy
    mov       rcx,	[rbp + pc_api.strpmode.size]
    xor       edx,	edx
    call      msys.strint
    lea       rcx,	[pc_api.strpmode.str]
    mov       rdx,	rax
    call      strcat
    lea       rax,	[pc_api.strpmode.str]
    jmp       L975
L977:
    lea       rax,	[rel L5512]
    jmp       L975
L978:
    lea       rax,	[pc_tables.pstdnames]
    mov       r10,	[rbp + pc_api.strpmode.mode]
    mov       r11,	[rax + r10*8]
    mov       rax,	r11
L975:
L974:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_setmode
pc_api.pc_setmode:
pc_setmode:
;>>
    %define pc_api.pc_setmode.m 16
    %define pc_api.pc_setmode.size 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       al,	[rbp + pc_api.pc_setmode.m]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+3],	al
    mov       rax,	[rbp + pc_api.pc_setmode.size]
    test      rax,	rax
    jz        L981
    mov       eax,	[rbp + pc_api.pc_setmode.size]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+4],	eax
    jmp       L980
L981:
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psize]
    movzx     r11,	byte [rax + r10]
    mov       rax,	[pc_api.pccurr]
    mov       [rax+4],	r11d
L980:
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax]
    lea       rax,	[pc_tables.pclhastype]
    movzx     r11,	byte [rax + r10]
    cmp       r11,	2
    jnz       L983
    mov       rax,	[pc_api.pccurr]
    movzx     r10,	byte [rax+3]
    mov       rax,	[pc_api.pccurr]
    lea       rax,	[rax+28]
    mov       edi,	[rax]
    mov       r11,	-256
    and       edi,	r11d
    or        edi,	r10d
    mov       [rax],	edi
L983:
L982:
L979:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setmode2
pc_api.pc_setmode2:
pc_setmode2:
;>>
    %define pc_api.pc_setmode2.m 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_api.pccurr]
    lea       rax,	[rax+28]
    mov       r10d,	[rbp + pc_api.pc_setmode2.m]
    mov       edi,	[rax]
    mov       r11,	-256
    and       edi,	r11d
    or        edi,	r10d
    mov       [rax],	edi
L984:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setxy
pc_api.pc_setxy:
pc_setxy:
;>>
    %define pc_api.pc_setxy.x 16
    %define pc_api.pc_setxy.y 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       eax,	[rbp + pc_api.pc_setxy.x]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+16],	eax
    mov       eax,	[rbp + pc_api.pc_setxy.y]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+20],	eax
L985:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setscaleoff
pc_api.pc_setscaleoff:
pc_setscaleoff:
;>>
    %define pc_api.pc_setscaleoff.scale 16
    %define pc_api.pc_setscaleoff.offset 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       eax,	[rbp + pc_api.pc_setscaleoff.scale]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+16],	eax
    mov       eax,	[rbp + pc_api.pc_setscaleoff.offset]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+20],	eax
L986:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setoffset
pc_api.pc_setoffset:
pc_setoffset:
;>>
    %define pc_api.pc_setoffset.offset 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       eax,	[rbp + pc_api.pc_setoffset.offset]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+20],	eax
L987:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_addoffset
pc_api.pc_addoffset:
pc_addoffset:
;>>
    %define pc_api.pc_addoffset.offset 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_api.pccurr]
    lea       rax,	[rax+20]
    mov       r10d,	[rbp + pc_api.pc_addoffset.offset]
    add       [rax],	r10d
L988:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setincr
pc_api.pc_setincr:
pc_setincr:
;>>
    %define pc_api.pc_setincr.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       eax,	[rbp + pc_api.pc_setincr.n]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+16],	eax
L989:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setnargs
pc_api.pc_setnargs:
pc_setnargs:
;>>
    %define pc_api.pc_setnargs.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       eax,	[rbp + pc_api.pc_setnargs.n]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+16],	eax
L990:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setnvariadics
pc_api.pc_setnvariadics:
pc_setnvariadics:
;>>
    %define pc_api.pc_setnvariadics.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       eax,	[rbp + pc_api.pc_setnvariadics.n]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+20],	eax
L991:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_setalign
pc_api.pc_setalign:
pc_setalign:
;>>
    %define pc_api.pc_setalign.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       eax,	[rbp + pc_api.pc_setalign.n]
    mov       r10,	[pc_api.pccurr]
    mov       [r10+16],	eax
L992:
;---------------
    pop       rbp
    ret       
;End 
;Proc perror
pc_api.perror:
;>>
    %define pc_api.perror.mess 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_api.perror.mess]
    xor       edx,	edx
    call      pc_api.perror_s
L993:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc perror_s
pc_api.perror_s:
;>>
    %define pc_api.perror_s.mess 16
    %define pc_api.perror_s.param 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    call      msys.m$print_startcon
    lea       rcx,	[rel L5513]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.perror_s.mess]
    call      msys.m$print_str_nf
    call      msys.m$print_end
    mov       rax,	[rbp + pc_api.perror_s.param]
    test      rax,	rax
    jz        L996
    call      msys.m$print_startcon
    lea       rcx,	[rel L5514]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.perror_s.param]
    call      msys.m$print_str_nf
    call      msys.m$print_end
L996:
L995:
    mov       rcx,	1
    call      exit
L994:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc getbasename
pc_api.getbasename:
;>>
    %define pc_api.getbasename.s 16
    %define pc_api.getbasename.t -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_api.getbasename.s]
    call      strlen
    mov       r10,	[rbp + pc_api.getbasename.s]
    lea       r10,	[r10 + rax]
    sub       r10,	1
    mov       [rbp + pc_api.getbasename.t],	r10
    jmp       L999
L998:
    dec       qword [rbp + pc_api.getbasename.t]
L999:
    mov       rax,	[rbp + pc_api.getbasename.t]
    cmp       rax,	[rbp + pc_api.getbasename.s]
    jbe       L1001
    mov       rax,	[rbp + pc_api.getbasename.t]
    sub       rax,	1
    movzx     r10,	byte [rax]
    cmp       r10,	46
    jnz       L998
L1001:
L1000:
    mov       rax,	[rbp + pc_api.getbasename.t]
L997:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pclerror
pc_api.pclerror:
;>>
    %define pc_api.pclerror.mess 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      msys.m$print_startcon
    lea       rcx,	[rel L5515]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.pclerror.mess]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	1
    call      exit
L1002:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_addsymbol
pc_api.pc_addsymbol:
;>>
    %define pc_api.pc_addsymbol.d 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_decls.psymboltable]
    cmp       rax,	0
    jnz       L1005
    mov       rax,	[rbp + pc_api.pc_addsymbol.d]
    mov       [pc_decls.psymboltablex],	rax
    mov       [pc_decls.psymboltable],	rax
    jmp       L1004
L1005:
    mov       rax,	[rbp + pc_api.pc_addsymbol.d]
    mov       r10,	[pc_decls.psymboltablex]
    mov       [r10+8],	rax
    mov       rax,	[rbp + pc_api.pc_addsymbol.d]
    mov       [pc_decls.psymboltablex],	rax
L1004:
L1003:
;---------------
    pop       rbp
    ret       
;End 
;Proc pc_makesymbol
pc_api.pc_makesymbol:
pc_makesymbol:
;>>
    %define pc_api.pc_makesymbol.s 16
    %define pc_api.pc_makesymbol.id 24
    %define pc_api.pc_makesymbol.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	112
    call      mlib.pcm_allocnfz
    mov       [rbp + pc_api.pc_makesymbol.d],	rax
    mov       rcx,	[rbp + pc_api.pc_makesymbol.s]
    call      mlib.pcm_copyheapstring
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10],	rax
    mov       rax,	[rbp + pc_api.pc_makesymbol.id]
    cmp       rax,	1
    jz        L1008
    cmp       rax,	7
    jz        L1009
    jmp       L1010
L1008:
    mov       al,	1
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10+56],	al
    jmp       L1007
L1009:
    mov       al,	1
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10+57],	al
    mov       rax,	2
    mov       [rbp + pc_api.pc_makesymbol.id],	rax
L1010:
L1007:
    mov       al,	[rbp + pc_api.pc_makesymbol.id]
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10+49],	al
    mov       rax,	[rbp + pc_api.pc_makesymbol.id]
    cmp       rax,	4
    jz        L1012
    cmp       rax,	5
    jz        L1012
    jmp       L1013
L1012:
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10+32],	rax
    jmp       L1011
L1013:
    mov       rax,	[pc_decls.currprog]
    mov       r10,	[rbp + pc_api.pc_makesymbol.d]
    mov       [r10+32],	rax
L1011:
    mov       rcx,	[rbp + pc_api.pc_makesymbol.d]
    call      pc_api.pc_addsymbol
    mov       rax,	[rbp + pc_api.pc_makesymbol.d]
L1006:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getfullname
pc_api.getfullname:
;>>
    %define pc_api.getfullname.d 16
    %define pc_api.getfullname.backtick 24
    %define pc_api.getfullname.chain -128
    %define pc_api.getfullname.n -136
    %define pc_api.getfullname.e -144
    %define pc_api.getfullname.i -152
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	192
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       eax,	eax
    mov       [rbp + pc_api.getfullname.n],	rax
    mov       rax,	[rbp + pc_api.getfullname.d]
    mov       [rbp + pc_api.getfullname.e],	rax
    movzx     rax,	byte [mc_decls.fpshortnames]
    test      rax,	rax
    jz        L1016
    mov       rax,	[rbp + pc_api.getfullname.d]
    mov       r10,	[rax]
    mov       rax,	r10
    jmp       L1014
L1016:
L1015:
    mov       rax,	[rbp + pc_api.getfullname.d]
    movzx     r10,	byte [rax+56]
    test      r10,	r10
    jz        L1018
    mov       rax,	[rbp + pc_api.getfullname.backtick]
    test      rax,	rax
    jz        L1020
    lea       rcx,	[pc_api.getfullname.str]
    lea       rdx,	[rel L5516]
    call      strcpy
    mov       rax,	[rbp + pc_api.getfullname.d]
    mov       r10,	[rax]
    lea       rcx,	[pc_api.getfullname.str]
    mov       rdx,	r10
    call      strcat
    lea       rcx,	[pc_api.getfullname.str]
    lea       rdx,	[rel L5517]
    call      strcat
    jmp       L1019
L1020:
    mov       rax,	[rbp + pc_api.getfullname.d]
    mov       r10,	[rax]
    lea       rcx,	[pc_api.getfullname.str]
    mov       rdx,	r10
    call      strcpy
L1019:
    lea       rax,	[pc_api.getfullname.str]
    jmp       L1014
L1018:
L1017:
L1021:
    inc       qword [rbp + pc_api.getfullname.n]
    mov       rax,	[rbp + pc_api.getfullname.n]
    mov       r10,	[rbp + pc_api.getfullname.e]
    mov       [rbp + rax*8 + pc_api.getfullname.chain-8],	r10
    mov       rax,	[rbp + pc_api.getfullname.e]
    mov       r10,	[rax+32]
    mov       [rbp + pc_api.getfullname.e],	r10
L1022:
    mov       rax,	[rbp + pc_api.getfullname.e]
    cmp       rax,	0
    jnz       L1021
L1023:
    mov       rax,	[rbp + pc_api.getfullname.backtick]
    test      rax,	rax
    jz        L1025
    lea       rcx,	[pc_api.getfullname.str]
    lea       rdx,	[rel L5518]
    call      strcpy
    jmp       L1024
L1025:
    xor       eax,	eax
    mov       [pc_api.getfullname.str],	al
L1024:
    mov       rax,	[rbp + pc_api.getfullname.n]
    mov       r10,	[rbp + rax*8 + pc_api.getfullname.chain-8]
    mov       rax,	[r10]
    lea       rcx,	[pc_api.getfullname.str]
    mov       rdx,	rax
    call      strcat
    mov       rax,	[rbp + pc_api.getfullname.n]
    sub       rax,	1
    mov       [rbp + pc_api.getfullname.i],	rax
    mov       rax,	[rbp + pc_api.getfullname.i]
    cmp       rax,	1
    jl        L1028
L1026:
    lea       rcx,	[pc_api.getfullname.str]
    lea       rdx,	[rel L5519]
    call      strcat
    mov       rax,	[rbp + pc_api.getfullname.i]
    mov       r10,	[rbp + rax*8 + pc_api.getfullname.chain-8]
    mov       rax,	[r10]
    lea       rcx,	[pc_api.getfullname.str]
    mov       rdx,	rax
    call      strcat
L1027:
    mov       rax,	[rbp + pc_api.getfullname.i]
    dec       rax
    mov       [rbp + pc_api.getfullname.i],	rax
    cmp       rax,	1
    jge       L1026
L1028:
    lea       rax,	[pc_api.getfullname.str]
L1014:
;---------------
    add       rsp,	192
    pop       rbp
    ret       
;End 
;Proc pcerrorstop
pc_api.pcerrorstop:
;>>
    %define pc_api.pcerrorstop.filename 16
    %define pc_api.pcerrorstop.lineno 24
    %define pc_api.pcerrorstop.f -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rel L5520]
    lea       rdx,	[rel L5521]
    call      fopen
    mov       [rbp + pc_api.pcerrorstop.f],	rax
    mov       rcx,	[rbp + pc_api.pcerrorstop.f]
    call      msys.m$print_startfile
    mov       rcx,	[rbp + pc_api.pcerrorstop.filename]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_api.pcerrorstop.lineno]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_api.pcerrorstop.f]
    call      fclose
    mov       rcx,	1
    call      exit
L1029:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pc_addplib
pc_api.pc_addplib:
pc_addplib:
;>>
    %define pc_api.pc_addplib.name 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_decls.nplibfiles]
    cmp       rax,	50
    jl        L1032
    lea       rcx,	[rel L5522]
    call      pc_api.perror
L1032:
L1031:
    inc       qword [pc_decls.nplibfiles]
    mov       rax,	[pc_decls.nplibfiles]
    mov       r10,	[rbp + pc_api.pc_addplib.name]
    lea       r11,	[pc_decls.plibfiles]
    mov       [r11 + rax*8-8],	r10
L1030:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pc_defproc
pc_api.pc_defproc:
pc_defproc:
;>>
    %define pc_api.pc_defproc.d 16
    %define pc_api.pc_defproc.mode 24
    %define pc_api.pc_defproc.threaded 32
    %define pc_api.pc_defproc.$T1 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[pc_decls.currfunc]
    test      rax,	rax
    jz        L1035
    lea       rcx,	[rel L5523]
    call      pc_api.pclerror
L1035:
L1034:
    mov       rcx,	[rbp + pc_api.pc_defproc.d]
    call      pc_api.genmem
    mov       [rbp + pc_api.pc_defproc.$T1],	rax
    mov       rax,	[rbp + pc_api.pc_defproc.threaded]
    test      rax,	rax
    jz        L1037
    mov       rax,	120
    jmp       L1036
L1037:
    mov       rax,	119
L1036:
    mov       rcx,	rax
    mov       rdx,	[rbp + pc_api.pc_defproc.$T1]
    call      pc_api.pc_gen
    mov       rax,	[rbp + pc_api.pc_defproc.mode]
    cmp       rax,	0
    jnz       L1039
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    movzx     r10,	byte [rax+58]
    mov       [rbp + pc_api.pc_defproc.mode],	r10
L1039:
L1038:
    mov       rcx,	[rbp + pc_api.pc_defproc.mode]
    xor       edx,	edx
    call      pc_api.pc_setmode
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    mov       r10,	[rax+40]
    test      r10,	r10
    jz        L1041
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    mov       r10,	[rax]
    lea       rcx,	[rel L5524]
    mov       rdx,	r10
    call      pc_api.addstr
    mov       rcx,	rax
    call      pc_api.pclerror
L1041:
L1040:
    mov       rax,	[pc_api.pccurr]
    mov       r10,	[rbp + pc_api.pc_defproc.d]
    mov       [r10+40],	rax
    mov       rax,	[pc_decls.entryproc]
    cmp       rax,	0
    jnz       L1043
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    mov       r10,	[rax]
    mov       rcx,	r10
    lea       rdx,	[rel L5525]
    call      mlib.eqstring
    test      rax,	rax
    jz        L1043
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    mov       [pc_decls.entryproc],	rax
L1043:
L1042:
    mov       rax,	[rbp + pc_api.pc_defproc.d]
    mov       [pc_decls.currfunc],	rax
L1033:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pc_addparam
pc_api.pc_addparam:
pc_addparam:
;>>
    %define pc_api.pc_addparam.d 16
    %define pc_api.pc_addparam.p -8
    %define pc_api.pc_addparam.q -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_decls.currfunc]
    mov       [rbp + pc_api.pc_addparam.p],	rax
    mov       rax,	[rbp + pc_api.pc_addparam.p]
    test      rax,	rax
    jnz       L1046
    lea       rcx,	[rel L5526]
    call      pc_api.pclerror
L1046:
L1045:
    mov       rax,	[rbp + pc_api.pc_addparam.p]
    mov       r10,	[rax+16]
    mov       [rbp + pc_api.pc_addparam.q],	r10
    mov       rax,	[rbp + pc_api.pc_addparam.q]
    cmp       rax,	0
    jnz       L1048
    mov       rax,	[rbp + pc_api.pc_addparam.d]
    mov       r10,	[rbp + pc_api.pc_addparam.p]
    mov       [r10+16],	rax
    jmp       L1047
L1048:
    jmp       L1050
L1049:
    mov       rax,	[rbp + pc_api.pc_addparam.q]
    mov       r10,	[rax+16]
    mov       [rbp + pc_api.pc_addparam.q],	r10
L1050:
    mov       rax,	[rbp + pc_api.pc_addparam.q]
    mov       r10,	[rax+16]
    test      r10,	r10
    jnz       L1049
L1051:
    mov       rax,	[rbp + pc_api.pc_addparam.d]
    mov       r10,	[rbp + pc_api.pc_addparam.q]
    mov       [r10+16],	rax
L1047:
    mov       rax,	[pc_decls.currfunc]
    lea       rax,	[rax+97]
    inc       byte [rax]
L1044:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pc_addlocal
pc_api.pc_addlocal:
pc_addlocal:
;>>
    %define pc_api.pc_addlocal.d 16
    %define pc_api.pc_addlocal.p -8
    %define pc_api.pc_addlocal.q -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_decls.currfunc]
    mov       [rbp + pc_api.pc_addlocal.p],	rax
    mov       rax,	[rbp + pc_api.pc_addlocal.p]
    test      rax,	rax
    jnz       L1054
    lea       rcx,	[rel L5526]
    call      pc_api.pclerror
L1054:
L1053:
    mov       rax,	[rbp + pc_api.pc_addlocal.p]
    mov       r10,	[rax+24]
    mov       [rbp + pc_api.pc_addlocal.q],	r10
    mov       rax,	[rbp + pc_api.pc_addlocal.q]
    cmp       rax,	0
    jnz       L1056
    mov       rax,	[rbp + pc_api.pc_addlocal.d]
    mov       r10,	[rbp + pc_api.pc_addlocal.p]
    mov       [r10+24],	rax
    jmp       L1055
L1056:
    jmp       L1058
L1057:
    mov       rax,	[rbp + pc_api.pc_addlocal.q]
    mov       r10,	[rax+24]
    mov       [rbp + pc_api.pc_addlocal.q],	r10
L1058:
    mov       rax,	[rbp + pc_api.pc_addlocal.q]
    mov       r10,	[rax+24]
    test      r10,	r10
    jnz       L1057
L1059:
    mov       rax,	[rbp + pc_api.pc_addlocal.d]
    mov       r10,	[rbp + pc_api.pc_addlocal.q]
    mov       [r10+24],	rax
L1055:
    mov       rax,	[pc_decls.currfunc]
    lea       rax,	[rax+100]
    inc       word [rax]
L1052:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pc_endproc
pc_api.pc_endproc:
pc_endproc:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[pc_decls.currfunc]
    test      rax,	rax
    jnz       L1062
    lea       rcx,	[rel L5526]
    call      pc_api.pclerror
L1062:
L1061:
    mov       rcx,	121
    xor       edx,	edx
    call      pc_api.pc_gen
    xor       eax,	eax
    mov       [pc_decls.currfunc],	rax
L1060:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc addstr
pc_api.addstr:
addstr:
;>>
    %define pc_api.addstr.s 16
    %define pc_api.addstr.t 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[pc_api.addstr.str]
    mov       rdx,	[rbp + pc_api.addstr.s]
    call      strcpy
    lea       rcx,	[pc_api.addstr.str]
    mov       rdx,	[rbp + pc_api.addstr.t]
    call      strcat
    lea       rax,	[pc_api.addstr.str]
L1063:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc strpcl
pc_diags.strpcl:
;>>
    %define pc_diags.strpcl.p 16
    %define pc_diags.strpcl.pmodestr -256
    %define pc_diags.strpcl.str -512
    %define pc_diags.strpcl.opcode -520
    %define pc_diags.strpcl.defused -528
    %define pc_diags.strpcl.s -536
    %define pc_diags.strpcl.d -544
    %define pc_diags.strpcl.e -552
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	592
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax]
    mov       [rbp + pc_diags.strpcl.opcode],	r10
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       rcx,	r10
    lea       rdx,	[rel L5527]
    call      msys.strint
    mov       rcx,	rax
    call      pc_diags.psstr
    lea       rcx,	[rel L5528]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.opcode]
    cmp       rax,	125
    jz        L1066
    cmp       rax,	126
    jz        L1067
    cmp       rax,	133
    jz        L1068
    cmp       rax,	119
    jz        L1069
    cmp       rax,	120
    jz        L1069
    cmp       rax,	121
    jz        L1070
    cmp       rax,	134
    jz        L1071
    cmp       rax,	124
    jz        L1072
    cmp       rax,	122
    jz        L1073
    cmp       rax,	123
    jz        L1073
    jmp       L1074
L1066:
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rdx,	1
    call      pc_diags.strlabel
    jmp       L1064
L1067:
    lea       rcx,	[rel L5529]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    mov       rax,	[r10]
    mov       rcx,	rax
    call      pc_diags.psstr
    lea       rcx,	[rel L5530]
    call      pc_diags.psstr
    jmp       L1064
L1068:
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    movzx     rax,	byte [r10]
    test      rax,	rax
    jz        L1076
    lea       rcx,	[rel L5531]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      pc_diags.psstr
L1076:
L1075:
    jmp       L1064
L1069:
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_diags.strpcl.d],	r10
    mov       rax,	[rbp + pc_diags.strpcl.opcode]
    cmp       rax,	120
    jnz       L1078
    lea       rcx,	[rel L5532]
    call      pc_diags.psstr
    jmp       L1077
L1078:
    lea       rcx,	[rel L5533]
    call      pc_diags.psstr
L1077:
    lea       rcx,	[rel L5534]
    call      pc_diags.psstr
    mov       rcx,	[rbp + pc_diags.strpcl.d]
    call      pc_diags.psname
    mov       rax,	[rbp + pc_diags.strpcl.d]
    mov       r10,	[rax+16]
    mov       [rbp + pc_diags.strpcl.e],	r10
    lea       rcx,	[rel L5535]
    call      pc_diags.psstr
    jmp       L1082
L1079:
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10d,	[rax+60]
    mov       rax,	[rbp + pc_diags.strpcl.e]
    movzx     r11,	byte [rax+58]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_api.strpmode
    mov       rcx,	rax
    call      pc_diags.psstr
    lea       rcx,	[rel L5536]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10,	[rax+16]
    test      r10,	r10
    jz        L1084
    lea       rcx,	[rel L5537]
    call      pc_diags.psstr
L1084:
L1083:
L1080:
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10,	[rax+16]
    mov       [rbp + pc_diags.strpcl.e],	r10
L1082:
    mov       rax,	[rbp + pc_diags.strpcl.e]
    test      rax,	rax
    jnz       L1079
L1081:
    lea       rcx,	[rel L5538]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jz        L1086
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	r10
    xor       edx,	edx
    call      pc_api.strpmode
    mov       rcx,	rax
    call      pc_diags.psstr
L1086:
L1085:
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10,	[rax+8]
    movzx     rax,	byte [r10+57]
    test      rax,	rax
    jz        L1088
    lea       rax,	[rel L5539]
    jmp       L1087
L1088:
    lea       rax,	[rel L5540]
L1087:
    mov       rcx,	rax
    call      pc_diags.psstr
    call      pc_diags.psline
    mov       rax,	[rbp + pc_diags.strpcl.d]
    mov       r10,	[rax+24]
    mov       [rbp + pc_diags.strpcl.e],	r10
    jmp       L1092
L1089:
    lea       rcx,	[rel L5541]
    call      pc_diags.psstr
    lea       rcx,	[rel L5542]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10d,	[rax+60]
    mov       rax,	[rbp + pc_diags.strpcl.e]
    movzx     r11,	byte [rax+58]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_api.strpmode
    mov       rcx,	rax
    call      pc_diags.psstr
    lea       rcx,	[rel L5543]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      pc_diags.psstr
    call      pc_diags.psline
L1090:
    mov       rax,	[rbp + pc_diags.strpcl.e]
    mov       r10,	[rax+24]
    mov       [rbp + pc_diags.strpcl.e],	r10
L1092:
    mov       rax,	[rbp + pc_diags.strpcl.e]
    test      rax,	rax
    jnz       L1089
L1091:
    jmp       L1064
L1070:
    lea       rcx,	[rel L5544]
    call      pc_diags.psstr
    jmp       L1064
L1071:
    lea       rcx,	[rel L5545]
    call      pc_diags.psstr
    jmp       L1064
L1072:
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jnz       L1094
    mov       rcx,	[rbp + pc_diags.strpcl.p]
    call      pc_diags.psdata
    jmp       L1064
L1094:
L1093:
    jmp       L1065
L1073:
    jmp       L1095
L1074:
L1065:
    lea       rcx,	[rel L5546]
    call      pc_diags.psstr
;skiptab:
L1095:
    mov       rax,	[rbp + pc_diags.strpcl.opcode]
    cmp       rax,	25
    jz        L1097
    cmp       rax,	30
    jz        L1098
    jmp       L1099
L1097:
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    lea       rdx,	[rel L5547]
    call      strcpy
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[pc_tables.ccnames]
    mov       r11,	[rax + r10*8]
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    mov       rdx,	r11
    call      strcat
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movsxd    r10,	dword [rax+16]
    test      r10,	r10
    jz        L1101
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    lea       rdx,	[rel L5548]
    call      strcat
L1101:
L1100:
    jmp       L1096
L1098:
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    lea       rdx,	[rel L5549]
    call      strcpy
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[pc_tables.ccnames]
    mov       r11,	[rax + r10*8]
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    mov       rdx,	r11
    call      strcat
    jmp       L1096
L1099:
    lea       rax,	[pc_tables.pclnames]
    mov       r10,	[rbp + pc_diags.strpcl.opcode]
    mov       r11,	[rax + r10*8]
    lea       rcx,	[rbp + pc_diags.strpcl.str]
    mov       rdx,	r11
    call      strcpy
L1096:
    mov       rcx,	[pc_diags.dest]
    lea       rdx,	[rbp + pc_diags.strpcl.str]
    mov       r8,	9
    mov       r9,	32
    call      mlib.gs_leftstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	0
    jz        L1103
    lea       rcx,	[rel L5550]
    call      pc_diags.psstr
    mov       rcx,	[rbp + pc_diags.strpcl.p]
    call      pc_diags.stropnd
    mov       rcx,	rax
    call      pc_diags.psstr
L1103:
L1102:
    mov       rcx,	40
    call      pc_diags.pstabto
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r10,	byte [rax+3]
    test      r10,	r10
    jz        L1105
    mov       rax,	[rbp + pc_diags.strpcl.p]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movzx     r11,	byte [rax+3]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_api.strpmode
    mov       rcx,	rax
    call      pc_diags.psstr
    lea       rax,	[pc_tables.pclhastype]
    mov       r10,	[rbp + pc_diags.strpcl.opcode]
    movzx     r11,	byte [rax + r10]
    cmp       r11,	2
    jnz       L1107
    lea       rcx,	[rel L5551]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	r10
    xor       edx,	edx
    call      pc_api.strpmode
    mov       rcx,	rax
    call      pc_diags.psstr
L1107:
L1106:
    jmp       L1104
L1105:
    lea       rcx,	[rel L5552]
    call      pc_diags.psstr
L1104:
    lea       rax,	[pc_tables.pclextra]
    mov       r10,	[rbp + pc_diags.strpcl.opcode]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1109
    mov       rax,	[rbp + pc_diags.strpcl.opcode]
    cmp       rax,	25
    jz        L1109
    lea       rcx,	[rel L5553]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    call      pc_diags.psint
    lea       rax,	[pc_tables.pclextra]
    mov       r10,	[rbp + pc_diags.strpcl.opcode]
    movzx     r11,	byte [rax + r10]
    cmp       r11,	2
    jnz       L1111
    lea       rcx,	[rel L5554]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.strpcl.p]
    movsxd    r10,	dword [rax+20]
    mov       rcx,	r10
    call      pc_diags.psint
L1111:
L1110:
    lea       rcx,	[rel L5555]
    call      pc_diags.psstr
L1109:
L1108:
    mov       rax,	[rbp + pc_diags.strpcl.opcode]
    cmp       rax,	132
    jnz       L1113
    lea       rcx,	[rel L5556]
    call      pc_diags.psstr
L1113:
L1112:
L1064:
;---------------
    add       rsp,	592
    pop       rbp
    ret       
;End 
;Proc stropnd
pc_diags.stropnd:
;>>
    %define pc_diags.stropnd.p 16
    %define pc_diags.stropnd.length -8
    %define pc_diags.stropnd.d -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_diags.stropnd.p]
    cmp       rax,	0
    jnz       L1116
    lea       rax,	[rel L5557]
    jmp       L1114
L1116:
L1115:
    xor       eax,	eax
    mov       [pc_diags.stropnd.str],	al
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jz        L1118
    cmp       r10,	5
    jz        L1119
    cmp       r10,	6
    jz        L1120
    cmp       r10,	10
    jz        L1121
    cmp       r10,	11
    jz        L1121
    cmp       r10,	7
    jz        L1122
    cmp       r10,	1
    jz        L1123
    cmp       r10,	2
    jz        L1124
    cmp       r10,	3
    jz        L1125
    cmp       r10,	0
    jz        L1126
    cmp       r10,	9
    jz        L1127
    cmp       r10,	12
    jz        L1128
    jmp       L1129
L1118:
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.strint
    jmp       L1114
L1119:
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movq      XMM4,	[rax+8]
    comisd    XMM4,	[rel L5558]
    jnz       L1131
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5559]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movq      XMM4,	[rax+8]
    movq      rax,	XMM4
    mov       rcx,	rax
    lea       rdx,	[rel L5560]
    call      msys.m$print_u64
    call      msys.m$print_end
    jmp       L1130
L1131:
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    lea       rdx,	[rel L5561]
    call      msys.m$print_r64
    call      msys.m$print_end
L1130:
    jmp       L1117
L1120:
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    xor       edx,	edx
    call      msys.m$print_r64
    call      msys.m$print_end
    jmp       L1117
L1121:
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    xor       edx,	edx
    call      msys.m$print_r64
    lea       rcx,	[rel L5562]
    call      msys.m$print_str_nf
    call      msys.m$print_end
    jmp       L1117
L1122:
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      strlen
    mov       [rbp + pc_diags.stropnd.length],	rax
    cmp       rax,	256
    jge       L1133
    lea       rcx,	[pc_diags.stropnd.str]
    lea       rdx,	[rel L5563]
    call      strcpy
    lea       rax,	[pc_diags.stropnd.str]
    lea       rax,	[rax+1]
    mov       r10,	[rbp + pc_diags.stropnd.p]
    mov       r11,	[r10+8]
    mov       rcx,	r11
    mov       rdx,	rax
    call      pc_diags.convertstring
    lea       rcx,	[pc_diags.stropnd.str]
    lea       rdx,	[rel L5563]
    call      strcat
    jmp       L1132
L1133:
    lea       rax,	[rel L5564]
    jmp       L1114
L1132:
    jmp       L1117
L1123:
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_diags.stropnd.d],	r10
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      pc_api.getfullname
    lea       rcx,	[pc_diags.stropnd.str]
    mov       rdx,	rax
    call      strcat
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movzx     r10,	byte [rax]
    cmp       r10,	122
    jz        L1136
    cmp       r10,	123
    jnz       L1135
L1136:
    lea       rcx,	[pc_diags.stropnd.str]
    lea       rdx,	[rel L5565]
    call      strcat
    mov       rax,	[rbp + pc_diags.stropnd.d]
    movzx     r10,	byte [rax+57]
    test      r10,	r10
    jz        L1138
    lea       rcx,	[pc_diags.stropnd.str]
    lea       rdx,	[rel L5565]
    call      strcat
L1138:
L1137:
L1135:
L1134:
    jmp       L1117
L1124:
    lea       rcx,	[pc_diags.stropnd.str]
    lea       rdx,	[rel L5566]
    call      strcpy
    jmp       L1123
L1125:
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5567]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    call      msys.m$print_end
    jmp       L1117
L1126:
    lea       rax,	[rel L5568]
    jmp       L1114
L1127:
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.strint
    jmp       L1114
L1128:
    lea       rcx,	[pc_diags.stropnd.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5569]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10d,	[rax+4]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    mov       rax,	[rbp + pc_diags.stropnd.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_end
    jmp       L1117
L1129:
    call      msys.m$print_startcon
    mov       rax,	[rbp + pc_diags.stropnd.p]
    movzx     r10,	byte [rax+1]
    lea       rax,	[pc_tables.opndnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rax,	[rel L5570]
    jmp       L1114
L1117:
    lea       rax,	[pc_diags.stropnd.str]
L1114:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc strpclstr
pc_diags.strpclstr:
;>>
    %define pc_diags.strpclstr.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_free
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_init
    xor       eax,	eax
    mov       [pc_diags.destlinestart],	rax
    mov       rcx,	[rbp + pc_diags.strpclstr.p]
    call      pc_diags.strpcl
    mov       rcx,	[pc_diags.dest]
    xor       edx,	edx
    call      mlib.gs_char
    mov       rax,	[pc_diags.dest]
    mov       r10,	[rax]
    mov       rax,	r10
L1139:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc writepcl
pc_diags.writepcl:
;>>
    %define pc_diags.writepcl.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_diags.writepcl.p]
    movzx     r10,	byte [rax]
    cmp       r10,	130
    jz        L1142
    cmp       r10,	129
    jz        L1142
    jmp       L1143
L1142:
    jmp       L1140
L1143:
L1141:
    mov       rcx,	[rbp + pc_diags.writepcl.p]
    call      pc_diags.strpcl
    mov       rax,	[rbp + pc_diags.writepcl.p]
    movzx     r10,	byte [rax]
    cmp       r10,	119
    jz        L1145
    cmp       r10,	4
    jz        L1146
    cmp       r10,	5
    jz        L1146
    cmp       r10,	6
    jz        L1146
    cmp       r10,	132
    jz        L1146
    jmp       L1147
L1145:
    jmp       L1144
L1146:
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_line
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_line
    jmp       L1144
L1147:
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_line
L1144:
L1140:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc writeallpcl
pc_diags.writeallpcl:
;>>
    %define pc_diags.writeallpcl.p -8
    %define pc_diags.writeallpcl.d -16
    %define pc_diags.writeallpcl.e -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_init
    mov       rax,	[pc_diags.dest]
    movsxd    r10,	dword [rax+8]
    mov       [pc_diags.destlinestart],	r10
    mov       rax,	[pc_api.pcstart]
    mov       [rbp + pc_diags.writeallpcl.p],	rax
    jmp       L1150
L1149:
    mov       rcx,	[rbp + pc_diags.writeallpcl.p]
    call      pc_diags.writepcl
    mov       rax,	[pc_diags.dest]
    movsxd    r10,	dword [rax+8]
    mov       [pc_diags.destlinestart],	r10
    add       qword [rbp + pc_diags.writeallpcl.p],	32
L1150:
    mov       rax,	[rbp + pc_diags.writeallpcl.p]
    cmp       rax,	[pc_api.pccurr]
    jbe       L1149
L1151:
    call      pc_diags.psline
    mov       rax,	[pc_api.longstring]
    test      rax,	rax
    jz        L1153
    mov       rcx,	[pc_api.longstring]
    mov       rdx,	[pc_api.longstringlen]
    call      mlib.pcm_free
L1153:
L1152:
    mov       rax,	[pc_diags.dest]
L1148:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc psstr
pc_diags.psstr:
;>>
    %define pc_diags.psstr.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[pc_diags.dest]
    mov       rdx,	[rbp + pc_diags.psstr.s]
    call      mlib.gs_str
L1154:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psstrline
pc_diags.psstrline:
;>>
    %define pc_diags.psstrline.s 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[pc_diags.dest]
    mov       rdx,	[rbp + pc_diags.psstrline.s]
    call      mlib.gs_str
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_line
L1155:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psline
pc_diags.psline:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rcx,	[pc_diags.dest]
    call      mlib.gs_line
L1156:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psint
pc_diags.psint:
;>>
    %define pc_diags.psint.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_diags.psint.a]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[pc_diags.dest]
    mov       rdx,	rax
    call      mlib.gs_str
L1157:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psname
pc_diags.psname:
;>>
    %define pc_diags.psname.d 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_diags.psname.d]
    mov       r10,	[rax]
    mov       rcx,	[pc_diags.dest]
    mov       rdx,	r10
    call      mlib.gs_str
L1158:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pstabto
pc_diags.pstabto:
;>>
    %define pc_diags.pstabto.n 16
    %define pc_diags.pstabto.col -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[pc_diags.dest]
    movsxd    r10,	dword [rax+8]
    sub       r10,	[pc_diags.destlinestart]
    mov       [rbp + pc_diags.pstabto.col],	r10
    jmp       L1161
L1160:
    lea       rcx,	[rel L5571]
    call      pc_diags.psstr
    inc       qword [rbp + pc_diags.pstabto.col]
L1161:
    mov       rax,	[rbp + pc_diags.pstabto.n]
    cmp       rax,	[rbp + pc_diags.pstabto.col]
    jg        L1160
L1162:
L1159:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc strlabel
pc_diags.strlabel:
;>>
    %define pc_diags.strlabel.labelno 16
    %define pc_diags.strlabel.colon 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rcx,	[rel L5572]
    call      pc_diags.psstr
    mov       rcx,	[rbp + pc_diags.strlabel.labelno]
    call      pc_diags.psint
    mov       rax,	[rbp + pc_diags.strlabel.colon]
    test      rax,	rax
    jz        L1165
    lea       rcx,	[rel L5573]
    call      pc_diags.psstr
L1165:
L1164:
    lea       rcx,	[rel L5574]
    call      pc_diags.psstr
L1163:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psopnd
pc_diags.psopnd:
;>>
    %define pc_diags.psopnd.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + pc_diags.psopnd.p]
    call      pc_diags.stropnd
    mov       rcx,	rax
    call      pc_diags.psstr
L1166:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc psdata
pc_diags.psdata:
;>>
    %define pc_diags.psdata.p 16
    %define pc_diags.psdata.n -8
    %define pc_diags.psdata.m -16
    %define pc_diags.psdata.q -24
    %define pc_diags.psdata.av_1 -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_diags.psdata.p]
    mov       r10d,	[rax+4]
    mov       [rbp + pc_diags.psdata.n],	r10
    mov       rax,	[rbp + pc_diags.psdata.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_diags.psdata.q],	r10
    mov       rax,	[rbp + pc_diags.psdata.n]
    cmp       rax,	0
    jnz       L1169
    jmp       L1167
L1169:
L1168:
    jmp       L1171
L1170:
    mov       rax,	[rbp + pc_diags.psdata.n]
    mov       [rbp + pc_diags.psdata.m],	rax
    mov       rax,	[rbp + pc_diags.psdata.m]
    cmp       rax,	20
    jl        L1174
    mov       rax,	20
    mov       [rbp + pc_diags.psdata.m],	rax
L1174:
L1173:
    mov       rax,	[rbp + pc_diags.psdata.m]
    sub       [rbp + pc_diags.psdata.n],	rax
    lea       rcx,	[rel L5575]
    call      pc_diags.psstr
    mov       rcx,	[rbp + pc_diags.psdata.m]
    call      pc_diags.psint
    lea       rcx,	[rel L5576]
    call      pc_diags.psstr
    mov       rax,	[rbp + pc_diags.psdata.m]
    cmp       rax,	10
    jge       L1176
    lea       rcx,	[rel L5577]
    call      pc_diags.psstr
L1176:
L1175:
    mov       rax,	[rbp + pc_diags.psdata.m]
    mov       [rbp + pc_diags.psdata.av_1],	rax
    mov       rax,	[rbp + pc_diags.psdata.av_1]
    cmp       rax,	0
    jle       L1179
L1177:
    mov       rax,	[rbp + pc_diags.psdata.q]
    movzx     r10,	byte [rax]
    mov       rcx,	r10
    call      pc_diags.psint
    lea       rcx,	[rel L5577]
    call      pc_diags.psstr
    inc       qword [rbp + pc_diags.psdata.q]
L1178:
    dec       qword [rbp + pc_diags.psdata.av_1]
    jnz       L1177
L1179:
    call      pc_diags.psline
L1171:
    mov       rax,	[rbp + pc_diags.psdata.n]
    cmp       rax,	0
    jg        L1170
L1172:
L1167:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc convertstring
pc_diags.convertstring:
;>>
    %define pc_diags.convertstring.s 16
    %define pc_diags.convertstring.t 24
    %define pc_diags.convertstring.c -8
    %define pc_diags.convertstring.t0 -16
    %define pc_diags.convertstring.str -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_diags.convertstring.t]
    mov       [rbp + pc_diags.convertstring.t0],	rax
    jmp       L1182
L1181:
    mov       rax,	[rbp + pc_diags.convertstring.c]
    cmp       rax,	34
    jz        L1185
    cmp       rax,	10
    jz        L1186
    cmp       rax,	13
    jz        L1187
    cmp       rax,	9
    jz        L1188
    cmp       rax,	92
    jz        L1189
    cmp       rax,	7
    jz        L1190
    cmp       rax,	8
    jz        L1190
    cmp       rax,	26
    jz        L1190
    cmp       rax,	27
    jz        L1190
    jmp       L1191
L1185:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	34
    mov       [rax],	r10b
    jmp       L1184
L1186:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	110
    mov       [rax],	r10b
    jmp       L1184
L1187:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	99
    mov       [rax],	r10b
    jmp       L1184
L1188:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	116
    mov       [rax],	r10b
    jmp       L1184
L1189:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    jmp       L1184
L1190:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	60
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.c]
    mov       r10,	10
    cqo       
    idiv      r10
    add       rax,	48
    mov       r10,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       [r10],	al
    mov       rax,	[rbp + pc_diags.convertstring.c]
    mov       r10,	10
    cqo       
    idiv      r10
    xchg      rax,	rdx
    add       rax,	48
    mov       r10,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       [r10],	al
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	62
    mov       [rax],	r10b
    jmp       L1184
L1191:
    mov       rax,	[rbp + pc_diags.convertstring.c]
    cmp       rax,	32
    jl        L1193
    cmp       rax,	126
    jg        L1193
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	[rbp + pc_diags.convertstring.c]
    mov       [rax],	r10b
    jmp       L1192
L1193:
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	92
    mov       [rax],	r10b
    mov       rax,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       r10b,	120
    mov       [rax],	r10b
    lea       rcx,	[rbp + pc_diags.convertstring.str]
    call      msys.m$print_startstr
    mov       rcx,	[rbp + pc_diags.convertstring.c]
    lea       rdx,	[rel L5578]
    call      msys.m$print_i64
    call      msys.m$print_end
    movzx     rax,	byte [rbp + pc_diags.convertstring.str]
    mov       r10,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       [r10],	al
    movzx     rax,	byte [rbp + pc_diags.convertstring.str+1]
    mov       r10,	[rbp + pc_diags.convertstring.t]
    inc       qword [rbp + pc_diags.convertstring.t]
    mov       [r10],	al
L1192:
L1184:
L1182:
    mov       rax,	[rbp + pc_diags.convertstring.s]
    inc       qword [rbp + pc_diags.convertstring.s]
    movzx     r10,	byte [rax]
    mov       [rbp + pc_diags.convertstring.c],	r10
    test      r10,	r10
    jnz       L1181
L1183:
    xor       eax,	eax
    mov       r10,	[rbp + pc_diags.convertstring.t]
    mov       [r10],	al
    mov       rax,	[rbp + pc_diags.convertstring.t]
    sub       rax,	[rbp + pc_diags.convertstring.t0]
L1180:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc fullname
pc_diags.fullname:
;>>
    %define pc_diags.fullname.dest 16
    %define pc_diags.fullname.d 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_diags.fullname.d]
    mov       r10,	[rax+32]
    test      r10,	r10
    jz        L1196
    mov       rax,	[rbp + pc_diags.fullname.d]
    mov       r10,	[rax+32]
    mov       rcx,	[rbp + pc_diags.fullname.dest]
    mov       rdx,	r10
    call      pc_diags.fullname
    mov       rcx,	[rbp + pc_diags.fullname.dest]
    lea       rdx,	[rel L5579]
    call      strcat
L1196:
L1195:
    mov       rax,	[rbp + pc_diags.fullname.d]
    mov       r10,	[rax]
    mov       rcx,	[rbp + pc_diags.fullname.dest]
    mov       rdx,	r10
    call      strcat
L1194:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcl_writepst
pc_diags.pcl_writepst:
pcl_writepst:
;>>
    %define pc_diags.pcl_writepst.f 16
    %define pc_diags.pcl_writepst.localfile -8
    %define pc_diags.pcl_writepst.str -264
    %define pc_diags.pcl_writepst.d -272
    %define pc_diags.pcl_writepst.i -280
    %define pc_diags.pcl_writepst.av_1 -288
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	320
    mov       [rbp+16],	rcx
;---------------
    xor       eax,	eax
    mov       [rbp + pc_diags.pcl_writepst.localfile],	al
    xor       eax,	eax
    mov       [rbp + pc_diags.pcl_writepst.i],	rax
    mov       rax,	[rbp + pc_diags.pcl_writepst.f]
    cmp       rax,	0
    jnz       L1199
    lea       rcx,	[rel L5580]
    lea       rdx,	[rel L5581]
    call      fopen
    mov       [rbp + pc_diags.pcl_writepst.f],	rax
    mov       al,	1
    mov       [rbp + pc_diags.pcl_writepst.localfile],	al
L1199:
L1198:
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5582]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rax,	[pc_decls.psymboltable]
    mov       [rbp + pc_diags.pcl_writepst.d],	rax
    jmp       L1203
L1200:
    inc       qword [rbp + pc_diags.pcl_writepst.i]
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    mov       rcx,	[rbp + pc_diags.pcl_writepst.i]
    lea       rdx,	[rel L5583]
    call      msys.m$print_i64
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+49]
    lea       rax,	[pc_tables.idnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_nogap
    lea       rcx,	[rel L5584]
    call      msys.m$print_str_nf
    call      msys.m$print_end
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+49]
    lea       rax,	[pc_tables.idnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      strlen
    mov       r10,	8
    sub       r10,	rax
    mov       [rbp + pc_diags.pcl_writepst.av_1],	r10
    mov       rax,	[rbp + pc_diags.pcl_writepst.av_1]
    cmp       rax,	0
    jle       L1206
L1204:
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5585]
    call      msys.m$print_str_nf
    call      msys.m$print_end
L1205:
    dec       qword [rbp + pc_diags.pcl_writepst.av_1]
    jnz       L1204
L1206:
    xor       eax,	eax
    mov       [rbp + pc_diags.pcl_writepst.str],	al
    lea       rcx,	[rbp + pc_diags.pcl_writepst.str]
    mov       rdx,	[rbp + pc_diags.pcl_writepst.d]
    call      pc_diags.fullname
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rbp + pc_diags.pcl_writepst.str]
    lea       rdx,	[rel L5586]
    call      msys.m$print_str
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    mov       r10d,	[rax+60]
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r11,	byte [rax+58]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_api.strpmode
    mov       rcx,	rax
    call      msys.m$print_str_nf
    call      msys.m$print_end
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	2
    jnz       L1208
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5587]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+97]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movsx     r10,	word [rax+100]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    call      msys.m$print_end
L1208:
L1207:
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+57]
    test      r10,	r10
    jz        L1210
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5588]
    call      msys.m$print_str_nf
    call      msys.m$print_end
L1210:
L1209:
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+56]
    test      r10,	r10
    jz        L1212
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5589]
    call      msys.m$print_str_nf
    call      msys.m$print_end
L1212:
L1211:
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+84]
    test      r10,	r10
    jz        L1214
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5590]
    call      msys.m$print_str_nf
    call      msys.m$print_end
L1214:
L1213:
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    lea       rcx,	[rel L5591]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    movzx     r10,	byte [rax+70]
    lea       rax,	[mc_decls.segmentnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    call      msys.m$print_newline
    call      msys.m$print_end
L1201:
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    mov       r10,	[rax+8]
    mov       [rbp + pc_diags.pcl_writepst.d],	r10
L1203:
    mov       rax,	[rbp + pc_diags.pcl_writepst.d]
    test      rax,	rax
    jnz       L1200
L1202:
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      msys.m$print_startfile
    call      msys.m$print_newline
    call      msys.m$print_end
    movzx     rax,	byte [rbp + pc_diags.pcl_writepst.localfile]
    test      rax,	rax
    jz        L1216
    mov       rcx,	[rbp + pc_diags.pcl_writepst.f]
    call      fclose
L1216:
L1215:
L1197:
;---------------
    add       rsp,	320
    pop       rbp
    ret       
;End 
;Proc stropndstack
pc_diags.stropndstack:
;>>
    %define pc_diags.stropndstack.indent 16
    %define pc_diags.stropndstack.str2 -512
    %define pc_diags.stropndstack.s -520
    %define pc_diags.stropndstack.t -528
    %define pc_diags.stropndstack.fs -536
    %define pc_diags.stropndstack.i -544
    %define pc_diags.stropndstack.r -552
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	592
    mov       [rbp+16],	rcx
;---------------
    lea       rax,	[pc_diags.stropndstack.str]
    mov       [rbp + pc_diags.stropndstack.s],	rax
    mov       rax,	[rbp + pc_diags.stropndstack.indent]
    test      rax,	rax
    jz        L1219
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5592]
    call      msys.m$print_setfmt
    mov       rcx,	[mc_decls.noperands]
    call      msys.m$print_i64_nf
    call      msys.m$print_end
    jmp       L1218
L1219:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5593]
    call      msys.m$print_setfmt
    mov       rcx,	[mc_decls.noperands]
    call      msys.m$print_i64_nf
    call      msys.m$print_end
L1218:
    mov       rax,	1
    mov       [rbp + pc_diags.stropndstack.i],	rax
    mov       rax,	[mc_decls.noperands]
    cmp       rax,	1
    jl        L1222
L1220:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	[rbp + pc_diags.stropndstack.i]
    add       rax,	1
    sub       rax,	1
    cmp       rax,	4
    jae       L1225
    lea       r10,	[rel L1224]
    jmp       [r10 + rax*8]
    segment .data
L1224:
    dq  L1226
    dq  L1227
    dq  L1228
    dq  L1229
    segment .text
L1226:
    lea       rax,	[rel L5594]
    jmp       L1223
L1227:
    lea       rax,	[rel L5595]
    jmp       L1223
L1228:
    lea       rax,	[rel L5596]
    jmp       L1223
L1229:
    lea       rax,	[rel L5597]
    jmp       L1223
L1225:
    lea       rax,	[rel L5598]
L1223:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    lea       rax,	[mc_decls.pclloc]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	1
    jz        L1231
    cmp       r11,	2
    jz        L1232
    jmp       L1233
L1231:
    lea       rax,	[mc_decls.pclmode]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	2
    jg        L1235
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    lea       rax,	[mc_decls.xregnames]
    mov       r10,	[rax + r11*8]
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	r10
    call      strcat
    jmp       L1234
L1235:
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    lea       rax,	[mc_decls.regnames]
    mov       r10,	[rax + r11*8]
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	r10
    call      strcat
L1234:
    jmp       L1230
L1232:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5599]
    call      strcat
    mov       rcx,	[rbp + pc_diags.stropndstack.i]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    jmp       L1230
L1233:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5600]
    call      strcat
    movzx     rax,	byte [mc_decls.fpshortnames]
    mov       [rbp + pc_diags.stropndstack.fs],	rax
    mov       al,	1
    mov       [mc_decls.fpshortnames],	al
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    mov       r11,	[rax + r10*8-8]
    mov       rcx,	r11
    call      pc_diags.stropnd
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    mov       al,	[rbp + pc_diags.stropndstack.fs]
    mov       [mc_decls.fpshortnames],	al
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5601]
    call      strcat
L1230:
    lea       rax,	[mc_decls.pclcount]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	1
    jle       L1237
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5602]
    call      strcat
L1237:
L1236:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5603]
    call      strcat
    lea       rax,	[mc_decls.pclmode]
    mov       r10,	[rbp + pc_diags.stropndstack.i]
    movzx     r11,	byte [rax + r10-1]
    lea       rax,	[pc_tables.pstdnames]
    mov       r10,	[rax + r11*8]
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	r10
    call      strcat
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5604]
    call      strcat
    mov       rax,	[rbp + pc_diags.stropndstack.i]
    cmp       rax,	[mc_decls.noperands]
    jge       L1239
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5605]
    call      strcat
L1239:
L1238:
L1221:
    mov       rax,	[rbp + pc_diags.stropndstack.i]
    inc       rax
    mov       [rbp + pc_diags.stropndstack.i],	rax
    cmp       rax,	[mc_decls.noperands]
    jle       L1220
L1222:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5606]
    call      strcat
    lea       rcx,	[pc_diags.stropndstack.str]
    mov       rdx,	50
    lea       r8,	[rel L5607]
    call      mlib.ipadstr
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5608]
    call      strcat
    mov       rax,	1
    mov       [rbp + pc_diags.stropndstack.r],	rax
L1240:
    lea       rax,	[mc_decls.regset]
    mov       r10,	[rbp + pc_diags.stropndstack.r]
    movzx     r11,	byte [rax + r10-1]
    test      r11,	r11
    jz        L1244
    lea       rax,	[rel L5609]
    jmp       L1243
L1244:
    lea       rax,	[rel L5610]
L1243:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
L1241:
    mov       rax,	[rbp + pc_diags.stropndstack.r]
    inc       rax
    mov       [rbp + pc_diags.stropndstack.r],	rax
    cmp       rax,	5
    jle       L1240
L1242:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5611]
    call      strcat
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5612]
    call      strcat
    mov       rax,	1
    mov       [rbp + pc_diags.stropndstack.r],	rax
L1245:
    lea       rax,	[mc_decls.xregset]
    mov       r10,	[rbp + pc_diags.stropndstack.r]
    movzx     r11,	byte [rax + r10-1]
    test      r11,	r11
    jz        L1249
    lea       rax,	[rel L5613]
    jmp       L1248
L1249:
    lea       rax,	[rel L5614]
L1248:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
L1246:
    mov       rax,	[rbp + pc_diags.stropndstack.r]
    inc       rax
    mov       [rbp + pc_diags.stropndstack.r],	rax
    cmp       rax,	9
    jle       L1245
L1247:
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5615]
    call      strcat
    mov       rcx,	[mc_decls.mstackdepth]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5616]
    call      strcat
    mov       rcx,	[mc_decls.noperands]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    lea       rdx,	[rel L5617]
    call      strcat
    mov       rcx,	[mc_decls.ncalldepth]
    xor       edx,	edx
    call      msys.strint
    mov       rcx,	[rbp + pc_diags.stropndstack.s]
    mov       rdx,	rax
    call      strcat
    mov       rax,	[rbp + pc_diags.stropndstack.s]
L1217:
;---------------
    add       rsp,	592
    pop       rbp
    ret       
;End 
;Proc showopndstack
pc_diags.showopndstack:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rcx,	1
    call      pc_diags.stropndstack
    mov       rcx,	rax
    call      mc_libmcl.mgencomment
L1250:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc dispatch_loop
pc_run.dispatch_loop:
;>>
    %define pc_run.dispatch_loop.pcentry 16
    %define pc_run.dispatch_loop.cmain 24
    %define pc_run.dispatch_loop.pc -8
    %define pc_run.dispatch_loop.sp -16
    %define pc_run.dispatch_loop.fp -24
    %define pc_run.dispatch_loop.ptr -32
    %define pc_run.dispatch_loop.a -40
    %define pc_run.dispatch_loop.b -48
    %define pc_run.dispatch_loop.ptrb -56
    %define pc_run.dispatch_loop.n -64
    %define pc_run.dispatch_loop.d -72
    %define pc_run.dispatch_loop.stack -560072
    %define pc_run.dispatch_loop.callstack -600072
    %define pc_run.dispatch_loop.callstackst -680072
    %define pc_run.dispatch_loop.callsp -680080
    %define pc_run.dispatch_loop.str -680336
    %define pc_run.dispatch_loop.mag -680344
    %define pc_run.dispatch_loop.oldsp -680352
    %define pc_run.dispatch_loop.$T1 -680360
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	680400
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_run.dispatch_loop.pcentry]
    mov       [rbp + pc_run.dispatch_loop.pc],	rax
    xor       eax,	eax
    mov       [rbp + pc_run.dispatch_loop.sp],	rax
    xor       eax,	eax
    mov       [rbp + pc_run.dispatch_loop.fp],	rax
    xor       eax,	eax
    mov       [rbp + pc_run.dispatch_loop.callsp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.cmain]
    test      rax,	rax
    jz        L1253
    mov       rax,	[pc_decls.pcmdskip]
    imul      rax,	8
    mov       r10,	[msys.cmdparams]
    lea       r10,	[r10 + rax]
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    mov       rax,	[msys.ncmdparams]
    add       rax,	1
    sub       rax,	[pc_decls.pcmdskip]
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    xor       r10d,	r10d
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
L1253:
L1252:
L1254:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    and       rax,	31
    test      rax,	rax
    jz        L1257
    call      msys.m$print_startcon
    lea       rcx,	[rel L5618]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L1257:
L1256:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    cmp       rax,	69900
    jle       L1259
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5619]
    lea       r8,	[rel L5620]
    call      pc_runaux.pcerrorx
L1259:
L1258:
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    cmp       rax,	9900
    jle       L1261
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5621]
    lea       r8,	[rel L5622]
    call      pc_runaux.pcerrorx
L1261:
L1260:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    cmp       r10,	133
    jz        L1264
    cmp       r10,	130
    jz        L1264
    cmp       r10,	125
    jnz       L1263
L1264:
    jmp       L1265
L1263:
L1262:
    mov       rax,	[pc_run.dostep]
    test      rax,	rax
    jnz       L1267
    jmp       L1265
L1267:
L1266:
    call      msys.m$print_startcon
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       rcx,	r10
    lea       rdx,	[rel L5623]
    call      msys.m$print_u64
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    lea       rax,	[pc_tables.pclnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    lea       rdx,	[rel L5624]
    call      msys.m$print_str
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r11,	byte [rax+3]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_api.strpmode
    mov       rcx,	rax
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+1]
    lea       rax,	[pc_tables.opndnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5625]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_run.dispatch_loop.sp]
    call      msys.m$print_i64_nf
    lea       rcx,	[rel L5626]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_run.dispatch_loop.fp]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rax,	[pc_run.go]
    test      rax,	rax
    jnz       L1269
    call      mwindows.os_getch
    cmp       rax,	27
    jz        L1271
    cmp       rax,	82
    jz        L1272
    cmp       rax,	114
    jz        L1272
    cmp       rax,	71
    jz        L1273
    cmp       rax,	103
    jz        L1273
    jmp       L1274
L1271:
    xor       ecx,	ecx
    call      exit
    jmp       L1270
L1272:
    xor       eax,	eax
    mov       [pc_run.dostep],	rax
    jmp       L1270
L1273:
    mov       rax,	1
    mov       [pc_run.go],	rax
L1274:
L1270:
L1269:
L1268:
;skip:
L1265:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    cmp       r10,	140
    jae       L1277
    lea       rax,	[rel L1276]
    jmp       [rax + r10*8]
    segment .data
L1276:
    dq  L1278
    dq  L1280
    dq  L1281
    dq  L1282
    dq  L1283
    dq  L1290
    dq  L1291
    dq  L1292
    dq  L1292
    dq  L1293
    dq  L1294
    dq  L1295
    dq  L1296
    dq  L1297
    dq  L1298
    dq  L1299
    dq  L1300
    dq  L1301
    dq  L1319
    dq  L1309
    dq  L1301
    dq  L1327
    dq  L1314
    dq  L1332
    dq  L1333
    dq  L1334
    dq  L1342
    dq  L1345
    dq  L1348
    dq  L1349
    dq  L1350
    dq  L1357
    dq  L1358
    dq  L1361
    dq  L1364
    dq  L1367
    dq  L1370
    dq  L1373
    dq  L1374
    dq  L1375
    dq  L1376
    dq  L1377
    dq  L1378
    dq  L1381
    dq  L1384
    dq  L1387
    dq  L1388
    dq  L1391
    dq  L1394
    dq  L1395
    dq  L1396
    dq  L1397
    dq  L1398
    dq  L1399
    dq  L1402
    dq  L1403
    dq  L1404
    dq  L1405
    dq  L1406
    dq  L1407
    dq  L1410
    dq  L1411
    dq  L1412
    dq  L1413
    dq  L1414
    dq  L1415
    dq  L1418
    dq  L1419
    dq  L1420
    dq  L1421
    dq  L1422
    dq  L1423
    dq  L1424
    dq  L1425
    dq  L1426
    dq  L1427
    dq  L1428
    dq  L1429
    dq  L1430
    dq  L1431
    dq  L1432
    dq  L1433
    dq  L1434
    dq  L1435
    dq  L1436
    dq  L1437
    dq  L1438
    dq  L1439
    dq  L1440
    dq  L1441
    dq  L1444
    dq  L1447
    dq  L1450
    dq  L1451
    dq  L1452
    dq  L1453
    dq  L1454
    dq  L1455
    dq  L1456
    dq  L1457
    dq  L1460
    dq  L1461
    dq  L1462
    dq  L1463
    dq  L1464
    dq  L1465
    dq  L1466
    dq  L1467
    dq  L1468
    dq  L1469
    dq  L1470
    dq  L1473
    dq  L1474
    dq  L1475
    dq  L1476
    dq  L1477
    dq  L1478
    dq  L1479
    dq  L1480
    dq  L1481
    dq  L1482
    dq  L1483
    dq  L1484
    dq  L1485
    dq  L1486
    dq  L1487
    dq  L1488
    dq  L1489
    dq  L1490
    dq  L1491
    dq  L1492
    dq  L1493
    dq  L1499
    dq  L1500
    dq  L1501
    dq  L1494
    dq  L1495
    dq  L1496
    dq  L1497
    dq  L1498
    segment .text
L1278:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1280:
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    mov       rdx,	r10
    call      pc_runaux.pci_getopnd
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1281:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1282:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    imul      rax,	r11
    lea       r10,	[r10 + rax]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+20]
    lea       r10,	[r10 + r11]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1283:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+1]
    cmp       r10,	1
    jz        L1285
    jmp       L1286
L1285:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.dispatch_loop.d],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	3
    jnz       L1288
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    jmp       L1287
L1288:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jnz       L1289
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	5
    jnz       L1289
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    add       rax,	r10
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    jmp       L1287
L1289:
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    add       rax,	r10
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
L1287:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r11,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	rdi
    mov       r8,	r11
    mov       r9,	r10
    call      pc_runaux.pci_storeptr
    jmp       L1284
L1286:
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    call      pc_runaux.pcusopnd
L1284:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1290:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r11,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	rdi
    mov       r8,	r11
    mov       r9,	r10
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1291:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    imul      rax,	r11
    lea       r10,	[r10 + rax]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+20]
    lea       r10,	[r10 + r11]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r11,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	rdi
    mov       r8,	r11
    mov       r9,	r10
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1292:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.a]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1293:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    sub       r10,	1
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    sub       rax,	r10
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+20]
    sub       r11,	1
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    sub       rax,	r11
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[r10]
    mov       rdi,	[r11]
    mov       [r11],	rax
    mov       [r10],	rdi
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1294:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1295:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1296:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1297:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       cl,	r11b
    shr       r10,	cl
    and       r10d,	1
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-16],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1298:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-24]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.pci_loadbf
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	2
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1299:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-24]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    mov       rax,	3
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1300:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-24]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-32]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rcx,	[rbp + pc_run.dispatch_loop.a]
    mov       rdx,	rdi
    mov       r8,	r11
    mov       r9,	r10
    call      pc_runaux.pci_storebf
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    mov       rax,	4
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1301:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.dispatch_loop.d],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    movzx     r10,	byte [rax+56]
    test      r10,	r10
    jz        L1303
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + pc_run.dispatch_loop.n],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    sub       rax,	1
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	[rbp + pc_run.dispatch_loop.d]
    xor       edx,	edx
    mov       r8,	r10
    mov       r9,	[rbp + pc_run.dispatch_loop.n]
    sub       rsp,	32
    call      pc_runaux.docalldll
    add       rsp,	48
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    cmp       r10,	17
    jnz       L1305
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    jmp       L1304
L1305:
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
L1304:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1302
L1303:
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    mov       r10,	[rax+40]
    test      r10,	r10
    jnz       L1306
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    mov       r10,	[rax]
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5627]
    mov       r8,	r10
    call      pc_runaux.pcerrorx
    jmp       L1302
L1306:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    sub       rax,	r10
    mov       [rbp + pc_run.dispatch_loop.$T1],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    cmp       r10,	20
    jnz       L1308
    mov       rax,	1
    jmp       L1307
L1308:
    xor       eax,	eax
L1307:
    mov       r10,	[rbp + pc_run.dispatch_loop.$T1]
    add       r10,	rax
    inc       qword [rbp + pc_run.dispatch_loop.callsp]
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    mov       [rbp + rax*4 + pc_run.dispatch_loop.callstack-4],	r10d
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    mov       r10,	[rbp + pc_run.dispatch_loop.callsp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.callstackst-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       r10,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [r10+16]
    or        rax,	r11
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_run.dispatch_loop.pc],	r10
L1302:
    jmp       L1275
L1309:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + pc_run.dispatch_loop.n],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    sub       [rbp + pc_run.dispatch_loop.sp],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.fp],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    and       rax,	31
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    cmp       rax,	1
    jge       L1311
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5628]
    lea       r8,	[rel L5629]
    call      pc_runaux.pcerrorx
L1311:
L1310:
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    dec       qword [rbp + pc_run.dispatch_loop.callsp]
    mov       r10d,	[rbp + rax*4 + pc_run.dispatch_loop.callstack-4]
    mov       [rbp + pc_run.dispatch_loop.oldsp],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    cmp       rax,	[rbp + pc_run.dispatch_loop.oldsp]
    jz        L1313
    lea       rcx,	[rbp + pc_run.dispatch_loop.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5630]
    call      msys.m$print_setfmt
    mov       rcx,	[rbp + pc_run.dispatch_loop.oldsp]
    call      msys.m$print_i64_nf
    mov       rcx,	[rbp + pc_run.dispatch_loop.sp]
    call      msys.m$print_i64_nf
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rbp + pc_run.dispatch_loop.str]
    lea       r8,	[rel L5631]
    call      pc_runaux.pcerrorx
L1313:
L1312:
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    and       rax,	-32
    mov       [rbp + pc_run.dispatch_loop.pc],	rax
    jmp       L1275
L1314:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + pc_run.dispatch_loop.n],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    sub       [rbp + pc_run.dispatch_loop.sp],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.fp],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    and       rax,	31
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    cmp       rax,	1
    jge       L1316
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5632]
    lea       r8,	[rel L5633]
    call      pc_runaux.pcerrorx
L1316:
L1315:
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    dec       qword [rbp + pc_run.dispatch_loop.callsp]
    mov       r10d,	[rbp + rax*4 + pc_run.dispatch_loop.callstack-4]
    mov       [rbp + pc_run.dispatch_loop.oldsp],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    cmp       rax,	[rbp + pc_run.dispatch_loop.oldsp]
    jz        L1318
    lea       rcx,	[rbp + pc_run.dispatch_loop.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5634]
    call      msys.m$print_setfmt
    mov       rcx,	[rbp + pc_run.dispatch_loop.oldsp]
    call      msys.m$print_i64_nf
    mov       rcx,	[rbp + pc_run.dispatch_loop.sp]
    call      msys.m$print_i64_nf
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rbp + pc_run.dispatch_loop.str]
    lea       r8,	[rel L5635]
    call      pc_runaux.pcerrorx
L1318:
L1317:
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    and       rax,	-32
    mov       [rbp + pc_run.dispatch_loop.pc],	rax
    jmp       L1275
L1319:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	0
    jnz       L1321
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5636]
    lea       r8,	[rel L5637]
    call      pc_runaux.pcerrorx
L1321:
L1320:
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	[pc_api.pcstart]
    jb        L1323
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	[pc_api.pccurr]
    ja        L1323
;icallp:
L1324:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    sub       rax,	1
    mov       r10,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [r10+16]
    sub       rax,	r11
    mov       [rbp + pc_run.dispatch_loop.$T1],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    cmp       r10,	21
    jnz       L1326
    mov       rax,	1
    jmp       L1325
L1326:
    xor       eax,	eax
L1325:
    mov       r10,	[rbp + pc_run.dispatch_loop.$T1]
    add       r10,	rax
    inc       qword [rbp + pc_run.dispatch_loop.callsp]
    mov       rax,	[rbp + pc_run.dispatch_loop.callsp]
    mov       [rbp + rax*4 + pc_run.dispatch_loop.callstack-4],	r10d
    xor       eax,	eax
    mov       r10,	[rbp + pc_run.dispatch_loop.callsp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.callstackst-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       r10,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [r10+16]
    or        rax,	r11
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       [rbp + pc_run.dispatch_loop.pc],	rax
    jmp       L1322
L1323:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + pc_run.dispatch_loop.n],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    sub       rax,	1
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xor       ecx,	ecx
    mov       rdx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r8,	r10
    mov       r9,	[rbp + pc_run.dispatch_loop.n]
    sub       rsp,	32
    call      pc_runaux.docalldll
    add       rsp,	48
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
L1322:
    jmp       L1275
L1327:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	0
    jnz       L1329
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5638]
    lea       r8,	[rel L5639]
    call      pc_runaux.pcerrorx
L1329:
L1328:
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	[pc_api.pcstart]
    jb        L1331
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    cmp       rax,	[pc_api.pccurr]
    ja        L1331
    jmp       L1324
L1331:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + pc_run.dispatch_loop.n],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    sub       rax,	1
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    push      r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xor       ecx,	ecx
    mov       rdx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r8,	r10
    mov       r9,	[rbp + pc_run.dispatch_loop.n]
    sub       rsp,	32
    call      pc_runaux.docalldll
    add       rsp,	48
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    movq      XMM4,	[rbp + pc_run.dispatch_loop.a]
    cvttsd2si rax,	XMM4
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
L1330:
    jmp       L1275
L1332:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1275
L1333:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1334:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1336
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM5,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+2]
    mov       rcx,	r10
    movq      XMM1,	XMM5
    movq      XMM2,	XMM4
    call      pc_runaux.cmpreal
    mov       [rbp + pc_run.dispatch_loop.n],	rax
    jmp       L1335
L1336:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1337
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     rdi,	byte [rax+2]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.cmpint
    mov       [rbp + pc_run.dispatch_loop.n],	rax
    jmp       L1335
L1337:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     rdi,	byte [rax+2]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.cmpword
    mov       [rbp + pc_run.dispatch_loop.n],	rax
L1335:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    test      r10,	r10
    jz        L1339
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    test      rax,	rax
    jnz       L1339
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    jmp       L1338
L1339:
    mov       rax,	2
    sub       [rbp + pc_run.dispatch_loop.sp],	rax
L1338:
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    test      rax,	rax
    jz        L1341
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1340
L1341:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
L1340:
    jmp       L1275
L1342:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    test      r10,	r10
    jz        L1344
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1343
L1344:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
L1343:
    jmp       L1275
L1345:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    cmp       r10,	0
    jnz       L1347
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1346
L1347:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
L1346:
    jmp       L1275
L1348:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1275
L1349:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1350:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jz        L1352
    cmp       r10,	1
    jz        L1353
    jmp       L1354
L1352:
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5640]
    lea       r8,	[rel L5641]
    call      pc_runaux.pcerrorx
    jmp       L1351
L1353:
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5642]
    lea       r8,	[rel L5643]
    call      pc_runaux.pcerrorx
    jmp       L1351
L1354:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1356
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     rdi,	byte [rax+2]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.cmpint
    mov       [rbp + pc_run.dispatch_loop.n],	rax
    jmp       L1355
L1356:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     rdi,	byte [rax+2]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.cmpword
    mov       [rbp + pc_run.dispatch_loop.n],	rax
L1355:
L1351:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.n]
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1357:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	r10
    jmp       L1251
L1358:
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       rcx,	rax
    mov       rdx,	r10
    call      pc_runaux.pci_getopndaddr
    mov       [rbp + pc_run.dispatch_loop.ptr],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    dec       qword [rax]
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax]
    test      r10,	r10
    jz        L1360
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1359
L1360:
    add       qword [rbp + pc_run.dispatch_loop.pc],	64
L1359:
    jmp       L1275
L1361:
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       rcx,	rax
    mov       rdx,	r10
    call      pc_runaux.pci_getopndaddr
    mov       [rbp + pc_run.dispatch_loop.ptr],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+64]
    mov       rcx,	rax
    mov       rdx,	r10
    call      pc_runaux.pci_getopnd
    mov       [rbp + pc_run.dispatch_loop.n],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    add       [rax],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax]
    cmp       r10,	[rbp + pc_run.dispatch_loop.n]
    jg        L1363
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1362
L1363:
    add       qword [rbp + pc_run.dispatch_loop.pc],	96
L1362:
    jmp       L1275
L1364:
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       rcx,	rax
    mov       rdx,	r10
    call      pc_runaux.pci_getopndaddr
    mov       [rbp + pc_run.dispatch_loop.ptr],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+64]
    mov       rcx,	rax
    mov       rdx,	r10
    call      pc_runaux.pci_getopnd
    mov       [rbp + pc_run.dispatch_loop.n],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    sub       [rax],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax]
    cmp       r10,	[rbp + pc_run.dispatch_loop.n]
    jl        L1366
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1365
L1366:
    add       qword [rbp + pc_run.dispatch_loop.pc],	96
L1365:
    jmp       L1275
L1367:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jnz       L1369
    mov       rcx,	[rbp + pc_run.dispatch_loop.pc]
    lea       rdx,	[rel L5644]
    lea       r8,	[rel L5645]
    call      pc_runaux.pcerrorx
L1369:
L1368:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptrb],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptrb]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.b],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.b]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptrb]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1370:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    cmp       rax,	r10
    jl        L1372
    mov       r10,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [r10+20]
    cmp       rax,	r11
    jg        L1372
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rbp + pc_run.dispatch_loop.a]
    shl       r10,	5
    lea       rax,	[rax + r10]
    mov       r10,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [r10+16]
    shl       r11,	5
    sub       rax,	r11
    lea       rax,	[rax+96]
    mov       [rbp + pc_run.dispatch_loop.pc],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
    jmp       L1371
L1372:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       r10,	[rax+8]
    mov       rax,	[pc_run.labeltable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + pc_run.dispatch_loop.pc],	r11
L1371:
    jmp       L1275
L1373:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1374:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1375:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1376:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	r11
    xor       edx,	edx
    mov       r8,	r10
    call      memset
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1377:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1378:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1380
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    movq      XMM5,	[r10]
    addsd     XMM5,	XMM4
    movq      [r10],	XMM5
    jmp       L1379
L1380:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    add       [r11],	r10
L1379:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1381:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1383
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    movq      XMM5,	[r10]
    subsd     XMM5,	XMM4
    movq      [r10],	XMM5
    jmp       L1382
L1383:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    sub       [r11],	r10
L1382:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1384:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1386
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    movq      XMM5,	[r10]
    mulsd     XMM5,	XMM4
    movq      [r10],	XMM5
    jmp       L1385
L1386:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[r11]
    imul      rax,	r10
    mov       [r11],	rax
L1385:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1387:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM5,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    divsd     XMM4,	XMM5
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      [rbp + rax*8 + pc_run.dispatch_loop.stack-16],	XMM4
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1388:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1390
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xchg      rax,	r10
    cqo       
    idiv      r11
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-16],	rax
    jmp       L1389
L1390:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xchg      rax,	r10
    xor       rdx,	rdx
    div       r11
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-16],	rax
L1389:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1391:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1393
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xchg      rax,	r10
    cqo       
    idiv      r11
    xchg      rax,	rdx
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-16],	rax
    jmp       L1392
L1393:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xchg      rax,	r10
    xor       rdx,	rdx
    div       r11
    xchg      rax,	rdx
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-16],	rax
L1392:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1394:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1395:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    and       [r11],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1396:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    or        [r11],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1397:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    xor       [r11],	r10
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1398:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       cl,	r10b
    shl       qword [r11],	cl
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1399:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1401
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       cl,	r10b
    sar       qword [r11],	cl
    jmp       L1400
L1401:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-16]
    mov       cl,	r10b
    shr       qword [r11],	cl
L1400:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1402:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1403:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1404:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    imul      rax,	r11
    lea       r10,	[r10 + rax]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+20]
    lea       r10,	[r10 + r11]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1405:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    imul      rax,	r11
    sub       r10,	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+20]
    lea       r10,	[r10 + r11]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1406:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    xchg      rax,	r10
    cqo       
    idiv      r11
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + r10*8 + pc_run.dispatch_loop.stack-16]
    sub       [r11],	rax
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1407:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1409
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xorpd     XMM4,	[rel L5646]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	XMM4
    jmp       L1408
L1409:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    neg       r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
L1408:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1410:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1411:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    not       r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1412:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    xor       r10,	1
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1413:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    test      r10,	r10
    setnz     r10b
    movzx     r10d,	r10b
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1414:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    test      r10,	r10
    setz      r10b
    movzx     r10d,	r10b
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1415:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1417
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    movq      XMM5,	[r10]
    mulsd     XMM5,	XMM4
    movq      [r10],	XMM5
    jmp       L1416
L1417:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    imul      r10,	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
L1416:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1418:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    sqrtsd    XMM4,	XMM4
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	XMM4
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1419:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1420:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1421:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1422:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1423:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1424:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1425:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1426:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1427:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1428:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1429:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1430:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1431:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1432:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1433:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1434:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1435:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1436:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    neg       r11
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rdi,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1437:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1438:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    neg       r11
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1439:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1440:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    neg       r11
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r11
    mov       r8,	r10
    call      pc_runaux.doincr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1441:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1443
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    movq      XMM4,	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    movq      XMM5,	rax
    addsd     XMM4,	XMM5
    movq      rax,	XMM4
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    jmp       L1442
L1443:
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    add       [rbp + pc_run.dispatch_loop.a],	rax
L1442:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1444:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1446
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    movq      XMM4,	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    movq      XMM5,	rax
    subsd     XMM4,	XMM5
    movq      rax,	XMM4
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    jmp       L1445
L1446:
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    sub       [rbp + pc_run.dispatch_loop.a],	rax
L1445:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1447:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L1449
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    movq      XMM4,	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    movq      XMM5,	rax
    mulsd     XMM4,	XMM5
    movq      rax,	XMM4
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    jmp       L1448
L1449:
    mov       rax,	[rbp + pc_run.dispatch_loop.a]
    imul      rax,	[rbp + pc_run.dispatch_loop.b]
    mov       [rbp + pc_run.dispatch_loop.a],	rax
L1448:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1450:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1451:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1452:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1453:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    and       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1454:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    or        [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1455:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.b]
    xor       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1456:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       cl,	[rbp + pc_run.dispatch_loop.b]
    shl       qword [rbp + pc_run.dispatch_loop.a],	cl
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1457:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_run.dispatch_loop.a],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.b],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1459
    mov       cl,	[rbp + pc_run.dispatch_loop.b]
    sar       qword [rbp + pc_run.dispatch_loop.a],	cl
    jmp       L1458
L1459:
    mov       cl,	[rbp + pc_run.dispatch_loop.b]
    shr       qword [rbp + pc_run.dispatch_loop.a],	cl
L1458:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_run.dispatch_loop.ptr]
    mov       rdx,	[rbp + pc_run.dispatch_loop.a]
    mov       r8,	r10
    xor       r9d,	r9d
    call      pc_runaux.pci_storeptr
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1460:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1461:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1462:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    add       [rax],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1463:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    sub       [rax],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1464:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1465:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1466:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1467:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1468:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1469:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1470:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L1472
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    cvtsi2sd  XMM4,	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	XMM4
    jmp       L1471
L1472:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    cmp       r10,	0
    jl        L5647
    cvtsi2sd  XMM4,	r10
    jmp       L5648
L5647:
    and       r10,	[rel L5649]
    cvtsi2sd  XMM4,	r10
    addsd     XMM4,	[rel L5650]
L5648:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	XMM4
L1471:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1473:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    movq      XMM4,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    cvttsd2si rax,	XMM4
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1474:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1475:
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    lea       r11,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1476:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1477:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1478:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1479:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1480:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1481:
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.fp]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + pc_run.dispatch_loop.fp],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+20]
    add       [rbp + pc_run.dispatch_loop.sp],	r10
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1482:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1483:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1484:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1485:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1486:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1487:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1488:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1489:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    lea       rax,	[rax+32]
    mov       r10,	[rbp + pc_run.dispatch_loop.ptr]
    mov       [r10],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.ptr]
    mov       [r10+8],	rax
    mov       rax,	[rbp + pc_run.dispatch_loop.fp]
    mov       r10,	[rbp + pc_run.dispatch_loop.ptr]
    mov       [r10+16],	rax
    xor       eax,	eax
    mov       r10,	[rbp + pc_run.dispatch_loop.sp]
    mov       [rbp + r10*8 + pc_run.dispatch_loop.stack-8],	rax
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1490:
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.a],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + rax*8 + pc_run.dispatch_loop.stack-8]
    mov       [rbp + pc_run.dispatch_loop.ptr],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax]
    mov       [rbp + pc_run.dispatch_loop.pc],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.dispatch_loop.sp],	r10
    mov       rax,	[rbp + pc_run.dispatch_loop.ptr]
    mov       r10,	[rax+16]
    mov       [rbp + pc_run.dispatch_loop.fp],	r10
    inc       qword [rbp + pc_run.dispatch_loop.sp]
    mov       rax,	[rbp + pc_run.dispatch_loop.sp]
    mov       r10,	[rbp + pc_run.dispatch_loop.a]
    mov       [rbp + rax*8 + pc_run.dispatch_loop.stack-8],	r10
    jmp       L1275
L1491:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1492:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1493:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1494:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1495:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1496:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1497:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1498:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1499:
    dec       qword [rbp + pc_run.dispatch_loop.sp]
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1500:
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1501:
    jmp       L1279
    add       qword [rbp + pc_run.dispatch_loop.pc],	32
    jmp       L1275
L1277:
;unimpl:
L1279:
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    lea       rcx,	[rel L5651]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movzx     r10,	byte [rax]
    lea       rax,	[pc_tables.pclnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_run.dispatch_loop.pc]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	1
    call      exit
L1275:
    jmp       L1254
L1255:
    xor       eax,	eax
L1251:
;---------------
    add       rsp,	680400
    pop       rbp
    ret       
;End 
;Proc fixuppcl
pc_run.fixuppcl:
;>>
    %define pc_run.fixuppcl.p -8
    %define pc_run.fixuppcl.d -16
    %define pc_run.fixuppcl.e -24
    %define pc_run.fixuppcl.dproc -32
    %define pc_run.fixuppcl.pdata -40
    %define pc_run.fixuppcl.parambytes -48
    %define pc_run.fixuppcl.framebytes -56
    %define pc_run.fixuppcl.paramslots -64
    %define pc_run.fixuppcl.localslots -72
    %define pc_run.fixuppcl.a -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
;---------------
    mov       rax,	[pc_api.pccurr]
    sub       rax,	[pc_api.pcstart]
    shr       rax,	5
    add       rax,	1
    imul      rax,	8
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [pc_run.labeltable],	rax
    mov       rax,	[pc_api.pcstart]
    mov       [rbp + pc_run.fixuppcl.p],	rax
    jmp       L1506
L1503:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    movzx     r10,	byte [rax]
    cmp       r10,	122
    jz        L1508
    cmp       r10,	123
    jz        L1508
    jmp       L1509
L1508:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.fixuppcl.d],	r10
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10d,	[rax+4]
    mov       rcx,	r10
    call      mlib.pcm_alloc
    mov       r10,	[rbp + pc_run.fixuppcl.d]
    mov       [r10+40],	rax
L1509:
L1507:
L1504:
    add       qword [rbp + pc_run.fixuppcl.p],	32
L1506:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    cmp       rax,	[pc_api.pccurr]
    jbe       L1503
L1505:
    mov       rax,	[pc_api.pcstart]
    mov       [rbp + pc_run.fixuppcl.p],	rax
    jmp       L1513
L1510:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    movzx     r10,	byte [rax]
    cmp       r10,	122
    jz        L1515
    cmp       r10,	123
    jz        L1515
    cmp       r10,	124
    jz        L1516
    cmp       r10,	119
    jz        L1517
    cmp       r10,	125
    jz        L1518
    cmp       r10,	19
    jz        L1519
    cmp       r10,	22
    jz        L1519
    jmp       L1520
L1515:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       rax,	[r10+40]
    mov       [rbp + pc_run.fixuppcl.pdata],	rax
    jmp       L1514
L1516:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jz        L1522
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	1
    jz        L1524
    cmp       r10,	2
    jz        L1525
    jmp       L1526
L1524:
    mov       rcx,	[rbp + pc_run.fixuppcl.p]
    lea       rdx,	[rel L5652]
    lea       r8,	[rel L5653]
    call      pc_runaux.pcerrorx
    jmp       L1523
L1525:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.fixuppcl.d],	r10
    mov       rax,	[rbp + pc_run.fixuppcl.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	3
    jz        L1528
    cmp       r10,	2
    jz        L1529
    cmp       r10,	1
    jz        L1530
    jmp       L1531
L1528:
    mov       rax,	[rbp + pc_run.fixuppcl.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_run.fixuppcl.a],	r10
    jmp       L1527
L1529:
    mov       rax,	[rbp + pc_run.fixuppcl.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_run.fixuppcl.a],	r10
    jmp       L1527
L1530:
    mov       rcx,	[rbp + pc_run.fixuppcl.d]
    call      pc_runaux.getdllfnptr
    mov       [rbp + pc_run.fixuppcl.a],	rax
    jmp       L1527
L1531:
    mov       rcx,	[rbp + pc_run.fixuppcl.p]
    lea       rdx,	[rel L5654]
    lea       r8,	[rel L5655]
    call      pc_runaux.pcerrorx
L1527:
    mov       rax,	[rbp + pc_run.fixuppcl.a]
    cmp       rax,	0
    jnz       L1533
    mov       rcx,	[rbp + pc_run.fixuppcl.p]
    lea       rdx,	[rel L5656]
    lea       r8,	[rel L5657]
    call      pc_runaux.pcerrorx
L1533:
L1532:
    jmp       L1523
L1526:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.fixuppcl.a],	r10
L1523:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + pc_run.fixuppcl.pdata]
    lea       rdx,	[rbp + pc_run.fixuppcl.a]
    mov       r8,	r10
    call      memcpy
    jmp       L1521
L1522:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10d,	[rax+4]
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r11,	[rax+8]
    mov       rcx,	[rbp + pc_run.fixuppcl.pdata]
    mov       rdx,	r11
    mov       r8,	r10
    call      memcpy
L1521:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10d,	[rax+4]
    add       [rbp + pc_run.fixuppcl.pdata],	r10
    jmp       L1514
L1517:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_run.fixuppcl.d],	r10
    mov       [rbp + pc_run.fixuppcl.dproc],	r10
    mov       rax,	[rbp + pc_run.fixuppcl.d]
    mov       r10,	[rax+16]
    mov       [rbp + pc_run.fixuppcl.e],	r10
    xor       eax,	eax
    mov       [rbp + pc_run.fixuppcl.parambytes],	rax
    jmp       L1537
L1534:
    mov       rax,	8
    add       [rbp + pc_run.fixuppcl.parambytes],	rax
    mov       rax,	[rbp + pc_run.fixuppcl.parambytes]
    sar       rax,	3
    add       rax,	1
    neg       rax
    mov       r10,	[rbp + pc_run.fixuppcl.e]
    mov       [r10+52],	eax
L1535:
    mov       rax,	[rbp + pc_run.fixuppcl.e]
    mov       r10,	[rax+16]
    mov       [rbp + pc_run.fixuppcl.e],	r10
L1537:
    mov       rax,	[rbp + pc_run.fixuppcl.e]
    test      rax,	rax
    jnz       L1534
L1536:
    mov       rax,	[rbp + pc_run.fixuppcl.d]
    mov       r10,	[rax+24]
    mov       [rbp + pc_run.fixuppcl.e],	r10
    xor       eax,	eax
    mov       [rbp + pc_run.fixuppcl.framebytes],	rax
    jmp       L1541
L1538:
    mov       rax,	[rbp + pc_run.fixuppcl.framebytes]
    sar       rax,	3
    add       rax,	1
    mov       r10,	[rbp + pc_run.fixuppcl.e]
    mov       [r10+52],	eax
    mov       rax,	[rbp + pc_run.fixuppcl.e]
    mov       r10d,	[rax+60]
    mov       rcx,	r10
    mov       rdx,	8
    call      mlib.roundtoblock
    add       [rbp + pc_run.fixuppcl.framebytes],	rax
L1539:
    mov       rax,	[rbp + pc_run.fixuppcl.e]
    mov       r10,	[rax+24]
    mov       [rbp + pc_run.fixuppcl.e],	r10
L1541:
    mov       rax,	[rbp + pc_run.fixuppcl.e]
    test      rax,	rax
    jnz       L1538
L1540:
    mov       rax,	[rbp + pc_run.fixuppcl.parambytes]
    sar       rax,	3
    mov       [rbp + pc_run.fixuppcl.paramslots],	rax
    mov       r10,	[rbp + pc_run.fixuppcl.p]
    mov       [r10+16],	eax
    mov       rax,	[rbp + pc_run.fixuppcl.framebytes]
    sar       rax,	3
    mov       [rbp + pc_run.fixuppcl.localslots],	rax
    mov       r10,	[rbp + pc_run.fixuppcl.p]
    mov       [r10+20],	eax
    jmp       L1514
L1518:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    mov       r11,	[pc_run.labeltable]
    mov       [r11 + r10*8-8],	rax
    jmp       L1514
L1519:
    mov       eax,	[rbp + pc_run.fixuppcl.paramslots]
    mov       r10,	[rbp + pc_run.fixuppcl.p]
    mov       [r10+16],	eax
    mov       eax,	[rbp + pc_run.fixuppcl.localslots]
    mov       r10,	[rbp + pc_run.fixuppcl.p]
    mov       [r10+20],	eax
L1520:
L1514:
L1511:
    add       qword [rbp + pc_run.fixuppcl.p],	32
L1513:
    mov       rax,	[rbp + pc_run.fixuppcl.p]
    cmp       rax,	[pc_api.pccurr]
    jbe       L1510
L1512:
L1502:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc pcl_runpcl
pc_run.pcl_runpcl:
pcl_runpcl:
;>>
    %define pc_run.pcl_runpcl.stopcode -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    call      pc_runaux.loadlibs
    call      pc_run.fixuppcl
    mov       rax,	[pc_decls.entryproc]
    cmp       rax,	0
    jnz       L1544
    mov       rcx,	[pc_api.pcstart]
    lea       rdx,	[rel L5658]
    lea       r8,	[rel L5659]
    call      pc_runaux.pcerrorx
L1544:
L1543:
    call      pc_runaux.docmdskip
    call      msys.m$print_startcon
    lea       rcx,	[rel L5660]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rax,	[pc_decls.entryproc]
    movzx     r10,	byte [rax+97]
    cmp       r10,	2
    setz      r10b
    movzx     r10d,	r10b
    mov       rax,	[pc_decls.entryproc]
    mov       r11,	[rax+40]
    mov       rcx,	r11
    mov       rdx,	r10
    call      pc_run.dispatch_loop
    mov       [rbp + pc_run.pcl_runpcl.stopcode],	rax
    call      msys.m$print_startcon
    lea       rcx,	[rel L5661]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_run.pcl_runpcl.stopcode]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	[rbp + pc_run.pcl_runpcl.stopcode]
    call      exit
L1542:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pci_getopnd
pc_runaux.pci_getopnd:
;>>
    %define pc_runaux.pci_getopnd.p 16
    %define pc_runaux.pci_getopnd.locals 24
    %define pc_runaux.pci_getopnd.a -8
    %define pc_runaux.pci_getopnd.d -16
    %define pc_runaux.pci_getopnd.ptr -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jz        L1547
    cmp       r10,	1
    jz        L1548
    cmp       r10,	2
    jz        L1549
    cmp       r10,	7
    jz        L1550
    cmp       r10,	5
    jz        L1551
    cmp       r10,	6
    jz        L1551
    jmp       L1552
L1547:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.pci_getopnd.a],	r10
    jmp       L1546
L1548:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.pci_getopnd.d],	r10
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	3
    jz        L1554
    jmp       L1555
L1554:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_runaux.pci_getopnd.ptr],	r10
    jmp       L1553
L1555:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_runaux.pci_getopnd.locals]
    lea       rax,	[rax + r10*8]
    mov       [rbp + pc_runaux.pci_getopnd.ptr],	rax
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	11
    jnz       L1557
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	5
    jnz       L1557
    mov       rax,	[rbp + pc_runaux.pci_getopnd.ptr]
    mov       r10,	[rax]
    mov       [rbp + pc_runaux.pci_getopnd.ptr],	r10
L1557:
L1556:
L1553:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[rbp + pc_runaux.pci_getopnd.ptr]
    mov       rdx,	r10
    call      pc_runaux.pci_loadptr
    mov       [rbp + pc_runaux.pci_getopnd.a],	rax
    jmp       L1546
L1549:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.pci_getopnd.d],	r10
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	4
    jz        L1559
    cmp       r10,	5
    jz        L1560
    cmp       r10,	1
    jz        L1561
    jmp       L1562
L1559:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_runaux.pci_getopnd.locals]
    lea       rax,	[rax + r10*8]
    mov       [rbp + pc_runaux.pci_getopnd.a],	rax
    jmp       L1558
L1560:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_runaux.pci_getopnd.locals]
    lea       rax,	[rax + r10*8]
    mov       [rbp + pc_runaux.pci_getopnd.a],	rax
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	11
    jnz       L1564
    mov       rax,	[rbp + pc_runaux.pci_getopnd.a]
    mov       [rbp + pc_runaux.pci_getopnd.ptr],	rax
    mov       rax,	[rbp + pc_runaux.pci_getopnd.ptr]
    mov       r10,	[rax]
    mov       [rbp + pc_runaux.pci_getopnd.a],	r10
L1564:
L1563:
    jmp       L1558
L1561:
    mov       rcx,	[rbp + pc_runaux.pci_getopnd.d]
    call      pc_runaux.getdllfnptr
    mov       [rbp + pc_runaux.pci_getopnd.a],	rax
    jmp       L1558
L1562:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_runaux.pci_getopnd.a],	r10
L1558:
    jmp       L1546
L1550:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.pci_getopnd.a],	r10
    jmp       L1546
L1551:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.p]
    movq      XMM4,	[rax+8]
    movq      rax,	XMM4
    mov       [rbp + pc_runaux.pci_getopnd.a],	rax
    jmp       L1546
L1552:
    mov       rcx,	[rbp + pc_runaux.pci_getopnd.p]
    call      pc_runaux.pcusopnd
L1546:
    mov       rax,	[rbp + pc_runaux.pci_getopnd.a]
L1545:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc pci_loadptr
pc_runaux.pci_loadptr:
;>>
    %define pc_runaux.pci_loadptr.p 16
    %define pc_runaux.pci_loadptr.mode 24
    %define pc_runaux.pci_loadptr.x -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_runaux.pci_loadptr.mode]
    sub       rax,	1
    cmp       rax,	11
    jae       L1568
    lea       r10,	[rel L1567]
    jmp       [r10 + rax*8]
    segment .data
L1567:
    dq  L1571
    dq  L1570
    dq  L1579
    dq  L1578
    dq  L1577
    dq  L1576
    dq  L1575
    dq  L1574
    dq  L1573
    dq  L1572
    dq  L1569
    segment .text
L1569:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    jmp       L1566
L1570:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    mov       r10,	[rax]
    mov       rax,	r10
    jmp       L1566
L1571:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movd      XMM4,	[rax]
    cvtss2sd  XMM4,	XMM4
    movq      [rbp + pc_runaux.pci_loadptr.x],	XMM4
    movq      XMM4,	[rbp + pc_runaux.pci_loadptr.x]
    movq      rax,	XMM4
    jmp       L1566
L1572:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    mov       r10,	[rax]
    mov       rax,	r10
    jmp       L1566
L1573:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movsxd    r10,	dword [rax]
    mov       rax,	r10
    jmp       L1566
L1574:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movsx     r10,	word [rax]
    mov       rax,	r10
    jmp       L1566
L1575:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movsx     r10,	byte [rax]
    mov       rax,	r10
    jmp       L1566
L1576:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    mov       r10,	[rax]
    mov       rax,	r10
    jmp       L1566
L1577:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    mov       r10d,	[rax]
    mov       rax,	r10
    jmp       L1566
L1578:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movzx     r10,	word [rax]
    mov       rax,	r10
    jmp       L1566
L1579:
    mov       rax,	[rbp + pc_runaux.pci_loadptr.p]
    movzx     r10,	byte [rax]
    mov       rax,	r10
    jmp       L1566
L1568:
    xor       eax,	eax
L1566:
L1565:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc pci_storeptr
pc_runaux.pci_storeptr:
;>>
    %define pc_runaux.pci_storeptr.p 16
    %define pc_runaux.pci_storeptr.a 24
    %define pc_runaux.pci_storeptr.mode 32
    %define pc_runaux.pci_storeptr.size 40
    %define pc_runaux.pci_storeptr.x -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + pc_runaux.pci_storeptr.mode]
    cmp       rax,	11
    jz        L1582
    cmp       rax,	1
    jz        L1583
    jmp       L1584
L1582:
    mov       rcx,	[rbp + pc_runaux.pci_storeptr.p]
    mov       rdx,	[rbp + pc_runaux.pci_storeptr.a]
    mov       r8,	[rbp + pc_runaux.pci_storeptr.size]
    call      memcpy
    jmp       L1581
L1583:
    mov       rax,	[rbp + pc_runaux.pci_storeptr.a]
    movq      XMM4,	rax
    movq      [rbp + pc_runaux.pci_storeptr.x],	XMM4
    movq      XMM4,	[rbp + pc_runaux.pci_storeptr.x]
    cvtsd2ss  XMM4,	XMM4
    mov       rax,	[rbp + pc_runaux.pci_storeptr.p]
    movd      [rax],	XMM4
    jmp       L1581
L1584:
    lea       rax,	[pc_tables.psize]
    mov       r10,	[rbp + pc_runaux.pci_storeptr.mode]
    movzx     r11,	byte [rax + r10]
    cmp       r11,	8
    jz        L1586
    cmp       r11,	4
    jz        L1587
    cmp       r11,	2
    jz        L1588
    jmp       L1589
L1586:
    mov       rax,	[rbp + pc_runaux.pci_storeptr.a]
    mov       r10,	[rbp + pc_runaux.pci_storeptr.p]
    mov       [r10],	rax
    jmp       L1585
L1587:
    mov       eax,	[rbp + pc_runaux.pci_storeptr.a]
    mov       r10,	[rbp + pc_runaux.pci_storeptr.p]
    mov       [r10],	eax
    jmp       L1585
L1588:
    mov       ax,	[rbp + pc_runaux.pci_storeptr.a]
    mov       r10,	[rbp + pc_runaux.pci_storeptr.p]
    mov       [r10],	ax
    jmp       L1585
L1589:
    mov       al,	[rbp + pc_runaux.pci_storeptr.a]
    mov       r10,	[rbp + pc_runaux.pci_storeptr.p]
    mov       [r10],	al
L1585:
L1581:
L1580:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pci_getopndaddr
pc_runaux.pci_getopndaddr:
;>>
    %define pc_runaux.pci_getopndaddr.p 16
    %define pc_runaux.pci_getopndaddr.locals 24
    %define pc_runaux.pci_getopndaddr.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	1
    jz        L1592
    mov       rcx,	[rbp + pc_runaux.pci_getopndaddr.p]
    lea       rdx,	[rel L5662]
    lea       r8,	[rel L5663]
    call      pc_runaux.pcerrorx
L1592:
L1591:
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.p]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.pci_getopndaddr.d],	r10
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	3
    jnz       L1594
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.d]
    mov       r10,	[rax+40]
    mov       rax,	r10
    jmp       L1593
L1594:
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + pc_runaux.pci_getopndaddr.locals]
    lea       rax,	[rax + r10*8]
L1593:
L1590:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pcerrorx
pc_runaux.pcerrorx:
;>>
    %define pc_runaux.pcerrorx.p 16
    %define pc_runaux.pcerrorx.mess 24
    %define pc_runaux.pcerrorx.param 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    call      msys.m$print_startcon
    lea       rcx,	[rel L5664]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_runaux.pcerrorx.mess]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + pc_runaux.pcerrorx.param]
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5665]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_runaux.pcerrorx.p]
    test      rax,	rax
    jz        L1597
    mov       rax,	[rbp + pc_runaux.pcerrorx.p]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       rax,	r10
    jmp       L1596
L1597:
    xor       eax,	eax
L1596:
    mov       rcx,	rax
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	1
    call      exit
L1595:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc pcusopnd
pc_runaux.pcusopnd:
;>>
    %define pc_runaux.pcusopnd.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    call      msys.m$print_startcon
    lea       rcx,	[rel L5666]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_runaux.pcusopnd.p]
    movzx     r10,	byte [rax+1]
    lea       rax,	[pc_tables.opndnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5667]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_runaux.pcusopnd.p]
    movzx     r10,	byte [rax]
    lea       rax,	[pc_tables.pclnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    mov       rax,	[rbp + pc_runaux.pcusopnd.p]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rcx,	1
    call      exit
L1598:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc docalldll
pc_runaux.docalldll:
;>>
    %define pc_runaux.docalldll.d 16
    %define pc_runaux.docalldll.fnaddr 24
    %define pc_runaux.docalldll.revargs 32
    %define pc_runaux.docalldll.nargs 40
    %define pc_runaux.docalldll.nvars 48
    %define pc_runaux.docalldll.retmode 56
    %define pc_runaux.docalldll.args -800
    %define pc_runaux.docalldll.retval -808
    %define pc_runaux.docalldll.i -816
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	848
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + pc_runaux.docalldll.fnaddr]
    cmp       rax,	0
    jnz       L1601
    mov       rcx,	[rbp + pc_runaux.docalldll.d]
    call      pc_runaux.getdllfnptr
    mov       [rbp + pc_runaux.docalldll.fnaddr],	rax
L1601:
L1600:
    mov       rax,	[rbp + pc_runaux.docalldll.nargs]
    mov       [rbp + pc_runaux.docalldll.i],	rax
    mov       rax,	[rbp + pc_runaux.docalldll.i]
    cmp       rax,	1
    jl        L1604
L1602:
    mov       rax,	[rbp + pc_runaux.docalldll.revargs]
    mov       r10,	[rbp + pc_runaux.docalldll.i]
    mov       r11,	[rax + r10*8-8]
    mov       rax,	[rbp + pc_runaux.docalldll.nargs]
    sub       rax,	[rbp + pc_runaux.docalldll.i]
    mov       [rbp + rax*8 + pc_runaux.docalldll.args],	r11
L1603:
    mov       rax,	[rbp + pc_runaux.docalldll.i]
    dec       rax
    mov       [rbp + pc_runaux.docalldll.i],	rax
    cmp       rax,	1
    jge       L1602
L1604:
    sub       rsp,	8
    push      0
    mov       rax,	[rbp + pc_runaux.docalldll.retmode]
    cmp       rax,	1
    jz        L1607
    cmp       rax,	2
    jnz       L1606
L1607:
    mov       rax,	82
    jmp       L1605
L1606:
    mov       rax,	73
L1605:
    mov       rcx,	[rbp + pc_runaux.docalldll.fnaddr]
    mov       rdx,	rax
    mov       r8,	[rbp + pc_runaux.docalldll.nargs]
    lea       r9,	[rbp + pc_runaux.docalldll.args]
    sub       rsp,	32
    call      mwindll.os_calldllfunction
    add       rsp,	48
    mov       [rbp + pc_runaux.docalldll.retval],	rax
    mov       rax,	[rbp + pc_runaux.docalldll.retval]
L1599:
;---------------
    add       rsp,	848
    pop       rbp
    ret       
;End 
;Proc getdllfnptr
pc_runaux.getdllfnptr:
;>>
    %define pc_runaux.getdllfnptr.d 16
    %define pc_runaux.getdllfnptr.fnaddr -8
    %define pc_runaux.getdllfnptr.libindex -16
    %define pc_runaux.getdllfnptr.dllinst -24
    %define pc_runaux.getdllfnptr.procname -32
    %define pc_runaux.getdllfnptr.libname -40
    %define pc_runaux.getdllfnptr.i -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + pc_runaux.getdllfnptr.d]
    mov       r10,	[rax+40]
    mov       [rbp + pc_runaux.getdllfnptr.fnaddr],	r10
    mov       rax,	[rbp + pc_runaux.getdllfnptr.fnaddr]
    test      rax,	rax
    jz        L1610
    mov       rax,	[rbp + pc_runaux.getdllfnptr.fnaddr]
    jmp       L1608
L1610:
L1609:
    mov       rax,	[rbp + pc_runaux.getdllfnptr.d]
    mov       r10,	[rax]
    mov       [rbp + pc_runaux.getdllfnptr.procname],	r10
    mov       rax,	1
    mov       [rbp + pc_runaux.getdllfnptr.i],	rax
    mov       rax,	[pc_decls.nplibfiles]
    cmp       rax,	1
    jl        L1614
L1611:
    lea       rax,	[pc_decls.plibinst]
    mov       r10,	[rbp + pc_runaux.getdllfnptr.i]
    mov       r11,	[rax + r10*8-8]
    mov       rcx,	r11
    mov       rdx,	[rbp + pc_runaux.getdllfnptr.procname]
    call      mwindows.os_getdllprocaddr
    mov       [rbp + pc_runaux.getdllfnptr.fnaddr],	rax
    mov       rax,	[rbp + pc_runaux.getdllfnptr.fnaddr]
    test      rax,	rax
    jz        L1616
    jmp       L1613
L1616:
L1615:
L1612:
    mov       rax,	[rbp + pc_runaux.getdllfnptr.i]
    inc       rax
    mov       [rbp + pc_runaux.getdllfnptr.i],	rax
    cmp       rax,	[pc_decls.nplibfiles]
    jle       L1611
L1614:
    xor       ecx,	ecx
    lea       rdx,	[rel L5668]
    mov       r8,	[rbp + pc_runaux.getdllfnptr.procname]
    call      pc_runaux.pcerrorx
L1613:
    mov       rax,	[rbp + pc_runaux.getdllfnptr.fnaddr]
    mov       r10,	[rbp + pc_runaux.getdllfnptr.d]
    mov       [r10+40],	rax
    mov       rax,	[rbp + pc_runaux.getdllfnptr.fnaddr]
L1608:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc loadlibs
pc_runaux.loadlibs:
;>>
    %define pc_runaux.loadlibs.i -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	1
    mov       [rbp + pc_runaux.loadlibs.i],	rax
    mov       rax,	[pc_decls.nplibfiles]
    cmp       rax,	1
    jl        L1620
L1618:
    lea       rax,	[pc_decls.plibfiles]
    mov       r10,	[rbp + pc_runaux.loadlibs.i]
    mov       r11,	[rax + r10*8-8]
    mov       rcx,	r11
    call      mwindows.os_getdllinst
    lea       r10,	[pc_decls.plibinst]
    mov       r11,	[rbp + pc_runaux.loadlibs.i]
    mov       [r10 + r11*8-8],	rax
    lea       rax,	[pc_decls.plibinst]
    mov       r10,	[rbp + pc_runaux.loadlibs.i]
    mov       r11,	[rax + r10*8-8]
    test      r11,	r11
    jnz       L1622
    lea       rax,	[pc_decls.plibfiles]
    mov       r10,	[rbp + pc_runaux.loadlibs.i]
    mov       r11,	[rax + r10*8-8]
    xor       ecx,	ecx
    lea       rdx,	[rel L5669]
    mov       r8,	r11
    call      pc_runaux.pcerrorx
L1622:
L1621:
L1619:
    mov       rax,	[rbp + pc_runaux.loadlibs.i]
    inc       rax
    mov       [rbp + pc_runaux.loadlibs.i],	rax
    cmp       rax,	[pc_decls.nplibfiles]
    jle       L1618
L1620:
L1617:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc cmpreal
pc_runaux.cmpreal:
;>>
    %define pc_runaux.cmpreal.cond 16
    %define pc_runaux.cmpreal.x 24
    %define pc_runaux.cmpreal.y 32
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    movq      [rbp+24],	XMM1
    movq      [rbp+32],	XMM2
;---------------
    mov       rax,	[rbp + pc_runaux.cmpreal.cond]
    cmp       rax,	1
    jz        L1625
    cmp       rax,	2
    jz        L1626
    cmp       rax,	3
    jz        L1627
    cmp       rax,	4
    jz        L1628
    cmp       rax,	5
    jz        L1629
    jmp       L1630
L1625:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    setz      al
    movzx     eax,	al
    jmp       L1624
L1626:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    setnz     al
    movzx     eax,	al
    jmp       L1624
L1627:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    setb      al
    movzx     eax,	al
    jmp       L1624
L1628:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    setbe     al
    movzx     eax,	al
    jmp       L1624
L1629:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    setae     al
    movzx     eax,	al
    jmp       L1624
L1630:
    movq      XMM4,	[rbp + pc_runaux.cmpreal.x]
    comisd    XMM4,	[rbp + pc_runaux.cmpreal.y]
    seta      al
    movzx     eax,	al
L1624:
L1623:
;---------------
    pop       rbp
    ret       
;End 
;Proc cmpint
pc_runaux.cmpint:
;>>
    %define pc_runaux.cmpint.cond 16
    %define pc_runaux.cmpint.x 24
    %define pc_runaux.cmpint.y 32
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + pc_runaux.cmpint.cond]
    cmp       rax,	1
    jz        L1633
    cmp       rax,	2
    jz        L1634
    cmp       rax,	3
    jz        L1635
    cmp       rax,	4
    jz        L1636
    cmp       rax,	5
    jz        L1637
    jmp       L1638
L1633:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setz      al
    movzx     eax,	al
    jmp       L1632
L1634:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setnz     al
    movzx     eax,	al
    jmp       L1632
L1635:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setl      al
    movzx     eax,	al
    jmp       L1632
L1636:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setle     al
    movzx     eax,	al
    jmp       L1632
L1637:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setge     al
    movzx     eax,	al
    jmp       L1632
L1638:
    mov       rax,	[rbp + pc_runaux.cmpint.x]
    cmp       rax,	[rbp + pc_runaux.cmpint.y]
    setg      al
    movzx     eax,	al
L1632:
L1631:
;---------------
    pop       rbp
    ret       
;End 
;Proc cmpword
pc_runaux.cmpword:
;>>
    %define pc_runaux.cmpword.cond 16
    %define pc_runaux.cmpword.x 24
    %define pc_runaux.cmpword.y 32
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + pc_runaux.cmpword.cond]
    cmp       rax,	1
    jz        L1641
    cmp       rax,	2
    jz        L1642
    cmp       rax,	3
    jz        L1643
    cmp       rax,	4
    jz        L1644
    cmp       rax,	5
    jz        L1645
    jmp       L1646
L1641:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    setz      al
    movzx     eax,	al
    jmp       L1640
L1642:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    setnz     al
    movzx     eax,	al
    jmp       L1640
L1643:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    setb      al
    movzx     eax,	al
    jmp       L1640
L1644:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    setbe     al
    movzx     eax,	al
    jmp       L1640
L1645:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    setae     al
    movzx     eax,	al
    jmp       L1640
L1646:
    mov       rax,	[rbp + pc_runaux.cmpword.x]
    cmp       rax,	[rbp + pc_runaux.cmpword.y]
    seta      al
    movzx     eax,	al
L1640:
L1639:
;---------------
    pop       rbp
    ret       
;End 
;Proc doincr
pc_runaux.doincr:
;>>
    %define pc_runaux.doincr.pu8 16
    %define pc_runaux.doincr.incr 24
    %define pc_runaux.doincr.mode 32
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    lea       rax,	[pc_tables.psize]
    mov       r10,	[rbp + pc_runaux.doincr.mode]
    movzx     r11,	byte [rax + r10]
    cmp       r11,	8
    jz        L1649
    cmp       r11,	4
    jz        L1650
    cmp       r11,	2
    jz        L1651
    jmp       L1652
L1649:
    mov       rax,	[rbp + pc_runaux.doincr.pu8]
    mov       r10,	[rbp + pc_runaux.doincr.incr]
    add       [rax],	r10
    jmp       L1648
L1650:
    mov       rax,	[rbp + pc_runaux.doincr.pu8]
    mov       r10d,	[rbp + pc_runaux.doincr.incr]
    add       [rax],	r10d
    jmp       L1648
L1651:
    mov       rax,	[rbp + pc_runaux.doincr.pu8]
    mov       r10w,	[rbp + pc_runaux.doincr.incr]
    add       [rax],	r10w
    jmp       L1648
L1652:
    mov       rax,	[rbp + pc_runaux.doincr.pu8]
    mov       r10b,	[rbp + pc_runaux.doincr.incr]
    add       [rax],	r10b
L1648:
L1647:
;---------------
    pop       rbp
    ret       
;End 
;Proc docmdskip
pc_runaux.docmdskip:
;>>
    %define pc_runaux.docmdskip.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	[pc_decls.psymboltable]
    mov       [rbp + pc_runaux.docmdskip.d],	rax
    jmp       L1657
L1654:
    mov       rax,	[rbp + pc_runaux.docmdskip.d]
    mov       r10,	[rax]
    mov       rcx,	r10
    lea       rdx,	[rel L5670]
    call      mlib.eqstring
    test      rax,	rax
    jz        L1659
    mov       rax,	[rbp + pc_runaux.docmdskip.d]
    mov       r10,	[rax+40]
    mov       al,	[pc_decls.pcmdskip]
    mov       [r10],	al
    jmp       L1656
L1659:
L1658:
L1655:
    mov       rax,	[rbp + pc_runaux.docmdskip.d]
    mov       r10,	[rax+8]
    mov       [rbp + pc_runaux.docmdskip.d],	r10
L1657:
    mov       rax,	[rbp + pc_runaux.docmdskip.d]
    test      rax,	rax
    jnz       L1654
L1656:
L1653:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc pci_loadbf
pc_runaux.pci_loadbf:
;>>
    %define pc_runaux.pci_loadbf.a 16
    %define pc_runaux.pci_loadbf.i 24
    %define pc_runaux.pci_loadbf.j 32
    %define pc_runaux.pci_loadbf.mask -8
    %define pc_runaux.pci_loadbf.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + pc_runaux.pci_loadbf.j]
    cmp       rax,	[rbp + pc_runaux.pci_loadbf.i]
    jae       L1662
    mov       rax,	[rbp + pc_runaux.pci_loadbf.i]
    mov       r10,	[rbp + pc_runaux.pci_loadbf.j]
    mov       [rbp + pc_runaux.pci_loadbf.j],	rax
    mov       [rbp + pc_runaux.pci_loadbf.i],	r10
L1662:
L1661:
    mov       rax,	[rbp + pc_runaux.pci_loadbf.j]
    sub       rax,	[rbp + pc_runaux.pci_loadbf.i]
    add       rax,	1
    mov       [rbp + pc_runaux.pci_loadbf.n],	rax
    mov       rax,	-1
    mov       cl,	[rbp + pc_runaux.pci_loadbf.n]
    shl       rax,	cl
    not       rax
    mov       cl,	[rbp + pc_runaux.pci_loadbf.i]
    shl       rax,	cl
    mov       [rbp + pc_runaux.pci_loadbf.mask],	rax
    mov       rax,	[rbp + pc_runaux.pci_loadbf.a]
    and       rax,	[rbp + pc_runaux.pci_loadbf.mask]
    mov       cl,	[rbp + pc_runaux.pci_loadbf.i]
    shr       rax,	cl
L1660:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc pci_storebf
pc_runaux.pci_storebf:
;>>
    %define pc_runaux.pci_storebf.a 16
    %define pc_runaux.pci_storebf.i 24
    %define pc_runaux.pci_storebf.j 32
    %define pc_runaux.pci_storebf.x 40
    %define pc_runaux.pci_storebf.mask -8
    %define pc_runaux.pci_storebf.n -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + pc_runaux.pci_storebf.j]
    cmp       rax,	[rbp + pc_runaux.pci_storebf.i]
    jae       L1665
    mov       rax,	[rbp + pc_runaux.pci_storebf.i]
    mov       r10,	[rbp + pc_runaux.pci_storebf.j]
    mov       [rbp + pc_runaux.pci_storebf.j],	rax
    mov       [rbp + pc_runaux.pci_storebf.i],	r10
L1665:
L1664:
    mov       rax,	[rbp + pc_runaux.pci_storebf.j]
    sub       rax,	[rbp + pc_runaux.pci_storebf.i]
    add       rax,	1
    mov       [rbp + pc_runaux.pci_storebf.n],	rax
    mov       rax,	-1
    mov       cl,	[rbp + pc_runaux.pci_storebf.n]
    shl       rax,	cl
    not       rax
    mov       cl,	[rbp + pc_runaux.pci_storebf.i]
    shl       rax,	cl
    mov       [rbp + pc_runaux.pci_storebf.mask],	rax
    mov       rax,	[rbp + pc_runaux.pci_storebf.x]
    mov       cl,	[rbp + pc_runaux.pci_storebf.i]
    shl       rax,	cl
    and       rax,	[rbp + pc_runaux.pci_storebf.mask]
    mov       [rbp + pc_runaux.pci_storebf.x],	rax
    mov       rax,	[rbp + pc_runaux.pci_storebf.mask]
    not       rax
    mov       r10,	[rbp + pc_runaux.pci_storebf.a]
    and       r10,	rax
    or        r10,	[rbp + pc_runaux.pci_storebf.x]
    mov       rax,	r10
L1663:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc initpass
mc_auxmcl.initpass:
;>>
    %define mc_auxmcl.initpass.d 16
    %define mc_auxmcl.initpass.e -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    lea       rax,	[mc_decls.regset]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    lea       rax,	[mc_decls.xregset]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    lea       rax,	[mc_decls.spillregs]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    lea       rax,	[mc_decls.spillxregs]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    lea       rax,	[mc_decls.pcltempflags]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       [rax+16],	r10d
    xor       eax,	eax
    mov       [pc_decls.r13used],	al
    mov       [pc_decls.r11used],	al
    mov       [pc_decls.r10used],	al
    xor       eax,	eax
    mov       [mc_decls.mstackdepth],	rax
    xor       eax,	eax
    mov       [mc_decls.noperands],	rax
    xor       eax,	eax
    mov       [pc_decls.framebytes],	rax
    mov       [pc_decls.paramoffset],	rax
    mov       [pc_decls.frameoffset],	rax
    xor       eax,	eax
    mov       [pc_decls.usedxparams],	rax
    mov       [pc_decls.usedparams],	rax
    xor       eax,	eax
    mov       [pc_decls.highargs],	rax
    mov       [pc_decls.nproccalls],	rax
    xor       eax,	eax
    mov       [pc_decls.localshadow],	al
    xor       eax,	eax
    mov       [pc_decls.assemused],	al
    xor       eax,	eax
    mov       [pc_decls.highxreg],	rax
    mov       [pc_decls.highreg],	rax
    lea       rax,	[mc_decls.pcltempflags]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       [rax+16],	r10d
    mov       rax,	[rbp + mc_auxmcl.initpass.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	11
    jnz       L1668
    lea       rcx,	[rel L5671]
    xor       edx,	edx
    call      pc_api.pc_makesymbol
    mov       [rbp + mc_auxmcl.initpass.e],	rax
    mov       rax,	[rbp + mc_auxmcl.initpass.d]
    movzx     r10,	byte [rax+58]
    mov       rax,	[rbp + mc_auxmcl.initpass.e]
    mov       [rax+58],	r10b
    mov       al,	1
    mov       r10,	[rbp + mc_auxmcl.initpass.e]
    mov       [r10+68],	al
    mov       al,	5
    mov       r10,	[rbp + mc_auxmcl.initpass.e]
    mov       [r10+49],	al
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax+16]
    mov       rax,	[rbp + mc_auxmcl.initpass.e]
    mov       [rax+16],	r10
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rbp + mc_auxmcl.initpass.e]
    mov       [r10+32],	rax
    mov       rax,	[rbp + mc_auxmcl.initpass.e]
    mov       r10,	[pc_decls.currfunc]
    mov       [r10+16],	rax
    mov       rax,	[rbp + mc_auxmcl.initpass.e]
    mov       [pc_decls.blockretname],	rax
L1668:
L1667:
L1666:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_procentry
mc_auxmcl.do_procentry:
;>>
    %define mc_auxmcl.do_procentry.p 16
    %define mc_auxmcl.do_procentry.retmode -8
    %define mc_auxmcl.do_procentry.ntemps -16
    %define mc_auxmcl.do_procentry.hasequiv -24
    %define mc_auxmcl.do_procentry.offset -32
    %define mc_auxmcl.do_procentry.size -40
    %define mc_auxmcl.do_procentry.ax -48
    %define mc_auxmcl.do_procentry.d -56
    %define mc_auxmcl.do_procentry.str -160
    %define mc_auxmcl.do_procentry.newname -264
    %define mc_auxmcl.do_procentry.i -272
    %define mc_auxmcl.do_procentry.r -280
    %define mc_auxmcl.do_procentry.$T1 -288
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	320
;---------------
    mov       rcx,	[mc_decls.mclprocentry]
    call      mc_auxmcl.setmclentry
    xor       eax,	eax
    mov       [pc_decls.bxspilloffset],	rax
    mov       [pc_decls.bxspill],	rax
    mov       [pc_decls.bspill],	rax
    mov       rax,	[pc_decls.highreg]
    cmp       rax,	4
    jl        L1671
    mov       rax,	[pc_decls.highreg]
    sub       rax,	3
    mov       [pc_decls.bspill],	rax
L1671:
L1670:
    mov       rax,	[pc_decls.highxreg]
    cmp       rax,	7
    jl        L1673
    mov       rax,	[pc_decls.highxreg]
    sub       rax,	6
    mov       [pc_decls.bxspill],	rax
L1673:
L1672:
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.do_procentry.d],	r10
    jmp       L1677
L1674:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movzx     r10,	byte [rax+66]
    test      r10,	r10
    jnz       L1679
    mov       rax,	[pc_decls.paramoffset]
    add       rax,	16
    mov       r10,	[pc_decls.bspill]
    imul      r10,	8
    add       rax,	r10
    mov       r10,	[rbp + mc_auxmcl.do_procentry.d]
    mov       [r10+52],	eax
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movsxd    r10,	dword [rax+52]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.do_procentry.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_procentry.d]
    call      mc_writenasm.getdispname
    mov       rcx,	rax
    call      mc_libmcl.mgenname
    mov       rcx,	7
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_procentry.$T1]
    call      mc_libmcl.genmc
L1679:
L1678:
    mov       rax,	8
    add       [pc_decls.paramoffset],	rax
L1675:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.do_procentry.d],	r10
L1677:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    test      rax,	rax
    jnz       L1674
L1676:
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+58]
    mov       [rbp + mc_auxmcl.do_procentry.retmode],	r10
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax+24]
    mov       [rbp + mc_auxmcl.do_procentry.d],	r10
    jmp       L1683
L1680:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movzx     r10,	byte [rax+58]
    lea       rax,	[pc_tables.psize]
    movzx     r11,	byte [rax + r10]
    mov       [rbp + mc_auxmcl.do_procentry.size],	r11
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	11
    jnz       L1685
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    mov       r10d,	[rax+60]
    mov       [rbp + mc_auxmcl.do_procentry.size],	r10
L1685:
L1684:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movzx     r10,	byte [rax+67]
    test      r10,	r10
    jz        L1687
    mov       rax,	1
    mov       [rbp + mc_auxmcl.do_procentry.hasequiv],	rax
    jmp       L1686
L1687:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movzx     r10,	byte [rax+66]
    test      r10,	r10
    jnz       L1688
    mov       rcx,	[rbp + mc_auxmcl.do_procentry.size]
    call      mc_libmcl.roundsizetg
    sub       [pc_decls.frameoffset],	rax
    mov       eax,	[pc_decls.frameoffset]
    mov       r10,	[rbp + mc_auxmcl.do_procentry.d]
    mov       [r10+52],	eax
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    movsxd    r10,	dword [rax+52]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.do_procentry.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_procentry.d]
    call      mc_writenasm.getdispname
    mov       rcx,	rax
    call      mc_libmcl.mgenname
    mov       rcx,	7
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_procentry.$T1]
    call      mc_libmcl.genmc
L1688:
L1686:
L1681:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    mov       r10,	[rax+24]
    mov       [rbp + mc_auxmcl.do_procentry.d],	r10
L1683:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.d]
    test      rax,	rax
    jnz       L1680
L1682:
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_procentry.ntemps],	rax
    mov       rax,	1
    mov       [rbp + mc_auxmcl.do_procentry.i],	rax
L1689:
    lea       rax,	[mc_decls.pcltempflags]
    mov       r10,	[rbp + mc_auxmcl.do_procentry.i]
    movzx     r11,	byte [rax + r10-1]
    test      r11,	r11
    jz        L1693
    inc       qword [rbp + mc_auxmcl.do_procentry.ntemps]
    mov       rax,	8
    sub       [pc_decls.frameoffset],	rax
    lea       rax,	[mc_decls.pcltempopnds]
    mov       r10,	[rbp + mc_auxmcl.do_procentry.i]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + mc_auxmcl.do_procentry.ax],	r11
    mov       eax,	[pc_decls.frameoffset]
    mov       r10,	[rbp + mc_auxmcl.do_procentry.ax]
    mov       [r10+12],	eax
    mov       rax,	[rbp + mc_auxmcl.do_procentry.ax]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.do_procentry.$T1],	rax
    mov       rcx,	[pc_decls.currfunc]
    mov       rdx,	[rbp + mc_auxmcl.do_procentry.i]
    call      mc_writenasm.gettempname
    mov       rcx,	rax
    call      mc_libmcl.mgenname
    mov       rcx,	7
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_procentry.$T1]
    call      mc_libmcl.genmc
L1693:
L1692:
L1690:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.i]
    inc       rax
    mov       [rbp + mc_auxmcl.do_procentry.i],	rax
    cmp       rax,	20
    jle       L1689
L1691:
    mov       rax,	[pc_decls.bxspill]
    test      rax,	rax
    jz        L1695
    mov       rax,	[pc_decls.bxspill]
    imul      rax,	8
    sub       [pc_decls.frameoffset],	rax
    mov       rax,	[pc_decls.frameoffset]
    mov       [pc_decls.bxspilloffset],	rax
L1695:
L1694:
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+84]
    test      r10,	r10
    jz        L1697
    mov       rax,	[pc_decls.currfunc]
    movsx     r10,	word [rax+100]
    test      r10,	r10
    jnz       L1700
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+97]
    test      r10,	r10
    jz        L1699
L1700:
    lea       rcx,	[rel L5672]
    lea       rdx,	[rel L5673]
    call      mc_libmcl.merror
L1699:
L1698:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.ntemps]
    test      rax,	rax
    jz        L1702
    lea       rcx,	[rel L5674]
    lea       rdx,	[rel L5675]
    call      mc_libmcl.merror
L1702:
L1701:
    mov       rax,	[pc_decls.bspill]
    test      rax,	rax
    jnz       L1705
    mov       rax,	[pc_decls.bxspill]
    test      rax,	rax
    jz        L1704
L1705:
    lea       rcx,	[rel L5676]
    lea       rdx,	[rel L5677]
    call      mc_libmcl.merror
L1704:
L1703:
    call      mc_auxmcl.resetmclentry
    jmp       L1669
L1697:
L1696:
    mov       rax,	[pc_decls.frameoffset]
    neg       rax
    mov       [pc_decls.framebytes],	rax
    mov       eax,	[pc_decls.bspill]
    and       eax,	1
    test      rax,	rax
    jz        L1707
    mov       rax,	[pc_decls.framebytes]
    and       rax,	8
    test      rax,	rax
    jnz       L1709
    mov       rax,	8
    add       [pc_decls.framebytes],	rax
L1709:
L1708:
    jmp       L1706
L1707:
    mov       rax,	[pc_decls.framebytes]
    and       rax,	8
    test      rax,	rax
    jz        L1711
    mov       rax,	8
    add       [pc_decls.framebytes],	rax
L1711:
L1710:
L1706:
    movzx     rax,	byte [pc_decls.localshadow]
    test      rax,	rax
    jz        L1713
    mov       rax,	32
    add       [pc_decls.framebytes],	rax
L1713:
L1712:
    mov       rax,	[pc_decls.bspill]
    test      rax,	rax
    jz        L1715
    mov       rax,	4
    mov       [rbp + mc_auxmcl.do_procentry.r],	rax
    mov       rax,	[pc_decls.highreg]
    cmp       rax,	4
    jl        L1718
L1716:
    mov       rcx,	[rbp + mc_auxmcl.do_procentry.r]
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1717:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.r]
    inc       rax
    mov       [rbp + mc_auxmcl.do_procentry.r],	rax
    cmp       rax,	[pc_decls.highreg]
    jle       L1716
L1718:
L1715:
L1714:
    mov       rax,	[pc_decls.framebytes]
    test      rax,	rax
    jnz       L1721
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+97]
    test      r10,	r10
    jz        L1720
L1721:
    mov       rcx,	13
    mov       rdx,	[mc_decls.dframeopnd]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[mc_decls.dframeopnd]
    mov       r8,	[mc_decls.dstackopnd]
    call      mc_libmcl.genmc
    mov       rcx,	[pc_decls.framebytes]
    call      mc_libmcl.pushstack
L1720:
L1719:
    call      mc_auxmcl.spillparams
    mov       rax,	[pc_decls.bxspill]
    test      rax,	rax
    jz        L1723
    mov       rax,	[pc_decls.bxspilloffset]
    mov       [rbp + mc_auxmcl.do_procentry.offset],	rax
    mov       rax,	7
    mov       [rbp + mc_auxmcl.do_procentry.r],	rax
    mov       rax,	[pc_decls.highxreg]
    cmp       rax,	7
    jl        L1726
L1724:
    sub       rsp,	8
    push      0
    push      0
    push      8
    mov       rcx,	15
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	[rbp + mc_auxmcl.do_procentry.offset]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_procentry.ax],	rax
    mov       rax,	8
    add       [rbp + mc_auxmcl.do_procentry.offset],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_procentry.r]
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       rcx,	18
    mov       rdx,	[rbp + mc_auxmcl.do_procentry.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1725:
    mov       rax,	[rbp + mc_auxmcl.do_procentry.r]
    inc       rax
    mov       [rbp + mc_auxmcl.do_procentry.r],	rax
    cmp       rax,	[pc_decls.highxreg]
    jle       L1724
L1726:
L1723:
L1722:
    lea       rcx,	[rel L5678]
    call      mc_libmcl.mgencomment
    call      mc_auxmcl.resetmclentry
L1669:
;---------------
    add       rsp,	320
    pop       rbp
    ret       
;End 
;Proc do_procexit
mc_auxmcl.do_procexit:
;>>
    %define mc_auxmcl.do_procexit.ax -8
    %define mc_auxmcl.do_procexit.offset -16
    %define mc_auxmcl.do_procexit.r -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    lea       rcx,	[rel L5678]
    call      mc_libmcl.mgencomment
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+84]
    test      r10,	r10
    jz        L1729
    mov       rcx,	23
    xor       edx,	edx
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1727
L1729:
L1728:
    mov       rax,	[pc_decls.bxspill]
    test      rax,	rax
    jz        L1731
    mov       rax,	[pc_decls.bxspilloffset]
    mov       [rbp + mc_auxmcl.do_procexit.offset],	rax
    mov       rax,	7
    mov       [rbp + mc_auxmcl.do_procexit.r],	rax
    mov       rax,	[pc_decls.highxreg]
    cmp       rax,	7
    jl        L1734
L1732:
    sub       rsp,	8
    push      0
    push      0
    push      8
    mov       rcx,	15
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	[rbp + mc_auxmcl.do_procexit.offset]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_procexit.ax],	rax
    mov       rax,	8
    add       [rbp + mc_auxmcl.do_procexit.offset],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_procexit.r]
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       rcx,	18
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_procexit.ax]
    call      mc_libmcl.genmc
L1733:
    mov       rax,	[rbp + mc_auxmcl.do_procexit.r]
    inc       rax
    mov       [rbp + mc_auxmcl.do_procexit.r],	rax
    cmp       rax,	[pc_decls.highxreg]
    jle       L1732
L1734:
L1731:
L1730:
    mov       rax,	[pc_decls.framebytes]
    test      rax,	rax
    jnz       L1737
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+97]
    test      r10,	r10
    jz        L1736
L1737:
    mov       rcx,	[pc_decls.framebytes]
    call      mc_libmcl.popstack
    mov       rcx,	14
    mov       rdx,	[mc_decls.dframeopnd]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1736:
L1735:
    mov       rax,	[pc_decls.bspill]
    test      rax,	rax
    jz        L1739
    mov       rax,	[pc_decls.highreg]
    mov       [rbp + mc_auxmcl.do_procexit.r],	rax
    mov       rax,	[rbp + mc_auxmcl.do_procexit.r]
    cmp       rax,	4
    jl        L1742
L1740:
    mov       rcx,	[rbp + mc_auxmcl.do_procexit.r]
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1741:
    mov       rax,	[rbp + mc_auxmcl.do_procexit.r]
    dec       rax
    mov       [rbp + mc_auxmcl.do_procexit.r],	rax
    cmp       rax,	4
    jge       L1740
L1742:
L1739:
L1738:
    mov       rcx,	23
    xor       edx,	edx
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1727:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc spillparams
mc_auxmcl.spillparams:
;>>
    %define mc_auxmcl.spillparams.d -8
    %define mc_auxmcl.spillparams.ax -16
    %define mc_auxmcl.spillparams.offset -24
    %define mc_auxmcl.spillparams.regoffset -32
    %define mc_auxmcl.spillparams.firstoffset -40
    %define mc_auxmcl.spillparams.i -48
    %define mc_auxmcl.spillparams.$T1 -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    mov       rax,	16
    mov       [rbp + mc_auxmcl.spillparams.offset],	rax
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.spillparams.regoffset],	rax
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.spillparams.regoffset],	rax
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.spillparams.d],	r10
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+98]
    test      r10,	r10
    jz        L1745
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movsxd    r10,	dword [rax+52]
    mov       [rbp + mc_auxmcl.spillparams.firstoffset],	r10
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+97]
    mov       [rbp + mc_auxmcl.spillparams.i],	r10
    mov       rax,	[rbp + mc_auxmcl.spillparams.i]
    cmp       rax,	3
    jg        L1748
L1746:
    sub       rsp,	8
    push      0
    push      0
    push      8
    mov       rax,	[rbp + mc_auxmcl.spillparams.i]
    imul      rax,	8
    add       rax,	[rbp + mc_auxmcl.spillparams.firstoffset]
    mov       rcx,	15
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	rax
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.spillparams.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.spillparams.i]
    add       rax,	11
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.spillparams.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1747:
    mov       rax,	[rbp + mc_auxmcl.spillparams.i]
    inc       rax
    mov       [rbp + mc_auxmcl.spillparams.i],	rax
    cmp       rax,	3
    jle       L1746
L1748:
L1745:
L1744:
    jmp       L1752
L1749:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    cmp       rax,	3
    jle       L1754
    jmp       L1751
L1754:
L1753:
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+68]
    test      r10,	r10
    jz        L1756
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+66]
    test      r10,	r10
    jnz       L1758
    sub       rsp,	8
    push      0
    push      0
    push      8
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movsxd    r10,	dword [rax+52]
    mov       rcx,	15
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	r10
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.spillparams.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	2
    jz        L1760
    cmp       r10,	1
    jz        L1761
    jmp       L1762
L1760:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    add       rax,	1
    mov       rcx,	rax
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       rcx,	18
    mov       rdx,	[rbp + mc_auxmcl.spillparams.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L1759
L1761:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    add       rax,	1
    mov       rcx,	rax
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       [rbp + mc_auxmcl.spillparams.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.spillparams.ax]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	17
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.spillparams.$T1]
    call      mc_libmcl.genmc
    jmp       L1759
L1762:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    add       rax,	11
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.spillparams.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1759:
    jmp       L1757
L1758:
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+66]
    test      r10,	r10
    jz        L1763
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+66]
    cmp       r10,	10
    jg        L1763
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	2
    jz        L1765
    jmp       L1766
L1765:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    add       rax,	1
    mov       rcx,	rax
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       [rbp + mc_auxmcl.spillparams.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+66]
    mov       rcx,	r10
    mov       rdx,	8
    call      mc_libmcl.mgenxreg
    mov       rcx,	18
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.spillparams.$T1]
    call      mc_libmcl.genmc
    jmp       L1764
L1766:
    mov       rax,	[rbp + mc_auxmcl.spillparams.regoffset]
    add       rax,	11
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.spillparams.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    movzx     r10,	byte [rax+66]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.spillparams.$T1]
    call      mc_libmcl.genmc
L1764:
L1763:
L1757:
L1756:
L1755:
    mov       rax,	8
    add       [rbp + mc_auxmcl.spillparams.offset],	rax
    inc       qword [rbp + mc_auxmcl.spillparams.regoffset]
L1750:
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.spillparams.d],	r10
L1752:
    mov       rax,	[rbp + mc_auxmcl.spillparams.d]
    test      rax,	rax
    jnz       L1749
L1751:
L1743:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc do_jumptruefalse
mc_auxmcl.do_jumptruefalse:
;>>
    %define mc_auxmcl.do_jumptruefalse.p 16
    %define mc_auxmcl.do_jumptruefalse.cond 24
    %define mc_auxmcl.do_jumptruefalse.ax -8
    %define mc_auxmcl.do_jumptruefalse.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_jumptruefalse.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L1769
    mov       rcx,	42
    mov       rdx,	[rbp + mc_auxmcl.do_jumptruefalse.ax]
    mov       r8,	[rbp + mc_auxmcl.do_jumptruefalse.ax]
    call      mc_libmcl.genmc
    jmp       L1768
L1769:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.do_jumptruefalse.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	76
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_auxmcl.do_jumptruefalse.bx]
    mov       r8,	[rbp + mc_auxmcl.do_jumptruefalse.bx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	74
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_auxmcl.do_jumptruefalse.ax]
    mov       r8,	[rbp + mc_auxmcl.do_jumptruefalse.bx]
    call      mc_libmcl.genmc
L1768:
    mov       rax,	[rbp + mc_auxmcl.do_jumptruefalse.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	[rbp + mc_auxmcl.do_jumptruefalse.cond]
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    call      mc_stackmcl.poppcl
L1767:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_bitwise
mc_auxmcl.do_bitwise:
;>>
    %define mc_auxmcl.do_bitwise.p 16
    %define mc_auxmcl.do_bitwise.opc 24
    %define mc_auxmcl.do_bitwise.ax -8
    %define mc_auxmcl.do_bitwise.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_bitwise.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_bitwise.bx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_bitwise.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_bitwise.ax]
    mov       r8,	[rbp + mc_auxmcl.do_bitwise.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L1770:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_shift
mc_auxmcl.do_shift:
;>>
    %define mc_auxmcl.do_shift.p 16
    %define mc_auxmcl.do_shift.opc 24
    %define mc_auxmcl.do_shift.ax -8
    %define mc_auxmcl.do_shift.cx -16
    %define mc_auxmcl.do_shift.y -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_shift.ax],	rax
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[mc_decls.noperands]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + mc_auxmcl.do_shift.y],	r11
    lea       rax,	[mc_decls.pclloc]
    mov       r10,	[mc_decls.noperands]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	0
    jnz       L1773
    mov       rax,	[rbp + mc_auxmcl.do_shift.y]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jnz       L1773
    mov       rax,	[rbp + mc_auxmcl.do_shift.y]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_shift.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_shift.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L1772
L1773:
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L1775
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1775:
L1774:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	3
    mov       r8,	11
    call      mc_stackmcl.loadparam
    mov       [rbp + mc_auxmcl.do_shift.cx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_shift.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_shift.ax]
    mov       r8,	[rbp + mc_auxmcl.do_shift.cx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L1777
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1777:
L1776:
L1772:
    call      mc_stackmcl.poppcl
L1771:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc setmclentry
mc_auxmcl.setmclentry:
;>>
    %define mc_auxmcl.setmclentry.p 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.mccodex]
    mov       [mc_decls.mce_oldmccodex],	rax
    mov       rax,	[rbp + mc_auxmcl.setmclentry.p]
    mov       [mc_decls.mccodex],	rax
    mov       rax,	[rbp + mc_auxmcl.setmclentry.p]
    mov       r10,	[rax]
    mov       [mc_decls.mce_nextmcl],	r10
L1778:
;---------------
    pop       rbp
    ret       
;End 
;Proc resetmclentry
mc_auxmcl.resetmclentry:
;>>
    %define mc_auxmcl.resetmclentry.pnew -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
;---------------
    mov       rax,	[mc_decls.mce_nextmcl]
    mov       r10,	[mc_decls.mccodex]
    mov       [r10],	rax
    mov       rax,	[mc_decls.mccodex]
    mov       [rbp + mc_auxmcl.resetmclentry.pnew],	rax
    mov       rax,	[mc_decls.mce_oldmccodex]
    mov       [mc_decls.mccodex],	rax
    mov       rax,	[rbp + mc_auxmcl.resetmclentry.pnew]
L1779:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc do_pushlowargs
mc_auxmcl.do_pushlowargs:
;>>
    %define mc_auxmcl.do_pushlowargs.nargs 16
    %define mc_auxmcl.do_pushlowargs.nvariadics 24
    %define mc_auxmcl.do_pushlowargs.isptr 32
    %define mc_auxmcl.do_pushlowargs.ax -8
    %define mc_auxmcl.do_pushlowargs.j -16
    %define mc_auxmcl.do_pushlowargs.k -24
    %define mc_auxmcl.do_pushlowargs.nextireg -32
    %define mc_auxmcl.do_pushlowargs.nextxreg -40
    %define mc_auxmcl.do_pushlowargs.mode -48
    %define mc_auxmcl.do_pushlowargs.imode -56
    %define mc_auxmcl.do_pushlowargs.blockret -64
    %define mc_auxmcl.do_pushlowargs.dblock -72
    %define mc_auxmcl.do_pushlowargs.av_1 -80
    %define mc_auxmcl.do_pushlowargs.i -88
    %define mc_auxmcl.do_pushlowargs.$T1 -96
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	128
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.nargs]
    cmp       rax,	0
    jnz       L1782
    jmp       L1780
L1782:
L1781:
    lea       rax,	[mc_decls.callblockret]
    mov       r10,	[mc_decls.ncalldepth]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_auxmcl.do_pushlowargs.blockret],	r11
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.nargs]
    cmp       [pc_decls.highargs],	rax
    jge       L5679
    mov       [pc_decls.highargs],	rax
L5679:
    mov       rax,	11
    mov       [rbp + mc_auxmcl.do_pushlowargs.nextireg],	rax
    mov       rax,	1
    mov       [rbp + mc_auxmcl.do_pushlowargs.nextxreg],	rax
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_pushlowargs.k],	rax
    mov       rax,	[mc_decls.noperands]
    mov       [rbp + mc_auxmcl.do_pushlowargs.i],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	[rbp + mc_auxmcl.do_pushlowargs.nargs]
    add       rax,	1
    mov       [rbp + mc_auxmcl.do_pushlowargs.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.i]
    cmp       rax,	[rbp + mc_auxmcl.do_pushlowargs.av_1]
    jl        L1785
L1783:
    inc       qword [rbp + mc_auxmcl.do_pushlowargs.k]
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.k]
    cmp       rax,	1
    jnz       L1787
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.blockret]
    test      rax,	rax
    jz        L1787
    lea       rax,	[mc_decls.callblocksize]
    mov       r10,	[mc_decls.ncalldepth]
    mov       r11d,	[rax + r10*4-4]
    mov       rcx,	r11
    call      mc_libmcl.newblocktemp
    mov       [rbp + mc_auxmcl.do_pushlowargs.dblock],	rax
    mov       al,	1
    mov       r10,	[rbp + mc_auxmcl.do_pushlowargs.dblock]
    mov       [r10+68],	al
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.dblock]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.do_pushlowargs.$T1],	rax
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	15
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.$T1]
    call      mc_libmcl.genmc
    jmp       L1786
L1787:
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.i]
    sub       rax,	[rbp + mc_auxmcl.do_pushlowargs.isptr]
    add       rax,	[rbp + mc_auxmcl.do_pushlowargs.blockret]
    mov       [rbp + mc_auxmcl.do_pushlowargs.j],	rax
    lea       rax,	[mc_decls.pclmode]
    mov       r10,	[rbp + mc_auxmcl.do_pushlowargs.j]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_auxmcl.do_pushlowargs.mode],	r11
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    cmp       rax,	11
    jz        L1789
    cmp       rax,	2
    jz        L1790
    cmp       rax,	1
    jz        L1790
    jmp       L1791
L1789:
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.j]
    mov       rdx,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.nextireg]
    call      mc_stackmcl.loadparam
    mov       [rbp + mc_auxmcl.do_pushlowargs.ax],	rax
    lea       rax,	[mc_decls.callargsize]
    mov       r10,	[mc_decls.ncalldepth]
    shl       r10,	4
    lea       rax,	[rax + r10-16]
    mov       r10,	[rbp + mc_auxmcl.do_pushlowargs.k]
    mov       r11d,	[rax + r10*4-4]
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.ax]
    mov       rdx,	r11
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.k]
    call      mc_auxmcl.copyblockarg
    jmp       L1788
L1790:
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.j]
    mov       rdx,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.nextxreg]
    call      mc_stackmcl.loadparam
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.nvariadics]
    test      rax,	rax
    jz        L1793
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.k]
    cmp       rax,	[rbp + mc_auxmcl.do_pushlowargs.nvariadics]
    jl        L1793
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    cmp       rax,	1
    jnz       L1795
    mov       rax,	5
    jmp       L1794
L1795:
    mov       rax,	6
L1794:
    mov       [rbp + mc_auxmcl.do_pushlowargs.imode],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.nextxreg]
    mov       rdx,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_pushlowargs.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.nextireg]
    mov       rdx,	[rbp + mc_auxmcl.do_pushlowargs.imode]
    call      mc_libmcl.mgenreg
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.$T1]
    call      mc_libmcl.genmc
L1793:
L1792:
    jmp       L1788
L1791:
;doint:
L1796:
    mov       rcx,	[rbp + mc_auxmcl.do_pushlowargs.j]
    mov       rdx,	[rbp + mc_auxmcl.do_pushlowargs.mode]
    mov       r8,	[rbp + mc_auxmcl.do_pushlowargs.nextireg]
    call      mc_stackmcl.loadparam
L1788:
L1786:
    inc       qword [rbp + mc_auxmcl.do_pushlowargs.nextireg]
    inc       qword [rbp + mc_auxmcl.do_pushlowargs.nextxreg]
L1784:
    mov       rax,	[rbp + mc_auxmcl.do_pushlowargs.i]
    dec       rax
    mov       [rbp + mc_auxmcl.do_pushlowargs.i],	rax
    cmp       rax,	[rbp + mc_auxmcl.do_pushlowargs.av_1]
    jge       L1783
L1785:
L1780:
;---------------
    add       rsp,	128
    pop       rbp
    ret       
;End 
;Proc do_getretvalue
mc_auxmcl.do_getretvalue:
;>>
    %define mc_auxmcl.do_getretvalue.p 16
    %define mc_auxmcl.do_getretvalue.reg -8
    %define mc_auxmcl.do_getretvalue.xreg -16
    %define mc_auxmcl.do_getretvalue.i -24
    %define mc_auxmcl.do_getretvalue.n -32
    %define mc_auxmcl.do_getretvalue.m -40
    %define mc_auxmcl.do_getretvalue.modes -120
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	160
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.p]
    lea       rax,	[rax+32]
    movzx     r10,	byte [rax]
    cmp       r10,	12
    jnz       L1799
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_getretvalue.n],	rax
    jmp       L1801
L1800:
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.p]
    movzx     r10,	byte [rax+3]
    inc       qword [rbp + mc_auxmcl.do_getretvalue.n]
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.n]
    mov       [rbp + rax*8 + mc_auxmcl.do_getretvalue.modes-8],	r10
L1801:
    add       qword [rbp + mc_auxmcl.do_getretvalue.p],	32
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.p]
    movzx     r10,	byte [rax]
    cmp       r10,	12
    jz        L1800
L1802:
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.p]
    sub       rax,	32
    mov       [mc_decls.currpcl],	rax
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.n]
    mov       [rbp + mc_auxmcl.do_getretvalue.i],	rax
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.i]
    cmp       rax,	1
    jl        L1805
L1803:
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.i]
    mov       r10,	[rbp + rax*8 + mc_auxmcl.do_getretvalue.modes-8]
    mov       [rbp + mc_auxmcl.do_getretvalue.m],	r10
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.m]
    cmp       rax,	2
    jg        L1807
    lea       rax,	[mc_decls.multxregs]
    mov       r10,	[rbp + mc_auxmcl.do_getretvalue.i]
    mov       r11,	[rax + r10*8-8]
    mov       rax,	r11
    jmp       L1806
L1807:
    lea       rax,	[mc_decls.multregs]
    mov       r10,	[rbp + mc_auxmcl.do_getretvalue.i]
    mov       r11,	[rax + r10*8-8]
    mov       rax,	r11
L1806:
    mov       rcx,	[rbp + mc_auxmcl.do_getretvalue.m]
    mov       rdx,	rax
    call      mc_stackmcl.pushpcl_reg
L1804:
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.i]
    dec       rax
    mov       [rbp + mc_auxmcl.do_getretvalue.i],	rax
    cmp       rax,	1
    jge       L1803
L1805:
    jmp       L1798
L1799:
    mov       rax,	[rbp + mc_auxmcl.do_getretvalue.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	r10
    mov       rdx,	1
    call      mc_stackmcl.pushpcl_reg
L1798:
L1797:
;---------------
    add       rsp,	160
    pop       rbp
    ret       
;End 
;Proc ismemaddr
mc_auxmcl.ismemaddr:
;>>
    %define mc_auxmcl.ismemaddr.n 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    lea       rax,	[mc_decls.pclloc]
    mov       r10,	[rbp + mc_auxmcl.ismemaddr.n]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	0
    jnz       L1810
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[rbp + mc_auxmcl.ismemaddr.n]
    mov       r11,	[rax + r10*8-8]
    movzx     rax,	byte [r11+1]
    cmp       rax,	2
    jnz       L1810
    mov       rax,	1
    jmp       L1808
L1810:
L1809:
    xor       eax,	eax
L1808:
;---------------
    pop       rbp
    ret       
;End 
;Proc do_incr
mc_auxmcl.do_incr:
;>>
    %define mc_auxmcl.do_incr.p 16
    %define mc_auxmcl.do_incr.incrop 24
    %define mc_auxmcl.do_incr.addop 32
    %define mc_auxmcl.do_incr.mx -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_incr.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_incr.mx],	rax
    mov       rax,	[rbp + mc_auxmcl.do_incr.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jnz       L1813
    mov       rcx,	[rbp + mc_auxmcl.do_incr.incrop]
    mov       rdx,	[rbp + mc_auxmcl.do_incr.mx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1812
L1813:
    mov       rax,	[rbp + mc_auxmcl.do_incr.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_incr.addop]
    mov       rdx,	[rbp + mc_auxmcl.do_incr.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1812:
    call      mc_stackmcl.poppcl
L1811:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_incrload
mc_auxmcl.do_incrload:
;>>
    %define mc_auxmcl.do_incrload.p 16
    %define mc_auxmcl.do_incrload.incrop 24
    %define mc_auxmcl.do_incrload.addop 32
    %define mc_auxmcl.do_incrload.ax -8
    %define mc_auxmcl.do_incrload.mx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_incrload.mx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[mc_decls.pclreg]
    mov       r11,	[mc_decls.noperands]
    movzx     rdi,	byte [r10 + r11-1]
    mov       rcx,	rdi
    mov       rdx,	rax
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_auxmcl.do_incrload.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.do_incrload.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jnz       L1816
    mov       rcx,	[rbp + mc_auxmcl.do_incrload.incrop]
    mov       rdx,	[rbp + mc_auxmcl.do_incrload.mx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1815
L1816:
    mov       rax,	[rbp + mc_auxmcl.do_incrload.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_incrload.addop]
    mov       rdx,	[rbp + mc_auxmcl.do_incrload.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1815:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_incrload.ax]
    mov       r8,	[rbp + mc_auxmcl.do_incrload.mx]
    call      mc_libmcl.genmc
    mov       al,	1
    lea       r10,	[mc_decls.pclloc]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-1],	al
    xor       eax,	eax
    lea       r10,	[mc_decls.pclopnd]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11*8-8],	rax
    mov       rax,	[rbp + mc_auxmcl.do_incrload.ax]
    movzx     r10,	byte [rax+10]
    lea       rax,	[mc_decls.pclreg]
    mov       r11,	[mc_decls.noperands]
    mov       [rax + r11-1],	r10b
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-1],	al
L1814:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_loadincr
mc_auxmcl.do_loadincr:
;>>
    %define mc_auxmcl.do_loadincr.p 16
    %define mc_auxmcl.do_loadincr.incrop 24
    %define mc_auxmcl.do_loadincr.addop 32
    %define mc_auxmcl.do_loadincr.ax -8
    %define mc_auxmcl.do_loadincr.mx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_loadincr.mx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_loadincr.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_loadincr.ax]
    mov       r8,	[rbp + mc_auxmcl.do_loadincr.mx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_loadincr.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jnz       L1819
    mov       rcx,	[rbp + mc_auxmcl.do_loadincr.incrop]
    mov       rdx,	[rbp + mc_auxmcl.do_loadincr.mx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1818
L1819:
    mov       rax,	[rbp + mc_auxmcl.do_loadincr.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_loadincr.addop]
    mov       rdx,	[rbp + mc_auxmcl.do_loadincr.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1818:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
L1817:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_for
mc_auxmcl.do_for:
;>>
    %define mc_auxmcl.do_for.p 16
    %define mc_auxmcl.do_for.incop 24
    %define mc_auxmcl.do_for.addop 32
    %define mc_auxmcl.do_for.cond 40
    %define mc_auxmcl.do_for.q -8
    %define mc_auxmcl.do_for.r -16
    %define mc_auxmcl.do_for.ax -24
    %define mc_auxmcl.do_for.bx -32
    %define mc_auxmcl.do_for.cx -40
    %define mc_auxmcl.do_for.dx -48
    %define mc_auxmcl.do_for.mx -56
    %define mc_auxmcl.do_for.reg -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    lea       rax,	[rax+32]
    mov       [rbp + mc_auxmcl.do_for.q],	rax
    mov       rax,	[rbp + mc_auxmcl.do_for.q]
    lea       rax,	[rax+32]
    mov       [mc_decls.currpcl],	rax
    mov       [rbp + mc_auxmcl.do_for.r],	rax
    mov       rax,	[rbp + mc_auxmcl.do_for.q]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.do_for.mx],	rax
    mov       rax,	[rbp + mc_auxmcl.do_for.q]
    mov       r10,	[rax+8]
    movzx     rax,	byte [r10+66]
    test      rax,	rax
    jz        L1822
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jnz       L1824
    mov       rcx,	[rbp + mc_auxmcl.do_for.incop]
    mov       rdx,	[rbp + mc_auxmcl.do_for.mx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1823
L1824:
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_for.addop]
    mov       rdx,	[rbp + mc_auxmcl.do_for.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1823:
    mov       rax,	[rbp + mc_auxmcl.do_for.mx]
    mov       [rbp + mc_auxmcl.do_for.ax],	rax
    jmp       L1821
L1822:
    call      mc_stackmcl.getworkireg
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_for.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_for.ax]
    mov       r8,	[rbp + mc_auxmcl.do_for.mx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jnz       L1826
    mov       rcx,	[rbp + mc_auxmcl.do_for.incop]
    mov       rdx,	[rbp + mc_auxmcl.do_for.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1825
L1826:
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_for.addop]
    mov       rdx,	[rbp + mc_auxmcl.do_for.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1825:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_for.mx]
    mov       r8,	[rbp + mc_auxmcl.do_for.ax]
    call      mc_libmcl.genmc
L1821:
    mov       rax,	[rbp + mc_auxmcl.do_for.r]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jnz       L1828
    mov       rax,	[rbp + mc_auxmcl.do_for.r]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.do_for.bx],	rax
    jmp       L1827
L1828:
    mov       rax,	[rbp + mc_auxmcl.do_for.r]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.do_for.bx],	rax
L1827:
    mov       rcx,	43
    mov       rdx,	[rbp + mc_auxmcl.do_for.ax]
    mov       r8,	[rbp + mc_auxmcl.do_for.bx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_for.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	[rbp + mc_auxmcl.do_for.cond]
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
L1820:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc scaleindex
mc_auxmcl.scaleindex:
;>>
    %define mc_auxmcl.scaleindex.ax 16
    %define mc_auxmcl.scaleindex.scale 24
    %define mc_auxmcl.scaleindex.n -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_auxmcl.scaleindex.scale]
    cmp       rax,	1
    jz        L1832
    cmp       rax,	2
    jz        L1832
    cmp       rax,	4
    jz        L1832
    cmp       rax,	8
    jnz       L1831
L1832:
    mov       rax,	[rbp + mc_auxmcl.scaleindex.scale]
    jmp       L1829
L1831:
L1830:
    mov       rcx,	[rbp + mc_auxmcl.scaleindex.ax]
    mov       rdx,	[rbp + mc_auxmcl.scaleindex.scale]
    call      mc_auxmcl.mulimm
    mov       rax,	1
L1829:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc mulimm
mc_auxmcl.mulimm:
;>>
    %define mc_auxmcl.mulimm.ax 16
    %define mc_auxmcl.mulimm.n 24
    %define mc_auxmcl.mulimm.shifts -8
    %define mc_auxmcl.mulimm.m -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_auxmcl.mulimm.n]
    cmp       rax,	0
    jz        L1835
    cmp       rax,	1
    jz        L1836
    cmp       rax,	-1
    jz        L1837
    jmp       L1838
L1835:
    mov       rcx,	41
    mov       rdx,	[rbp + mc_auxmcl.mulimm.ax]
    mov       r8,	[rbp + mc_auxmcl.mulimm.ax]
    call      mc_libmcl.genmc
    jmp       L1833
L1836:
    jmp       L1833
L1837:
    mov       rcx,	51
    mov       rdx,	[rbp + mc_auxmcl.mulimm.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L1833
L1838:
L1834:
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.mulimm.shifts],	rax
    mov       rax,	[rbp + mc_auxmcl.mulimm.n]
    mov       [rbp + mc_auxmcl.mulimm.m],	rax
    jmp       L1840
L1839:
    sar       qword [rbp + mc_auxmcl.mulimm.m],	1
    inc       qword [rbp + mc_auxmcl.mulimm.shifts]
L1840:
    mov       eax,	[rbp + mc_auxmcl.mulimm.m]
    and       eax,	1
    test      rax,	rax
    jz        L1839
L1841:
    mov       rax,	[rbp + mc_auxmcl.mulimm.shifts]
    test      rax,	rax
    jz        L1843
    mov       rcx,	[rbp + mc_auxmcl.mulimm.shifts]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	44
    mov       rdx,	[rbp + mc_auxmcl.mulimm.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1843:
L1842:
    mov       rax,	[rbp + mc_auxmcl.mulimm.m]
    cmp       rax,	1
    jz        L1845
    cmp       rax,	3
    jz        L1846
    cmp       rax,	5
    jz        L1846
    cmp       rax,	9
    jz        L1846
    jmp       L1847
L1845:
    jmp       L1833
L1846:
    sub       rsp,	8
    push      0
    push      0
    push      0
    mov       rax,	[rbp + mc_auxmcl.mulimm.m]
    sub       rax,	1
    mov       r10,	[rbp + mc_auxmcl.mulimm.ax]
    movzx     r11,	byte [r10+10]
    mov       r10,	[rbp + mc_auxmcl.mulimm.ax]
    movzx     rdi,	byte [r10+10]
    mov       rcx,	rdi
    mov       rdx,	r11
    mov       r8,	rax
    xor       r9d,	r9d
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       rcx,	15
    mov       rdx,	[rbp + mc_auxmcl.mulimm.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L1844
L1847:
    mov       rax,	[rbp + mc_auxmcl.mulimm.shifts]
    test      rax,	rax
    jz        L1849
    mov       al,	35
    mov       r10,	[mc_decls.mccodex]
    mov       [r10+24],	al
    mov       rcx,	[rbp + mc_auxmcl.mulimm.n]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       r10,	[mc_decls.mccodex]
    mov       [r10+16],	rax
    jmp       L1848
L1849:
    mov       rcx,	[rbp + mc_auxmcl.mulimm.n]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	35
    mov       rdx,	[rbp + mc_auxmcl.mulimm.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L1848:
L1844:
L1833:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_addrmode
mc_auxmcl.do_addrmode:
;>>
    %define mc_auxmcl.do_addrmode.p 16
    %define mc_auxmcl.do_addrmode.px -8
    %define mc_auxmcl.do_addrmode.ax -16
    %define mc_auxmcl.do_addrmode.bx -24
    %define mc_auxmcl.do_addrmode.scale -32
    %define mc_auxmcl.do_addrmode.extra -40
    %define mc_auxmcl.do_addrmode.offset -48
    %define mc_auxmcl.do_addrmode.reg -56
    %define mc_auxmcl.do_addrmode.regix -64
    %define mc_auxmcl.do_addrmode.d -72
    %define mc_auxmcl.do_addrmode.q -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.p]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + mc_auxmcl.do_addrmode.scale],	r10
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.p]
    movsxd    r10,	dword [rax+20]
    mov       [rbp + mc_auxmcl.do_addrmode.extra],	r10
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_addrmode.q],	rax
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.q]
    test      rax,	rax
    jz        L1852
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.q]
    mov       r10,	[rax+8]
    imul      r10,	[rbp + mc_auxmcl.do_addrmode.scale]
    add       r10,	[rbp + mc_auxmcl.do_addrmode.extra]
    mov       [rbp + mc_auxmcl.do_addrmode.offset],	r10
L1852:
L1851:
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_addrmode.px],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    call      mc_auxmcl.ismemaddr
    test      rax,	rax
    jz        L1854
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[mc_decls.noperands]
    mov       r11,	[rax + r10*8-16]
    mov       rax,	[r11+8]
    mov       [rbp + mc_auxmcl.do_addrmode.d],	rax
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	3
    jnz       L1858
    movzx     rax,	byte [mc_decls.phighmem]
    cmp       rax,	2
    jz        L1857
L1858:
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	5
    jnz       L1856
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.d]
    movzx     r10,	byte [rax+58]
    cmp       r10,	11
    jnz       L1856
L1857:
    jmp       L1859
L1856:
L1855:
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.q]
    test      rax,	rax
    jz        L1861
    sub       rsp,	8
    push      qword [rbp + mc_auxmcl.do_addrmode.d]
    push      0
    push      0
    xor       ecx,	ecx
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	[rbp + mc_auxmcl.do_addrmode.offset]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_addrmode.px],	rax
    jmp       L1860
L1861:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.do_addrmode.bx],	r10
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_auxmcl.do_addrmode.scale]
    call      mc_auxmcl.scaleindex
    mov       [rbp + mc_auxmcl.do_addrmode.scale],	rax
    sub       rsp,	8
    push      qword [rbp + mc_auxmcl.do_addrmode.d]
    push      0
    push      0
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.bx]
    movzx     r10,	byte [rax+10]
    xor       ecx,	ecx
    mov       rdx,	r10
    mov       r8,	[rbp + mc_auxmcl.do_addrmode.scale]
    mov       r9,	[rbp + mc_auxmcl.do_addrmode.extra]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_addrmode.px],	rax
L1860:
    jmp       L1853
L1854:
;skip:
L1859:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_addrmode.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.q]
    test      rax,	rax
    jz        L1863
    sub       rsp,	8
    push      0
    push      0
    push      0
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    xor       edx,	edx
    mov       r8,	1
    mov       r9,	[rbp + mc_auxmcl.do_addrmode.offset]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_addrmode.px],	rax
    jmp       L1862
L1863:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.do_addrmode.bx],	r10
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_auxmcl.do_addrmode.scale]
    call      mc_auxmcl.scaleindex
    mov       [rbp + mc_auxmcl.do_addrmode.scale],	rax
    sub       rsp,	8
    push      0
    push      0
    push      0
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.bx]
    movzx     r10,	byte [rax+10]
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.ax]
    movzx     r11,	byte [rax+10]
    mov       rcx,	r11
    mov       rdx,	r10
    mov       r8,	[rbp + mc_auxmcl.do_addrmode.scale]
    mov       r9,	[rbp + mc_auxmcl.do_addrmode.extra]
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       [rbp + mc_auxmcl.do_addrmode.px],	rax
L1862:
L1853:
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.p]
    movzx     r10,	byte [rax+3]
    lea       rax,	[pc_tables.psize]
    movzx     r11,	byte [rax + r10]
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.px]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r10,	-32
    and       di,	r10w
    or        di,	r11w
    mov       [rax],	di
    mov       rax,	[rbp + mc_auxmcl.do_addrmode.px]
L1850:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc dolea
mc_auxmcl.dolea:
;>>
    %define mc_auxmcl.dolea.ax 16
    %define mc_auxmcl.dolea.px 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_auxmcl.dolea.px]
    movzx     r10,	byte [rax+11]
    mov       rax,	[rbp + mc_auxmcl.dolea.px]
    movzx     r11,	word [rax+8]
    shr       r11,	12
    and       r11,	15
    cmp       r11,	r10
    jnz       L1868
    mov       rax,	[rbp + mc_auxmcl.dolea.px]
    movsxd    r10,	dword [rax+12]
    cmp       r10,	r11
    jnz       L1868
    cmp       r10,	0
    jnz       L1868
    mov       rax,	1
    jmp       L1869
L1868:
    xor       eax,	eax
L1869:
    test      rax,	rax
    setnz     al
    movzx     eax,	al
    test      ax,	ax
    jz        L1867
    mov       rax,	[rbp + mc_auxmcl.dolea.px]
    movzx     r10,	byte [rax+10]
    mov       rax,	[rbp + mc_auxmcl.dolea.ax]
    movzx     r11,	byte [rax+10]
    cmp       r10,	r11
    jz        L1866
L1867:
    mov       rcx,	15
    mov       rdx,	[rbp + mc_auxmcl.dolea.ax]
    mov       r8,	[rbp + mc_auxmcl.dolea.px]
    call      mc_libmcl.genmc
L1866:
L1865:
L1864:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_binto
mc_auxmcl.do_binto:
;>>
    %define mc_auxmcl.do_binto.p 16
    %define mc_auxmcl.do_binto.opc 24
    %define mc_auxmcl.do_binto.fopc 32
    %define mc_auxmcl.do_binto.ax -8
    %define mc_auxmcl.do_binto.bx -16
    %define mc_auxmcl.do_binto.rx -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jg        L1872
    mov       rcx,	[rbp + mc_auxmcl.do_binto.p]
    mov       rdx,	[rbp + mc_auxmcl.do_binto.fopc]
    call      mc_auxmcl.do_binto_float
    jmp       L1870
L1872:
L1871:
    mov       rax,	[rbp + mc_auxmcl.do_binto.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_binto.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.do_binto.p]
    movzx     r10,	byte [rax+3]
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_binto.bx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_binto.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_binto.ax]
    mov       r8,	[rbp + mc_auxmcl.do_binto.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L1870:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_binto_float
mc_auxmcl.do_binto_float:
;>>
    %define mc_auxmcl.do_binto_float.p 16
    %define mc_auxmcl.do_binto_float.opc 24
    %define mc_auxmcl.do_binto_float.px -8
    %define mc_auxmcl.do_binto_float.bx -16
    %define mc_auxmcl.do_binto_float.cx -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_binto_float.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	2
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_binto_float.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_binto_float.cx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_binto_float.cx]
    mov       r8,	[rbp + mc_auxmcl.do_binto_float.px]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	[rbp + mc_auxmcl.do_binto_float.opc]
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_auxmcl.do_binto_float.cx]
    mov       r8,	[rbp + mc_auxmcl.do_binto_float.bx]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_binto_float.px]
    mov       r8,	[rbp + mc_auxmcl.do_binto_float.cx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L1873:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_shiftnto
mc_auxmcl.do_shiftnto:
;>>
    %define mc_auxmcl.do_shiftnto.p 16
    %define mc_auxmcl.do_shiftnto.opc 24
    %define mc_auxmcl.do_shiftnto.px -8
    %define mc_auxmcl.do_shiftnto.cx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_shiftnto.px],	rax
    lea       rax,	[mc_decls.pclloc]
    mov       r10,	[mc_decls.noperands]
    movzx     r11,	byte [rax + r10-2]
    cmp       r11,	0
    jnz       L1876
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[mc_decls.noperands]
    mov       r11,	[rax + r10*8-16]
    movzx     rax,	byte [r11+1]
    cmp       rax,	4
    jnz       L1876
    lea       rax,	[mc_decls.pclopnd]
    mov       r10,	[mc_decls.noperands]
    mov       r11,	[rax + r10*8-16]
    mov       rax,	[r11+8]
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	[rbp + mc_auxmcl.do_shiftnto.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_shiftnto.px]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L1875
L1876:
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L1878
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1878:
L1877:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	3
    mov       r8,	11
    call      mc_stackmcl.loadparam
    mov       [rbp + mc_auxmcl.do_shiftnto.cx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_shiftnto.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_shiftnto.px]
    mov       r8,	[rbp + mc_auxmcl.do_shiftnto.cx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L1880
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1880:
L1879:
L1875:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L1874:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_divrem
mc_auxmcl.do_divrem:
;>>
    %define mc_auxmcl.do_divrem.p 16
    %define mc_auxmcl.do_divrem.issigned 24
    %define mc_auxmcl.do_divrem.isdiv 32
    %define mc_auxmcl.do_divrem.ax -8
    %define mc_auxmcl.do_divrem.bx -16
    %define mc_auxmcl.do_divrem.px -24
    %define mc_auxmcl.do_divrem.q -32
    %define mc_auxmcl.do_divrem.opc -40
    %define mc_auxmcl.do_divrem.n -48
    %define mc_auxmcl.do_divrem.shifts -56
    %define mc_auxmcl.do_divrem.fdivto -64
    %define mc_auxmcl.do_divrem.locyy -72
    %define mc_auxmcl.do_divrem.loczz -80
    %define mc_auxmcl.do_divrem.$T1 -88
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	128
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_divrem.fdivto],	al
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       [rbp + mc_auxmcl.do_divrem.locyy],	rax
    mov       rax,	[mc_decls.noperands]
    mov       [rbp + mc_auxmcl.do_divrem.loczz],	rax
    mov       rax,	[rbp + mc_auxmcl.do_divrem.p]
    movzx     r10,	byte [rax]
    cmp       r10,	93
    jz        L1884
    cmp       r10,	94
    jnz       L1883
L1884:
    mov       rax,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       r10,	[rbp + mc_auxmcl.do_divrem.loczz]
    mov       [rbp + mc_auxmcl.do_divrem.loczz],	rax
    mov       [rbp + mc_auxmcl.do_divrem.locyy],	r10
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_divrem.ax],	rax
    mov       al,	1
    mov       [rbp + mc_auxmcl.do_divrem.fdivto],	al
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.ax]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.ax]
    mov       rdx,	rax
    call      mc_stackmcl.makeopndind
    mov       [rbp + mc_auxmcl.do_divrem.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_auxmcl.do_divrem.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_divrem.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.ax]
    mov       r8,	[rbp + mc_auxmcl.do_divrem.px]
    call      mc_libmcl.genmc
    jmp       L1882
L1883:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_divrem.ax],	rax
L1882:
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.loczz]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_divrem.q],	rax
    mov       rax,	[rbp + mc_auxmcl.do_divrem.q]
    test      rax,	rax
    jz        L1886
    mov       rax,	[rbp + mc_auxmcl.do_divrem.isdiv]
    cmp       rax,	1
    jnz       L1886
    mov       rax,	[rbp + mc_auxmcl.do_divrem.q]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.do_divrem.n],	r10
    mov       rax,	[rbp + mc_auxmcl.do_divrem.n]
    cmp       rax,	0
    jz        L1888
    cmp       rax,	1
    jz        L1889
    jmp       L1890
L1888:
    lea       rcx,	[rel L5680]
    lea       rdx,	[rel L5681]
    call      mc_libmcl.merror
    jmp       L1887
L1889:
    call      mc_stackmcl.poppcl
    jmp       L1881
L1890:
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.n]
    call      mc_libmcl.ispoweroftwo
    mov       [rbp + mc_auxmcl.do_divrem.shifts],	rax
    mov       rax,	[rbp + mc_auxmcl.do_divrem.shifts]
    test      rax,	rax
    jz        L1892
    movzx     rax,	byte [rbp + mc_auxmcl.do_divrem.fdivto]
    test      rax,	rax
    jnz       L1892
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.shifts]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.do_divrem.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.do_divrem.issigned]
    test      rax,	rax
    jz        L1894
    mov       rax,	45
    jmp       L1893
L1894:
    mov       rax,	46
L1893:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.ax]
    mov       r8,	[rbp + mc_auxmcl.do_divrem.$T1]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    jmp       L1881
L1892:
L1891:
L1887:
L1886:
L1885:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.loczz]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_divrem.bx],	rax
    call      mc_auxmcl.saverdx
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.loczz]
    call      mc_auxmcl.fixdivopnds
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.loczz]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_divrem.bx],	rax
    mov       rax,	[rbp + mc_auxmcl.do_divrem.issigned]
    test      rax,	rax
    jz        L1896
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psize]
    movzx     r11,	byte [r10 + rax]
    cmp       r11,	8
    jz        L1898
    cmp       r11,	4
    jz        L1899
    cmp       r11,	2
    jz        L1900
    jmp       L1901
L1898:
    mov       rax,	58
    jmp       L1897
L1899:
    mov       rax,	57
    jmp       L1897
L1900:
    mov       rax,	56
    jmp       L1897
L1901:
    lea       rcx,	[rel L5682]
    lea       rdx,	[rel L5683]
    call      mc_libmcl.merror
    xor       eax,	eax
L1897:
    mov       [rbp + mc_auxmcl.do_divrem.opc],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.opc]
    xor       edx,	edx
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	37
    mov       [rbp + mc_auxmcl.do_divrem.opc],	rax
    jmp       L1895
L1896:
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_divrem.$T1],	rax
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	41
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_divrem.$T1]
    call      mc_libmcl.genmc
    mov       rax,	38
    mov       [rbp + mc_auxmcl.do_divrem.opc],	rax
L1895:
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.bx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_divrem.isdiv]
    cmp       rax,	0
    jz        L1903
    cmp       rax,	2
    jz        L1904
    jmp       L1905
L1903:
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_divrem.$T1],	rax
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	28
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_divrem.$T1]
    call      mc_libmcl.genmc
    jmp       L1902
L1904:
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	28
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.bx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	2
    call      mc_stackmcl.swapopndregs
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.loczz]
    call      mc_stackmcl.swapopnds
L1905:
L1902:
    call      mc_auxmcl.restorerdx
    movzx     rax,	byte [rbp + mc_auxmcl.do_divrem.fdivto]
    test      rax,	rax
    jz        L1907
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.do_divrem.bx],	rax
    mov       rcx,	14
    mov       rdx,	[rbp + mc_auxmcl.do_divrem.bx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.locyy]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_divrem.$T1],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_auxmcl.do_divrem.bx]
    mov       rdx,	rax
    call      mc_stackmcl.makeopndind
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.do_divrem.$T1]
    call      mc_libmcl.genmc
L1907:
L1906:
    mov       rax,	[rbp + mc_auxmcl.do_divrem.isdiv]
    cmp       rax,	2
    jz        L1909
    call      mc_stackmcl.poppcl
L1909:
L1908:
L1881:
;---------------
    add       rsp,	128
    pop       rbp
    ret       
;End 
;Proc fixdivopnds
mc_auxmcl.fixdivopnds:
;>>
    %define mc_auxmcl.fixdivopnds.locyy 16
    %define mc_auxmcl.fixdivopnds.loczz 24
    %define mc_auxmcl.fixdivopnds.regx -8
    %define mc_auxmcl.fixdivopnds.regy -16
    %define mc_auxmcl.fixdivopnds.zop -24
    %define mc_auxmcl.fixdivopnds.bx -32
    %define mc_auxmcl.fixdivopnds.ax -40
    %define mc_auxmcl.fixdivopnds.$T1 -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_auxmcl.fixdivopnds.regx],	r11
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_auxmcl.fixdivopnds.loczz]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_auxmcl.fixdivopnds.regy],	r11
    mov       rax,	[rbp + mc_auxmcl.fixdivopnds.regx]
    cmp       rax,	1
    jnz       L1912
    jmp       L1910
L1912:
L1911:
    mov       rcx,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.fixdivopnds.bx],	rax
    mov       rcx,	[rbp + mc_auxmcl.fixdivopnds.loczz]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.fixdivopnds.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.fixdivopnds.regy]
    cmp       rax,	1
    jnz       L1914
    mov       rcx,	28
    mov       rdx,	[rbp + mc_auxmcl.fixdivopnds.bx]
    mov       r8,	[rbp + mc_auxmcl.fixdivopnds.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    mov       rdx,	[rbp + mc_auxmcl.fixdivopnds.loczz]
    call      mc_stackmcl.swapopnds
    jmp       L1910
L1914:
L1913:
    movzx     rax,	byte [mc_decls.regset]
    cmp       rax,	0
    jnz       L1916
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	28
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixdivopnds.bx]
    call      mc_libmcl.genmc
    xor       eax,	eax
    lea       r10,	[mc_decls.regset]
    mov       r11,	[rbp + mc_auxmcl.fixdivopnds.regx]
    mov       [r10 + r11-1],	al
    mov       al,	1
    lea       r10,	[mc_decls.pclreg]
    mov       r11,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    mov       [r10 + r11-1],	al
    mov       al,	1
    mov       [mc_decls.regset],	al
    jmp       L1910
L1916:
L1915:
    mov       rax,	[mc_decls.noperands]
    mov       [rbp + mc_auxmcl.fixdivopnds.zop],	rax
    mov       rax,	[rbp + mc_auxmcl.fixdivopnds.zop]
    cmp       rax,	1
    jl        L1920
L1917:
    lea       rax,	[mc_decls.pclloc]
    mov       r10,	[rbp + mc_auxmcl.fixdivopnds.zop]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	1
    jnz       L1922
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_auxmcl.fixdivopnds.zop]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	1
    jnz       L1922
    jmp       L1919
L1922:
L1921:
L1918:
    mov       rax,	[rbp + mc_auxmcl.fixdivopnds.zop]
    dec       rax
    mov       [rbp + mc_auxmcl.fixdivopnds.zop],	rax
    cmp       rax,	1
    jge       L1917
L1920:
    jmp       L1910
L1919:
    mov       rcx,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.fixdivopnds.$T1],	rax
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	28
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixdivopnds.$T1]
    call      mc_libmcl.genmc
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_auxmcl.fixdivopnds.locyy]
    lea       rax,	[rax + r10-1]
    lea       r10,	[mc_decls.pclreg]
    mov       r11,	[rbp + mc_auxmcl.fixdivopnds.zop]
    lea       r10,	[r10 + r11-1]
    mov       r11b,	[rax]
    mov       dil,	[r10]
    mov       [r10],	r11b
    mov       [rax],	dil
L1910:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc saverdx
mc_auxmcl.saverdx:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    movzx     rax,	byte [pc_decls.r11used]
    test      rax,	rax
    jz        L1925
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1925:
L1924:
L1923:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc restorerdx
mc_auxmcl.restorerdx:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    movzx     rax,	byte [pc_decls.r11used]
    test      rax,	rax
    jz        L1928
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1928:
L1927:
L1926:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc clearblock
mc_auxmcl.clearblock:
;>>
    %define mc_auxmcl.clearblock.ax 16
    %define mc_auxmcl.clearblock.n 24
    %define mc_auxmcl.clearblock.rx -8
    %define mc_auxmcl.clearblock.rcount -16
    %define mc_auxmcl.clearblock.nwords -24
    %define mc_auxmcl.clearblock.lab -32
    %define mc_auxmcl.clearblock.oddbytes -40
    %define mc_auxmcl.clearblock.offset -48
    %define mc_auxmcl.clearblock.workreg -56
    %define mc_auxmcl.clearblock.countreg -64
    %define mc_auxmcl.clearblock.av_1 -72
    %define mc_auxmcl.clearblock.i -80
    %define mc_auxmcl.clearblock.$T1 -88
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	128
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_auxmcl.clearblock.n]
    mov       r10,	8
    cqo       
    idiv      r10
    xchg      rax,	rdx
    mov       [rbp + mc_auxmcl.clearblock.oddbytes],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.oddbytes]
    sub       [rbp + mc_auxmcl.clearblock.n],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.n]
    sar       rax,	3
    mov       [rbp + mc_auxmcl.clearblock.nwords],	rax
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.clearblock.rx],	rax
    mov       rcx,	41
    mov       rdx,	[rbp + mc_auxmcl.clearblock.rx]
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.clearblock.offset],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.nwords]
    cmp       rax,	1
    jl        L1931
    cmp       rax,	8
    jg        L1931
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.clearblock.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.nwords]
    mov       [rbp + mc_auxmcl.clearblock.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.av_1]
    cmp       rax,	0
    jle       L1934
L1932:
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.clearblock.offset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	8
    add       [rbp + mc_auxmcl.clearblock.offset],	rax
L1933:
    dec       qword [rbp + mc_auxmcl.clearblock.av_1]
    jnz       L1932
L1934:
    jmp       L1930
L1931:
    mov       rax,	[rbp + mc_auxmcl.clearblock.nwords]
    cmp       rax,	0
    jz        L1935
    mov       rax,	[rbp + mc_auxmcl.clearblock.nwords]
    and       rax,	3
    test      rax,	rax
    jz        L1937
    call      mc_stackmcl.getworkireg
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.clearblock.countreg],	r10
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.clearblock.rcount],	rax
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [rbp + mc_auxmcl.clearblock.lab],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_auxmcl.clearblock.ax],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.nwords]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.clearblock.rcount]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.clearblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    mov       rcx,	8
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.clearblock.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	29
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	54
    mov       rdx,	[rbp + mc_auxmcl.clearblock.rcount]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.clearblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	5
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.clearblock.offset],	rax
    jmp       L1936
L1937:
    call      mc_stackmcl.getworkireg
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.clearblock.countreg],	r10
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.clearblock.rcount],	rax
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [rbp + mc_auxmcl.clearblock.lab],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_auxmcl.clearblock.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.nwords]
    sar       rax,	2
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.clearblock.rcount]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.clearblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	1
    mov       [rbp + mc_auxmcl.clearblock.i],	rax
L1938:
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.clearblock.offset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	8
    add       [rbp + mc_auxmcl.clearblock.offset],	rax
L1939:
    mov       rax,	[rbp + mc_auxmcl.clearblock.i]
    inc       rax
    mov       [rbp + mc_auxmcl.clearblock.i],	rax
    cmp       rax,	4
    jle       L1938
L1940:
    mov       rcx,	32
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.clearblock.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	29
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	54
    mov       rdx,	[rbp + mc_auxmcl.clearblock.rcount]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.clearblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	5
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.clearblock.offset],	rax
L1936:
L1935:
L1930:
    mov       rax,	[rbp + mc_auxmcl.clearblock.oddbytes]
    test      rax,	rax
    jz        L1942
    mov       rax,	[rbp + mc_auxmcl.clearblock.oddbytes]
    mov       [rbp + mc_auxmcl.clearblock.n],	rax
    mov       rax,	[rbp + mc_auxmcl.clearblock.n]
    cmp       rax,	4
    jl        L1944
    mov       rcx,	[rbp + mc_auxmcl.clearblock.rx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.clearblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.clearblock.offset]
    mov       r8,	4
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	4
    sub       [rbp + mc_auxmcl.clearblock.n],	rax
    mov       rax,	4
    add       [rbp + mc_auxmcl.clearblock.offset],	rax
L1944:
L1943:
    mov       rax,	[rbp + mc_auxmcl.clearblock.n]
    cmp       rax,	2
    jl        L1946
    mov       rcx,	[rbp + mc_auxmcl.clearblock.rx]
    mov       rdx,	2
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.clearblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.clearblock.offset]
    mov       r8,	2
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	2
    sub       [rbp + mc_auxmcl.clearblock.n],	rax
    mov       rax,	2
    add       [rbp + mc_auxmcl.clearblock.offset],	rax
L1946:
L1945:
    mov       rax,	[rbp + mc_auxmcl.clearblock.n]
    cmp       rax,	1
    jnz       L1948
    mov       rcx,	[rbp + mc_auxmcl.clearblock.rx]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.clearblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.clearblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.clearblock.offset]
    mov       r8,	1
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.clearblock.rx]
    call      mc_libmcl.genmc
L1948:
L1947:
L1942:
L1941:
L1929:
;---------------
    add       rsp,	128
    pop       rbp
    ret       
;End 
;Proc do_blockdata
mc_auxmcl.do_blockdata:
;>>
    %define mc_auxmcl.do_blockdata.p 16
    %define mc_auxmcl.do_blockdata.s -8
    %define mc_auxmcl.do_blockdata.d -16
    %define mc_auxmcl.do_blockdata.n -24
    %define mc_auxmcl.do_blockdata.nqwords -32
    %define mc_auxmcl.do_blockdata.nwords -40
    %define mc_auxmcl.do_blockdata.r -48
    %define mc_auxmcl.do_blockdata.av_1 -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.p]
    mov       r10d,	[rax+4]
    mov       [rbp + mc_auxmcl.do_blockdata.n],	r10
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.n]
    cmp       rax,	0
    jnz       L1951
    jmp       L1949
L1951:
L1950:
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.n]
    sar       rax,	3
    mov       [rbp + mc_auxmcl.do_blockdata.nwords],	rax
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.do_blockdata.d],	r10
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.nwords]
    mov       [rbp + mc_auxmcl.do_blockdata.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.av_1]
    cmp       rax,	0
    jle       L1954
L1952:
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.d]
    add       qword [rbp + mc_auxmcl.do_blockdata.d],	8
    mov       r10,	[rax]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	119
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1953:
    dec       qword [rbp + mc_auxmcl.do_blockdata.av_1]
    jnz       L1952
L1954:
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.nwords]
    imul      rax,	8
    mov       r10,	[rbp + mc_auxmcl.do_blockdata.n]
    sub       r10,	rax
    mov       [rbp + mc_auxmcl.do_blockdata.r],	r10
    mov       rax,	[rbp + mc_auxmcl.do_blockdata.r]
    test      rax,	rax
    jz        L1956
    mov       rcx,	[rbp + mc_auxmcl.do_blockdata.d]
    mov       rdx,	[rbp + mc_auxmcl.do_blockdata.r]
    mov       r8,	66
    call      mc_auxmcl.genstring_db
L1956:
L1955:
    lea       rcx,	[rel L5684]
    call      mc_libmcl.mgencomment
L1949:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc copyblock
mc_auxmcl.copyblock:
;>>
    %define mc_auxmcl.copyblock.ax 16
    %define mc_auxmcl.copyblock.bx 24
    %define mc_auxmcl.copyblock.n 32
    %define mc_auxmcl.copyblock.savedest 40
    %define mc_auxmcl.copyblock.rx -8
    %define mc_auxmcl.copyblock.rcount -16
    %define mc_auxmcl.copyblock.nwords -24
    %define mc_auxmcl.copyblock.lab -32
    %define mc_auxmcl.copyblock.oddbytes -40
    %define mc_auxmcl.copyblock.offset -48
    %define mc_auxmcl.copyblock.workreg -56
    %define mc_auxmcl.copyblock.countreg -64
    %define mc_auxmcl.copyblock.axreg -72
    %define mc_auxmcl.copyblock.saved -80
    %define mc_auxmcl.copyblock.av_1 -88
    %define mc_auxmcl.copyblock.$T1 -96
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	128
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.copyblock.saved],	al
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    cmp       rax,	16
    jnz       L1959
    mov       rcx,	2
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.copyblock.rx],	rax
    mov       rcx,	91
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	[rbp + mc_auxmcl.copyblock.bx]
    call      mc_libmcl.genmc
    mov       rcx,	91
    mov       rdx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
    jmp       L1957
L1959:
L1958:
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    mov       r10,	8
    cqo       
    idiv      r10
    xchg      rax,	rdx
    mov       [rbp + mc_auxmcl.copyblock.oddbytes],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.oddbytes]
    sub       [rbp + mc_auxmcl.copyblock.n],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    sar       rax,	3
    mov       [rbp + mc_auxmcl.copyblock.nwords],	rax
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.copyblock.rx],	rax
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.copyblock.offset],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.nwords]
    cmp       rax,	1
    jl        L1961
    cmp       rax,	4
    jg        L1961
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.copyblock.ax],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.copyblock.bx],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.nwords]
    mov       [rbp + mc_auxmcl.copyblock.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.av_1]
    cmp       rax,	0
    jle       L1964
L1962:
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	8
    add       [rbp + mc_auxmcl.copyblock.offset],	rax
L1963:
    dec       qword [rbp + mc_auxmcl.copyblock.av_1]
    jnz       L1962
L1964:
    jmp       L1960
L1961:
    mov       rax,	[rbp + mc_auxmcl.copyblock.nwords]
    cmp       rax,	0
    jz        L1965
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.copyblock.rcount],	rax
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [rbp + mc_auxmcl.copyblock.lab],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.savedest]
    test      rax,	rax
    jz        L1967
    mov       rax,	[rbp + mc_auxmcl.copyblock.ax]
    movzx     r10,	byte [rax+10]
    mov       [rbp + mc_auxmcl.copyblock.axreg],	r10
    mov       rcx,	[rbp + mc_auxmcl.copyblock.axreg]
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       al,	1
    mov       [rbp + mc_auxmcl.copyblock.saved],	al
L1967:
L1966:
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_auxmcl.copyblock.ax],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_auxmcl.copyblock.bx],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.ax]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    mov       rcx,	[rbp + mc_auxmcl.copyblock.nwords]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rcount]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	[rbp + mc_auxmcl.copyblock.bx]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
    mov       rcx,	8
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.copyblock.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	29
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	8
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.copyblock.$T1],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.bx]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	29
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	54
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rcount]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	5
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.copyblock.offset],	rax
L1965:
L1960:
    mov       rax,	[rbp + mc_auxmcl.copyblock.oddbytes]
    test      rax,	rax
    jz        L1969
    mov       rax,	[rbp + mc_auxmcl.copyblock.oddbytes]
    mov       [rbp + mc_auxmcl.copyblock.n],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    cmp       rax,	4
    jl        L1971
    mov       rcx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.copyblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	4
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	4
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	4
    sub       [rbp + mc_auxmcl.copyblock.n],	rax
    mov       rax,	4
    add       [rbp + mc_auxmcl.copyblock.offset],	rax
L1971:
L1970:
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    cmp       rax,	2
    jl        L1973
    mov       rcx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       rdx,	2
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.copyblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	2
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	2
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
    mov       rax,	2
    sub       [rbp + mc_auxmcl.copyblock.n],	rax
    mov       rax,	2
    add       [rbp + mc_auxmcl.copyblock.offset],	rax
L1973:
L1972:
    mov       rax,	[rbp + mc_auxmcl.copyblock.n]
    cmp       rax,	1
    jnz       L1975
    mov       rcx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_auxmcl.copyblock.rx],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblock.bx]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	1
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblock.rx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.copyblock.ax]
    mov       rdx,	[rbp + mc_auxmcl.copyblock.offset]
    mov       r8,	1
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.copyblock.rx]
    call      mc_libmcl.genmc
L1975:
L1974:
L1969:
L1968:
    movzx     rax,	byte [rbp + mc_auxmcl.copyblock.saved]
    test      rax,	rax
    jz        L1977
    mov       rcx,	[rbp + mc_auxmcl.copyblock.axreg]
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L1977:
L1976:
L1957:
;---------------
    add       rsp,	128
    pop       rbp
    ret       
;End 
;Proc genstringtable
mc_auxmcl.genstringtable:
;>>
    %define mc_auxmcl.genstringtable.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	[mc_decls.cstringlist]
    test      rax,	rax
    jnz       L1980
    jmp       L1978
L1980:
L1979:
    lea       rcx,	[rel L5685]
    call      mc_libmcl.mgencomment
    mov       rcx,	73
    mov       rdx,	8
    call      mc_libmcl.setsegment
    mov       rax,	[mc_decls.kk0used]
    test      rax,	rax
    jz        L1982
    mov       rcx,	[mc_decls.kk0used]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    xor       ecx,	ecx
    call      mc_auxmcl.gendb
L1982:
L1981:
    mov       rax,	[mc_decls.cstringlist]
    mov       [rbp + mc_auxmcl.genstringtable.p],	rax
    jmp       L1986
L1983:
    mov       rax,	[rbp + mc_auxmcl.genstringtable.p]
    mov       r10,	[rax+16]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.genstringtable.p]
    mov       r10,	[rax]
    mov       rcx,	r10
    mov       rdx,	-1
    xor       r8d,	r8d
    call      mc_auxmcl.genstring_db
L1984:
    mov       rax,	[rbp + mc_auxmcl.genstringtable.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.genstringtable.p],	r10
L1986:
    mov       rax,	[rbp + mc_auxmcl.genstringtable.p]
    test      rax,	rax
    jnz       L1983
L1985:
L1978:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genstring_db
mc_auxmcl.genstring_db:
;>>
    %define mc_auxmcl.genstring_db.s 16
    %define mc_auxmcl.genstring_db.length 24
    %define mc_auxmcl.genstring_db.strtype 32
    %define mc_auxmcl.genstring_db.i -8
    %define mc_auxmcl.genstring_db.c -16
    %define mc_auxmcl.genstring_db.seqlen -24
    %define mc_auxmcl.genstring_db.seq -32
    %define mc_auxmcl.genstring_db.av_1 -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_auxmcl.genstring_db.length]
    cmp       rax,	-1
    jnz       L1989
    mov       rcx,	[rbp + mc_auxmcl.genstring_db.s]
    call      strlen
    mov       [rbp + mc_auxmcl.genstring_db.length],	rax
L1989:
L1988:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.length]
    cmp       rax,	0
    jnz       L1991
    xor       ecx,	ecx
    call      mc_auxmcl.gendb
    jmp       L1987
L1991:
L1990:
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.genstring_db.seqlen],	rax
    mov       rax,	[rbp + mc_auxmcl.genstring_db.length]
    mov       [rbp + mc_auxmcl.genstring_db.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.genstring_db.av_1]
    cmp       rax,	0
    jle       L1994
L1992:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.s]
    inc       qword [rbp + mc_auxmcl.genstring_db.s]
    movzx     r10,	byte [rax]
    mov       [rbp + mc_auxmcl.genstring_db.c],	r10
    mov       rax,	[rbp + mc_auxmcl.genstring_db.c]
    cmp       rax,	32
    jl        L1997
    mov       rax,	[rbp + mc_auxmcl.genstring_db.c]
    cmp       rax,	127
    jge       L1997
    mov       rax,	[rbp + mc_auxmcl.genstring_db.c]
    cmp       rax,	34
    jz        L1998
    cmp       rax,	92
    jnz       L1996
L1998:
L1997:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.seqlen]
    test      rax,	rax
    jz        L2000
    mov       rcx,	[rbp + mc_auxmcl.genstring_db.seq]
    mov       rdx,	[rbp + mc_auxmcl.genstring_db.seqlen]
    call      mc_auxmcl.gendbstring
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.genstring_db.seqlen],	rax
L2000:
L1999:
    mov       rcx,	[rbp + mc_auxmcl.genstring_db.c]
    call      mc_auxmcl.gendb
    jmp       L1995
L1996:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.seqlen]
    cmp       rax,	0
    jnz       L2002
    mov       rax,	1
    mov       [rbp + mc_auxmcl.genstring_db.seqlen],	rax
    mov       rax,	[rbp + mc_auxmcl.genstring_db.s]
    sub       rax,	1
    mov       [rbp + mc_auxmcl.genstring_db.seq],	rax
    jmp       L2001
L2002:
    inc       qword [rbp + mc_auxmcl.genstring_db.seqlen]
L2001:
L1995:
L1993:
    dec       qword [rbp + mc_auxmcl.genstring_db.av_1]
    jnz       L1992
L1994:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.seqlen]
    test      rax,	rax
    jz        L2004
    mov       rcx,	[rbp + mc_auxmcl.genstring_db.seq]
    mov       rdx,	[rbp + mc_auxmcl.genstring_db.seqlen]
    call      mc_auxmcl.gendbstring
L2004:
L2003:
    mov       rax,	[rbp + mc_auxmcl.genstring_db.strtype]
    cmp       rax,	0
    jnz       L2006
    xor       ecx,	ecx
    call      mc_auxmcl.gendb
L2006:
L2005:
L1987:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc gendb
mc_auxmcl.gendb:
;>>
    %define mc_auxmcl.gendb.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_auxmcl.gendb.a]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	116
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2007:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gendbstring
mc_auxmcl.gendbstring:
;>>
    %define mc_auxmcl.gendbstring.s 16
    %define mc_auxmcl.gendbstring.length 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mc_auxmcl.gendbstring.s]
    mov       rdx,	[rbp + mc_auxmcl.gendbstring.length]
    call      mc_libmcl.mgenstring
    mov       rcx,	116
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2008:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gendq
mc_auxmcl.gendq:
;>>
    %define mc_auxmcl.gendq.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_auxmcl.gendq.a]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	119
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2009:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genrealtable
mc_auxmcl.genrealtable:
;>>
    %define mc_auxmcl.genrealtable.p -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rax,	[mc_decls.creallist]
    test      rax,	rax
    jnz       L2012
    mov       rax,	[mc_decls.creal32list]
    test      rax,	rax
    jnz       L2012
    jmp       L2010
L2012:
L2011:
    lea       rcx,	[rel L5686]
    call      mc_libmcl.mgencomment
    mov       rcx,	73
    mov       rdx,	8
    call      mc_libmcl.setsegment
    mov       rax,	[mc_decls.creallist]
    mov       [rbp + mc_auxmcl.genrealtable.p],	rax
    jmp       L2016
L2013:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    mov       r10,	[rax+16]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    comisd    XMM4,	[rel L5687]
    jnz       L2018
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    movq      rax,	XMM4
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	119
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2017
L2018:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    movq      XMM0,	XMM4
    mov       rdx,	2
    call      mc_libmcl.mgenrealimm
    mov       rcx,	119
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2017:
L2014:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.genrealtable.p],	r10
L2016:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    test      rax,	rax
    jnz       L2013
L2015:
    lea       rcx,	[rel L5688]
    call      mc_libmcl.mgencomment
    mov       rax,	[mc_decls.creal32list]
    mov       [rbp + mc_auxmcl.genrealtable.p],	rax
    jmp       L2022
L2019:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    mov       r10,	[rax+16]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    comisd    XMM4,	[rel L5689]
    jnz       L2024
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    cvtsd2ss  XMM4,	XMM4
    movq      rax,	XMM4
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	118
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2023
L2024:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    movq      XMM4,	[rax]
    movq      XMM0,	XMM4
    mov       rdx,	1
    call      mc_libmcl.mgenrealimm
    mov       rcx,	118
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2023:
L2020:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.genrealtable.p],	r10
L2022:
    mov       rax,	[rbp + mc_auxmcl.genrealtable.p]
    test      rax,	rax
    jnz       L2019
L2021:
L2010:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genabsneg
mc_auxmcl.genabsneg:
;>>
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[mc_decls.lababs32]
    add       rax,	[mc_decls.lababs64]
    add       rax,	[mc_decls.labneg32]
    add       rax,	[mc_decls.labneg64]
    test      rax,	rax
    jz        L2027
    mov       rcx,	73
    mov       rdx,	16
    call      mc_libmcl.setsegment
L2027:
L2026:
    mov       rax,	[mc_decls.lababs32]
    test      rax,	rax
    jz        L2029
    lea       rcx,	[rel L5690]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.lababs32]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9223372034707292159
    call      mc_auxmcl.gendq
    mov       rcx,	9223372034707292159
    call      mc_auxmcl.gendq
L2029:
L2028:
    mov       rax,	[mc_decls.lababs64]
    test      rax,	rax
    jz        L2031
    lea       rcx,	[rel L5691]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.lababs64]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9223372036854775807
    call      mc_auxmcl.gendq
    mov       rcx,	9223372036854775807
    call      mc_auxmcl.gendq
L2031:
L2030:
    mov       rax,	[mc_decls.labneg32]
    test      rax,	rax
    jz        L2033
    lea       rcx,	[rel L5692]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.labneg32]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	-9223372034707292160
    call      mc_auxmcl.gendq
    mov       rcx,	-9223372034707292160
    call      mc_auxmcl.gendq
L2033:
L2032:
    mov       rax,	[mc_decls.labneg64]
    test      rax,	rax
    jz        L2035
    lea       rcx,	[rel L5693]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.labneg64]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	-9223372036854775808
    call      mc_auxmcl.gendq
    mov       rcx,	-9223372036854775808
    call      mc_auxmcl.gendq
L2035:
L2034:
    mov       rax,	[mc_decls.labzero]
    test      rax,	rax
    jz        L2037
    lea       rcx,	[rel L5694]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.labzero]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    xor       ecx,	ecx
    call      mc_auxmcl.gendq
L2037:
L2036:
    mov       rax,	[mc_decls.labmask63]
    test      rax,	rax
    jz        L2039
    lea       rcx,	[rel L5695]
    call      mc_libmcl.mgencomment
    mov       rcx,	[mc_decls.labmask63]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9223372036854775807
    call      mc_auxmcl.gendq
    mov       rcx,	[mc_decls.laboffset64]
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	4890909195324358656
    call      mc_auxmcl.gendq
L2039:
L2038:
L2025:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_maths
mc_auxmcl.do_maths:
;>>
    %define mc_auxmcl.do_maths.p 16
    %define mc_auxmcl.do_maths.opname 24
    %define mc_auxmcl.do_maths.nargs 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mc_auxmcl.do_maths.p]
    mov       rdx,	[rbp + mc_auxmcl.do_maths.opname]
    xor       r8d,	r8d
    mov       r9,	[rbp + mc_auxmcl.do_maths.nargs]
    call      mc_auxmcl.do_callrts
L2040:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_host
mc_auxmcl.do_host:
;>>
    %define mc_auxmcl.do_host.p 16
    %define mc_auxmcl.do_host.d 24
    %define mc_auxmcl.do_host.nargs 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mc_auxmcl.do_host.p]
    xor       edx,	edx
    mov       r8,	[rbp + mc_auxmcl.do_host.d]
    mov       r9,	[rbp + mc_auxmcl.do_host.nargs]
    call      mc_auxmcl.do_callrts
L2041:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_callrts
mc_auxmcl.do_callrts:
;>>
    %define mc_auxmcl.do_callrts.p 16
    %define mc_auxmcl.do_callrts.opname 24
    %define mc_auxmcl.do_callrts.d 32
    %define mc_auxmcl.do_callrts.nargs 40
    %define mc_auxmcl.do_callrts.slots -8
    %define mc_auxmcl.do_callrts.av_1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.nargs]
    call      mc_stackmcl.saveopnds
    xor       eax,	eax
    mov       [rbp + mc_auxmcl.do_callrts.slots],	rax
    mov       eax,	[mc_decls.mstackdepth]
    and       eax,	1
    test      rax,	rax
    jz        L2044
    mov       rcx,	1
    call      mc_libmcl.pushslots
    mov       rax,	1
    mov       [rbp + mc_auxmcl.do_callrts.slots],	rax
L2044:
L2043:
    mov       rax,	[rbp + mc_auxmcl.do_callrts.nargs]
    cmp       [pc_decls.highargs],	rax
    jge       L5696
    mov       [pc_decls.highargs],	rax
L5696:
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.nargs]
    xor       edx,	edx
    xor       r8d,	r8d
    call      mc_auxmcl.do_pushlowargs
    mov       rax,	[mc_decls.mstackdepth]
    test      rax,	rax
    jz        L2046
    mov       rax,	4
    add       [rbp + mc_auxmcl.do_callrts.slots],	rax
    mov       rcx,	4
    call      mc_libmcl.pushslots
    jmp       L2045
L2046:
    mov       al,	1
    mov       [pc_decls.localshadow],	al
L2045:
    mov       rax,	[rbp + mc_auxmcl.do_callrts.opname]
    test      rax,	rax
    jz        L2048
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.opname]
    call      mc_libmcl.mgenextname
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2047
L2048:
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.d]
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2047:
    mov       rax,	[rbp + mc_auxmcl.do_callrts.nargs]
    mov       [rbp + mc_auxmcl.do_callrts.av_1],	rax
    mov       rax,	[rbp + mc_auxmcl.do_callrts.av_1]
    cmp       rax,	0
    jle       L2051
L2049:
    call      mc_stackmcl.poppcl
L2050:
    dec       qword [rbp + mc_auxmcl.do_callrts.av_1]
    jnz       L2049
L2051:
    mov       rax,	[rbp + mc_auxmcl.do_callrts.slots]
    test      rax,	rax
    jz        L2053
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.slots]
    call      mc_libmcl.popslots
L2053:
L2052:
    mov       rcx,	[rbp + mc_auxmcl.do_callrts.p]
    call      mc_auxmcl.do_getretvalue
L2042:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_max_int
mc_auxmcl.do_max_int:
;>>
    %define mc_auxmcl.do_max_int.cond 16
    %define mc_auxmcl.do_max_int.ax -8
    %define mc_auxmcl.do_max_int.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_max_int.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_max_int.bx],	rax
    mov       rcx,	43
    mov       rdx,	[rbp + mc_auxmcl.do_max_int.ax]
    mov       r8,	[rbp + mc_auxmcl.do_max_int.bx]
    call      mc_libmcl.genmc
    mov       rcx,	16
    mov       rdx,	[rbp + mc_auxmcl.do_max_int.cond]
    mov       r8,	[rbp + mc_auxmcl.do_max_int.ax]
    mov       r9,	[rbp + mc_auxmcl.do_max_int.bx]
    call      mc_libmcl.genmc_cond
    call      mc_stackmcl.poppcl
L2054:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_max_float
mc_auxmcl.do_max_float:
;>>
    %define mc_auxmcl.do_max_float.opc 16
    %define mc_auxmcl.do_max_float.ax -8
    %define mc_auxmcl.do_max_float.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_max_float.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_max_float.bx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_max_float.opc]
    mov       rdx,	[rbp + mc_auxmcl.do_max_float.ax]
    mov       r8,	[rbp + mc_auxmcl.do_max_float.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2055:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_maxto_int
mc_auxmcl.do_maxto_int:
;>>
    %define mc_auxmcl.do_maxto_int.cond 16
    %define mc_auxmcl.do_maxto_int.mode 24
    %define mc_auxmcl.do_maxto_int.ax -8
    %define mc_auxmcl.do_maxto_int.bx -16
    %define mc_auxmcl.do_maxto_int.lx -24
    %define mc_auxmcl.do_maxto_int.lab -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_maxto_int.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_maxto_int.bx],	rax
    mov       rcx,	43
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_int.ax]
    mov       r8,	[rbp + mc_auxmcl.do_maxto_int.bx]
    call      mc_libmcl.genmc
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [rbp + mc_auxmcl.do_maxto_int.lab],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_maxto_int.lab]
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.do_maxto_int.lx],	r10
    mov       rcx,	27
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_int.cond]
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_int.ax]
    mov       r8,	[rbp + mc_auxmcl.do_maxto_int.bx]
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_int.lx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2056:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_maxto_real
mc_auxmcl.do_maxto_real:
;>>
    %define mc_auxmcl.do_maxto_real.cond 16
    %define mc_auxmcl.do_maxto_real.mode 24
    %define mc_auxmcl.do_maxto_real.px -8
    %define mc_auxmcl.do_maxto_real.ax -16
    %define mc_auxmcl.do_maxto_real.bx -24
    %define mc_auxmcl.do_maxto_real.lx -32
    %define mc_auxmcl.do_maxto_real.lab -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.mode]
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_maxto_real.px],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.mode]
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_maxto_real.bx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_maxto_real.mode]
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_auxmcl.do_maxto_real.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.ax]
    mov       r8,	[rbp + mc_auxmcl.do_maxto_real.px]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_maxto_real.mode]
    sub       rax,	1
    mov       r10,	74
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.ax]
    mov       r8,	[rbp + mc_auxmcl.do_maxto_real.bx]
    call      mc_libmcl.genmc
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [rbp + mc_auxmcl.do_maxto_real.lab],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_maxto_real.lab]
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_auxmcl.do_maxto_real.lx],	r10
    mov       rcx,	27
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.cond]
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.px]
    mov       r8,	[rbp + mc_auxmcl.do_maxto_real.bx]
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_auxmcl.do_maxto_real.lx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2057:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc do_negreal
mc_auxmcl.do_negreal:
;>>
    %define mc_auxmcl.do_negreal.ax 16
    %define mc_auxmcl.do_negreal.mode 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    test      rax,	rax
    jz        L2060
    mov       rax,	[mc_decls.labneg64]
    test      rax,	rax
    jnz       L2062
    call      mc_libmcl.mcreatefwdlabel
    mov       [mc_decls.labneg64],	rax
L2062:
L2061:
    mov       rcx,	[mc_decls.labneg64]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	77
    mov       rdx,	[rbp + mc_auxmcl.do_negreal.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2059
L2060:
    mov       rax,	[mc_decls.labneg32]
    test      rax,	rax
    jnz       L2064
    call      mc_libmcl.mcreatefwdlabel
    mov       [mc_decls.labneg32],	rax
L2064:
L2063:
    mov       rcx,	[mc_decls.labneg32]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	76
    mov       rdx,	[rbp + mc_auxmcl.do_negreal.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2059:
L2058:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_absreal
mc_auxmcl.do_absreal:
;>>
    %define mc_auxmcl.do_absreal.ax 16
    %define mc_auxmcl.do_absreal.mode 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    test      rax,	rax
    jz        L2067
    mov       rax,	[mc_decls.lababs64]
    test      rax,	rax
    jnz       L2069
    call      mc_libmcl.mcreatefwdlabel
    mov       [mc_decls.lababs64],	rax
L2069:
L2068:
    mov       rcx,	[mc_decls.lababs64]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	79
    mov       rdx,	[rbp + mc_auxmcl.do_absreal.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2066
L2067:
    mov       rax,	[mc_decls.lababs32]
    test      rax,	rax
    jnz       L2071
    call      mc_libmcl.mcreatefwdlabel
    mov       [mc_decls.lababs32],	rax
L2071:
L2070:
    mov       rcx,	[mc_decls.lababs32]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	78
    mov       rdx,	[rbp + mc_auxmcl.do_absreal.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2066:
L2065:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_loadbf_const
mc_auxmcl.do_loadbf_const:
;>>
    %define mc_auxmcl.do_loadbf_const.p 16
    %define mc_auxmcl.do_loadbf_const.i 24
    %define mc_auxmcl.do_loadbf_const.j 32
    %define mc_auxmcl.do_loadbf_const.ax -8
    %define mc_auxmcl.do_loadbf_const.mx -16
    %define mc_auxmcl.do_loadbf_const.mask -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	2
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_loadbf_const.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.do_loadbf_const.j]
    cmp       rax,	63
    jnz       L2074
    mov       rcx,	[rbp + mc_auxmcl.do_loadbf_const.i]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	45
    mov       rdx,	[rbp + mc_auxmcl.do_loadbf_const.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2073
L2074:
    mov       rax,	[rbp + mc_auxmcl.do_loadbf_const.i]
    test      rax,	rax
    jz        L2076
    mov       rcx,	[rbp + mc_auxmcl.do_loadbf_const.i]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	46
    mov       rdx,	[rbp + mc_auxmcl.do_loadbf_const.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2076:
L2075:
    mov       rax,	[rbp + mc_auxmcl.do_loadbf_const.j]
    sub       rax,	[rbp + mc_auxmcl.do_loadbf_const.i]
    add       rax,	1
    mov       r10,	-1
    mov       cl,	al
    shl       r10,	cl
    not       r10
    mov       [rbp + mc_auxmcl.do_loadbf_const.mask],	r10
    mov       rax,	[rbp + mc_auxmcl.do_loadbf_const.mask]
    cmp       rax,	2147483647
    ja        L2078
    mov       rcx,	[rbp + mc_auxmcl.do_loadbf_const.mask]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	39
    mov       rdx,	[rbp + mc_auxmcl.do_loadbf_const.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2077
L2078:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_loadbf_const.mx],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_loadbf_const.mask]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_loadbf_const.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	39
    mov       rdx,	[rbp + mc_auxmcl.do_loadbf_const.ax]
    mov       r8,	[rbp + mc_auxmcl.do_loadbf_const.mx]
    call      mc_libmcl.genmc
L2077:
L2073:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2072:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_loadbf_var
mc_auxmcl.do_loadbf_var:
;>>
    %define mc_auxmcl.do_loadbf_var.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    lea       rcx,	[rel L5697]
    lea       rdx,	[rel L5698]
    call      mc_libmcl.merror
L2079:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_storebit
mc_auxmcl.do_storebit:
;>>
    %define mc_auxmcl.do_storebit.p 16
    %define mc_auxmcl.do_storebit.px -8
    %define mc_auxmcl.do_storebit.ax -16
    %define mc_auxmcl.do_storebit.cx -24
    %define mc_auxmcl.do_storebit.ix -32
    %define mc_auxmcl.do_storebit.q -40
    %define mc_auxmcl.do_storebit.r -48
    %define mc_auxmcl.do_storebit.i -56
    %define mc_auxmcl.do_storebit.offset -64
    %define mc_auxmcl.do_storebit.mask1s -72
    %define mc_auxmcl.do_storebit.mask0s -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
;---------------
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_storebit.q],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	2
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_storebit.r],	rax
    mov       rax,	[rbp + mc_auxmcl.do_storebit.q]
    test      rax,	rax
    jz        L2082
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	3
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_storebit.px],	rax
    mov       rax,	[rbp + mc_auxmcl.do_storebit.q]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.do_storebit.i],	r10
    mov       rax,	[rbp + mc_auxmcl.do_storebit.i]
    sar       rax,	3
    mov       [rbp + mc_auxmcl.do_storebit.offset],	rax
    mov       rax,	7
    and       [rbp + mc_auxmcl.do_storebit.i],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.offset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       [rbp + mc_auxmcl.do_storebit.px],	rax
    mov       rax,	1
    mov       cl,	[rbp + mc_auxmcl.do_storebit.i]
    shl       rax,	cl
    mov       [rbp + mc_auxmcl.do_storebit.mask0s],	al
    mov       rax,	1
    mov       cl,	[rbp + mc_auxmcl.do_storebit.i]
    shl       rax,	cl
    not       rax
    mov       [rbp + mc_auxmcl.do_storebit.mask1s],	al
    mov       rax,	[rbp + mc_auxmcl.do_storebit.r]
    test      rax,	rax
    jz        L2084
    mov       rax,	[rbp + mc_auxmcl.do_storebit.r]
    mov       r10,	[rax+8]
    cmp       r10,	0
    jnz       L2086
    movzx     rax,	byte [mc_decls.pmode]
    movzx     r10,	byte [rbp + mc_auxmcl.do_storebit.mask1s]
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_libmcl.mgenint
    mov       rcx,	39
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2085
L2086:
    movzx     rax,	byte [mc_decls.pmode]
    movzx     r10,	byte [rbp + mc_auxmcl.do_storebit.mask0s]
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_libmcl.mgenint
    mov       rcx,	40
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2085:
    jmp       L2083
L2084:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	2
    mov       rcx,	rax
    mov       rdx,	3
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_storebit.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    movzx     r10,	byte [rbp + mc_auxmcl.do_storebit.mask1s]
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_libmcl.mgenint
    mov       rcx,	39
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_storebit.i]
    test      rax,	rax
    jz        L2088
    mov       rcx,	[rbp + mc_auxmcl.do_storebit.i]
    mov       rdx,	3
    call      mc_libmcl.mgenint
    mov       rcx,	44
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2088:
L2087:
    mov       rcx,	40
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	[rbp + mc_auxmcl.do_storebit.ax]
    call      mc_libmcl.genmc
L2083:
    jmp       L2081
L2082:
    mov       rax,	[rbp + mc_auxmcl.do_storebit.r]
    test      rax,	rax
    jz        L2089
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_storebit.px],	rax
    mov       rax,	[rbp + mc_auxmcl.do_storebit.q]
    cmp       rax,	0
    jnz       L2091
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.do_storebit.ax],	rax
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	11
    mov       rdx,	6
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.do_storebit.cx],	rax
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L2093
    mov       rcx,	13
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.cx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2093:
L2092:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    mov       r8,	11
    call      mc_stackmcl.loadparam
    mov       [rbp + mc_auxmcl.do_storebit.ix],	rax
    mov       rcx,	[rbp + mc_auxmcl.do_storebit.cx]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       rcx,	44
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L2095
    mov       rcx,	14
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.cx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2095:
L2094:
    mov       rax,	[rbp + mc_auxmcl.do_storebit.r]
    mov       r10,	[rax+8]
    cmp       r10,	0
    jnz       L2097
    mov       rcx,	52
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	40
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	[rbp + mc_auxmcl.do_storebit.ax]
    call      mc_libmcl.genmc
    jmp       L2096
L2097:
    mov       rcx,	40
    mov       rdx,	[rbp + mc_auxmcl.do_storebit.px]
    mov       r8,	[rbp + mc_auxmcl.do_storebit.ax]
    call      mc_libmcl.genmc
L2096:
    jmp       L2090
L2091:
    lea       rcx,	[rel L5699]
    lea       rdx,	[rel L5700]
    call      mc_libmcl.merror
L2090:
L2089:
L2081:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2080:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc do_storebf
mc_auxmcl.do_storebf:
;>>
    %define mc_auxmcl.do_storebf.p 16
    %define mc_auxmcl.do_storebf.ax -8
    %define mc_auxmcl.do_storebf.rx -16
    %define mc_auxmcl.do_storebf.mx -24
    %define mc_auxmcl.do_storebf.mx4 -32
    %define mc_auxmcl.do_storebf.dx -40
    %define mc_auxmcl.do_storebf.i -48
    %define mc_auxmcl.do_storebf.j -56
    %define mc_auxmcl.do_storebf.q -64
    %define mc_auxmcl.do_storebf.r -72
    %define mc_auxmcl.do_storebf.mask -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_storebf.q],	rax
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_auxmcl.do_storebf.r],	rax
    mov       rax,	[rbp + mc_auxmcl.do_storebf.r]
    cmp       rax,	[rbp + mc_auxmcl.do_storebf.q]
    jnz       L2100
    cmp       rax,	0
    jnz       L2100
    lea       rcx,	[rel L5701]
    lea       rdx,	[rel L5702]
    call      mc_libmcl.merror
L2100:
L2099:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	3
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.do_storebf.dx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	2
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_auxmcl.do_storebf.ax],	rax
    mov       rax,	[rbp + mc_auxmcl.do_storebf.q]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.do_storebf.i],	r10
    mov       rax,	[rbp + mc_auxmcl.do_storebf.r]
    mov       r10,	[rax+8]
    mov       [rbp + mc_auxmcl.do_storebf.j],	r10
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.do_storebf.mx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.do_storebf.rx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.rx]
    mov       r8,	[rbp + mc_auxmcl.do_storebf.ax]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_storebf.j]
    sub       rax,	[rbp + mc_auxmcl.do_storebf.i]
    add       rax,	1
    mov       r10,	-1
    mov       cl,	al
    shl       r10,	cl
    not       r10
    mov       cl,	[rbp + mc_auxmcl.do_storebf.i]
    shl       r10,	cl
    not       r10
    mov       [rbp + mc_auxmcl.do_storebf.mask],	r10
    mov       rcx,	[rbp + mc_auxmcl.do_storebf.mask]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.mx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_storebf.i]
    test      rax,	rax
    jz        L2102
    mov       rcx,	[rbp + mc_auxmcl.do_storebf.i]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	44
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.dx]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2102:
L2101:
    mov       rax,	[rbp + mc_auxmcl.do_storebf.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_auxmcl.do_storebf.mx]
    mov       rdx,	r10
    call      mc_libmcl.changeopndsize
    mov       rcx,	39
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.rx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	40
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.rx]
    mov       r8,	[rbp + mc_auxmcl.do_storebf.dx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.do_storebf.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_auxmcl.do_storebf.rx]
    mov       rdx,	r10
    call      mc_libmcl.changeopndsize
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.do_storebf.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2098:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc gethostfn
mc_auxmcl.gethostfn:
;>>
    %define mc_auxmcl.gethostfn.opc 16
    %define mc_auxmcl.gethostfn.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.igethostfn]
    cmp       rax,	0
    jnz       L2105
    lea       rcx,	[rel L5703]
    lea       rdx,	[rel L5704]
    call      mc_libmcl.merror
L2105:
L2104:
    mov       rcx,	[rbp + mc_auxmcl.gethostfn.opc]
    mov       rax,	[mc_decls.igethostfn]
    call      rax
    mov       [rbp + mc_auxmcl.gethostfn.d],	rax
    mov       rax,	[rbp + mc_auxmcl.gethostfn.d]
    cmp       rax,	0
    jnz       L2107
    lea       rax,	[pc_tables.pclnames]
    mov       r10,	[rbp + mc_auxmcl.gethostfn.opc]
    mov       r11,	[rax + r10*8]
    lea       rcx,	[rel L5705]
    mov       rdx,	r11
    call      mc_libmcl.merror
L2107:
L2106:
    mov       rax,	[rbp + mc_auxmcl.gethostfn.d]
L2103:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc copyblockarg
mc_auxmcl.copyblockarg:
;>>
    %define mc_auxmcl.copyblockarg.px 16
    %define mc_auxmcl.copyblockarg.size 24
    %define mc_auxmcl.copyblockarg.argno 32
    %define mc_auxmcl.copyblockarg.dblock -8
    %define mc_auxmcl.copyblockarg.ax -16
    %define mc_auxmcl.copyblockarg.bx -24
    %define mc_auxmcl.copyblockarg.axi -32
    %define mc_auxmcl.copyblockarg.bxi -40
    %define mc_auxmcl.copyblockarg.$T3 -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_auxmcl.copyblockarg.px]
    cmp       rax,	0
    jnz       L2110
    call      msys.m$print_startcon
    lea       rcx,	[rel L5706]
    call      msys.m$print_str_nf
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_nogap
    lea       rcx,	[rel L5707]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    jmp       L2108
L2110:
L2109:
    mov       rcx,	[rbp + mc_auxmcl.copyblockarg.size]
    call      mc_libmcl.newblocktemp
    mov       [rbp + mc_auxmcl.copyblockarg.dblock],	rax
    mov       al,	1
    mov       r10,	[rbp + mc_auxmcl.copyblockarg.dblock]
    mov       [r10+68],	al
    mov       rax,	[rbp + mc_auxmcl.copyblockarg.px]
    test      rax,	rax
    jz        L2112
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.copyblockarg.bx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_auxmcl.copyblockarg.bx]
    mov       r8,	[rbp + mc_auxmcl.copyblockarg.px]
    call      mc_libmcl.genmc
    jmp       L2111
L2112:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	11
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_auxmcl.copyblockarg.bx],	rax
L2111:
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_auxmcl.copyblockarg.ax],	rax
    mov       rcx,	[rbp + mc_auxmcl.copyblockarg.dblock]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       rcx,	15
    mov       rdx,	[rbp + mc_auxmcl.copyblockarg.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_auxmcl.copyblockarg.bx]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_libmcl.mgenireg
    mov       [rbp + mc_auxmcl.copyblockarg.$T3],	rax
    mov       rax,	[rbp + mc_auxmcl.copyblockarg.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_libmcl.mgenireg
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_auxmcl.copyblockarg.$T3]
    mov       r8,	[rbp + mc_auxmcl.copyblockarg.size]
    mov       r9,	1
    call      mc_auxmcl.copyblock
    mov       rax,	[rbp + mc_auxmcl.copyblockarg.px]
    test      rax,	rax
    jz        L2114
    mov       rcx,	[rbp + mc_auxmcl.copyblockarg.dblock]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       rcx,	15
    mov       rdx,	[rbp + mc_auxmcl.copyblockarg.px]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2114:
L2113:
    xor       ecx,	ecx
    call      mc_stackmcl.freeworkregs
L2108:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc fixmain
mc_auxmcl.fixmain:
;>>
    %define mc_auxmcl.fixmain.d -8
    %define mc_auxmcl.fixmain.e -16
    %define mc_auxmcl.fixmain.dn -24
    %define mc_auxmcl.fixmain.dargs -32
    %define mc_auxmcl.fixmain.denv -40
    %define mc_auxmcl.fixmain.dinfo -48
    %define mc_auxmcl.fixmain.$T1 -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    mov       rax,	[pc_decls.currfunc]
    mov       [rbp + mc_auxmcl.fixmain.d],	rax
    call      msys.m$print_startcon
    lea       rcx,	[rel L5708]
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5709]
    call      msys.m$print_str_nf
    mov       rcx,	[pc_decls.pcmdskip]
    call      msys.m$print_i64_nf
    mov       rcx,	[msys.$cmdskip]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    mov       rax,	[rbp + mc_auxmcl.fixmain.d]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.fixmain.dn],	r10
    mov       rax,	[rbp + mc_auxmcl.fixmain.dn]
    mov       r10,	[rax+16]
    mov       [rbp + mc_auxmcl.fixmain.dargs],	r10
    lea       rcx,	[rel L5710]
    mov       rdx,	4
    call      pc_api.pc_makesymbol
    mov       [rbp + mc_auxmcl.fixmain.denv],	rax
    mov       al,	6
    mov       r10,	[rbp + mc_auxmcl.fixmain.denv]
    mov       [r10+58],	al
    mov       eax,	8
    mov       r10,	[rbp + mc_auxmcl.fixmain.denv]
    mov       [r10+60],	eax
    lea       rcx,	[rel L5711]
    mov       rdx,	4
    call      pc_api.pc_makesymbol
    mov       [rbp + mc_auxmcl.fixmain.dinfo],	rax
    mov       al,	11
    mov       r10,	[rbp + mc_auxmcl.fixmain.dinfo]
    mov       [r10+58],	al
    mov       eax,	128
    mov       r10,	[rbp + mc_auxmcl.fixmain.dinfo]
    mov       [r10+60],	eax
    mov       rcx,	[rbp + mc_auxmcl.fixmain.denv]
    call      pc_api.pc_addlocal
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dinfo]
    call      pc_api.pc_addlocal
    xor       eax,	eax
    mov       r10,	[rbp + mc_auxmcl.fixmain.d]
    mov       [r10+16],	rax
    mov       r10,	[rbp + mc_auxmcl.fixmain.dargs]
    mov       [r10+16],	rax
    mov       r10,	[rbp + mc_auxmcl.fixmain.dn]
    mov       [r10+16],	rax
    xor       eax,	eax
    mov       r10,	[rbp + mc_auxmcl.fixmain.d]
    mov       [r10+97],	al
    mov       al,	4
    mov       r10,	[rbp + mc_auxmcl.fixmain.dn]
    mov       [r10+49],	al
    mov       al,	4
    mov       r10,	[rbp + mc_auxmcl.fixmain.dargs]
    mov       [r10+49],	al
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dargs]
    call      pc_api.pc_addlocal
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dn]
    call      pc_api.pc_addlocal
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dinfo]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	15
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	32
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	30
    mov       rdx,	[mc_decls.dstackopnd]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dn]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	15
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dargs]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	12
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	15
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_auxmcl.fixmain.denv]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	13
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	15
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	14
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	14
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	41
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    lea       rcx,	[rel L5712]
    call      mc_libmcl.mgenextname
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	48
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	30
    mov       rdx,	[mc_decls.dstackopnd]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[pc_decls.pcmdskip]
    test      rax,	rax
    jz        L2117
    mov       rcx,	[pc_decls.pcmdskip]
    mov       rdx,	9
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dn]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       rcx,	30
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
    mov       rax,	[pc_decls.pcmdskip]
    imul      rax,	8
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_auxmcl.fixmain.$T1],	rax
    mov       rcx,	[rbp + mc_auxmcl.fixmain.dargs]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       rcx,	29
    mov       rdx,	rax
    mov       r8,	[rbp + mc_auxmcl.fixmain.$T1]
    call      mc_libmcl.genmc
L2117:
L2116:
L2115:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc genmcl
mc_genmcl.genmcl:
;>>
    %define mc_genmcl.genmcl.i -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [pc_decls.mcldone]
    test      rax,	rax
    jz        L2120
    jmp       L2118
L2120:
L2119:
    xor       eax,	eax
    test      ax,	ax
    jnz       L2123
    xor       eax,	eax
    test      ax,	ax
    jz        L2122
L2123:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5713]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L2122:
L2121:
    call      mc_genmcl.inithandlers
    call      mc_libmcl.mclinit
    mov       rax,	[pc_api.pcstart]
    mov       [mc_decls.currpcl],	rax
    xor       eax,	eax
    mov       [rbp + mc_genmcl.genmcl.i],	rax
L2124:
    mov       rcx,	[mc_decls.currpcl]
    call      mc_genmcl.convertpcl
    xor       eax,	eax
    test      ax,	ax
    jz        L2128
    mov       rax,	[mc_decls.currpcl]
    movzx     r10,	byte [rax]
    cmp       r10,	125
    jz        L2128
    cmp       r10,	133
    jz        L2128
    cmp       r10,	119
    jz        L2128
    cmp       r10,	120
    jz        L2128
    cmp       r10,	19
    jz        L2128
    cmp       r10,	121
    jz        L2128
    call      pc_diags.showopndstack
L2128:
L2127:
    add       qword [mc_decls.currpcl],	32
L2125:
    mov       rax,	[mc_decls.currpcl]
    cmp       rax,	[pc_api.pccurr]
    ja        L2129
    mov       rax,	[mc_decls.currpcl]
    movzx     r10,	byte [rax]
    cmp       r10,	134
    jnz       L2124
L2129:
L2126:
    call      mc_auxmcl.genrealtable
    call      mc_auxmcl.genabsneg
    call      mc_auxmcl.genstringtable
    mov       al,	1
    mov       [pc_decls.mcldone],	al
L2118:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc convertpcl
mc_genmcl.convertpcl:
;>>
    %define mc_genmcl.convertpcl.p 16
    %define mc_genmcl.convertpcl.reg -8
    %define mc_genmcl.convertpcl.i -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.convertpcl.p]
    movzx     r10,	byte [rax+3]
    mov       [mc_decls.pmode],	r10b
    mov       rax,	[rbp + mc_genmcl.convertpcl.p]
    mov       [mc_decls.currpcl],	rax
    mov       rax,	[rbp + mc_genmcl.convertpcl.p]
    mov       r10d,	[rax+24]
    mov       [pc_decls.mmpos],	r10
    mov       rax,	[rbp + mc_genmcl.convertpcl.p]
    movsxd    r10,	dword [rax+28]
    shr       r10,	8
    and       r10,	16777215
    mov       [mc_genmcl.ppseqno],	r10
    mov       rax,	[rbp + mc_genmcl.convertpcl.p]
    movzx     r10,	byte [rax]
    lea       rax,	[mc_genmcl.px_handlertable]
    mov       r11,	[rax + r10*8]
    mov       rcx,	[rbp + mc_genmcl.convertpcl.p]
    call      r11
    lea       rax,	[mc_decls.regset]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    lea       rax,	[mc_decls.xregset]
    xor       r10,	r10
    mov       [rax],	r10
    mov       [rax+8],	r10
    mov       rax,	1
    mov       [rbp + mc_genmcl.convertpcl.i],	rax
    mov       rax,	[mc_decls.noperands]
    cmp       rax,	1
    jl        L2133
L2131:
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_genmcl.convertpcl.i]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.convertpcl.reg],	r11
    lea       rax,	[mc_decls.pclreg]
    mov       r10,	[rbp + mc_genmcl.convertpcl.i]
    movzx     r11,	byte [rax + r10-1]
    test      r11,	r11
    jz        L2135
    lea       rax,	[mc_decls.pclmode]
    mov       r10,	[rbp + mc_genmcl.convertpcl.i]
    movzx     r11,	byte [rax + r10-1]
    cmp       r11,	2
    jg        L2137
    mov       al,	1
    lea       r10,	[mc_decls.xregset]
    mov       r11,	[rbp + mc_genmcl.convertpcl.reg]
    mov       [r10 + r11-1],	al
    jmp       L2136
L2137:
    mov       al,	1
    lea       r10,	[mc_decls.regset]
    mov       r11,	[rbp + mc_genmcl.convertpcl.reg]
    mov       [r10 + r11-1],	al
L2136:
L2135:
L2134:
L2132:
    mov       rax,	[rbp + mc_genmcl.convertpcl.i]
    inc       rax
    mov       [rbp + mc_genmcl.convertpcl.i],	rax
    cmp       rax,	[mc_decls.noperands]
    jle       L2131
L2133:
L2130:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc inithandlers
mc_genmcl.inithandlers:
;>>
    %define mc_genmcl.inithandlers.name -8
    %define mc_genmcl.inithandlers.s -16
    %define mc_genmcl.inithandlers.n -24
    %define mc_genmcl.inithandlers.av_1 -32
    %define mc_genmcl.inithandlers.av_2 -40
    %define mc_genmcl.inithandlers.av_3 -48
    %define mc_genmcl.inithandlers.i -56
    %define mc_genmcl.inithandlers.k -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    movzx     rax,	byte [mc_genmcl.inithandlers.initdone]
    test      rax,	rax
    jz        L2140
    jmp       L2138
L2140:
L2139:
    mov       rax,	1193046
    mov       [rbp + mc_genmcl.inithandlers.n],	rax
    mov       rax,	123456
    mov       [rbp + mc_genmcl.inithandlers.n],	rax
    mov       rax,	[$nprocs]
    mov       [rbp + mc_genmcl.inithandlers.n],	rax
    mov       rax,	1
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    mov       rax,	[rbp + mc_genmcl.inithandlers.n]
    cmp       rax,	1
    jl        L2143
L2141:
    lea       rax,	[$procname]
    mov       r10,	[rbp + mc_genmcl.inithandlers.i]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + mc_genmcl.inithandlers.name],	r11
    mov       rcx,	[rbp + mc_genmcl.inithandlers.name]
    lea       rdx,	[rel L5714]
    mov       r8,	3
    call      mlib.eqbytes
    test      rax,	rax
    jz        L2145
    xor       eax,	eax
    mov       [rbp + mc_genmcl.inithandlers.k],	rax
    mov       rax,	139
    mov       [rbp + mc_genmcl.inithandlers.av_1],	rax
    mov       rax,	[rbp + mc_genmcl.inithandlers.av_1]
    cmp       rax,	0
    jl        L2149
L2146:
    lea       rax,	[pc_tables.pclnames]
    mov       r10,	[rbp + mc_genmcl.inithandlers.k]
    mov       r11,	[rax + r10*8]
    mov       [rbp + mc_genmcl.inithandlers.s],	r11
    mov       rax,	[rbp + mc_genmcl.inithandlers.s]
    movzx     r10,	byte [rax]
    cmp       r10,	107
    jnz       L2151
    inc       qword [rbp + mc_genmcl.inithandlers.s]
L2151:
L2150:
    mov       rax,	[rbp + mc_genmcl.inithandlers.name]
    lea       rax,	[rax+3]
    mov       rcx,	[rbp + mc_genmcl.inithandlers.s]
    mov       rdx,	rax
    call      mlib.eqstring
    test      rax,	rax
    jz        L2153
    lea       rax,	[$procaddr]
    mov       r10,	[rbp + mc_genmcl.inithandlers.i]
    mov       r11,	[rax + r10*8-8]
    lea       rax,	[mc_genmcl.px_handlertable]
    mov       r10,	[rbp + mc_genmcl.inithandlers.k]
    mov       [rax + r10*8],	r11
    jmp       L2148
L2153:
L2152:
L2147:
    mov       rax,	[rbp + mc_genmcl.inithandlers.k]
    inc       rax
    mov       [rbp + mc_genmcl.inithandlers.k],	rax
    cmp       rax,	[rbp + mc_genmcl.inithandlers.av_1]
    jle       L2146
L2149:
    lea       rcx,	[rel L5715]
    mov       rdx,	[rbp + mc_genmcl.inithandlers.name]
    call      mc_libmcl.merror
L2148:
L2145:
L2144:
L2142:
    mov       rax,	[rbp + mc_genmcl.inithandlers.i]
    inc       rax
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    cmp       rax,	[rbp + mc_genmcl.inithandlers.n]
    jle       L2141
L2143:
    mov       rax,	1
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    mov       rax,	9
    mov       [rbp + mc_genmcl.inithandlers.av_2],	rax
    mov       rax,	[rbp + mc_genmcl.inithandlers.av_2]
    cmp       rax,	1
    jl        L2156
L2154:
    lea       rax,	[mc_genmcl.inithandlers.dupltable]
    mov       r10,	[rbp + mc_genmcl.inithandlers.i]
    lea       rax,	[rax + r10*2-2]
    movzx     r10,	byte [rax+1]
    lea       rax,	[mc_genmcl.px_handlertable]
    mov       r11,	[rax + r10*8]
    lea       rax,	[mc_genmcl.inithandlers.dupltable]
    mov       r10,	[rbp + mc_genmcl.inithandlers.i]
    lea       rax,	[rax + r10*2-2]
    movzx     r10,	byte [rax]
    lea       rax,	[mc_genmcl.px_handlertable]
    mov       [rax + r10*8],	r11
L2155:
    mov       rax,	[rbp + mc_genmcl.inithandlers.i]
    inc       rax
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    cmp       rax,	[rbp + mc_genmcl.inithandlers.av_2]
    jle       L2154
L2156:
    xor       eax,	eax
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    mov       rax,	139
    mov       [rbp + mc_genmcl.inithandlers.av_3],	rax
    mov       rax,	[rbp + mc_genmcl.inithandlers.av_3]
    cmp       rax,	0
    jl        L2159
L2157:
    lea       rax,	[mc_genmcl.px_handlertable]
    mov       r10,	[rbp + mc_genmcl.inithandlers.i]
    mov       r11,	[rax + r10*8]
    test      r11,	r11
    jnz       L2161
    lea       rax,	[mc_genmcl.unimpl]
    lea       r10,	[mc_genmcl.px_handlertable]
    mov       r11,	[rbp + mc_genmcl.inithandlers.i]
    mov       [r10 + r11*8],	rax
L2161:
L2160:
L2158:
    mov       rax,	[rbp + mc_genmcl.inithandlers.i]
    inc       rax
    mov       [rbp + mc_genmcl.inithandlers.i],	rax
    cmp       rax,	[rbp + mc_genmcl.inithandlers.av_3]
    jle       L2157
L2159:
    mov       al,	1
    mov       [mc_genmcl.inithandlers.initdone],	al
L2138:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc doshowpcl
mc_genmcl.doshowpcl:
;>>
    %define mc_genmcl.doshowpcl.p 16
    %define mc_genmcl.doshowpcl.str -1256
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	1296
    mov       [rbp+16],	rcx
;---------------
    jmp       L2162
    mov       rax,	[rbp + mc_genmcl.doshowpcl.p]
    movzx     r10,	byte [rax]
    cmp       r10,	119
    jz        L2164
    cmp       r10,	120
    jz        L2164
    cmp       r10,	19
    jz        L2164
    cmp       r10,	121
    jz        L2164
    cmp       r10,	122
    jz        L2164
    cmp       r10,	123
    jz        L2164
    cmp       r10,	124
    jz        L2164
    jmp       L2165
L2164:
    jmp       L2163
L2165:
    lea       rcx,	[rbp + mc_genmcl.doshowpcl.str]
    lea       rdx,	[rel L5716]
    call      strcpy
    mov       rcx,	[rbp + mc_genmcl.doshowpcl.p]
    call      pc_diags.strpclstr
    lea       rcx,	[rbp + mc_genmcl.doshowpcl.str]
    mov       rdx,	rax
    call      strcat
    lea       rcx,	[rbp + mc_genmcl.doshowpcl.str]
    call      mlib.pcm_copyheapstring
    mov       rcx,	rax
    call      mc_libmcl.mgencomment
L2163:
L2162:
;---------------
    add       rsp,	1296
    pop       rbp
    ret       
;End 
;Proc unimpl
mc_genmcl.unimpl:
;>>
    %define mc_genmcl.unimpl.p 16
    %define mc_genmcl.unimpl.str -104
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	144
    mov       [rbp+16],	rcx
;---------------
    lea       rcx,	[rbp + mc_genmcl.unimpl.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5717]
    call      msys.m$print_setfmt
    mov       rax,	[rbp + mc_genmcl.unimpl.p]
    movzx     r10,	byte [rax]
    lea       rax,	[pc_tables.pclnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    xor       edx,	edx
    call      pc_api.strpmode
    mov       rcx,	rax
    call      msys.m$print_str_nf
    call      msys.m$print_end
    call      msys.m$print_startcon
    lea       rcx,	[rbp + mc_genmcl.unimpl.str]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rbp + mc_genmcl.unimpl.str]
    call      mlib.pcm_copyheapstring
    mov       rcx,	rax
    call      mc_libmcl.mgencomment
L2166:
;---------------
    add       rsp,	144
    pop       rbp
    ret       
;End 
;Proc px_nop
mc_genmcl.px_nop:
;>>
    %define mc_genmcl.px_nop.p 16
    push      rbp
    mov       rbp,	rsp
;---------------
L2167:
;---------------
    pop       rbp
    ret       
;End 
;Proc px_dupl
mc_genmcl.px_dupl:
;>>
    %define mc_genmcl.px_dupl.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mc_stackmcl.duplpcl
L2168:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_double
mc_genmcl.px_double:
;>>
    %define mc_genmcl.px_double.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[mc_decls.ncalldepth]
    test      rax,	rax
    jz        L2171
    call      mc_stackmcl.duplpcl
    jmp       L2170
L2171:
    lea       rax,	[mc_decls.pclcount]
    mov       r10,	[mc_decls.noperands]
    lea       rax,	[rax + r10-1]
    inc       byte [rax]
L2170:
L2169:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_opnd
mc_genmcl.px_opnd:
;>>
    %define mc_genmcl.px_opnd.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_opnd.p]
    call      mc_genmcl.unimpl
L2172:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_type
mc_genmcl.px_type:
;>>
    %define mc_genmcl.px_type.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_type.p]
    call      mc_genmcl.unimpl
L2173:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_comment
mc_genmcl.px_comment:
;>>
    %define mc_genmcl.px_comment.p 16
    push      rbp
    mov       rbp,	rsp
;---------------
L2174:
;---------------
    pop       rbp
    ret       
;End 
;Proc px_defproc
mc_genmcl.px_defproc:
;>>
    %define mc_genmcl.px_defproc.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_defproc.p]
    mov       r10,	[rax+8]
    mov       [pc_decls.currfunc],	r10
    xor       eax,	eax
    mov       [mc_decls.nblocktemps],	rax
    mov       rcx,	67
    mov       rdx,	1
    call      mc_libmcl.setsegment
    mov       rcx,	[pc_decls.currfunc]
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	1
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[pc_decls.currfunc]
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	6
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[pc_decls.currfunc]
    call      mc_auxmcl.initpass
    lea       rcx,	[rel L5718]
    call      mc_libmcl.mgencomment
    mov       rax,	[mc_decls.mccodex]
    mov       [mc_decls.mclprocentry],	rax
    mov       rax,	[pc_decls.currfunc]
    movzx     r10,	byte [rax+97]
    cmp       r10,	2
    jnz       L2177
    mov       rax,	[pc_decls.currfunc]
    mov       r10,	[rax]
    mov       rcx,	r10
    lea       rdx,	[rel L5719]
    call      mlib.eqstring
    test      rax,	rax
    jz        L2177
    call      mc_auxmcl.fixmain
L2177:
L2176:
L2175:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_endproc
mc_genmcl.px_endproc:
;>>
    %define mc_genmcl.px_endproc.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[mc_decls.noperands]
    test      rax,	rax
    jz        L2180
    call      msys.m$print_startcon
    lea       rcx,	[rel L5720]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L2180:
L2179:
    mov       rcx,	2
    xor       edx,	edx
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.fppeephole]
    test      rax,	rax
    jz        L2182
L2182:
L2181:
L2178:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_endprog
mc_genmcl.px_endprog:
;>>
    %define mc_genmcl.px_endprog.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_endprog.p]
    call      mc_genmcl.unimpl
L2183:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_istatic
mc_genmcl.px_istatic:
;>>
    %define mc_genmcl.px_istatic.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_istatic.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	73
    mov       rdx,	r10
    call      mc_libmcl.setsegment
    mov       rax,	[rbp + mc_genmcl.px_istatic.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	6
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2184:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_zstatic
mc_genmcl.px_zstatic:
;>>
    %define mc_genmcl.px_zstatic.p 16
    %define mc_genmcl.px_zstatic.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_zstatic.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_zstatic.d],	r10
    mov       rax,	[rbp + mc_genmcl.px_zstatic.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	90
    mov       rdx,	r10
    call      mc_libmcl.setsegment
    mov       rcx,	[rbp + mc_genmcl.px_zstatic.d]
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	6
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_zstatic.p]
    mov       r10d,	[rax+4]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	124
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2185:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_data
mc_genmcl.px_data:
;>>
    %define mc_genmcl.px_data.p 16
    %define mc_genmcl.px_data.ax -8
    %define mc_genmcl.px_data.opc -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jnz       L2188
    mov       rcx,	[rbp + mc_genmcl.px_data.p]
    call      mc_auxmcl.do_blockdata
    jmp       L2186
L2188:
L2187:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movzx     r10,	byte [rax+1]
    cmp       r10,	4
    jz        L2190
    cmp       r10,	10
    jz        L2191
    cmp       r10,	11
    jz        L2192
    cmp       r10,	6
    jz        L2193
    cmp       r10,	7
    jz        L2194
    cmp       r10,	2
    jz        L2195
    cmp       r10,	3
    jz        L2196
    jmp       L2197
L2190:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2191:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    mov       rdx,	2
    call      mc_libmcl.mgenrealimm
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2192:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    mov       rdx,	1
    call      mc_libmcl.mgenrealimm
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2193:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movq      XMM4,	[rax+8]
    movq      XMM0,	XMM4
    mov       rdx,	1
    call      mc_libmcl.mgenrealimm
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2194:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.getstringindex
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2195:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenmemaddr
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movsxd    r10,	dword [rax+20]
    mov       rax,	[rbp + mc_genmcl.px_data.ax]
    mov       [rax+12],	r10d
    jmp       L2189
L2196:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       [rbp + mc_genmcl.px_data.ax],	rax
    jmp       L2189
L2197:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movzx     r10,	byte [rax+1]
    lea       rax,	[pc_tables.opndnames]
    mov       r11,	[rax + r10*8]
    lea       rcx,	[rel L5721]
    mov       rdx,	r11
    call      mc_libmcl.merror
L2189:
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10d,	[rax+4]
    cmp       r10,	1
    jz        L2199
    cmp       r10,	2
    jz        L2200
    cmp       r10,	4
    jz        L2201
    cmp       r10,	8
    jz        L2202
    jmp       L2203
L2199:
    mov       rax,	116
    mov       [rbp + mc_genmcl.px_data.opc],	rax
    jmp       L2198
L2200:
    mov       rax,	117
    mov       [rbp + mc_genmcl.px_data.opc],	rax
    jmp       L2198
L2201:
    mov       rax,	118
    mov       [rbp + mc_genmcl.px_data.opc],	rax
    jmp       L2198
L2202:
    mov       rax,	119
    mov       [rbp + mc_genmcl.px_data.opc],	rax
    jmp       L2198
L2203:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5722]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    mov       r10d,	[rax+4]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    lea       rcx,	[rel L5723]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genmcl.px_data.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	r10
    xor       edx,	edx
    call      pc_api.strpmode
    mov       rcx,	rax
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5724]
    lea       rdx,	[rel L5725]
    call      mc_libmcl.merror
L2198:
    mov       rcx,	[rbp + mc_genmcl.px_data.opc]
    mov       rdx,	[rbp + mc_genmcl.px_data.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2186:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_label
mc_genmcl.px_label:
;>>
    %define mc_genmcl.px_label.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_label.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	9
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2204:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_load
mc_genmcl.px_load:
;>>
    %define mc_genmcl.px_load.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_load.p]
    call      mc_stackmcl.pushpcl
L2205:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_store
mc_genmcl.px_store:
;>>
    %define mc_genmcl.px_store.p 16
    %define mc_genmcl.px_store.ax -8
    %define mc_genmcl.px_store.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_store.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	11
    jz        L2208
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    mov       r11,	[rax+8]
    mov       rcx,	r11
    mov       rdx,	r10
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_genmcl.px_store.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_store.ax]
    mov       r8,	[rbp + mc_genmcl.px_store.bx]
    call      mc_libmcl.genmc
    jmp       L2207
L2208:
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_store.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_libmcl.mgenmem
    mov       rcx,	15
    mov       rdx,	[rbp + mc_genmcl.px_store.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_store.ax]
    mov       rdx,	6
    call      mc_stackmcl.makeopndind
    mov       [rbp + mc_genmcl.px_store.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_store.bx]
    mov       rdx,	6
    call      mc_stackmcl.makeopndind
    mov       [rbp + mc_genmcl.px_store.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_store.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_store.ax]
    mov       rdx,	[rbp + mc_genmcl.px_store.bx]
    mov       r8,	r10
    mov       r9,	1
    call      mc_auxmcl.copyblock
L2207:
    call      mc_stackmcl.poppcl
L2206:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_add
mc_genmcl.px_add:
;>>
    %define mc_genmcl.px_add.p 16
    %define mc_genmcl.px_add.ax -8
    %define mc_genmcl.px_add.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_add.p]
    movzx     r10,	byte [rax+3]
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_add.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_add.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_add.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_add.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L2211
    mov       rax,	[rbp + mc_genmcl.px_add.p]
    movzx     r10,	byte [rax+3]
    sub       r10,	1
    mov       rax,	66
    add       rax,	r10
    jmp       L2210
L2211:
    mov       rax,	29
L2210:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_add.ax]
    mov       r8,	[rbp + mc_genmcl.px_add.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2209:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_sub
mc_genmcl.px_sub:
;>>
    %define mc_genmcl.px_sub.p 16
    %define mc_genmcl.px_sub.ax -8
    %define mc_genmcl.px_sub.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_sub.p]
    movzx     r10,	byte [rax+3]
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_sub.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_sub.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_sub.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_sub.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L2214
    mov       rax,	[rbp + mc_genmcl.px_sub.p]
    movzx     r10,	byte [rax+3]
    sub       r10,	1
    mov       rax,	68
    add       rax,	r10
    jmp       L2213
L2214:
    mov       rax,	30
L2213:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_sub.ax]
    mov       r8,	[rbp + mc_genmcl.px_sub.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2212:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_mul
mc_genmcl.px_mul:
;>>
    %define mc_genmcl.px_mul.p 16
    %define mc_genmcl.px_mul.ax -8
    %define mc_genmcl.px_mul.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_mul.p]
    movzx     r10,	byte [rax+3]
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_mul.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_mul.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_mul.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_mul.p]
    movzx     r10,	byte [rax+3]
    cmp       r10,	2
    jg        L2217
    mov       rax,	[rbp + mc_genmcl.px_mul.p]
    movzx     r10,	byte [rax+3]
    sub       r10,	1
    mov       rax,	70
    add       rax,	r10
    jmp       L2216
L2217:
    mov       rax,	35
L2216:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_mul.ax]
    mov       r8,	[rbp + mc_genmcl.px_mul.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2215:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_div
mc_genmcl.px_div:
;>>
    %define mc_genmcl.px_div.p 16
    %define mc_genmcl.px_div.ax -8
    %define mc_genmcl.px_div.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_div.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_div.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	72
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_div.ax]
    mov       r8,	[rbp + mc_genmcl.px_div.bx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2218:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_eval
mc_genmcl.px_eval:
;>>
    %define mc_genmcl.px_eval.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_eval.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    call      mc_stackmcl.poppcl
L2219:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_widen
mc_genmcl.px_widen:
;>>
    %define mc_genmcl.px_widen.p 16
    %define mc_genmcl.px_widen.ax -8
    %define mc_genmcl.px_widen.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_widen.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_widen.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_widen.bx]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L2222
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_widen.ax],	rax
    jmp       L2221
L2222:
    mov       rax,	[rbp + mc_genmcl.px_widen.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_widen.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_widen.bx]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_libmcl.mgenregi
    mov       [rbp + mc_genmcl.px_widen.ax],	rax
L2221:
    mov       rax,	[rbp + mc_genmcl.px_widen.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    lea       rax,	[pc_tables.psigned]
    movzx     r11,	byte [rax + r10]
    test      r11,	r11
    jz        L2224
    mov       rax,	19
    jmp       L2223
L2224:
    mov       rax,	20
L2223:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_widen.ax]
    mov       r8,	[rbp + mc_genmcl.px_widen.bx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_widen.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
L2220:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_jump
mc_genmcl.px_jump:
;>>
    %define mc_genmcl.px_jump.p 16
    %define mc_genmcl.px_jump.labno -8
    %define mc_genmcl.px_jump.q -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_jump.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_jump.labno],	r10
    mov       rax,	[rbp + mc_genmcl.px_jump.p]
    lea       rax,	[rax+32]
    mov       [rbp + mc_genmcl.px_jump.q],	rax
    jmp       L2227
L2226:
    add       qword [rbp + mc_genmcl.px_jump.q],	32
L2227:
    mov       rax,	[rbp + mc_genmcl.px_jump.q]
    movzx     r10,	byte [rax]
    cmp       r10,	133
    jz        L2226
L2228:
    mov       rax,	[rbp + mc_genmcl.px_jump.q]
    movzx     r10,	byte [rax]
    cmp       r10,	125
    jz        L2230
    cmp       r10,	23
    jz        L2231
    jmp       L2232
L2230:
    mov       rax,	[rbp + mc_genmcl.px_jump.q]
    mov       r10,	[rax+8]
    cmp       r10,	[rbp + mc_genmcl.px_jump.labno]
    jnz       L2234
    jmp       L2225
L2234:
L2233:
    add       qword [rbp + mc_genmcl.px_jump.q],	32
    mov       rax,	[rbp + mc_genmcl.px_jump.q]
    movzx     r10,	byte [rax]
    cmp       r10,	125
    jnz       L2236
    mov       rax,	[rbp + mc_genmcl.px_jump.q]
    mov       r10,	[rax+8]
    cmp       r10,	[rbp + mc_genmcl.px_jump.labno]
    jnz       L2236
    jmp       L2225
L2236:
L2235:
    jmp       L2229
L2231:
    xor       eax,	eax
    mov       r10,	[rbp + mc_genmcl.px_jump.q]
    mov       [r10],	al
L2232:
L2229:
    mov       rcx,	[rbp + mc_genmcl.px_jump.labno]
    call      mc_libmcl.mgenlabel
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2225:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_neg
mc_genmcl.px_neg:
;>>
    %define mc_genmcl.px_neg.p 16
    %define mc_genmcl.px_neg.ax -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_neg.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2239
    mov       rcx,	51
    mov       rdx,	[rbp + mc_genmcl.px_neg.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2238
L2239:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_neg.ax]
    mov       rdx,	rax
    call      mc_auxmcl.do_negreal
L2238:
L2237:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_abs
mc_genmcl.px_abs:
;>>
    %define mc_genmcl.px_abs.p 16
    %define mc_genmcl.px_abs.ax -8
    %define mc_genmcl.px_abs.lx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_abs.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2242
    xor       ecx,	ecx
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_abs.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_abs.lx],	r10
    mov       rcx,	27
    mov       rdx,	13
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	51
    mov       rdx,	[rbp + mc_genmcl.px_abs.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_genmcl.px_abs.lx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2241
L2242:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_abs.ax]
    mov       rdx,	rax
    call      mc_auxmcl.do_absreal
L2241:
L2240:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_bitnot
mc_genmcl.px_bitnot:
;>>
    %define mc_genmcl.px_bitnot.p 16
    %define mc_genmcl.px_bitnot.ax -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_bitnot.ax],	rax
    mov       rcx,	52
    mov       rdx,	[rbp + mc_genmcl.px_bitnot.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2243:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_not
mc_genmcl.px_not:
;>>
    %define mc_genmcl.px_not.p 16
    %define mc_genmcl.px_not.ax -8
    %define mc_genmcl.px_not.$T1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_not.ax],	rax
    mov       rcx,	1
    mov       rdx,	3
    call      mc_libmcl.mgenint
    mov       [rbp + mc_genmcl.px_not.$T1],	rax
    mov       rcx,	[rbp + mc_genmcl.px_not.ax]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       rcx,	41
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_not.$T1]
    call      mc_libmcl.genmc
L2244:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_toboolt
mc_genmcl.px_toboolt:
;>>
    %define mc_genmcl.px_toboolt.p 16
    %define mc_genmcl.px_toboolt.ax -8
    %define mc_genmcl.px_toboolt.bx -16
    %define mc_genmcl.px_toboolt.cx -24
    %define mc_genmcl.px_toboolt.pmode2 -32
    %define mc_genmcl.px_toboolt.$T2 -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_toboolt.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       [rbp + mc_genmcl.px_toboolt.pmode2],	r10b
    movzx     rax,	byte [rbp + mc_genmcl.px_toboolt.pmode2]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_toboolt.ax],	rax
    movzx     rax,	byte [rbp + mc_genmcl.px_toboolt.pmode2]
    cmp       rax,	2
    jg        L2247
    movzx     rax,	byte [rbp + mc_genmcl.px_toboolt.pmode2]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_toboolt.bx],	rax
    mov       rcx,	3
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_toboolt.cx],	rax
    movzx     rax,	byte [rbp + mc_genmcl.px_toboolt.pmode2]
    sub       rax,	1
    mov       r10,	76
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_toboolt.bx]
    mov       r8,	[rbp + mc_genmcl.px_toboolt.bx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [rbp + mc_genmcl.px_toboolt.pmode2]
    sub       rax,	1
    mov       r10,	74
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_toboolt.ax]
    mov       r8,	[rbp + mc_genmcl.px_toboolt.bx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_toboolt.p]
    movzx     r10,	byte [rax]
    cmp       r10,	63
    jnz       L2249
    mov       rax,	5
    jmp       L2248
L2249:
    mov       rax,	4
L2248:
    mov       rcx,	59
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_toboolt.cx]
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	[rbp + mc_genmcl.px_toboolt.cx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	20
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_toboolt.cx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_toboolt.cx]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
    jmp       L2246
L2247:
    mov       rcx,	42
    mov       rdx,	[rbp + mc_genmcl.px_toboolt.ax]
    mov       r8,	[rbp + mc_genmcl.px_toboolt.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_toboolt.ax]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_toboolt.bx],	r10
    mov       [rbp + mc_genmcl.px_toboolt.$T2],	rax
    mov       rax,	[rbp + mc_genmcl.px_toboolt.p]
    movzx     r10,	byte [rax]
    cmp       r10,	63
    jnz       L2251
    mov       rax,	5
    jmp       L2250
L2251:
    mov       rax,	4
L2250:
    mov       rcx,	59
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_toboolt.$T2]
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	[rbp + mc_genmcl.px_toboolt.ax]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	20
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_toboolt.bx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-3],	al
L2246:
L2245:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc px_sqr
mc_genmcl.px_sqr:
;>>
    %define mc_genmcl.px_sqr.p 16
    %define mc_genmcl.px_sqr.ax -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_sqr.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2254
    mov       rcx,	35
    mov       rdx,	[rbp + mc_genmcl.px_sqr.ax]
    mov       r8,	[rbp + mc_genmcl.px_sqr.ax]
    call      mc_libmcl.genmc
    jmp       L2253
L2254:
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	70
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_sqr.ax]
    mov       r8,	[rbp + mc_genmcl.px_sqr.ax]
    call      mc_libmcl.genmc
L2253:
L2252:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_sqrt
mc_genmcl.px_sqrt:
;>>
    %define mc_genmcl.px_sqrt.p 16
    %define mc_genmcl.px_sqrt.ax -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_sqrt.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	64
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_sqrt.ax]
    mov       r8,	[rbp + mc_genmcl.px_sqrt.ax]
    call      mc_libmcl.genmc
L2255:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_jumpcc
mc_genmcl.px_jumpcc:
;>>
    %define mc_genmcl.px_jumpcc.p 16
    %define mc_genmcl.px_jumpcc.mcond -8
    %define mc_genmcl.px_jumpcc.ax -16
    %define mc_genmcl.px_jumpcc.bx -24
    %define mc_genmcl.px_jumpcc.lx -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_jumpcc.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[mc_genmcl.ucondcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.px_jumpcc.mcond],	r11
    mov       rax,	[rbp + mc_genmcl.px_jumpcc.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       [rbp + mc_genmcl.px_jumpcc.lx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2258
    lea       rcx,	[rel L5726]
    lea       rdx,	[rel L5727]
    call      mc_libmcl.merror
    jmp       L2257
L2258:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_jumpcc.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_jumpcc.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2260
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2262
    mov       rax,	[rbp + mc_genmcl.px_jumpcc.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[mc_genmcl.scondcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.px_jumpcc.mcond],	r11
L2262:
L2261:
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_jumpcc.ax]
    mov       r8,	[rbp + mc_genmcl.px_jumpcc.bx]
    call      mc_libmcl.genmc
    jmp       L2259
L2260:
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	74
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_jumpcc.ax]
    mov       r8,	[rbp + mc_genmcl.px_jumpcc.bx]
    call      mc_libmcl.genmc
L2259:
    mov       rcx,	27
    mov       rdx,	[rbp + mc_genmcl.px_jumpcc.mcond]
    mov       r8,	[rbp + mc_genmcl.px_jumpcc.lx]
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    call      mc_stackmcl.poppcl
    mov       rax,	[rbp + mc_genmcl.px_jumpcc.p]
    movsxd    r10,	dword [rax+16]
    test      r10,	r10
    jnz       L2264
    call      mc_stackmcl.poppcl
L2264:
L2263:
L2257:
L2256:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_jumpt
mc_genmcl.px_jumpt:
;>>
    %define mc_genmcl.px_jumpt.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_jumpt.p]
    mov       rdx,	5
    call      mc_auxmcl.do_jumptruefalse
L2265:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_jumpf
mc_genmcl.px_jumpf:
;>>
    %define mc_genmcl.px_jumpf.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_jumpf.p]
    mov       rdx,	4
    call      mc_auxmcl.do_jumptruefalse
L2266:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitand
mc_genmcl.px_bitand:
;>>
    %define mc_genmcl.px_bitand.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitand.p]
    mov       rdx,	39
    call      mc_auxmcl.do_bitwise
L2267:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitor
mc_genmcl.px_bitor:
;>>
    %define mc_genmcl.px_bitor.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitor.p]
    mov       rdx,	40
    call      mc_auxmcl.do_bitwise
L2268:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitxor
mc_genmcl.px_bitxor:
;>>
    %define mc_genmcl.px_bitxor.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitxor.p]
    mov       rdx,	41
    call      mc_auxmcl.do_bitwise
L2269:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_shl
mc_genmcl.px_shl:
;>>
    %define mc_genmcl.px_shl.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_shl.p]
    mov       rdx,	44
    call      mc_auxmcl.do_shift
L2270:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_shr
mc_genmcl.px_shr:
;>>
    %define mc_genmcl.px_shr.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2273
    mov       rax,	45
    jmp       L2272
L2273:
    mov       rax,	46
L2272:
    mov       rcx,	[rbp + mc_genmcl.px_shr.p]
    mov       rdx,	rax
    call      mc_auxmcl.do_shift
L2271:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_retproc
mc_genmcl.px_retproc:
;>>
    %define mc_genmcl.px_retproc.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_retproc.p]
    call      mc_auxmcl.do_procentry
    call      mc_auxmcl.do_procexit
L2274:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_retfn
mc_genmcl.px_retfn:
;>>
    %define mc_genmcl.px_retfn.p 16
    %define mc_genmcl.px_retfn.ax -8
    %define mc_genmcl.px_retfn.bx -16
    %define mc_genmcl.px_retfn.$T1 -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2277
    mov       rcx,	1
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_libmcl.mgenireg
    mov       [rbp + mc_genmcl.px_retfn.bx],	rax
    mov       al,	1
    mov       [mc_decls.regset],	al
    mov       rcx,	6
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_retfn.ax],	rax
    mov       rcx,	[pc_decls.blockretname]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_retfn.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_retfn.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_libmcl.mgenireg
    mov       [rbp + mc_genmcl.px_retfn.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_retfn.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_retfn.ax]
    mov       rdx,	[rbp + mc_genmcl.px_retfn.bx]
    mov       r8,	r10
    mov       r9,	1
    call      mc_auxmcl.copyblock
    mov       rcx,	[pc_decls.blockretname]
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_genmcl.px_retfn.$T1],	rax
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_retfn.$T1]
    call      mc_libmcl.genmc
L2277:
L2276:
    mov       rcx,	[rbp + mc_genmcl.px_retfn.p]
    call      mc_genmcl.px_retproc
L2275:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_setcall
mc_genmcl.px_setcall:
;>>
    %define mc_genmcl.px_setcall.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    xor       ecx,	ecx
    call      mc_stackmcl.saveopnds
    mov       rax,	[mc_decls.ncalldepth]
    cmp       rax,	16
    jl        L2280
    lea       rcx,	[rel L5728]
    lea       rdx,	[rel L5729]
    call      mc_libmcl.merror
L2280:
L2279:
    inc       qword [mc_decls.ncalldepth]
    mov       rax,	[rbp + mc_genmcl.px_setcall.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	4
    jg        L2282
    mov       eax,	[mc_decls.mstackdepth]
    and       eax,	1
    lea       r10,	[mc_decls.callalign]
    mov       r11,	[mc_decls.ncalldepth]
    mov       [r10 + r11-1],	al
    jmp       L2281
L2282:
    mov       rax,	[rbp + mc_genmcl.px_setcall.p]
    movsxd    r10,	dword [rax+16]
    and       r10d,	1
    mov       eax,	[mc_decls.mstackdepth]
    and       eax,	1
    xor       r10,	rax
    lea       rax,	[mc_decls.callalign]
    mov       r11,	[mc_decls.ncalldepth]
    mov       [rax + r11-1],	r10b
L2281:
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    setz      al
    movzx     eax,	al
    lea       r10,	[mc_decls.callblockret]
    mov       r11,	[mc_decls.ncalldepth]
    mov       [r10 + r11-1],	al
    mov       rax,	[rbp + mc_genmcl.px_setcall.p]
    mov       r10d,	[rax+4]
    lea       rax,	[mc_decls.callblocksize]
    mov       r11,	[mc_decls.ncalldepth]
    mov       [rax + r11*4-4],	r10d
    lea       rax,	[mc_decls.callalign]
    mov       r10,	[mc_decls.ncalldepth]
    movzx     r11,	byte [rax + r10-1]
    test      r11,	r11
    jz        L2284
    mov       rcx,	1
    call      mc_libmcl.pushslots
L2284:
L2283:
L2278:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_setarg
mc_genmcl.px_setarg:
;>>
    %define mc_genmcl.px_setarg.p 16
    %define mc_genmcl.px_setarg.n -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_setarg.p]
    movsxd    r10,	dword [rax+16]
    lea       rax,	[mc_decls.callblockret]
    mov       r11,	[mc_decls.ncalldepth]
    movzx     rdi,	byte [rax + r11-1]
    add       r10,	rdi
    mov       [rbp + mc_genmcl.px_setarg.n],	r10
    mov       rax,	[rbp + mc_genmcl.px_setarg.n]
    cmp       rax,	4
    jle       L2287
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2289
    mov       rax,	[rbp + mc_genmcl.px_setarg.p]
    mov       r10d,	[rax+4]
    xor       ecx,	ecx
    mov       rdx,	r10
    mov       r8,	[rbp + mc_genmcl.px_setarg.n]
    call      mc_auxmcl.copyblockarg
L2289:
L2288:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.pushopnd
    jmp       L2286
L2287:
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2290
    mov       rax,	[rbp + mc_genmcl.px_setarg.p]
    mov       r10d,	[rax+4]
    lea       rax,	[mc_decls.callargsize]
    mov       r11,	[mc_decls.ncalldepth]
    shl       r11,	4
    lea       rax,	[rax + r11-16]
    mov       r11,	[rbp + mc_genmcl.px_setarg.n]
    mov       [rax + r11*4-4],	r10d
L2290:
L2286:
L2285:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_callp
mc_genmcl.px_callp:
;>>
    %define mc_genmcl.px_callp.p 16
    %define mc_genmcl.px_callp.nargs -8
    %define mc_genmcl.px_callp.nregargs -16
    %define mc_genmcl.px_callp.slots -24
    %define mc_genmcl.px_callp.isptr -32
    %define mc_genmcl.px_callp.shadow -40
    %define mc_genmcl.px_callp.blockret -48
    %define mc_genmcl.px_callp.av_1 -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
;---------------
    xor       eax,	eax
    mov       [rbp + mc_genmcl.px_callp.isptr],	rax
    xor       eax,	eax
    mov       [rbp + mc_genmcl.px_callp.shadow],	rax
    lea       rax,	[mc_decls.callblockret]
    mov       r10,	[mc_decls.ncalldepth]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.px_callp.blockret],	r11
    mov       rax,	[rbp + mc_genmcl.px_callp.p]
    movsxd    r10,	dword [rax+16]
    add       r10,	[rbp + mc_genmcl.px_callp.blockret]
    mov       [rbp + mc_genmcl.px_callp.nargs],	r10
    mov       rax,	[rbp + mc_genmcl.px_callp.nargs]
    mov       r10,	4
    cmp       rax,	r10
    cmovg     rax,	r10
    mov       [rbp + mc_genmcl.px_callp.nregargs],	rax
    mov       rax,	[rbp + mc_genmcl.px_callp.p]
    movzx     r10,	byte [rax]
    cmp       r10,	18
    jz        L2294
    cmp       r10,	21
    jnz       L2293
L2294:
    mov       rax,	1
    mov       [rbp + mc_genmcl.px_callp.isptr],	rax
L2293:
L2292:
    mov       rax,	[rbp + mc_genmcl.px_callp.nargs]
    cmp       [pc_decls.highargs],	rax
    jge       L5730
    mov       [pc_decls.highargs],	rax
L5730:
    mov       rax,	[rbp + mc_genmcl.px_callp.p]
    movsxd    r10,	dword [rax+20]
    mov       rcx,	[rbp + mc_genmcl.px_callp.nregargs]
    mov       rdx,	r10
    mov       r8,	[rbp + mc_genmcl.px_callp.isptr]
    call      mc_auxmcl.do_pushlowargs
    xor       eax,	eax
    mov       [rbp + mc_genmcl.px_callp.slots],	rax
    mov       rax,	[rbp + mc_genmcl.px_callp.nargs]
    cmp       rax,	4
    jg        L2296
    mov       rax,	[mc_decls.mstackdepth]
    test      rax,	rax
    jz        L2298
    mov       rax,	4
    add       [rbp + mc_genmcl.px_callp.slots],	rax
    mov       rcx,	4
    call      mc_libmcl.pushslots
    lea       rax,	[mc_decls.callalign]
    mov       r10,	[mc_decls.ncalldepth]
    movzx     r11,	byte [rax + r10-1]
    add       [rbp + mc_genmcl.px_callp.slots],	r11
    jmp       L2297
L2298:
    mov       al,	1
    mov       [pc_decls.localshadow],	al
L2297:
    jmp       L2295
L2296:
    lea       rax,	[mc_decls.callalign]
    mov       r10,	[mc_decls.ncalldepth]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[rbp + mc_genmcl.px_callp.nargs]
    add       rax,	r11
    mov       [rbp + mc_genmcl.px_callp.slots],	rax
    mov       rcx,	4
    call      mc_libmcl.pushslots
L2295:
    mov       rax,	[rbp + mc_genmcl.px_callp.isptr]
    test      rax,	rax
    jz        L2300
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    jmp       L2299
L2300:
    mov       rax,	[rbp + mc_genmcl.px_callp.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2299:
    mov       rax,	[rbp + mc_genmcl.px_callp.nregargs]
    sub       rax,	[rbp + mc_genmcl.px_callp.blockret]
    mov       [rbp + mc_genmcl.px_callp.av_1],	rax
    mov       rax,	[rbp + mc_genmcl.px_callp.av_1]
    cmp       rax,	0
    jle       L2303
L2301:
    call      mc_stackmcl.poppcl
L2302:
    dec       qword [rbp + mc_genmcl.px_callp.av_1]
    jnz       L2301
L2303:
    mov       rax,	[rbp + mc_genmcl.px_callp.slots]
    test      rax,	rax
    jz        L2305
    mov       rcx,	[rbp + mc_genmcl.px_callp.slots]
    call      mc_libmcl.popslots
L2305:
L2304:
    movzx     rax,	byte [mc_decls.pmode]
    test      rax,	rax
    jz        L2307
    mov       rcx,	[rbp + mc_genmcl.px_callp.p]
    call      mc_auxmcl.do_getretvalue
L2307:
L2306:
    dec       qword [mc_decls.ncalldepth]
L2291:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc px_jumpret
mc_genmcl.px_jumpret:
;>>
    %define mc_genmcl.px_jumpret.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    test      rax,	rax
    jz        L2310
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    mov       r8,	1
    call      mc_stackmcl.loadparam
    call      mc_stackmcl.poppcl
L2310:
L2309:
    mov       rcx,	[rbp + mc_genmcl.px_jumpret.p]
    call      mc_genmcl.px_jump
L2308:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_jumpretm
mc_genmcl.px_jumpretm:
;>>
    %define mc_genmcl.px_jumpretm.p 16
    %define mc_genmcl.px_jumpretm.n -8
    %define mc_genmcl.px_jumpretm.av_1 -16
    %define mc_genmcl.px_jumpretm.i -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	1
    mov       [rbp + mc_genmcl.px_jumpretm.i],	rax
    mov       rax,	[rbp + mc_genmcl.px_jumpretm.p]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + mc_genmcl.px_jumpretm.av_1],	r10
    mov       rax,	[rbp + mc_genmcl.px_jumpretm.av_1]
    cmp       rax,	1
    jl        L2314
L2312:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	[rbp + mc_genmcl.px_jumpretm.i]
    add       rax,	1
    mov       [rbp + mc_genmcl.px_jumpretm.n],	rax
    mov       rax,	1
    add       rax,	[rbp + mc_genmcl.px_jumpretm.i]
    sub       rax,	1
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[rbp + mc_genmcl.px_jumpretm.n]
    movzx     rdi,	byte [r10 + r11-1]
    mov       rcx,	[rbp + mc_genmcl.px_jumpretm.n]
    mov       rdx,	rdi
    mov       r8,	rax
    call      mc_stackmcl.loadparam
L2313:
    mov       rax,	[rbp + mc_genmcl.px_jumpretm.i]
    inc       rax
    mov       [rbp + mc_genmcl.px_jumpretm.i],	rax
    cmp       rax,	[rbp + mc_genmcl.px_jumpretm.av_1]
    jle       L2312
L2314:
    mov       rcx,	[rbp + mc_genmcl.px_jumpretm.p]
    call      mc_genmcl.px_jump
L2311:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_startmx
mc_genmcl.px_startmx:
;>>
    %define mc_genmcl.px_startmx.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    xor       ecx,	ecx
    call      mc_stackmcl.saveopnds
L2315:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_resetmx
mc_genmcl.px_resetmx:
;>>
    %define mc_genmcl.px_resetmx.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	1
    call      mc_stackmcl.movetoreg
    mov       rax,	[rbp + mc_genmcl.px_resetmx.p]
    movzx     r10,	byte [rax]
    cmp       r10,	117
    jnz       L2318
    call      mc_stackmcl.poppcl
L2318:
L2317:
L2316:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_stop
mc_genmcl.px_stop:
;>>
    %define mc_genmcl.px_stop.p 16
    %define mc_genmcl.px_stop.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    mov       r8,	11
    call      mc_stackmcl.loadparam
    lea       rcx,	[rel L5731]
    call      mc_libmcl.findnamesym
    mov       [rbp + mc_genmcl.px_stop.d],	rax
    mov       rax,	[rbp + mc_genmcl.px_stop.d]
    test      rax,	rax
    jnz       L2321
    lea       rcx,	[rel L5731]
    xor       edx,	edx
    call      pc_api.pc_makesymbol
    mov       [rbp + mc_genmcl.px_stop.d],	rax
    mov       al,	1
    mov       r10,	[rbp + mc_genmcl.px_stop.d]
    mov       [r10+56],	al
    mov       rcx,	[rbp + mc_genmcl.px_stop.d]
    call      mc_libmcl.addnamesym
L2321:
L2320:
    mov       rcx,	[rbp + mc_genmcl.px_stop.d]
    call      mc_libmcl.mgenmemaddr
    mov       rcx,	22
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       al,	1
    mov       [pc_decls.localshadow],	al
    mov       rax,	1
    cmp       [pc_decls.highargs],	rax
    jge       L5732
    mov       [pc_decls.highargs],	rax
L5732:
    call      mc_stackmcl.poppcl
L2319:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_incrto
mc_genmcl.px_incrto:
;>>
    %define mc_genmcl.px_incrto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_incrto.p]
    mov       rdx,	53
    mov       r8,	29
    call      mc_auxmcl.do_incr
L2322:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_decrto
mc_genmcl.px_decrto:
;>>
    %define mc_genmcl.px_decrto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_decrto.p]
    mov       rdx,	54
    mov       r8,	30
    call      mc_auxmcl.do_incr
L2323:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_incrload
mc_genmcl.px_incrload:
;>>
    %define mc_genmcl.px_incrload.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_incrload.p]
    mov       rdx,	53
    mov       r8,	29
    call      mc_auxmcl.do_incrload
L2324:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_decrload
mc_genmcl.px_decrload:
;>>
    %define mc_genmcl.px_decrload.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_decrload.p]
    mov       rdx,	54
    mov       r8,	30
    call      mc_auxmcl.do_incrload
L2325:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_loadincr
mc_genmcl.px_loadincr:
;>>
    %define mc_genmcl.px_loadincr.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_loadincr.p]
    mov       rdx,	53
    mov       r8,	29
    call      mc_auxmcl.do_loadincr
L2326:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_loaddecr
mc_genmcl.px_loaddecr:
;>>
    %define mc_genmcl.px_loaddecr.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_loaddecr.p]
    mov       rdx,	54
    mov       r8,	30
    call      mc_auxmcl.do_loadincr
L2327:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_forup
mc_genmcl.px_forup:
;>>
    %define mc_genmcl.px_forup.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_forup.p]
    mov       rdx,	53
    mov       r8,	29
    mov       r9,	14
    call      mc_auxmcl.do_for
L2328:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_fordown
mc_genmcl.px_fordown:
;>>
    %define mc_genmcl.px_fordown.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_fordown.p]
    mov       rdx,	54
    mov       r8,	30
    mov       r9,	13
    call      mc_auxmcl.do_for
L2329:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_iload
mc_genmcl.px_iload:
;>>
    %define mc_genmcl.px_iload.p 16
    %define mc_genmcl.px_iload.ax -8
    %define mc_genmcl.px_iload.px -16
    %define mc_genmcl.px_iload.nextpcl -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jz        L2332
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_iload.px],	rax
    mov       rax,	[rbp + mc_genmcl.px_iload.p]
    movzx     r10,	byte [rax]
    cmp       r10,	2
    jz        L2334
    mov       rcx,	[rbp + mc_genmcl.px_iload.px]
    mov       rdx,	[mc_genmcl.pxoffset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       [rbp + mc_genmcl.px_iload.px],	rax
L2334:
L2333:
    mov       rax,	[mc_decls.currpcl]
    lea       rax,	[rax+32]
    mov       [rbp + mc_genmcl.px_iload.nextpcl],	rax
    mov       rax,	[rbp + mc_genmcl.px_iload.nextpcl]
    movzx     r10,	byte [rax]
    cmp       r10,	113
    jnz       L2336
    mov       rax,	[rbp + mc_genmcl.px_iload.nextpcl]
    movzx     r10,	byte [rax+3]
    xor       ecx,	ecx
    mov       rdx,	r10
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iload.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_iload.nextpcl]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    lea       rax,	[mc_decls.ploadop]
    movzx     r11,	byte [rax + r10]
    mov       rcx,	r11
    mov       rdx,	[rbp + mc_genmcl.px_iload.ax]
    mov       r8,	[rbp + mc_genmcl.px_iload.px]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_iload.nextpcl]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + mc_genmcl.px_iload.ax]
    movzx     r11,	byte [rax+10]
    mov       rcx,	r11
    mov       rdx,	r10
    call      mc_stackmcl.setnewzz
    mov       rax,	[rbp + mc_genmcl.px_iload.nextpcl]
    mov       [mc_decls.currpcl],	rax
    jmp       L2335
L2336:
    movzx     rax,	byte [mc_decls.pmode]
    xor       ecx,	ecx
    mov       rdx,	rax
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iload.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iload.ax]
    mov       r8,	[rbp + mc_genmcl.px_iload.px]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_iload.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
L2335:
    jmp       L2331
L2332:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind_simp
    mov       [rbp + mc_genmcl.px_iload.px],	rax
    mov       rax,	[rbp + mc_genmcl.px_iload.p]
    movzx     r10,	byte [rax]
    cmp       r10,	2
    jz        L2338
    mov       rcx,	[rbp + mc_genmcl.px_iload.px]
    mov       rdx,	[mc_genmcl.pxoffset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       [rbp + mc_genmcl.px_iload.px],	rax
L2338:
L2337:
    mov       rax,	[rbp + mc_genmcl.px_iload.px]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iload.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_iload.ax]
    mov       rdx,	[rbp + mc_genmcl.px_iload.px]
    call      mc_auxmcl.dolea
L2331:
L2330:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_iloadx
mc_genmcl.px_iloadx:
;>>
    %define mc_genmcl.px_iloadx.p 16
    %define mc_genmcl.px_iloadx.z -8
    %define mc_genmcl.px_iloadx.nextpcl -16
    %define mc_genmcl.px_iloadx.ax -24
    %define mc_genmcl.px_iloadx.bx -32
    %define mc_genmcl.px_iloadx.px -40
    %define mc_genmcl.px_iloadx.fx -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_iloadx.z],	rax
    test      rax,	rax
    jz        L2341
    mov       rax,	[rbp + mc_genmcl.px_iloadx.z]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genmcl.px_iloadx.p]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rax,	[rbp + mc_genmcl.px_iloadx.p]
    movsxd    r11,	dword [rax+20]
    add       r10,	r11
    mov       [mc_genmcl.pxoffset],	r10
    call      mc_stackmcl.poppcl
    mov       rcx,	[rbp + mc_genmcl.px_iloadx.p]
    call      mc_genmcl.px_iload
    jmp       L2339
L2341:
L2340:
    mov       rcx,	[rbp + mc_genmcl.px_iloadx.p]
    call      mc_auxmcl.do_addrmode
    mov       [rbp + mc_genmcl.px_iloadx.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2343
    mov       rax,	[rbp + mc_genmcl.px_iloadx.px]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iloadx.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_iloadx.ax]
    mov       rdx,	[rbp + mc_genmcl.px_iloadx.px]
    call      mc_auxmcl.dolea
    mov       rax,	[rbp + mc_genmcl.px_iloadx.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_stackmcl.setnewzz
    jmp       L2342
L2343:
    mov       rax,	[mc_decls.currpcl]
    lea       rax,	[rax+32]
    mov       [rbp + mc_genmcl.px_iloadx.nextpcl],	rax
    mov       rax,	[rbp + mc_genmcl.px_iloadx.nextpcl]
    movzx     r10,	byte [rax]
    cmp       r10,	113
    jnz       L2345
    mov       rax,	[rbp + mc_genmcl.px_iloadx.nextpcl]
    movzx     r10,	byte [rax+3]
    xor       ecx,	ecx
    mov       rdx,	r10
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iloadx.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_iloadx.nextpcl]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    lea       rax,	[mc_decls.ploadop]
    movzx     r11,	byte [rax + r10]
    mov       rcx,	r11
    mov       rdx,	[rbp + mc_genmcl.px_iloadx.ax]
    mov       r8,	[rbp + mc_genmcl.px_iloadx.px]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    mov       rax,	[rbp + mc_genmcl.px_iloadx.nextpcl]
    movzx     r10,	byte [rax+3]
    mov       rax,	[rbp + mc_genmcl.px_iloadx.ax]
    movzx     r11,	byte [rax+10]
    mov       rcx,	r11
    mov       rdx,	r10
    call      mc_stackmcl.setnewzz
    mov       rax,	[rbp + mc_genmcl.px_iloadx.nextpcl]
    mov       [mc_decls.currpcl],	rax
    jmp       L2344
L2345:
    movzx     rax,	byte [mc_decls.pmode]
    xor       ecx,	ecx
    mov       rdx,	rax
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_iloadx.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iloadx.ax]
    mov       r8,	[rbp + mc_genmcl.px_iloadx.px]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_iloadx.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
L2344:
L2342:
L2339:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc px_istore
mc_genmcl.px_istore:
;>>
    %define mc_genmcl.px_istore.p 16
    %define mc_genmcl.px_istore.bx -8
    %define mc_genmcl.px_istore.px -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_istore.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_istore.px],	rax
    mov       rax,	[rbp + mc_genmcl.px_istore.p]
    movzx     r10,	byte [rax]
    cmp       r10,	5
    jz        L2348
    mov       rcx,	[rbp + mc_genmcl.px_istore.px]
    mov       rdx,	[mc_genmcl.pxoffset]
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       [rbp + mc_genmcl.px_istore.px],	rax
L2348:
L2347:
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2350
    mov       rcx,	[rbp + mc_genmcl.px_istore.px]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_genmcl.px_istore.px],	rax
    mov       rcx,	[rbp + mc_genmcl.px_istore.bx]
    mov       rdx,	6
    call      mc_stackmcl.makeopndind
    mov       [rbp + mc_genmcl.px_istore.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_istore.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_istore.px]
    mov       rdx,	[rbp + mc_genmcl.px_istore.bx]
    mov       r8,	r10
    mov       r9,	1
    call      mc_auxmcl.copyblock
    jmp       L2349
L2350:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_istore.px]
    mov       r8,	[rbp + mc_genmcl.px_istore.bx]
    call      mc_libmcl.genmc
L2349:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2346:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_istorex
mc_genmcl.px_istorex:
;>>
    %define mc_genmcl.px_istorex.p 16
    %define mc_genmcl.px_istorex.ax -8
    %define mc_genmcl.px_istorex.cx -16
    %define mc_genmcl.px_istorex.px -24
    %define mc_genmcl.px_istorex.z -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_istorex.z],	rax
    test      rax,	rax
    jz        L2353
    mov       rax,	[rbp + mc_genmcl.px_istorex.z]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genmcl.px_istorex.p]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rax,	[rbp + mc_genmcl.px_istorex.p]
    movsxd    r11,	dword [rax+20]
    add       r10,	r11
    mov       [mc_genmcl.pxoffset],	r10
    call      mc_stackmcl.poppcl
    mov       rcx,	[rbp + mc_genmcl.px_istorex.p]
    call      mc_genmcl.px_istore
    jmp       L2351
L2353:
L2352:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	2
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_istorex.cx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_istorex.p]
    call      mc_auxmcl.do_addrmode
    mov       [rbp + mc_genmcl.px_istorex.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2355
    mov       rcx,	[rbp + mc_genmcl.px_istorex.px]
    call      mc_stackmcl.makesimpleaddr
    mov       [rbp + mc_genmcl.px_istorex.px],	rax
    mov       rcx,	[rbp + mc_genmcl.px_istorex.cx]
    mov       rdx,	6
    call      mc_stackmcl.makeopndind
    mov       [rbp + mc_genmcl.px_istorex.cx],	rax
    mov       rax,	[rbp + mc_genmcl.px_istorex.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_istorex.px]
    mov       rdx,	[rbp + mc_genmcl.px_istorex.cx]
    mov       r8,	r10
    mov       r9,	1
    call      mc_auxmcl.copyblock
    mov       rax,	[rbp + mc_genmcl.px_istorex.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_istorex.px]
    mov       rdx,	[rbp + mc_genmcl.px_istorex.cx]
    mov       r8,	r10
    mov       r9,	1
    call      mc_auxmcl.copyblock
    jmp       L2354
L2355:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_istorex.px]
    mov       r8,	[rbp + mc_genmcl.px_istorex.cx]
    call      mc_libmcl.genmc
L2354:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2351:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_addpx
mc_genmcl.px_addpx:
;>>
    %define mc_genmcl.px_addpx.p 16
    %define mc_genmcl.px_addpx.ax -8
    %define mc_genmcl.px_addpx.cx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_addpx.p]
    call      mc_auxmcl.do_addrmode
    mov       [rbp + mc_genmcl.px_addpx.cx],	rax
    mov       rax,	[rbp + mc_genmcl.px_addpx.cx]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_stackmcl.getworkreg_rm
    mov       [rbp + mc_genmcl.px_addpx.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_addpx.ax]
    mov       rdx,	[rbp + mc_genmcl.px_addpx.cx]
    call      mc_auxmcl.dolea
    call      mc_stackmcl.poppcl
    mov       rax,	[rbp + mc_genmcl.px_addpx.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	6
    call      mc_stackmcl.setnewzz
L2356:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_subpx
mc_genmcl.px_subpx:
;>>
    %define mc_genmcl.px_subpx.p 16
    %define mc_genmcl.px_subpx.scale -8
    %define mc_genmcl.px_subpx.extra -16
    %define mc_genmcl.px_subpx.offset -24
    %define mc_genmcl.px_subpx.ax -32
    %define mc_genmcl.px_subpx.bx -40
    %define mc_genmcl.px_subpx.z -48
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_subpx.p]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + mc_genmcl.px_subpx.scale],	r10
    mov       rax,	[rbp + mc_genmcl.px_subpx.p]
    movsxd    r10,	dword [rax+20]
    mov       [rbp + mc_genmcl.px_subpx.extra],	r10
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_subpx.ax],	rax
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_subpx.z],	rax
    test      rax,	rax
    jz        L2359
    mov       rax,	[rbp + mc_genmcl.px_subpx.z]
    mov       r10,	[rax+8]
    imul      r10,	[rbp + mc_genmcl.px_subpx.scale]
    add       r10,	[rbp + mc_genmcl.px_subpx.extra]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_subpx.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2358
L2359:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_subpx.bx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_subpx.bx]
    mov       rdx,	[rbp + mc_genmcl.px_subpx.scale]
    call      mc_auxmcl.scaleindex
    mov       [rbp + mc_genmcl.px_subpx.scale],	rax
    mov       rax,	[rbp + mc_genmcl.px_subpx.scale]
    cmp       rax,	1
    jle       L2361
    mov       rcx,	[rbp + mc_genmcl.px_subpx.bx]
    mov       rdx,	[rbp + mc_genmcl.px_subpx.scale]
    call      mc_auxmcl.mulimm
L2361:
L2360:
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_subpx.ax]
    mov       r8,	[rbp + mc_genmcl.px_subpx.bx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_subpx.extra]
    test      rax,	rax
    jz        L2363
    call      msys.m$print_startcon
    lea       rcx,	[rel L5733]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + mc_genmcl.px_subpx.extra]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5734]
    lea       rdx,	[rel L5735]
    call      mc_libmcl.merror
L2363:
L2362:
L2358:
    call      mc_stackmcl.poppcl
L2357:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc px_to
mc_genmcl.px_to:
;>>
    %define mc_genmcl.px_to.p 16
    %define mc_genmcl.px_to.q -8
    %define mc_genmcl.px_to.ax -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_to.p]
    lea       rax,	[rax+32]
    mov       [mc_decls.currpcl],	rax
    mov       [rbp + mc_genmcl.px_to.q],	rax
    mov       rax,	[rbp + mc_genmcl.px_to.q]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    xor       edx,	edx
    call      mc_libmcl.mgenmem
    mov       [rbp + mc_genmcl.px_to.ax],	rax
    mov       rcx,	54
    mov       rdx,	[rbp + mc_genmcl.px_to.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_to.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	5
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
L2364:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_iswap
mc_genmcl.px_iswap:
;>>
    %define mc_genmcl.px_iswap.p 16
    %define mc_genmcl.px_iswap.ax -8
    %define mc_genmcl.px_iswap.bx -16
    %define mc_genmcl.px_iswap.px -24
    %define mc_genmcl.px_iswap.qx -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_iswap.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_iswap.qx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_iswap.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_iswap.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jz        L2367
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iswap.ax]
    mov       r8,	[rbp + mc_genmcl.px_iswap.px]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iswap.bx]
    mov       r8,	[rbp + mc_genmcl.px_iswap.qx]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iswap.qx]
    mov       r8,	[rbp + mc_genmcl.px_iswap.ax]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_iswap.px]
    mov       r8,	[rbp + mc_genmcl.px_iswap.bx]
    call      mc_libmcl.genmc
    jmp       L2366
L2367:
    lea       rcx,	[rel L5736]
    lea       rdx,	[rel L5737]
    call      mc_libmcl.merror
L2366:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2365:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_swapstk
mc_genmcl.px_swapstk:
;>>
    %define mc_genmcl.px_swapstk.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_swapstk.p]
    movsxd    r10,	dword [rax+20]
    mov       rax,	[mc_decls.noperands]
    sub       rax,	r10
    add       rax,	1
    mov       r10,	[rbp + mc_genmcl.px_swapstk.p]
    movsxd    r11,	dword [r10+16]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	r11
    add       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.swapopnds
L2368:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_labeldef
mc_genmcl.px_labeldef:
;>>
    %define mc_genmcl.px_labeldef.p 16
    %define mc_genmcl.px_labeldef.str -104
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	144
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_labeldef.p]
    mov       r10,	[rax+8]
    mov       rax,	[r10]
    lea       rcx,	[rbp + mc_genmcl.px_labeldef.str]
    mov       rdx,	rax
    call      strcpy
    lea       rcx,	[rbp + mc_genmcl.px_labeldef.str]
    lea       rdx,	[rel L5738]
    call      strcat
    lea       rcx,	[rbp + mc_genmcl.px_labeldef.str]
    call      mc_libmcl.mgencomment
L2369:
;---------------
    add       rsp,	144
    pop       rbp
    ret       
;End 
;Proc px_addto
mc_genmcl.px_addto:
;>>
    %define mc_genmcl.px_addto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_addto.p]
    mov       rdx,	29
    mov       r8,	66
    call      mc_auxmcl.do_binto
L2370:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_subto
mc_genmcl.px_subto:
;>>
    %define mc_genmcl.px_subto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_subto.p]
    mov       rdx,	30
    mov       r8,	68
    call      mc_auxmcl.do_binto
L2371:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_multo
mc_genmcl.px_multo:
;>>
    %define mc_genmcl.px_multo.p 16
    %define mc_genmcl.px_multo.ax -8
    %define mc_genmcl.px_multo.bx -16
    %define mc_genmcl.px_multo.cx -24
    %define mc_genmcl.px_multo.x -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jg        L2374
    mov       rcx,	[rbp + mc_genmcl.px_multo.p]
    mov       rdx,	70
    call      mc_auxmcl.do_binto_float
    jmp       L2372
L2374:
L2373:
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psize]
    movzx     r11,	byte [r10 + rax]
    cmp       r11,	1
    jnz       L2376
    lea       rcx,	[rel L5739]
    lea       rdx,	[rel L5740]
    call      mc_libmcl.merror
L2376:
L2375:
    mov       rcx,	10
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_multo.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	2
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_multo.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_multo.cx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_multo.cx]
    mov       r8,	[rbp + mc_genmcl.px_multo.ax]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	2
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_multo.x],	rax
    test      rax,	rax
    jz        L2378
    mov       rax,	[rbp + mc_genmcl.px_multo.x]
    mov       r10,	[rax+8]
    mov       rcx,	[rbp + mc_genmcl.px_multo.cx]
    mov       rdx,	r10
    call      mc_auxmcl.mulimm
    jmp       L2377
L2378:
    mov       rcx,	35
    mov       rdx,	[rbp + mc_genmcl.px_multo.cx]
    mov       r8,	[rbp + mc_genmcl.px_multo.bx]
    call      mc_libmcl.genmc
L2377:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_multo.ax]
    mov       r8,	[rbp + mc_genmcl.px_multo.cx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2372:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_bitandto
mc_genmcl.px_bitandto:
;>>
    %define mc_genmcl.px_bitandto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitandto.p]
    mov       rdx,	39
    xor       r8d,	r8d
    call      mc_auxmcl.do_binto
L2379:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitorto
mc_genmcl.px_bitorto:
;>>
    %define mc_genmcl.px_bitorto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitorto.p]
    mov       rdx,	40
    xor       r8d,	r8d
    call      mc_auxmcl.do_binto
L2380:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitxorto
mc_genmcl.px_bitxorto:
;>>
    %define mc_genmcl.px_bitxorto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_bitxorto.p]
    mov       rdx,	41
    xor       r8d,	r8d
    call      mc_auxmcl.do_binto
L2381:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_shlto
mc_genmcl.px_shlto:
;>>
    %define mc_genmcl.px_shlto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_shlto.p]
    mov       rdx,	44
    call      mc_auxmcl.do_shiftnto
L2382:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_shrto
mc_genmcl.px_shrto:
;>>
    %define mc_genmcl.px_shrto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2385
    mov       rax,	45
    jmp       L2384
L2385:
    mov       rax,	46
L2384:
    mov       rcx,	[rbp + mc_genmcl.px_shrto.p]
    mov       rdx,	rax
    call      mc_auxmcl.do_shiftnto
L2383:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_fix
mc_genmcl.px_fix:
;>>
    %define mc_genmcl.px_fix.p 16
    %define mc_genmcl.px_fix.fx -8
    %define mc_genmcl.px_fix.ax -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_fix.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_fix.fx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.pmin]
    movzx     r11,	byte [r10 + rax]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r11
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_fix.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_fix.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    sub       r10,	1
    mov       rax,	84
    add       rax,	r10
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_fix.ax]
    mov       r8,	[rbp + mc_genmcl.px_fix.fx]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_fix.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
L2386:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_float
mc_genmcl.px_float:
;>>
    %define mc_genmcl.px_float.p 16
    %define mc_genmcl.px_float.ax -8
    %define mc_genmcl.px_float.fx -16
    %define mc_genmcl.px_float.lab -24
    %define mc_genmcl.px_float.lab2 -32
    %define mc_genmcl.px_float.pmode2 -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_float.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       [rbp + mc_genmcl.px_float.pmode2],	r10b
    movzx     rax,	byte [rbp + mc_genmcl.px_float.pmode2]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_float.ax],	rax
    movzx     rax,	byte [rbp + mc_genmcl.px_float.pmode2]
    lea       r10,	[pc_tables.psize]
    movzx     r11,	byte [r10 + rax]
    cmp       r11,	4
    jge       L2389
    lea       rcx,	[rel L5741]
    lea       rdx,	[rel L5742]
    call      mc_libmcl.merror
L2389:
L2388:
    movzx     rax,	byte [rbp + mc_genmcl.px_float.pmode2]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2391
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rax,	[rbp + mc_genmcl.px_float.p]
    movzx     r10,	byte [rax+3]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_float.fx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	86
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_float.fx]
    mov       r8,	[rbp + mc_genmcl.px_float.ax]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    jmp       L2390
L2391:
    movzx     rax,	byte [rbp + mc_genmcl.px_float.pmode2]
    cmp       rax,	6
    jnz       L2392
    mov       rcx,	2
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	2
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_float.fx],	rax
    call      mc_libmcl.mcreatefwdlabel
    mov       [rbp + mc_genmcl.px_float.lab],	rax
    call      mc_libmcl.mcreatefwdlabel
    mov       [rbp + mc_genmcl.px_float.lab2],	rax
    xor       ecx,	ecx
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_float.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_float.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	12
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	87
    mov       rdx,	[rbp + mc_genmcl.px_float.fx]
    mov       r8,	[rbp + mc_genmcl.px_float.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_float.lab2]
    call      mc_libmcl.mgenlabel
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_float.lab]
    call      mc_libmcl.mdefinefwdlabel
    mov       rax,	[mc_decls.labmask63]
    test      rax,	rax
    jnz       L2394
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [mc_decls.labmask63],	rax
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       [mc_decls.laboffset64],	rax
L2394:
L2393:
    mov       rcx,	[mc_decls.labmask63]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	39
    mov       rdx,	[rbp + mc_genmcl.px_float.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	87
    mov       rdx,	[rbp + mc_genmcl.px_float.fx]
    mov       r8,	[rbp + mc_genmcl.px_float.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[mc_decls.laboffset64]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	67
    mov       rdx,	[rbp + mc_genmcl.px_float.fx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_float.lab2]
    call      mc_libmcl.mdefinefwdlabel
;reduce:
L2395:
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	1
    jnz       L2397
    mov       rcx,	[rbp + mc_genmcl.px_float.fx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	88
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_float.fx]
    call      mc_libmcl.genmc
    mov       al,	1
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-1],	al
L2397:
L2396:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    jmp       L2390
L2392:
    mov       rcx,	2
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	2
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_float.fx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_float.ax]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_genmcl.px_float.ax],	rax
    mov       rcx,	87
    mov       rdx,	[rbp + mc_genmcl.px_float.fx]
    mov       r8,	[rbp + mc_genmcl.px_float.ax]
    call      mc_libmcl.genmc
    jmp       L2395
L2390:
    call      mc_stackmcl.poppcl
L2387:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc px_idiv
mc_genmcl.px_idiv:
;>>
    %define mc_genmcl.px_idiv.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    mov       rcx,	[rbp + mc_genmcl.px_idiv.p]
    mov       rdx,	r11
    mov       r8,	1
    call      mc_auxmcl.do_divrem
L2398:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_irem
mc_genmcl.px_irem:
;>>
    %define mc_genmcl.px_irem.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    mov       rcx,	[rbp + mc_genmcl.px_irem.p]
    mov       rdx,	r11
    xor       r8d,	r8d
    call      mc_auxmcl.do_divrem
L2399:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_idivrem
mc_genmcl.px_idivrem:
;>>
    %define mc_genmcl.px_idivrem.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    mov       rcx,	[rbp + mc_genmcl.px_idivrem.p]
    mov       rdx,	r11
    mov       r8,	2
    call      mc_auxmcl.do_divrem
L2400:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_clear
mc_genmcl.px_clear:
;>>
    %define mc_genmcl.px_clear.p 16
    %define mc_genmcl.px_clear.ax -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    call      mc_stackmcl.getopnd_ind_simp
    mov       [rbp + mc_genmcl.px_clear.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_clear.p]
    mov       r10d,	[rax+4]
    mov       rcx,	[rbp + mc_genmcl.px_clear.ax]
    mov       rdx,	r10
    call      mc_auxmcl.clearblock
    call      mc_stackmcl.poppcl
L2401:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_subp
mc_genmcl.px_subp:
;>>
    %define mc_genmcl.px_subp.p 16
    %define mc_genmcl.px_subp.ax -8
    %define mc_genmcl.px_subp.bx -16
    %define mc_genmcl.px_subp.n -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_subp.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_subp.bx],	rax
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_subp.ax]
    mov       r8,	[rbp + mc_genmcl.px_subp.bx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_subp.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jle       L2404
    mov       rax,	[rbp + mc_genmcl.px_subp.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    call      mc_libmcl.ispoweroftwo
    mov       [rbp + mc_genmcl.px_subp.n],	rax
    mov       rax,	[rbp + mc_genmcl.px_subp.n]
    test      rax,	rax
    jz        L2406
    mov       rcx,	[rbp + mc_genmcl.px_subp.n]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	46
    mov       rdx,	[rbp + mc_genmcl.px_subp.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2405
L2406:
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genmcl.px_subp.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5743]
    lea       rdx,	[rel L5744]
    call      mc_libmcl.merror
L2405:
L2404:
L2403:
    call      mc_stackmcl.poppcl
L2402:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_switch
mc_genmcl.px_switch:
;>>
    %define mc_genmcl.px_switch.p 16
    %define mc_genmcl.px_switch.minlab -8
    %define mc_genmcl.px_switch.maxlab -16
    %define mc_genmcl.px_switch.jumplab -24
    %define mc_genmcl.px_switch.elselab -32
    %define mc_genmcl.px_switch.reg -40
    %define mc_genmcl.px_switch.ax -48
    %define mc_genmcl.px_switch.bx -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_switch.p]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + mc_genmcl.px_switch.minlab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switch.p]
    movsxd    r10,	dword [rax+20]
    mov       [rbp + mc_genmcl.px_switch.maxlab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switch.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_switch.jumplab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switch.p]
    lea       rax,	[rax+32]
    mov       [mc_decls.currpcl],	rax
    mov       rax,	[mc_decls.currpcl]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_switch.elselab],	r10
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_switch.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_switch.minlab]
    cmp       rax,	0
    jz        L2409
    mov       rcx,	[rbp + mc_genmcl.px_switch.minlab]
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_switch.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2409:
L2408:
    mov       rax,	[rbp + mc_genmcl.px_switch.maxlab]
    sub       rax,	[rbp + mc_genmcl.px_switch.minlab]
    add       rax,	1
    mov       rcx,	rax
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_switch.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_switch.elselab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	27
    mov       rdx,	3
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    movzx     rax,	byte [mc_decls.phighmem]
    test      rax,	rax
    jz        L2411
    call      mc_stackmcl.getworkireg
    mov       [rbp + mc_genmcl.px_switch.reg],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_switch.reg]
    mov       rdx,	rax
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_genmcl.px_switch.bx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_switch.jumplab]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	15
    mov       rdx,	[rbp + mc_genmcl.px_switch.bx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    sub       rsp,	8
    push      0
    push      0
    push      0
    mov       rax,	[rbp + mc_genmcl.px_switch.ax]
    movzx     r10,	byte [rax+10]
    mov       rcx,	[rbp + mc_genmcl.px_switch.reg]
    mov       rdx,	r10
    mov       r8,	8
    xor       r9d,	r9d
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2410
L2411:
    sub       rsp,	8
    push      0
    push      qword [rbp + mc_genmcl.px_switch.jumplab]
    push      0
    mov       rax,	[rbp + mc_genmcl.px_switch.ax]
    movzx     r10,	byte [rax+10]
    xor       ecx,	ecx
    mov       rdx,	r10
    mov       r8,	8
    xor       r9d,	r9d
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2410:
    call      mc_stackmcl.poppcl
    mov       rcx,	73
    mov       rdx,	1
    call      mc_libmcl.setsegment
L2407:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc px_switchu
mc_genmcl.px_switchu:
;>>
    %define mc_genmcl.px_switchu.p 16
    %define mc_genmcl.px_switchu.minlab -8
    %define mc_genmcl.px_switchu.maxlab -16
    %define mc_genmcl.px_switchu.jumplab -24
    %define mc_genmcl.px_switchu.elselab -32
    %define mc_genmcl.px_switchu.reg -40
    %define mc_genmcl.px_switchu.ax -48
    %define mc_genmcl.px_switchu.bx -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_switchu.p]
    movsxd    r10,	dword [rax+16]
    mov       [rbp + mc_genmcl.px_switchu.minlab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switchu.p]
    movsxd    r10,	dword [rax+20]
    mov       [rbp + mc_genmcl.px_switchu.maxlab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switchu.p]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_switchu.jumplab],	r10
    mov       rax,	[rbp + mc_genmcl.px_switchu.p]
    lea       rax,	[rax+32]
    mov       [mc_decls.currpcl],	rax
    mov       rax,	[mc_decls.currpcl]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_switchu.elselab],	r10
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_switchu.ax],	rax
    movzx     rax,	byte [mc_decls.phighmem]
    test      rax,	rax
    jz        L2414
    call      mc_stackmcl.getworkireg
    mov       [rbp + mc_genmcl.px_switchu.reg],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_switchu.reg]
    mov       rdx,	rax
    call      mc_libmcl.mgenreg
    mov       [rbp + mc_genmcl.px_switchu.bx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_switchu.jumplab]
    call      mc_libmcl.mgenlabelmem
    mov       rcx,	15
    mov       rdx,	[rbp + mc_genmcl.px_switchu.bx]
    mov       r8,	rax
    call      mc_libmcl.genmc
    sub       rsp,	8
    push      0
    push      0
    push      0
    mov       rax,	[rbp + mc_genmcl.px_switchu.minlab]
    neg       rax
    imul      rax,	8
    mov       r10,	[rbp + mc_genmcl.px_switchu.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	[rbp + mc_genmcl.px_switchu.reg]
    mov       rdx,	r11
    mov       r8,	8
    mov       r9,	rax
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2413
L2414:
    sub       rsp,	8
    push      0
    push      qword [rbp + mc_genmcl.px_switchu.jumplab]
    push      0
    mov       rax,	[rbp + mc_genmcl.px_switchu.minlab]
    neg       rax
    imul      rax,	8
    mov       r10,	[rbp + mc_genmcl.px_switchu.ax]
    movzx     r11,	byte [r10+10]
    xor       ecx,	ecx
    mov       rdx,	r11
    mov       r8,	8
    mov       r9,	rax
    sub       rsp,	32
    call      mc_libmcl.mgenindex
    add       rsp,	64
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2413:
    call      mc_stackmcl.poppcl
L2412:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc px_swlabel
mc_genmcl.px_swlabel:
;>>
    %define mc_genmcl.px_swlabel.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_swlabel.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    call      mc_libmcl.mgenlabel
    mov       rcx,	119
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2415:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_endsw
mc_genmcl.px_endsw:
;>>
    %define mc_genmcl.px_endsw.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rcx,	67
    mov       rdx,	1
    call      mc_libmcl.setsegment
L2416:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_fwiden
mc_genmcl.px_fwiden:
;>>
    %define mc_genmcl.px_fwiden.p 16
    %define mc_genmcl.px_fwiden.fx -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_fwiden.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_fwiden.fx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_fwiden.fx]
    mov       rdx,	8
    call      mc_libmcl.changeopndsize
    mov       rcx,	89
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_fwiden.fx]
    call      mc_libmcl.genmc
    mov       al,	2
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-1],	al
L2417:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_fnarrow
mc_genmcl.px_fnarrow:
;>>
    %define mc_genmcl.px_fnarrow.p 16
    %define mc_genmcl.px_fnarrow.fx -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_fnarrow.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_fnarrow.fx],	rax
    mov       rcx,	[rbp + mc_genmcl.px_fnarrow.fx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	88
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_fnarrow.fx]
    call      mc_libmcl.genmc
    mov       al,	1
    lea       r10,	[mc_decls.pclmode]
    mov       r11,	[mc_decls.noperands]
    mov       [r10 + r11-1],	al
L2418:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_truncate
mc_genmcl.px_truncate:
;>>
    %define mc_genmcl.px_truncate.p 16
    %define mc_genmcl.px_truncate.ax -8
    %define mc_genmcl.px_truncate.pmode2 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_truncate.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       [rbp + mc_genmcl.px_truncate.pmode2],	r10b
    movzx     rax,	byte [rbp + mc_genmcl.px_truncate.pmode2]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_truncate.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_truncate.p]
    mov       r10d,	[rax+4]
    movzx     rax,	byte [rbp + mc_genmcl.px_truncate.pmode2]
    lea       r11,	[pc_tables.psize]
    movzx     rdi,	byte [r11 + rax]
    cmp       r10,	rdi
    jz        L2421
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psize]
    movzx     r11,	byte [r10 + rax]
    mov       rcx,	[rbp + mc_genmcl.px_truncate.ax]
    mov       rdx,	r11
    call      mc_libmcl.changeopndsize
    movzx     r10,	byte [rbp + mc_genmcl.px_truncate.pmode2]
    lea       r11,	[mc_decls.ploadop]
    movzx     rdi,	byte [r11 + r10]
    mov       rcx,	rdi
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_truncate.ax]
    call      mc_libmcl.genmc
L2421:
L2420:
L2419:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_typepun
mc_genmcl.px_typepun:
;>>
    %define mc_genmcl.px_typepun.p 16
    %define mc_genmcl.px_typepun.ax -8
    %define mc_genmcl.px_typepun.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genmcl.px_typepun.p]
    movsxd    r10,	dword [rax+28]
    and       r10,	255
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	r10
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_typepun.bx],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_typepun.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_typepun.ax]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	[rbp + mc_genmcl.px_typepun.bx]
    mov       rdx,	r10
    call      mc_libmcl.changeopndsize
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_typepun.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[rbp + mc_genmcl.px_typepun.ax]
    movzx     r11,	byte [r10+10]
    mov       rcx,	r11
    mov       rdx,	rax
    call      mc_stackmcl.setnewzz
L2422:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_unload
mc_genmcl.px_unload:
;>>
    %define mc_genmcl.px_unload.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mc_stackmcl.poppcl
L2423:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_loadbit
mc_genmcl.px_loadbit:
;>>
    %define mc_genmcl.px_loadbit.p 16
    %define mc_genmcl.px_loadbit.ax -8
    %define mc_genmcl.px_loadbit.z -16
    %define mc_genmcl.px_loadbit.i -24
    %define mc_genmcl.px_loadbit.m -32
    %define mc_genmcl.px_loadbit.$T1 -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
;---------------
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_loadbit.z],	rax
    test      rax,	rax
    jz        L2426
    mov       rax,	[rbp + mc_genmcl.px_loadbit.z]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genmcl.px_loadbit.i],	r10
    mov       rax,	[rbp + mc_genmcl.px_loadbit.i]
    cmp       rax,	0
    jl        L2428
    cmp       rax,	31
    jg        L2428
    mov       rax,	5
    jmp       L2427
L2428:
    mov       rax,	6
L2427:
    mov       [rbp + mc_genmcl.px_loadbit.m],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_loadbit.m]
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_loadbit.ax],	rax
    mov       rax,	[rbp + mc_genmcl.px_loadbit.i]
    test      rax,	rax
    jz        L2430
    mov       rcx,	[rbp + mc_genmcl.px_loadbit.i]
    mov       rdx,	[rbp + mc_genmcl.px_loadbit.m]
    call      mc_libmcl.mgenint
    mov       rcx,	46
    mov       rdx,	[rbp + mc_genmcl.px_loadbit.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_loadbit.i]
    cmp       rax,	63
    jnz       L2432
    jmp       L2433
L2432:
L2431:
L2430:
L2429:
    jmp       L2425
L2426:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_loadbit.ax],	rax
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L2435
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	13
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2435:
L2434:
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	3
    mov       r8,	11
    call      mc_stackmcl.loadparam
    mov       rcx,	46
    mov       rdx,	[rbp + mc_genmcl.px_loadbit.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    movzx     rax,	byte [pc_decls.r10used]
    test      rax,	rax
    jz        L2437
    mov       rcx,	11
    mov       rdx,	10
    call      mc_libmcl.mgenreg
    mov       rcx,	14
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
L2437:
L2436:
L2425:
    mov       rcx,	1
    mov       rdx,	5
    call      mc_libmcl.mgenint
    mov       [rbp + mc_genmcl.px_loadbit.$T1],	rax
    mov       rcx,	[rbp + mc_genmcl.px_loadbit.ax]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	39
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_loadbit.$T1]
    call      mc_libmcl.genmc
;skip:
L2433:
    call      mc_stackmcl.poppcl
L2424:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc px_assem
mc_genmcl.px_assem:
;>>
    %define mc_genmcl.px_assem.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.idomcl_assem]
    test      rax,	rax
    jz        L2440
    mov       rax,	[rbp + mc_genmcl.px_assem.p]
    mov       r10,	[rax+8]
    mov       rcx,	r10
    mov       rax,	[mc_decls.idomcl_assem]
    call      rax
    jmp       L2439
L2440:
    lea       rcx,	[rel L5745]
    lea       rdx,	[rel L5746]
    call      mc_libmcl.merror
L2439:
L2438:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_sin
mc_genmcl.px_sin:
;>>
    %define mc_genmcl.px_sin.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_sin.p]
    lea       rdx,	[rel L5747]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2441:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_cos
mc_genmcl.px_cos:
;>>
    %define mc_genmcl.px_cos.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_cos.p]
    lea       rdx,	[rel L5748]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2442:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_tan
mc_genmcl.px_tan:
;>>
    %define mc_genmcl.px_tan.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_tan.p]
    lea       rdx,	[rel L5749]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2443:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_asin
mc_genmcl.px_asin:
;>>
    %define mc_genmcl.px_asin.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_asin.p]
    lea       rdx,	[rel L5750]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2444:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_acos
mc_genmcl.px_acos:
;>>
    %define mc_genmcl.px_acos.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_acos.p]
    lea       rdx,	[rel L5751]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2445:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_atan
mc_genmcl.px_atan:
;>>
    %define mc_genmcl.px_atan.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_atan.p]
    lea       rdx,	[rel L5752]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2446:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_log
mc_genmcl.px_log:
;>>
    %define mc_genmcl.px_log.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_log.p]
    lea       rdx,	[rel L5753]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2447:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_log10
mc_genmcl.px_log10:
;>>
    %define mc_genmcl.px_log10.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_log10.p]
    lea       rdx,	[rel L5754]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2448:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_exp
mc_genmcl.px_exp:
;>>
    %define mc_genmcl.px_exp.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_exp.p]
    lea       rdx,	[rel L5755]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2449:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_round
mc_genmcl.px_round:
;>>
    %define mc_genmcl.px_round.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_round.p]
    lea       rdx,	[rel L5756]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2450:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_floor
mc_genmcl.px_floor:
;>>
    %define mc_genmcl.px_floor.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_floor.p]
    lea       rdx,	[rel L5757]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2451:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_ceil
mc_genmcl.px_ceil:
;>>
    %define mc_genmcl.px_ceil.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_ceil.p]
    lea       rdx,	[rel L5758]
    mov       r8,	1
    call      mc_auxmcl.do_maths
L2452:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_atan2
mc_genmcl.px_atan2:
;>>
    %define mc_genmcl.px_atan2.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    mov       rcx,	[rbp + mc_genmcl.px_atan2.p]
    lea       rdx,	[rel L5759]
    mov       r8,	2
    call      mc_auxmcl.do_maths
L2453:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_fmod
mc_genmcl.px_fmod:
;>>
    %define mc_genmcl.px_fmod.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    mov       rcx,	[rbp + mc_genmcl.px_fmod.p]
    lea       rdx,	[rel L5760]
    mov       r8,	2
    call      mc_auxmcl.do_maths
L2454:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_setcc
mc_genmcl.px_setcc:
;>>
    %define mc_genmcl.px_setcc.p 16
    %define mc_genmcl.px_setcc.cond -8
    %define mc_genmcl.px_setcc.ax -16
    %define mc_genmcl.px_setcc.bx -24
    %define mc_genmcl.px_setcc.cx -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_setcc.ax],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_setcc.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_setcc.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[mc_genmcl.ucondcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.px_setcc.cond],	r11
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	11
    jnz       L2457
    lea       rcx,	[rel L5761]
    lea       rdx,	[rel L5762]
    call      mc_libmcl.merror
    jmp       L2456
L2457:
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2458
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2460
    mov       rax,	[rbp + mc_genmcl.px_setcc.p]
    movzx     r10,	byte [rax+2]
    lea       rax,	[mc_genmcl.scondcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       [rbp + mc_genmcl.px_setcc.cond],	r11
L2460:
L2459:
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_setcc.ax]
    mov       r8,	[rbp + mc_genmcl.px_setcc.bx]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_setcc.ax]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       [rbp + mc_genmcl.px_setcc.cx],	rax
    jmp       L2456
L2458:
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	74
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genmcl.px_setcc.ax]
    mov       r8,	[rbp + mc_genmcl.px_setcc.bx]
    call      mc_libmcl.genmc
    mov       rcx,	3
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_setcc.cx],	rax
    mov       rax,	[rbp + mc_genmcl.px_setcc.cx]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_stackmcl.setnewzz
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
L2456:
    mov       rcx,	59
    mov       rdx,	[rbp + mc_genmcl.px_setcc.cond]
    mov       r8,	[rbp + mc_genmcl.px_setcc.cx]
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	[rbp + mc_genmcl.px_setcc.cx]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	20
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_setcc.cx]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2455:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_min
mc_genmcl.px_min:
;>>
    %define mc_genmcl.px_min.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2463
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2465
    mov       rax,	15
    jmp       L2464
L2465:
    mov       rax,	7
L2464:
    mov       rcx,	rax
    call      mc_auxmcl.do_max_int
    jmp       L2462
L2463:
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	112
    add       r10,	rax
    mov       rcx,	r10
    call      mc_auxmcl.do_max_float
L2462:
L2461:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_max
mc_genmcl.px_max:
;>>
    %define mc_genmcl.px_max.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2468
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2470
    mov       rax,	12
    jmp       L2469
L2470:
    mov       rax,	2
L2469:
    mov       rcx,	rax
    call      mc_auxmcl.do_max_int
    jmp       L2467
L2468:
    movzx     rax,	byte [mc_decls.pmode]
    sub       rax,	1
    mov       r10,	113
    add       r10,	rax
    mov       rcx,	r10
    call      mc_auxmcl.do_max_float
L2467:
L2466:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_power
mc_genmcl.px_power:
;>>
    %define mc_genmcl.px_power.p 16
    %define mc_genmcl.px_power.ax -8
    %define mc_genmcl.px_power.bx -16
    %define mc_genmcl.px_power.d -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2473
    mov       rcx,	81
    call      mc_auxmcl.gethostfn
    mov       [rbp + mc_genmcl.px_power.d],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    mov       rcx,	[rbp + mc_genmcl.px_power.p]
    mov       rdx,	[rbp + mc_genmcl.px_power.d]
    mov       r8,	2
    call      mc_auxmcl.do_host
    jmp       L2472
L2473:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    mov       rcx,	[rbp + mc_genmcl.px_power.p]
    lea       rdx,	[rel L5763]
    mov       r8,	2
    call      mc_auxmcl.do_maths
L2472:
L2471:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_minto
mc_genmcl.px_minto:
;>>
    %define mc_genmcl.px_minto.p 16
    %define mc_genmcl.px_minto.$T1 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2476
    movzx     rax,	byte [mc_decls.pmode]
    mov       [rbp + mc_genmcl.px_minto.$T1],	rax
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2478
    mov       rax,	14
    jmp       L2477
L2478:
    mov       rax,	6
L2477:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_minto.$T1]
    call      mc_auxmcl.do_maxto_int
    jmp       L2475
L2476:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	6
    mov       rdx,	rax
    call      mc_auxmcl.do_maxto_real
L2475:
L2474:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_maxto
mc_genmcl.px_maxto:
;>>
    %define mc_genmcl.px_maxto.p 16
    %define mc_genmcl.px_maxto.$T1 -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2481
    movzx     rax,	byte [mc_decls.pmode]
    mov       [rbp + mc_genmcl.px_maxto.$T1],	rax
    movzx     rax,	byte [mc_decls.pmode]
    lea       r10,	[pc_tables.psigned]
    movzx     r11,	byte [r10 + rax]
    test      r11,	r11
    jz        L2483
    mov       rax,	13
    jmp       L2482
L2483:
    mov       rax,	3
L2482:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genmcl.px_maxto.$T1]
    call      mc_auxmcl.do_maxto_int
    jmp       L2480
L2481:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	3
    mov       rdx,	rax
    call      mc_auxmcl.do_maxto_real
L2480:
L2479:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_negto
mc_genmcl.px_negto:
;>>
    %define mc_genmcl.px_negto.p 16
    %define mc_genmcl.px_negto.px -8
    %define mc_genmcl.px_negto.fx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_negto.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2486
    mov       rcx,	51
    mov       rdx,	[rbp + mc_genmcl.px_negto.px]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2485
L2486:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_negto.fx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_negto.fx]
    mov       r8,	[rbp + mc_genmcl.px_negto.px]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_negto.fx]
    mov       rdx,	rax
    call      mc_auxmcl.do_negreal
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_negto.px]
    mov       r8,	[rbp + mc_genmcl.px_negto.fx]
    call      mc_libmcl.genmc
L2485:
    call      mc_stackmcl.poppcl
L2484:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_absto
mc_genmcl.px_absto:
;>>
    %define mc_genmcl.px_absto.p 16
    %define mc_genmcl.px_absto.px -8
    %define mc_genmcl.px_absto.ax -16
    %define mc_genmcl.px_absto.lx -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_absto.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_absto.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_absto.ax]
    mov       r8,	[rbp + mc_genmcl.px_absto.px]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jle       L2489
    xor       ecx,	ecx
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_absto.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_absto.lx],	r10
    mov       rcx,	27
    mov       rdx,	13
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	51
    mov       rdx,	[rbp + mc_genmcl.px_absto.ax]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_genmcl.px_absto.lx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    jmp       L2488
L2489:
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[rbp + mc_genmcl.px_absto.ax]
    mov       rdx,	rax
    call      mc_auxmcl.do_absreal
L2488:
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_absto.px]
    mov       r8,	[rbp + mc_genmcl.px_absto.ax]
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2487:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_addpxto
mc_genmcl.px_addpxto:
;>>
    %define mc_genmcl.px_addpxto.p 16
    %define mc_genmcl.px_addpxto.ax -8
    %define mc_genmcl.px_addpxto.bx -16
    %define mc_genmcl.px_addpxto.z -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_addpxto.ax],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_addpxto.z],	rax
    test      rax,	rax
    jz        L2492
    mov       rax,	[rbp + mc_genmcl.px_addpxto.z]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genmcl.px_addpxto.p]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	29
    mov       rdx,	[rbp + mc_genmcl.px_addpxto.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2491
L2492:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_addpxto.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_addpxto.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	[rbp + mc_genmcl.px_addpxto.bx]
    mov       rdx,	r10
    call      mc_auxmcl.mulimm
    mov       rcx,	29
    mov       rdx,	[rbp + mc_genmcl.px_addpxto.ax]
    mov       r8,	[rbp + mc_genmcl.px_addpxto.bx]
    call      mc_libmcl.genmc
L2491:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2490:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_subpxto
mc_genmcl.px_subpxto:
;>>
    %define mc_genmcl.px_subpxto.p 16
    %define mc_genmcl.px_subpxto.ax -8
    %define mc_genmcl.px_subpxto.bx -16
    %define mc_genmcl.px_subpxto.z -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_subpxto.ax],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_subpxto.z],	rax
    test      rax,	rax
    jz        L2495
    mov       rax,	[rbp + mc_genmcl.px_subpxto.z]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genmcl.px_subpxto.p]
    movsxd    r11,	dword [rax+16]
    imul      r10,	r11
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_subpxto.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2494
L2495:
    movzx     rax,	byte [mc_decls.pmode]
    mov       r10,	[mc_decls.noperands]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_subpxto.bx],	rax
    mov       rax,	[rbp + mc_genmcl.px_subpxto.p]
    movsxd    r10,	dword [rax+16]
    mov       rcx,	[rbp + mc_genmcl.px_subpxto.bx]
    mov       rdx,	r10
    call      mc_auxmcl.mulimm
    mov       rcx,	30
    mov       rdx,	[rbp + mc_genmcl.px_subpxto.ax]
    mov       r8,	[rbp + mc_genmcl.px_subpxto.bx]
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_subpxto.p]
    movsxd    r10,	dword [rax+20]
    test      r10,	r10
    jz        L2497
    lea       rcx,	[rel L5764]
    lea       rdx,	[rel L5765]
    call      mc_libmcl.merror
L2497:
L2496:
L2494:
    call      mc_stackmcl.poppcl
    call      mc_stackmcl.poppcl
L2493:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_divto
mc_genmcl.px_divto:
;>>
    %define mc_genmcl.px_divto.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_divto.p]
    mov       rdx,	72
    call      mc_auxmcl.do_binto_float
L2498:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_bitnotto
mc_genmcl.px_bitnotto:
;>>
    %define mc_genmcl.px_bitnotto.p 16
    %define mc_genmcl.px_bitnotto.px -8
    %define mc_genmcl.px_bitnotto.fx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_bitnotto.px],	rax
    mov       rcx,	52
    mov       rdx,	[rbp + mc_genmcl.px_bitnotto.px]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    call      mc_stackmcl.poppcl
L2499:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_notto
mc_genmcl.px_notto:
;>>
    %define mc_genmcl.px_notto.p 16
    %define mc_genmcl.px_notto.px -8
    %define mc_genmcl.px_notto.$T1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	3
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_notto.px],	rax
    mov       rcx,	1
    mov       rdx,	3
    call      mc_libmcl.mgenint
    mov       [rbp + mc_genmcl.px_notto.$T1],	rax
    mov       rcx,	[rbp + mc_genmcl.px_notto.px]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       rcx,	41
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_notto.$T1]
    call      mc_libmcl.genmc
L2500:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_toboolto
mc_genmcl.px_toboolto:
;>>
    %define mc_genmcl.px_toboolto.p 16
    %define mc_genmcl.px_toboolto.ax -8
    %define mc_genmcl.px_toboolto.bx -16
    %define mc_genmcl.px_toboolto.px -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	3
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_toboolto.px],	rax
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	rax
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_toboolto.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_toboolto.ax]
    mov       r8,	[rbp + mc_genmcl.px_toboolto.px]
    call      mc_libmcl.genmc
    mov       rcx,	42
    mov       rdx,	[rbp + mc_genmcl.px_toboolto.ax]
    mov       r8,	[rbp + mc_genmcl.px_toboolto.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_toboolto.ax]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_toboolto.bx],	r10
    mov       rcx,	59
    mov       rdx,	5
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    mov       rcx,	[rbp + mc_genmcl.px_toboolto.ax]
    mov       rdx,	4
    call      mc_libmcl.changeopndsize
    mov       rcx,	20
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_toboolto.bx]
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_toboolto.px]
    mov       r8,	[rbp + mc_genmcl.px_toboolto.ax]
    call      mc_libmcl.genmc
L2501:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_sign
mc_genmcl.px_sign:
;>>
    %define mc_genmcl.px_sign.p 16
    %define mc_genmcl.px_sign.ax -8
    %define mc_genmcl.px_sign.bx -16
    %define mc_genmcl.px_sign.lx1 -24
    %define mc_genmcl.px_sign.lx2 -32
    %define mc_genmcl.px_sign.lx3 -40
    %define mc_genmcl.px_sign.gtop -48
    %define mc_genmcl.px_sign.ltop -56
    %define mc_genmcl.px_sign.$T1 -64
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
;---------------
    movzx     rax,	byte [mc_decls.pmode]
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_sign.ax],	rax
    mov       rcx,	10
    call      mc_stackmcl.getworkregm
    mov       [rbp + mc_genmcl.px_sign.bx],	rax
    mov       rcx,	41
    mov       rdx,	[rbp + mc_genmcl.px_sign.bx]
    mov       r8,	[rbp + mc_genmcl.px_sign.bx]
    call      mc_libmcl.genmc
    movzx     rax,	byte [mc_decls.pmode]
    cmp       rax,	2
    jg        L2504
    mov       al,	7
    mov       [rbp + mc_genmcl.px_sign.gtop],	al
    mov       al,	2
    mov       [rbp + mc_genmcl.px_sign.ltop],	al
    movzx     rax,	byte [mc_decls.pmode]
    movq      XMM0,	[rel L5766]
    mov       rdx,	rax
    call      mc_libmcl.mgenrealmem
    movzx     r10,	byte [mc_decls.pmode]
    sub       r10,	1
    mov       r11,	74
    add       r11,	r10
    mov       rcx,	r11
    mov       rdx,	[rbp + mc_genmcl.px_sign.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    jmp       L2503
L2504:
    mov       al,	15
    mov       [rbp + mc_genmcl.px_sign.gtop],	al
    mov       al,	12
    mov       [rbp + mc_genmcl.px_sign.ltop],	al
    movzx     rax,	byte [mc_decls.pmode]
    xor       ecx,	ecx
    mov       rdx,	rax
    call      mc_libmcl.mgenint
    mov       rcx,	43
    mov       rdx,	[rbp + mc_genmcl.px_sign.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2503:
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_sign.lx1],	r10
    movzx     r10,	byte [rbp + mc_genmcl.px_sign.gtop]
    mov       rcx,	27
    mov       rdx,	r10
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_sign.lx2],	r10
    movzx     r10,	byte [rbp + mc_genmcl.px_sign.ltop]
    mov       rcx,	27
    mov       rdx,	r10
    mov       r8,	rax
    xor       r9d,	r9d
    call      mc_libmcl.genmc_cond
    inc       qword [mc_decls.mlabelno]
    mov       rax,	[mc_decls.mlabelno]
    mov       rcx,	rax
    call      mc_libmcl.mgenlabel
;DUPLOP
    mov       r10,	rax
    mov       [rbp + mc_genmcl.px_sign.lx3],	r10
    mov       rcx,	26
    mov       rdx,	rax
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_genmcl.px_sign.lx1]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	1
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       [rbp + mc_genmcl.px_sign.$T1],	rax
    mov       rcx,	[rbp + mc_genmcl.px_sign.bx]
    mov       rdx,	1
    call      mc_libmcl.changeopndsize
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[rbp + mc_genmcl.px_sign.$T1]
    call      mc_libmcl.genmc
    mov       rcx,	26
    mov       rdx,	[rbp + mc_genmcl.px_sign.lx3]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_genmcl.px_sign.lx2]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	54
    mov       rdx,	[rbp + mc_genmcl.px_sign.bx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rcx,	9
    mov       rdx,	[rbp + mc_genmcl.px_sign.lx3]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_sign.bx]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_stackmcl.setnewzz
L2502:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc px_loadbf
mc_genmcl.px_loadbf:
;>>
    %define mc_genmcl.px_loadbf.p 16
    %define mc_genmcl.px_loadbf.y -8
    %define mc_genmcl.px_loadbf.z -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_loadbf.y],	rax
    mov       rcx,	[mc_decls.noperands]
    call      mc_stackmcl.isimmload
    mov       [rbp + mc_genmcl.px_loadbf.z],	rax
    mov       rax,	[rbp + mc_genmcl.px_loadbf.y]
    test      rax,	rax
    jz        L2507
    mov       rax,	[rbp + mc_genmcl.px_loadbf.z]
    test      rax,	rax
    jz        L2507
    mov       rax,	[rbp + mc_genmcl.px_loadbf.z]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genmcl.px_loadbf.y]
    mov       r11,	[rax+8]
    mov       rcx,	[rbp + mc_genmcl.px_loadbf.p]
    mov       rdx,	r11
    mov       r8,	r10
    call      mc_auxmcl.do_loadbf_const
    jmp       L2506
L2507:
    mov       rcx,	[rbp + mc_genmcl.px_loadbf.p]
    call      mc_auxmcl.do_loadbf_var
L2506:
L2505:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_storebit
mc_genmcl.px_storebit:
;>>
    %define mc_genmcl.px_storebit.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_storebit.p]
    call      mc_auxmcl.do_storebit
L2508:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_storebf
mc_genmcl.px_storebf:
;>>
    %define mc_genmcl.px_storebf.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genmcl.px_storebf.p]
    call      mc_auxmcl.do_storebf
L2509:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_slicelen
mc_genmcl.px_slicelen:
;>>
    %define mc_genmcl.px_slicelen.p 16
    %define mc_genmcl.px_slicelen.ax -8
    %define mc_genmcl.px_slicelen.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_slicelen.bx],	rax
    mov       rcx,	10
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_slicelen.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_slicelen.bx]
    mov       rdx,	8
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_slicelen.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rax,	[rbp + mc_genmcl.px_slicelen.p]
    movzx     r10,	byte [rax]
    cmp       r10,	137
    jnz       L2512
    mov       rax,	[rbp + mc_genmcl.px_slicelen.p]
    movsxd    r10,	dword [rax+16]
    cmp       r10,	1
    jz        L2512
    mov       rax,	[rbp + mc_genmcl.px_slicelen.p]
    movsxd    r10,	dword [rax+16]
    sub       r10,	1
    mov       rcx,	r10
    mov       rdx,	10
    call      mc_libmcl.mgenint
    mov       rcx,	29
    mov       rdx,	[rbp + mc_genmcl.px_slicelen.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
L2512:
L2511:
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
L2510:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_sliceptr
mc_genmcl.px_sliceptr:
;>>
    %define mc_genmcl.px_sliceptr.p 16
    %define mc_genmcl.px_sliceptr.ax -8
    %define mc_genmcl.px_sliceptr.bx -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_sliceptr.bx],	rax
    mov       rcx,	10
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	10
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_sliceptr.ax],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_sliceptr.ax]
    mov       r8,	[rbp + mc_genmcl.px_sliceptr.bx]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
L2513:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc px_loadall
mc_genmcl.px_loadall:
;>>
    %define mc_genmcl.px_loadall.p 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    call      mc_stackmcl.checkallloaded
L2514:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc px_setjmp
mc_genmcl.px_setjmp:
;>>
    %define mc_genmcl.px_setjmp.p 16
    %define mc_genmcl.px_setjmp.ax -8
    %define mc_genmcl.px_setjmp.bx -16
    %define mc_genmcl.px_setjmp.lab -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    call      mc_libmcl.mcreatefwdlabel
    mov       [rbp + mc_genmcl.px_setjmp.lab],	rax
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_setjmp.bx],	rax
    mov       rcx,	6
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_setjmp.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_setjmp.lab]
    call      mc_libmcl.mgenlabel
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_setjmp.ax]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_setjmp.bx]
    mov       r8,	[rbp + mc_genmcl.px_setjmp.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_setjmp.bx]
    mov       rdx,	8
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[mc_decls.dstackopnd]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_setjmp.bx]
    mov       rdx,	16
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	rax
    mov       r8,	[mc_decls.dframeopnd]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
    mov       rcx,	41
    mov       rdx,	[rbp + mc_genmcl.px_setjmp.ax]
    mov       r8,	[rbp + mc_genmcl.px_setjmp.ax]
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_setjmp.p]
    call      mc_stackmcl.freeworkregs
    mov       rcx,	1
    call      mc_stackmcl.movetoreg
    mov       rcx,	[rbp + mc_genmcl.px_setjmp.lab]
    call      mc_libmcl.mdefinefwdlabel
L2515:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc px_longjmp
mc_genmcl.px_longjmp:
;>>
    %define mc_genmcl.px_longjmp.p 16
    %define mc_genmcl.px_longjmp.ax -8
    %define mc_genmcl.px_longjmp.bx -16
    %define mc_genmcl.px_longjmp.cx -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.loadopnd
    mov       [rbp + mc_genmcl.px_longjmp.bx],	rax
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	6
    call      mc_stackmcl.getopnd_ind
    mov       [rbp + mc_genmcl.px_longjmp.ax],	rax
    mov       rcx,	[rbp + mc_genmcl.px_longjmp.ax]
    mov       rdx,	8
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[mc_decls.dstackopnd]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	[rbp + mc_genmcl.px_longjmp.ax]
    mov       rdx,	16
    xor       r8d,	r8d
    call      mc_libmcl.applyoffset
    mov       rcx,	12
    mov       rdx,	[mc_decls.dframeopnd]
    mov       r8,	rax
    call      mc_libmcl.genmc
    mov       rcx,	6
    xor       edx,	edx
    call      mc_stackmcl.pushpcl_reg
    mov       rcx,	[mc_decls.noperands]
    mov       rdx,	6
    xor       r8d,	r8d
    call      mc_stackmcl.getopnd
    mov       [rbp + mc_genmcl.px_longjmp.cx],	rax
    mov       rcx,	12
    mov       rdx,	[rbp + mc_genmcl.px_longjmp.cx]
    mov       r8,	[rbp + mc_genmcl.px_longjmp.ax]
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	2
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
    mov       rcx,	1
    call      mc_stackmcl.swapopndregs
    mov       rcx,	26
    mov       rdx,	[rbp + mc_genmcl.px_longjmp.cx]
    xor       r8d,	r8d
    call      mc_libmcl.genmc
    mov       rax,	[mc_decls.noperands]
    sub       rax,	1
    mov       rcx,	rax
    mov       rdx,	[mc_decls.noperands]
    call      mc_stackmcl.swapopnds
    call      mc_stackmcl.poppcl
L2516:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc genss
mc_genss.genss:
;>>
    %define mc_genss.genss.obj 16
    %define mc_genss.genss.index -8
    %define mc_genss.genss.m -16
    %define mc_genss.genss.pr -24
    %define mc_genss.genss.codeaddr -32
    %define mc_genss.genss.offsetptr -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
;---------------
    movzx     rax,	byte [pc_decls.ssdone]
    test      rax,	rax
    jz        L2519
    jmp       L2517
L2519:
L2518:
    mov       rcx,	[mc_decls.mlabelno]
    call      mc_genss.initlib
    xor       eax,	eax
    mov       [mc_decls.ss_zdatalen],	rax
    mov       rcx,	1024
    call      mc_genss.buffercreate
    mov       [mc_decls.ss_zdata],	rax
    mov       rcx,	1024
    call      mc_genss.buffercreate
    mov       [mc_decls.ss_idata],	rax
    mov       rcx,	1024
    call      mc_genss.buffercreate
    mov       [mc_decls.ss_code],	rax
    xor       eax,	eax
    mov       [mc_decls.ss_idatarelocs],	rax
    xor       eax,	eax
    mov       [mc_decls.ss_coderelocs],	rax
    xor       eax,	eax
    mov       [mc_decls.ss_nsymbols],	rax
    mov       rcx,	1
    call      mc_genss.switchseg
    mov       rax,	9999
    mov       [mc_decls.aaseqno],	rax
    xor       eax,	eax
    mov       [mc_genss.extraparam],	rax
    mov       rax,	[mc_decls.mccode]
    mov       [rbp + mc_genss.genss.m],	rax
    xor       eax,	eax
    mov       [rbp + mc_genss.genss.index],	rax
    jmp       L2521
L2520:
    inc       qword [rbp + mc_genss.genss.index]
    mov       rax,	[rbp + mc_genss.genss.index]
    mov       rcx,	[rbp + mc_genss.genss.m]
    mov       rdx,	rax
    call      mc_genss.doinstr
    mov       rax,	[rbp + mc_genss.genss.m]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.genss.m],	r10
L2521:
    mov       rax,	[rbp + mc_genss.genss.m]
    test      rax,	rax
    jnz       L2520
L2522:
    xor       ecx,	ecx
    call      mc_genss.switchseg
    mov       rcx,	[mc_decls.ss_zdata]
    call      mc_genss.bufferlength
    test      rax,	rax
    jz        L2524
    lea       rcx,	[rel L5767]
    call      mc_libmcl.axerror
L2524:
L2523:
    mov       rax,	[rbp + mc_genss.genss.obj]
    test      rax,	rax
    jz        L2526
    mov       rcx,	[mc_decls.ss_code]
    xor       edx,	edx
    call      mc_genss.bufferelemptr
    mov       [rbp + mc_genss.genss.codeaddr],	rax
    mov       rax,	[mc_decls.riplist]
    mov       [rbp + mc_genss.genss.pr],	rax
    jmp       L2530
L2527:
    mov       rax,	[rbp + mc_genss.genss.pr]
    mov       r10d,	[rax+8]
    mov       rax,	[rbp + mc_genss.genss.codeaddr]
    lea       rax,	[rax + r10]
    mov       [rbp + mc_genss.genss.offsetptr],	rax
    mov       rax,	[rbp + mc_genss.genss.pr]
    movsxd    r10,	dword [rax+12]
    mov       rax,	[rbp + mc_genss.genss.offsetptr]
    sub       [rax],	r10d
L2528:
    mov       rax,	[rbp + mc_genss.genss.pr]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.genss.pr],	r10
L2530:
    mov       rax,	[rbp + mc_genss.genss.pr]
    test      rax,	rax
    jnz       L2527
L2529:
L2526:
L2525:
    mov       al,	1
    mov       [pc_decls.ssdone],	al
L2517:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc doinstr
mc_genss.doinstr:
;>>
    %define mc_genss.doinstr.m 16
    %define mc_genss.doinstr.index 24
    %define mc_genss.doinstr.a -8
    %define mc_genss.doinstr.b -16
    %define mc_genss.doinstr.d -24
    %define mc_genss.doinstr.e -32
    %define mc_genss.doinstr.x -40
    %define mc_genss.doinstr.offset -48
    %define mc_genss.doinstr.shortjmp -56
    %define mc_genss.doinstr.n -64
    %define mc_genss.doinstr.av_1 -72
    %define mc_genss.doinstr.av_2 -80
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	1024
    call      mc_genss.buffercheck
    xor       eax,	eax
    mov       [mc_genss.usesizeb],	al
    mov       [mc_genss.nowmask],	al
    mov       [mc_genss.f3override],	al
    mov       [mc_genss.f2override],	al
    mov       [mc_genss.addroverride],	al
    mov       [mc_genss.sizeoverride],	al
    mov       [mc_genss.rex],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    mov       r10,	[rax+8]
    mov       [rbp + mc_genss.doinstr.a],	r10
    mov       rax,	[rbp + mc_genss.doinstr.m]
    mov       r10,	[rax+16]
    mov       [rbp + mc_genss.doinstr.b],	r10
    inc       qword [mc_genss.instrno]
    mov       rax,	[rbp + mc_genss.doinstr.m]
    mov       r10,	[rax+27]
    mov       [mc_decls.aaseqno],	r10
    xor       eax,	eax
    mov       [mc_genss.ripentry],	rax
    mov       rax,	[rbp + mc_genss.doinstr.m]
    mov       [mc_genss.currmcl],	rax
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    sub       r10,	1
    cmp       r10,	150
    jae       L2534
    lea       rax,	[rel L2533]
    jmp       [rax + r10*8]
    segment .data
L2533:
    dq  L2535
    dq  L2536
    dq  L2656
    dq  L2657
    dq  L2539
    dq  L2540
    dq  L2537
    dq  L2538
    dq  L2547
    dq  L2564
    dq  L2637
    dq  L2578
    dq  L2573
    dq  L2574
    dq  L2579
    dq  L2638
    dq  L2621
    dq  L2622
    dq  L2580
    dq  L2581
    dq  L2582
    dq  L2548
    dq  L2569
    dq  L2534
    dq  L2570
    dq  L2549
    dq  L2550
    dq  L2583
    dq  L2577
    dq  L2577
    dq  L2577
    dq  L2577
    dq  L2576
    dq  L2576
    dq  L2584
    dq  L2534
    dq  L2576
    dq  L2576
    dq  L2577
    dq  L2577
    dq  L2577
    dq  L2615
    dq  L2577
    dq  L2614
    dq  L2614
    dq  L2614
    dq  L2614
    dq  L2614
    dq  L2614
    dq  L2614
    dq  L2576
    dq  L2576
    dq  L2575
    dq  L2575
    dq  L2565
    dq  L2566
    dq  L2567
    dq  L2568
    dq  L2620
    dq  L2652
    dq  L2652
    dq  L2655
    dq  L2655
    dq  L2623
    dq  L2624
    dq  L2623
    dq  L2624
    dq  L2623
    dq  L2624
    dq  L2623
    dq  L2624
    dq  L2623
    dq  L2624
    dq  L2627
    dq  L2628
    dq  L2625
    dq  L2626
    dq  L2625
    dq  L2626
    dq  L2626
    dq  L2626
    dq  L2631
    dq  L2632
    dq  L2633
    dq  L2634
    dq  L2635
    dq  L2636
    dq  L2630
    dq  L2629
    dq  L2648
    dq  L2648
    dq  L2534
    dq  L2534
    dq  L2640
    dq  L2640
    dq  L2640
    dq  L2641
    dq  L2641
    dq  L2641
    dq  L2642
    dq  L2642
    dq  L2642
    dq  L2642
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2639
    dq  L2623
    dq  L2623
    dq  L2624
    dq  L2624
    dq  L2557
    dq  L2558
    dq  L2559
    dq  L2560
    dq  L2562
    dq  L2563
    dq  L2561
    dq  L2598
    dq  L2585
    dq  L2585
    dq  L2585
    dq  L2585
    dq  L2619
    dq  L2616
    dq  L2616
    dq  L2616
    dq  L2617
    dq  L2618
    dq  L2643
    dq  L2644
    dq  L2645
    dq  L2646
    dq  L2647
    dq  L2651
    dq  L2654
    dq  L2649
    dq  L2650
    dq  L2650
    dq  L2650
    dq  L2650
    dq  L2650
    dq  L2650
    dq  L2650
    dq  L2653
    dq  L2564
    segment .text
L2535:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    mov       r10,	[rax+8]
    mov       rax,	[r10]
    mov       [mc_decls.currasmproc],	rax
    jmp       L2532
L2536:
    jmp       L2532
L2537:
    jmp       L2532
L2538:
    jmp       L2532
L2539:
    jmp       L2532
L2540:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	4
    jz        L2542
    cmp       r10,	5
    jz        L2543
    jmp       L2544
L2542:
    jmp       L2541
L2543:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.doinstr.d],	r10
    mov       al,	2
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+69],	al
    mov       al,	[mc_genss.currseg]
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+70],	al
    mov       rcx,	6
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+52],	eax
    mov       rax,	[rbp + mc_genss.doinstr.d]
    movzx     r10,	byte [rax+57]
    test      r10,	r10
    jz        L2546
    mov       rcx,	[rbp + mc_genss.doinstr.d]
    call      mc_genss.getstindex
L2546:
L2545:
    mov       rcx,	[rbp + mc_genss.doinstr.d]
    call      mc_genss.dofwdrefs
L2544:
L2541:
    jmp       L2532
L2547:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       r10,	[rax]
    mov       rax,	[mc_decls.labeldeftable]
    mov       r11,	[rax + r10*8-8]
    mov       [rbp + mc_genss.doinstr.d],	r11
    mov       al,	2
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+69],	al
    mov       al,	[mc_genss.currseg]
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+70],	al
    mov       rcx,	6
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.doinstr.d]
    mov       [r10+52],	eax
    mov       rcx,	[rbp + mc_genss.doinstr.d]
    call      mc_genss.dofwdrefs
    jmp       L2532
L2548:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.do_call
    jmp       L2532
L2549:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.m]
    call      mc_genss.do_jmp
    jmp       L2532
L2550:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       [rbp + mc_genss.doinstr.d],	rax
    mov       rcx,	7
    call      mc_genss.getcurrdatalen
    add       rax,	1
    mov       rcx,	[rbp + mc_genss.doinstr.d]
    mov       rdx,	rax
    call      mc_genss.getrel32
    mov       [rbp + mc_genss.doinstr.offset],	rax
    mov       rax,	[rbp + mc_genss.doinstr.offset]
    cmp       rax,	0
    jge       L2552
    mov       rax,	[rbp + mc_genss.doinstr.offset]
    cmp       rax,	-126
    jge       L2554
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	15
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rax,	128
    add       rax,	r10
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rax,	[rbp + mc_genss.doinstr.offset]
    sub       rax,	4
    mov       rcx,	rax
    call      mc_genss.gendword
    jmp       L2553
L2554:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rax,	112
    add       rax,	r10
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.doinstr.offset]
    mov       [r10],	al
L2553:
    jmp       L2551
L2552:
    mov       rcx,	[rbp + mc_genss.doinstr.m]
    mov       rdx,	[rbp + mc_genss.doinstr.d]
    call      mc_genss.checkshortjump
    mov       [rbp + mc_genss.doinstr.shortjmp],	rax
    mov       rax,	[rbp + mc_genss.doinstr.shortjmp]
    test      rax,	rax
    jnz       L2556
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	15
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rax,	128
    add       rax,	r10
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.genrel32
    jmp       L2555
L2556:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rax,	112
    add       rax,	r10
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.genrel8
L2555:
L2551:
    jmp       L2532
L2557:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	1
    call      mc_genss.genopnd
    jmp       L2532
L2558:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	2
    call      mc_genss.genopnd
    jmp       L2532
L2559:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	4
    call      mc_genss.genopnd
    jmp       L2532
L2560:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	8
    call      mc_genss.genopnd
    jmp       L2532
L2561:
    mov       rcx,	1
    call      mc_genss.switchseg
    jmp       L2532
L2562:
    mov       rcx,	2
    call      mc_genss.switchseg
    jmp       L2532
L2563:
    mov       rcx,	3
    call      mc_genss.switchseg
    jmp       L2532
L2564:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       [r10],	r11b
    jmp       L2532
L2565:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	152
    mov       [r10],	al
    jmp       L2532
L2566:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	153
    mov       [r10],	al
    jmp       L2532
L2567:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	153
    mov       [r10],	al
    jmp       L2532
L2568:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	72
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	153
    mov       [r10],	al
    jmp       L2532
L2569:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	195
    mov       [r10],	al
    jmp       L2532
L2570:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jz        L2572
    lea       rcx,	[rel L5768]
    call      mc_libmcl.axerror
L2572:
L2571:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	194
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.genword
    jmp       L2532
L2573:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.do_push
    jmp       L2532
L2574:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.do_pop
    jmp       L2532
L2575:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	r11
    call      mc_genss.do_inc
    jmp       L2532
L2576:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	r11
    call      mc_genss.do_neg
    jmp       L2532
L2577:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    call      mc_genss.do_arith
    jmp       L2532
L2578:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_mov
    jmp       L2532
L2579:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_lea
    jmp       L2532
L2580:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	190
    call      mc_genss.do_movsx
    jmp       L2532
L2581:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	182
    call      mc_genss.do_movsx
    jmp       L2532
L2582:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_movsxd
    jmp       L2532
L2583:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_exch
    jmp       L2532
L2584:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_imul2
    jmp       L2532
L2585:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jnz       L2587
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       r10,	[rax]
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r11,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     rdi,	byte [rax + r11-1]
    imul      r10,	rdi
    mov       [rbp + mc_genss.doinstr.n],	r10
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	1
    jz        L2589
    cmp       rax,	2
    jz        L2590
    jmp       L2591
L2589:
    mov       rax,	[rbp + mc_genss.doinstr.n]
    mov       [rbp + mc_genss.doinstr.av_1],	rax
    mov       rax,	[rbp + mc_genss.doinstr.av_1]
    cmp       rax,	0
    jle       L2594
L2592:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	144
    mov       [r10],	al
L2593:
    dec       qword [rbp + mc_genss.doinstr.av_1]
    jnz       L2592
L2594:
    jmp       L2588
L2590:
    mov       rax,	[rbp + mc_genss.doinstr.n]
    mov       [rbp + mc_genss.doinstr.av_2],	rax
    mov       rax,	[rbp + mc_genss.doinstr.av_2]
    cmp       rax,	0
    jle       L2597
L2595:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    xor       eax,	eax
    mov       [r10],	al
L2596:
    dec       qword [rbp + mc_genss.doinstr.av_2]
    jnz       L2595
L2597:
    jmp       L2588
L2591:
    mov       rax,	[rbp + mc_genss.doinstr.n]
    add       [mc_decls.ss_zdatalen],	rax
L2588:
    jmp       L2586
L2587:
    lea       rcx,	[rel L5769]
    call      mc_libmcl.axerror
L2586:
    jmp       L2532
L2598:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jnz       L2600
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.doinstr.x],	r10
    mov       rax,	[rbp + mc_genss.doinstr.x]
    cmp       rax,	1
    jl        L2603
    mov       rax,	[rbp + mc_genss.doinstr.x]
    cmp       rax,	16384
    jle       L2602
L2603:
    lea       rcx,	[rel L5770]
    call      mc_libmcl.axerror
L2602:
L2601:
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	3
    jz        L2605
    jmp       L2607
L2606:
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	1
    jnz       L2610
    mov       rax,	144
    jmp       L2609
L2610:
    xor       eax,	eax
L2609:
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2607:
    mov       rcx,	[mc_genss.currdata]
    call      mc_genss.bufferlength
    mov       r10,	[rbp + mc_genss.doinstr.x]
    cqo       
    idiv      r10
    xchg      rax,	rdx
    test      rax,	rax
    jnz       L2606
L2608:
    jmp       L2604
L2605:
    jmp       L2612
L2611:
    inc       qword [mc_decls.ss_zdatalen]
L2612:
    mov       rax,	[mc_decls.ss_zdatalen]
    mov       r10,	[rbp + mc_genss.doinstr.x]
    cqo       
    idiv      r10
    xchg      rax,	rdx
    test      rax,	rax
    jnz       L2611
L2613:
L2604:
    jmp       L2599
L2600:
    lea       rcx,	[rel L5771]
    call      mc_libmcl.axerror
L2599:
    jmp       L2532
L2614:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    call      mc_genss.do_shift
    jmp       L2532
L2615:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_test
    jmp       L2532
L2616:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	r11
    call      mc_genss.do_loop
    jmp       L2532
L2617:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	4
    call      mc_genss.do_jcxz
    jmp       L2532
L2618:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	8
    call      mc_genss.do_jcxz
    jmp       L2532
L2619:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	215
    mov       [r10],	al
    jmp       L2532
L2620:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.do_setcc
    jmp       L2532
L2621:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	4
    call      mc_genss.do_movxmm
    jmp       L2532
L2622:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	8
    call      mc_genss.do_movxmm
    jmp       L2532
L2623:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	243
    mov       r9,	r11
    call      mc_genss.do_arithxmm
    jmp       L2532
L2624:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	242
    mov       r9,	r11
    call      mc_genss.do_arithxmm
    jmp       L2532
L2625:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    mov       r9,	4
    call      mc_genss.do_logicxmm
    jmp       L2532
L2626:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    mov       r9,	8
    call      mc_genss.do_logicxmm
    jmp       L2532
L2627:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    xor       r8d,	r8d
    mov       r9,	47
    call      mc_genss.do_arithxmm
    jmp       L2532
L2628:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	102
    mov       r9,	47
    call      mc_genss.do_arithxmm
    jmp       L2532
L2629:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	243
    call      mc_genss.do_convertfloat
    jmp       L2532
L2630:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	242
    call      mc_genss.do_convertfloat
    jmp       L2532
L2631:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	243
    mov       r9,	45
    call      mc_genss.do_fix
    jmp       L2532
L2632:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	242
    mov       r9,	45
    call      mc_genss.do_fix
    jmp       L2532
L2633:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	243
    mov       r9,	44
    call      mc_genss.do_fix
    jmp       L2532
L2634:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	242
    mov       r9,	44
    call      mc_genss.do_fix
    jmp       L2532
L2635:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	243
    call      mc_genss.do_float
    jmp       L2532
L2636:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	242
    call      mc_genss.do_float
    jmp       L2532
L2637:
    mov       rax,	[rbp + mc_genss.doinstr.a]
    mov       [mc_genss.extraparam],	rax
    jmp       L2532
L2638:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+25]
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genss.doinstr.a]
    mov       r8,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_cmovcc
    jmp       L2532
L2639:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	217
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       [r10],	r11b
    jmp       L2532
L2640:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	1
    mov       r8,	r11
    call      mc_genss.do_fmem
    jmp       L2532
L2641:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    xor       edx,	edx
    mov       r8,	r11
    call      mc_genss.do_fmem
    jmp       L2532
L2642:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	222
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       [r10],	r11b
    jmp       L2532
L2643:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	166
    mov       [r10],	al
    jmp       L2532
L2644:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	167
    mov       [r10],	al
    jmp       L2532
L2645:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	167
    mov       [r10],	al
    jmp       L2532
L2646:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	72
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	167
    mov       [r10],	al
    jmp       L2532
L2647:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	15
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       [r10],	r11b
    jmp       L2532
L2648:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    call      mc_genss.do_movdqx
    jmp       L2532
L2649:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	219
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	227
    mov       [r10],	al
    jmp       L2532
L2650:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	217
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       [r10],	r11b
    jmp       L2532
L2651:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    call      mc_genss.do_popcnt
    jmp       L2532
L2652:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r11
    call      mc_genss.do_bsf
    jmp       L2532
L2653:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	15
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	162
    mov       [r10],	al
    jmp       L2532
L2654:
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    call      mc_genss.do_bswap
    jmp       L2532
L2655:
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclcodes]
    movzx     r11,	byte [rax + r10-1]
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+26]
    mov       rcx,	[rbp + mc_genss.doinstr.a]
    mov       rdx,	[rbp + mc_genss.doinstr.b]
    mov       r8,	r10
    mov       r9,	r11
    call      mc_genss.do_dshift
    jmp       L2532
L2656:
    jmp       L2532
L2657:
    jmp       L2532
L2534:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5772]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    lea       rax,	[mc_decls.mclnames]
    mov       r11,	[rax + r10*8-8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5773]
    call      msys.m$print_str_nf
    mov       rcx,	[mc_decls.aaseqno]
    call      msys.m$print_i64_nf
    lea       rcx,	[rel L5774]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.doinstr.m]
    movzx     r10,	byte [rax+24]
    mov       rcx,	r10
    call      msys.m$print_i64_nf
    lea       rcx,	[rel L5775]
    call      msys.m$print_str_nf
    mov       rcx,	150
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5776]
    call      mc_libmcl.axerror
L2532:
L2531:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc start
mc_genss.start:
;>>
;---------------
    mov       al,	64
    mov       [mc_genss.ishighreg+3],	al
    mov       al,	64
    mov       [mc_genss.ishighreg+5],	al
    mov       al,	64
    mov       [mc_genss.ishighreg+14],	al
    mov       al,	64
    mov       [mc_genss.ishighreg+15],	al
L2658:
;---------------
    ret       
;End 
;Proc genword
mc_genss.genword:
;>>
    %define mc_genss.genword.x 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	[rbp + mc_genss.genword.x]
    call      mc_genss.addword
L2659:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc gendword
mc_genss.gendword:
;>>
    %define mc_genss.gendword.x 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	[rbp + mc_genss.gendword.x]
    call      mc_genss.adddword
L2660:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genqword
mc_genss.genqword:
;>>
    %define mc_genss.genqword.x 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	[rbp + mc_genss.genqword.x]
    call      mc_genss.addqword
L2661:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genopnd
mc_genss.genopnd:
;>>
    %define mc_genss.genopnd.a 16
    %define mc_genss.genopnd.size 24
    %define mc_genss.genopnd.s -8
    %define mc_genss.genopnd.x -16
    %define mc_genss.genopnd.length -24
    %define mc_genss.genopnd.x32 -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.genopnd.size]
    cmp       rax,	0
    jnz       L2664
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       [rbp + mc_genss.genopnd.size],	r10
L2664:
L2663:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	4
    jz        L2666
    cmp       r10,	7
    jz        L2667
    jmp       L2668
L2666:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.genopnd.s],	r10
    mov       rcx,	[rbp + mc_genss.genopnd.s]
    call      strlen
    mov       [rbp + mc_genss.genopnd.length],	rax
    mov       rax,	[rbp + mc_genss.genopnd.length]
    cmp       rax,	100
    jle       L2670
    mov       rax,	[rbp + mc_genss.genopnd.length]
    add       rax,	1
    mov       r10,	1024
    cmp       r10,	rax
    cmovl     r10,	rax
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	r10
    call      mc_genss.buffercheck
L2670:
L2669:
    jmp       L2672
L2671:
    mov       rax,	[rbp + mc_genss.genopnd.s]
    inc       qword [rbp + mc_genss.genopnd.s]
    movzx     r10,	byte [rax]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r11,	[rax]
    inc       qword [rax]
    mov       [r11],	r10b
L2672:
    mov       rax,	[rbp + mc_genss.genopnd.s]
    movzx     r10,	byte [rax]
    test      r10,	r10
    jnz       L2671
L2673:
    jmp       L2662
L2667:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5777]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L2668:
L2665:
    mov       rcx,	[rbp + mc_genss.genopnd.a]
    xor       edx,	edx
    call      mc_genss.getdef
    test      rax,	rax
    jz        L2675
    mov       rax,	[rbp + mc_genss.genopnd.size]
    cmp       rax,	2
    jg        L2675
    lea       rcx,	[rel L5778]
    call      mc_libmcl.axerror
L2675:
L2674:
    mov       rax,	[rbp + mc_genss.genopnd.size]
    cmp       rax,	1
    jz        L2677
    cmp       rax,	2
    jz        L2678
    cmp       rax,	4
    jz        L2679
    cmp       rax,	8
    jz        L2680
    jmp       L2681
L2677:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    mov       r10,	[rax]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r11,	[rax]
    inc       qword [rax]
    mov       [r11],	r10b
    jmp       L2676
L2678:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.genword
    jmp       L2676
L2679:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	1
    jz        L2683
    cmp       r10,	2
    jz        L2684
    cmp       r10,	5
    jz        L2685
    cmp       r10,	6
    jz        L2685
    jmp       L2686
L2683:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L2682
L2684:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movq      XMM4,	[rax]
    cvtsd2ss  XMM4,	XMM4
    movd      [rbp + mc_genss.genopnd.x32],	XMM4
    movd      XMM4,	[rbp + mc_genss.genopnd.x32]
    movq      rax,	XMM4
    mov       rcx,	rax
    call      mc_genss.gendword
    jmp       L2682
L2685:
    mov       rcx,	[rbp + mc_genss.genopnd.a]
    call      mc_genss.genabs32
    jmp       L2682
L2686:
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    lea       rax,	[mc_decls.valtypenames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5779]
    call      mc_libmcl.axerror
L2682:
    jmp       L2676
L2680:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	1
    jz        L2688
    cmp       r10,	2
    jz        L2689
    cmp       r10,	5
    jz        L2690
    cmp       r10,	6
    jz        L2690
    jmp       L2691
L2688:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.genqword
    jmp       L2687
L2689:
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movq      XMM4,	[rax]
    movq      rax,	XMM4
    mov       rcx,	rax
    call      mc_genss.genqword
    jmp       L2687
L2690:
    mov       rcx,	[rbp + mc_genss.genopnd.a]
    call      mc_genss.genabs64
    jmp       L2687
L2691:
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genss.genopnd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    lea       rax,	[mc_decls.valtypenames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5780]
    call      mc_libmcl.axerror
L2687:
L2681:
L2676:
L2662:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc addrelocitem
mc_genss.addrelocitem:
;>>
    %define mc_genss.addrelocitem.reloctype 16
    %define mc_genss.addrelocitem.d 24
    %define mc_genss.addrelocitem.r -8
    %define mc_genss.addrelocitem.stindex -16
    %define mc_genss.addrelocitem.adjust -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mc_genss.addrelocitem.d]
    call      mc_genss.getstindex
    mov       [rbp + mc_genss.addrelocitem.stindex],	rax
    mov       rax,	4
    mov       [rbp + mc_genss.addrelocitem.adjust],	rax
    mov       rax,	[rbp + mc_genss.addrelocitem.reloctype]
    cmp       rax,	1
    jnz       L2694
    mov       rax,	8
    mov       [rbp + mc_genss.addrelocitem.adjust],	rax
L2694:
L2693:
    mov       rcx,	32
    call      mlib.pcm_allocnfz
    mov       [rbp + mc_genss.addrelocitem.r],	rax
    mov       rax,	[mc_genss.currrelocs]
    mov       r10,	[rbp + mc_genss.addrelocitem.r]
    mov       [r10],	rax
    mov       rax,	[rbp + mc_genss.addrelocitem.reloctype]
    mov       r10,	[rbp + mc_genss.addrelocitem.r]
    mov       [r10+8],	rax
    mov       rcx,	1
    call      mc_genss.getcurrdatalen
    sub       rax,	[rbp + mc_genss.addrelocitem.adjust]
    mov       r10,	[rbp + mc_genss.addrelocitem.r]
    mov       [r10+16],	rax
    mov       rax,	[rbp + mc_genss.addrelocitem.stindex]
    mov       r10,	[rbp + mc_genss.addrelocitem.r]
    mov       [r10+24],	rax
    inc       qword [mc_genss.nrelocs]
    mov       rax,	[rbp + mc_genss.addrelocitem.r]
    mov       [mc_genss.currrelocs],	rax
L2692:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc getstindex
mc_genss.getstindex:
;>>
    %define mc_genss.getstindex.d 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.getstindex.d]
    movsx     r10,	word [rax+72]
    cmp       r10,	0
    jnz       L2697
    mov       rax,	[mc_decls.ss_nsymbols]
    cmp       rax,	[mc_decls.ss_symboltablesize]
    jl        L2699
    call      mc_genss.extendsymboltable
L2699:
L2698:
    inc       qword [mc_decls.ss_nsymbols]
    mov       rax,	[mc_decls.ss_nsymbols]
    mov       r10,	[rbp + mc_genss.getstindex.d]
    mov       [r10+72],	ax
    mov       rax,	[rbp + mc_genss.getstindex.d]
    movsx     r10,	word [rax+72]
    mov       rax,	[rbp + mc_genss.getstindex.d]
    mov       r11,	[mc_decls.ss_symboltable]
    mov       [r11 + r10*8-8],	rax
    mov       rax,	[rbp + mc_genss.getstindex.d]
    movzx     r10,	byte [rax+70]
    cmp       r10,	0
    jnz       L2701
    mov       rax,	[rbp + mc_genss.getstindex.d]
    movzx     r10,	byte [rax+56]
    test      r10,	r10
    jz        L2703
    mov       al,	1
    mov       r10,	[rbp + mc_genss.getstindex.d]
    mov       [r10+70],	al
L2703:
L2702:
L2701:
L2700:
L2697:
L2696:
    mov       rax,	[rbp + mc_genss.getstindex.d]
    movsx     r10,	word [rax+72]
    mov       rax,	r10
L2695:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genrel32
mc_genss.genrel32:
;>>
    %define mc_genss.genrel32.a 16
    %define mc_genss.genrel32.d -8
    %define mc_genss.genrel32.$T1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genss.genrel32.a]
    xor       edx,	edx
    call      mc_genss.getdef
    mov       [rbp + mc_genss.genrel32.d],	rax
    mov       rax,	[rbp + mc_genss.genrel32.d]
    cmp       rax,	0
    jnz       L2706
    mov       rax,	[rbp + mc_genss.genrel32.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L2704
L2706:
L2705:
    mov       rax,	[rbp + mc_genss.genrel32.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	2
    jz        L2708
    cmp       r10,	1
    jz        L2709
    jmp       L2710
L2708:
    mov       rax,	[rbp + mc_genss.genrel32.d]
    movzx     r10,	byte [rax+70]
    cmp       r10,	[mc_genss.currseg]
    jz        L2712
    lea       rcx,	[rel L5781]
    call      mc_libmcl.axerror
L2712:
L2711:
    mov       rax,	[rbp + mc_genss.genrel32.d]
    movsxd    r10,	dword [rax+52]
    mov       [rbp + mc_genss.genrel32.$T1],	r10
    mov       rcx,	2
    call      mc_genss.getcurrdatalen
    add       rax,	4
    mov       r10,	[rbp + mc_genss.genrel32.$T1]
    sub       r10,	rax
    mov       rax,	[rbp + mc_genss.genrel32.a]
    movsxd    r11,	dword [rax+12]
    add       r10,	r11
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L2707
L2709:
    mov       rcx,	3
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.genrel32.d]
    mov       r11,	[r10+88]
    mov       rcx,	r11
    mov       rdx,	rax
    mov       r8,	4
    xor       r9d,	r9d
    call      mc_genss.addfwdref
    mov       r10,	[rbp + mc_genss.genrel32.d]
    mov       [r10+88],	rax
    mov       rax,	[rbp + mc_genss.genrel32.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L2707
L2710:
    mov       rax,	[rbp + mc_genss.genrel32.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.gendword
    mov       rcx,	4
    mov       rdx,	[rbp + mc_genss.genrel32.d]
    call      mc_genss.addrelocitem
L2707:
L2704:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getdef
mc_genss.getdef:
;>>
    %define mc_genss.getdef.a 16
    %define mc_genss.getdef.dneeded 24
    %define mc_genss.getdef.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.getdef.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L2716
    cmp       r10,	2
    jnz       L2715
L2716:
    mov       rax,	[rbp + mc_genss.getdef.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	6
    jz        L2718
    cmp       r10,	5
    jz        L2719
    jmp       L2720
L2718:
    mov       rax,	[rbp + mc_genss.getdef.a]
    mov       r10,	[rax]
    mov       rax,	[mc_decls.labeldeftable]
    mov       r11,	[rax + r10*8-8]
    mov       rax,	r11
    jmp       L2713
L2719:
    mov       rax,	[rbp + mc_genss.getdef.a]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.getdef.d],	r10
    mov       rax,	[rbp + mc_genss.getdef.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	0
    jnz       L2722
    mov       rax,	[rbp + mc_genss.getdef.d]
    movzx     r10,	byte [rax+56]
    test      r10,	r10
    jnz       L2724
    mov       al,	1
    mov       r10,	[rbp + mc_genss.getdef.d]
    mov       [r10+69],	al
L2724:
L2723:
L2722:
L2721:
    mov       rax,	[rbp + mc_genss.getdef.d]
    jmp       L2713
L2720:
L2717:
L2715:
L2714:
    mov       rax,	[rbp + mc_genss.getdef.dneeded]
    test      rax,	rax
    jz        L2726
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genss.getdef.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    lea       rax,	[mc_decls.opndnames_ma]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.getdef.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    lea       rax,	[mc_decls.valtypenames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5782]
    call      mc_libmcl.axerror
L2726:
L2725:
    xor       eax,	eax
L2713:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genabs32
mc_genss.genabs32:
;>>
    %define mc_genss.genabs32.a 16
    %define mc_genss.genabs32.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genss.genabs32.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       [rbp + mc_genss.genabs32.d],	rax
    mov       rax,	[rbp + mc_genss.genabs32.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	2
    jz        L2729
    cmp       r10,	1
    jz        L2730
    jmp       L2731
L2729:
    mov       rax,	[rbp + mc_genss.genabs32.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.genabs32.a]
    movsxd    r11,	dword [rax+12]
    add       r10,	r11
    mov       rcx,	r10
    call      mc_genss.gendword
    mov       rcx,	2
    mov       rdx,	[rbp + mc_genss.genabs32.d]
    call      mc_genss.addrelocitem
    jmp       L2728
L2730:
    mov       rcx,	4
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.genabs32.d]
    mov       r11,	[r10+88]
    mov       rcx,	r11
    mov       rdx,	rax
    mov       r8,	2
    mov       r9,	[mc_genss.currseg]
    call      mc_genss.addfwdref
    mov       r10,	[rbp + mc_genss.genabs32.d]
    mov       [r10+88],	rax
    mov       rax,	[rbp + mc_genss.genabs32.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	4
    jz        L2734
    cmp       r10,	5
    jnz       L2733
L2734:
    mov       rax,	[rbp + mc_genss.genabs32.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.genabs32.a]
    movsxd    r11,	dword [rax+12]
    add       r10,	r11
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L2732
L2733:
    mov       rax,	[rbp + mc_genss.genabs32.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.gendword
    mov       rcx,	2
    mov       rdx,	[rbp + mc_genss.genabs32.d]
    call      mc_genss.addrelocitem
L2732:
    jmp       L2728
L2731:
    mov       rax,	[rbp + mc_genss.genabs32.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.gendword
    mov       rcx,	2
    mov       rdx,	[rbp + mc_genss.genabs32.d]
    call      mc_genss.addrelocitem
L2728:
L2727:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genabs64
mc_genss.genabs64:
;>>
    %define mc_genss.genabs64.a 16
    %define mc_genss.genabs64.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genss.genabs64.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       [rbp + mc_genss.genabs64.d],	rax
    mov       rax,	[rbp + mc_genss.genabs64.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	2
    jz        L2737
    cmp       r10,	1
    jz        L2738
    jmp       L2739
L2737:
    mov       rax,	[rbp + mc_genss.genabs64.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.genabs64.a]
    movsxd    r11,	dword [rax+12]
    add       r10,	r11
    mov       rcx,	r10
    call      mc_genss.genqword
    mov       rcx,	1
    mov       rdx,	[rbp + mc_genss.genabs64.d]
    call      mc_genss.addrelocitem
    jmp       L2736
L2738:
    mov       rcx,	5
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.genabs64.d]
    mov       r11,	[r10+88]
    mov       rcx,	r11
    mov       rdx,	rax
    mov       r8,	1
    mov       r9,	[mc_genss.currseg]
    call      mc_genss.addfwdref
    mov       r10,	[rbp + mc_genss.genabs64.d]
    mov       [r10+88],	rax
    mov       rax,	[rbp + mc_genss.genabs64.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	4
    jz        L2742
    cmp       r10,	5
    jnz       L2741
L2742:
    mov       rax,	[rbp + mc_genss.genabs64.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.genabs64.a]
    movsxd    r11,	dword [rax+12]
    add       r10,	r11
    mov       rcx,	r10
    call      mc_genss.genqword
    jmp       L2740
L2741:
    mov       rax,	[rbp + mc_genss.genabs64.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.genqword
    mov       rcx,	1
    mov       rdx,	[rbp + mc_genss.genabs64.d]
    call      mc_genss.addrelocitem
L2740:
    jmp       L2736
L2739:
    mov       rax,	[rbp + mc_genss.genabs64.a]
    movsxd    r10,	dword [rax+12]
    mov       rcx,	r10
    call      mc_genss.genqword
    mov       rcx,	1
    mov       rdx,	[rbp + mc_genss.genabs64.d]
    call      mc_genss.addrelocitem
L2736:
L2735:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getrel32
mc_genss.getrel32:
;>>
    %define mc_genss.getrel32.d 16
    %define mc_genss.getrel32.offset 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.getrel32.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	2
    jnz       L2745
    mov       rax,	[rbp + mc_genss.getrel32.d]
    movzx     r10,	byte [rax+70]
    cmp       r10,	[mc_genss.currseg]
    jz        L2747
    lea       rcx,	[rel L5783]
    call      mc_libmcl.axerror
L2747:
L2746:
    mov       rax,	[rbp + mc_genss.getrel32.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.getrel32.offset]
    add       rax,	1
    sub       r10,	rax
    mov       rax,	r10
    jmp       L2744
L2745:
    mov       rax,	2147483647
L2744:
L2743:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc dofwdrefs
mc_genss.dofwdrefs:
;>>
    %define mc_genss.dofwdrefs.d 16
    %define mc_genss.dofwdrefs.f -8
    %define mc_genss.dofwdrefs.offset -16
    %define mc_genss.dofwdrefs.seg -24
    %define mc_genss.dofwdrefs.p8 -32
    %define mc_genss.dofwdrefs.p32 -40
    %define mc_genss.dofwdrefs.p64 -48
    %define mc_genss.dofwdrefs.data -56
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	96
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    mov       r10,	[rax+88]
    cmp       r10,	0
    jnz       L2750
    jmp       L2748
L2750:
L2749:
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    mov       r10,	[rax+88]
    mov       [rbp + mc_genss.dofwdrefs.f],	r10
    jmp       L2752
L2751:
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    movsxd    r10,	dword [rax+8]
    mov       [rbp + mc_genss.dofwdrefs.offset],	r10
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    movsx     r10,	word [rax+12]
    cmp       r10,	4
    jz        L2755
    cmp       r10,	2
    jz        L2756
    cmp       r10,	1
    jz        L2756
    cmp       r10,	6
    jz        L2757
    jmp       L2758
L2755:
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	[rbp + mc_genss.dofwdrefs.offset]
    call      mc_genss.bufferelemptr
    mov       [rbp + mc_genss.dofwdrefs.p32],	rax
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    movsxd    r10,	dword [rax+52]
    sub       r10,	[rbp + mc_genss.dofwdrefs.offset]
    sub       r10,	4
    mov       rax,	[rbp + mc_genss.dofwdrefs.p32]
    mov       [rax],	r10d
    jmp       L2754
L2756:
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    movsx     r10,	word [rax+14]
    cmp       r10,	1
    jz        L2760
    cmp       r10,	3
    jz        L2761
    cmp       r10,	2
    jz        L2762
    jmp       L2763
L2760:
    mov       rax,	[mc_decls.ss_code]
    mov       [rbp + mc_genss.dofwdrefs.data],	rax
    jmp       L2759
L2761:
    lea       rcx,	[rel L5784]
    call      mc_libmcl.axerror
    jmp       L2759
L2762:
    mov       rax,	[mc_decls.ss_idata]
    mov       [rbp + mc_genss.dofwdrefs.data],	rax
L2763:
L2759:
    mov       rcx,	[rbp + mc_genss.dofwdrefs.data]
    mov       rdx,	[rbp + mc_genss.dofwdrefs.offset]
    call      mc_genss.bufferelemptr
    mov       [rbp + mc_genss.dofwdrefs.p32],	rax
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    movsx     r10,	word [rax+12]
    cmp       r10,	2
    jnz       L2765
    mov       rax,	[rbp + mc_genss.dofwdrefs.p32]
    movsxd    r10,	dword [rax]
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    movsxd    r11,	dword [rax+52]
    add       r10,	r11
    mov       rax,	[rbp + mc_genss.dofwdrefs.p32]
    mov       [rax],	r10d
    jmp       L2764
L2765:
    mov       rax,	[rbp + mc_genss.dofwdrefs.p32]
    mov       [rbp + mc_genss.dofwdrefs.p64],	rax
    mov       rax,	[rbp + mc_genss.dofwdrefs.p64]
    mov       r10,	[rax]
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    movsxd    r11,	dword [rax+52]
    add       r10,	r11
    mov       rax,	[rbp + mc_genss.dofwdrefs.p64]
    mov       [rax],	r10
L2764:
    jmp       L2754
L2757:
    mov       rcx,	[mc_genss.currdata]
    mov       rdx,	[rbp + mc_genss.dofwdrefs.offset]
    call      mc_genss.bufferelemptr
    mov       [rbp + mc_genss.dofwdrefs.p8],	rax
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    movsxd    r10,	dword [rax+52]
    sub       r10,	[rbp + mc_genss.dofwdrefs.offset]
    sub       r10,	1
    mov       rax,	[rbp + mc_genss.dofwdrefs.p8]
    mov       [rax],	r10b
    jmp       L2754
L2758:
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    movsx     r10,	word [rax+12]
    lea       rax,	[mc_objdecls.relocnames]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.dofwdrefs.d]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5785]
    call      mc_libmcl.axerror
L2754:
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.dofwdrefs.f],	r10
L2752:
    mov       rax,	[rbp + mc_genss.dofwdrefs.f]
    test      rax,	rax
    jnz       L2751
L2753:
L2748:
;---------------
    add       rsp,	96
    pop       rbp
    ret       
;End 
;Proc genrex
mc_genss.genrex:
;>>
;---------------
    movzx     rax,	byte [mc_genss.f2override]
    test      rax,	rax
    jz        L2768
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	242
    mov       [r10],	al
L2768:
L2767:
    movzx     rax,	byte [mc_genss.f3override]
    test      rax,	rax
    jz        L2770
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	243
    mov       [r10],	al
L2770:
L2769:
    movzx     rax,	byte [mc_genss.sizeoverride]
    test      rax,	rax
    jz        L2772
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
L2772:
L2771:
    movzx     rax,	byte [mc_genss.addroverride]
    test      rax,	rax
    jz        L2774
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	103
    mov       [r10],	al
L2774:
L2773:
    movzx     rax,	byte [mc_genss.nowmask]
    test      rax,	rax
    jz        L2776
    and       byte [mc_genss.rex],	247
L2776:
L2775:
    movzx     rax,	byte [mc_genss.rex]
    test      rax,	rax
    jz        L2778
    movzx     rax,	byte [mc_genss.rex]
    and       rax,	15
    add       rax,	64
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2778:
L2777:
L2766:
;---------------
    ret       
;End 
;Proc isbytesized
mc_genss.isbytesized:
;>>
    %define mc_genss.isbytesized.x 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.isbytesized.x]
    cmp       rax,	-128
    jl        L2780
    cmp       rax,	127
    jg        L2780
    mov       rax,	1
    jmp       L2781
L2780:
    xor       eax,	eax
L2781:
L2779:
;---------------
    pop       rbp
    ret       
;End 
;Proc isdwordsized
mc_genss.isdwordsized:
;>>
    %define mc_genss.isdwordsized.x 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.isdwordsized.x]
    cmp       rax,	-2147483648
    jl        L2783
    cmp       rax,	2147483647
    jg        L2783
    mov       rax,	1
    jmp       L2784
L2783:
    xor       eax,	eax
L2784:
L2782:
;---------------
    pop       rbp
    ret       
;End 
;Proc genamode
mc_genss.genamode:
;>>
    %define mc_genss.genamode.a 16
    %define mc_genss.genamode.am 24
    %define mc_genss.genamode.d -8
    %define mc_genss.genamode.pr -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    movzx     rax,	byte [rbp + mc_genss.genamode.am]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    movsx     rax,	byte [rbp + mc_genss.genamode.am+2]
    cmp       rax,	1
    jnz       L2787
    movzx     rax,	byte [rbp + mc_genss.genamode.am+1]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2787:
L2786:
    movzx     rax,	byte [rbp + mc_genss.genamode.am+3]
    cmp       rax,	0
    jz        L2789
    cmp       rax,	1
    jz        L2790
    cmp       rax,	4
    jz        L2791
    jmp       L2792
L2789:
    jmp       L2788
L2790:
    movsxd    rax,	dword [rbp + mc_genss.genamode.am+4]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    jmp       L2788
L2791:
    movsx     rax,	byte [rbp + mc_genss.genamode.am+2]
    cmp       rax,	-1
    jnz       L2794
    mov       rcx,	16
    call      mlib.pcm_alloc
    mov       [rbp + mc_genss.genamode.pr],	rax
    mov       rax,	[mc_decls.riplist]
    mov       r10,	[rbp + mc_genss.genamode.pr]
    mov       [r10],	rax
    mov       rax,	[mc_genss.currdata]
    mov       r10,	[rax+8]
    mov       rax,	[mc_genss.currdata]
    mov       r11,	[rax]
    sub       r10,	r11
    mov       rax,	[rbp + mc_genss.genamode.pr]
    mov       [rax+8],	r10d
    mov       rax,	[rbp + mc_genss.genamode.pr]
    mov       [mc_decls.riplist],	rax
    mov       [mc_genss.ripentry],	rax
L2794:
L2793:
    mov       rax,	[rbp + mc_genss.genamode.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L2796
    jmp       L2797
L2796:
    mov       rax,	[rbp + mc_genss.genamode.a]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	5
    jz        L2799
    cmp       r10,	6
    jz        L2799
    cmp       r10,	0
    jz        L2800
    cmp       r10,	8
    jz        L2800
    jmp       L2801
L2799:
    mov       rcx,	[rbp + mc_genss.genamode.a]
    call      mc_genss.genabs32
    jmp       L2798
L2800:
    movsxd    rax,	dword [rbp + mc_genss.genamode.am+4]
    mov       rcx,	rax
    call      mc_genss.gendword
    jmp       L2798
L2801:
    lea       rcx,	[rel L5786]
    call      mc_libmcl.axerror
L2798:
    jmp       L2795
L2797:
    call      msys.m$print_startcon
    mov       rax,	[rbp + mc_genss.genamode.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    lea       rax,	[mc_decls.opndnames_ma]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5787]
    call      mc_libmcl.axerror
L2795:
    jmp       L2788
L2792:
    lea       rcx,	[rel L5788]
    call      mc_libmcl.axerror
L2788:
L2785:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc setopsize
mc_genss.setopsize:
;>>
    %define mc_genss.setopsize.a 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.setopsize.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jz        L2804
    cmp       r10,	4
    jz        L2805
    cmp       r10,	1
    jz        L2806
    cmp       r10,	2
    jz        L2807
    jmp       L2808
L2804:
    mov       al,	8
    or        [mc_genss.rex],	al
    jmp       L2803
L2805:
    jmp       L2803
L2806:
    jmp       L2803
L2807:
    mov       al,	1
    mov       [mc_genss.sizeoverride],	al
    jmp       L2803
L2808:
    lea       rcx,	[rel L5789]
    call      mc_libmcl.axerror
L2803:
L2802:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc getdispsize
mc_genss.getdispsize:
;>>
    %define mc_genss.getdispsize.a 16
    %define mc_genss.getdispsize.offset 24
    %define mc_genss.getdispsize.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mc_genss.getdispsize.a]
    xor       edx,	edx
    call      mc_genss.getdef
    mov       [rbp + mc_genss.getdispsize.d],	rax
    mov       rax,	[rbp + mc_genss.getdispsize.a]
    movsxd    r10,	dword [rax+12]
    mov       rax,	[rbp + mc_genss.getdispsize.offset]
    mov       [rax],	r10d
    mov       rax,	[rbp + mc_genss.getdispsize.d]
    test      rax,	rax
    jz        L2811
    mov       rax,	[rbp + mc_genss.getdispsize.d]
    movzx     r10,	byte [rax+49]
    cmp       r10,	4
    jz        L2814
    cmp       r10,	5
    jnz       L2813
L2814:
    mov       rax,	[rbp + mc_genss.getdispsize.d]
    movsxd    r10,	dword [rax+52]
    mov       rax,	[rbp + mc_genss.getdispsize.offset]
    add       [rax],	r10d
    jmp       L2812
L2813:
    mov       rax,	4
    jmp       L2809
L2812:
L2811:
L2810:
    mov       rax,	[rbp + mc_genss.getdispsize.offset]
    movsxd    r10,	dword [rax]
    test      r10,	r10
    jz        L2816
    mov       rax,	[rbp + mc_genss.getdispsize.offset]
    movsxd    r10,	dword [rax]
    mov       rcx,	r10
    call      mc_genss.isbytesized
    test      rax,	rax
    jz        L2818
    mov       rax,	1
    jmp       L2817
L2818:
    mov       rax,	4
L2817:
    jmp       L2815
L2816:
    xor       eax,	eax
L2815:
L2809:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc checkhighreg
mc_genss.checkhighreg:
;>>
    %define mc_genss.checkhighreg.a 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.checkhighreg.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L2821
    mov       rax,	[rbp + mc_genss.checkhighreg.a]
    movzx     r10,	byte [rax+10]
    lea       rax,	[mc_genss.ishighreg]
    movzx     r11,	byte [rax + r10-1]
    or        [mc_genss.rex],	r11b
L2821:
L2820:
L2819:
;---------------
    pop       rbp
    ret       
;End 
;Proc do_loop
mc_genss.do_loop:
;>>
    %define mc_genss.do_loop.a 16
    %define mc_genss.do_loop.opc 24
    %define mc_genss.do_loop.offset -8
    %define mc_genss.do_loop.$T1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	9
    call      mc_genss.getcurrdatalen
    add       rax,	1
    mov       [rbp + mc_genss.do_loop.$T1],	rax
    mov       rcx,	[rbp + mc_genss.do_loop.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_loop.$T1]
    call      mc_genss.getrel32
    mov       [rbp + mc_genss.do_loop.offset],	rax
    mov       rax,	[rbp + mc_genss.do_loop.offset]
    cmp       rax,	0
    jge       L2824
    mov       rax,	[rbp + mc_genss.do_loop.offset]
    cmp       rax,	-126
    jge       L2826
    lea       rcx,	[rel L5790]
    call      mc_libmcl.axerror
L2826:
L2825:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_loop.opc]
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_loop.offset]
    mov       [r10],	al
    jmp       L2823
L2824:
    lea       rcx,	[rel L5791]
    call      mc_libmcl.axerror
L2823:
L2822:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_jcxz
mc_genss.do_jcxz:
;>>
    %define mc_genss.do_jcxz.a 16
    %define mc_genss.do_jcxz.opsize 24
    %define mc_genss.do_jcxz.offset -8
    %define mc_genss.do_jcxz.$T1 -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	10
    call      mc_genss.getcurrdatalen
    add       rax,	1
    mov       [rbp + mc_genss.do_jcxz.$T1],	rax
    mov       rcx,	[rbp + mc_genss.do_jcxz.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_jcxz.$T1]
    call      mc_genss.getrel32
    mov       [rbp + mc_genss.do_jcxz.offset],	rax
    mov       rax,	[rbp + mc_genss.do_jcxz.offset]
    cmp       rax,	0
    jge       L2829
    mov       rax,	[rbp + mc_genss.do_jcxz.offset]
    cmp       rax,	-126
    jge       L2831
    lea       rcx,	[rel L5792]
    call      mc_libmcl.axerror
L2831:
L2830:
    mov       rax,	[rbp + mc_genss.do_jcxz.opsize]
    cmp       rax,	4
    jnz       L2833
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	103
    mov       [r10],	al
L2833:
L2832:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	227
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_jcxz.offset]
    mov       [r10],	al
    jmp       L2828
L2829:
    lea       rcx,	[rel L5793]
    call      mc_libmcl.axerror
L2828:
L2827:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_call
mc_genss.do_call:
;>>
    %define mc_genss.do_call.a 16
    %define mc_genss.do_call.am -8
    %define mc_genss.do_call.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.do_call.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jz        L2836
    jmp       L2837
L2836:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	232
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_call.a]
    call      mc_genss.genrel32
    jmp       L2835
L2837:
    mov       rax,	[rbp + mc_genss.do_call.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jz        L2839
    cmp       r10,	1
    jz        L2840
    cmp       r10,	2
    jz        L2840
    cmp       r10,	4
    jz        L2840
    jmp       L2841
L2839:
    mov       rax,	[rbp + mc_genss.do_call.a]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    jmp       L2838
L2840:
    lea       rcx,	[rel L5794]
    call      mc_libmcl.axerror
L2841:
L2838:
    mov       rcx,	255
    mov       rdx,	2
    mov       r8,	[rbp + mc_genss.do_call.a]
    call      mc_genss.genxrm
L2835:
L2834:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_jmp
mc_genss.do_jmp:
;>>
    %define mc_genss.do_jmp.a 16
    %define mc_genss.do_jmp.m 24
    %define mc_genss.do_jmp.am -8
    %define mc_genss.do_jmp.regcode -16
    %define mc_genss.do_jmp.offset -24
    %define mc_genss.do_jmp.shortjmp -32
    %define mc_genss.do_jmp.d -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mc_genss.do_jmp.a]
    xor       edx,	edx
    call      mc_genss.getdef
    mov       [rbp + mc_genss.do_jmp.d],	rax
    mov       rax,	[rbp + mc_genss.do_jmp.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jz        L2844
    jmp       L2845
L2844:
    mov       rcx,	11
    call      mc_genss.getcurrdatalen
    add       rax,	1
    mov       rcx,	[rbp + mc_genss.do_jmp.d]
    mov       rdx,	rax
    call      mc_genss.getrel32
    mov       [rbp + mc_genss.do_jmp.offset],	rax
    mov       rax,	[rbp + mc_genss.do_jmp.offset]
    cmp       rax,	0
    jge       L2847
    mov       rax,	[rbp + mc_genss.do_jmp.offset]
    cmp       rax,	-126
    jle       L2847
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	235
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_jmp.offset]
    mov       [r10],	al
    jmp       L2846
L2847:
    xor       eax,	eax
    mov       [rbp + mc_genss.do_jmp.shortjmp],	rax
    mov       rax,	[rbp + mc_genss.do_jmp.offset]
    cmp       rax,	0
    jle       L2849
    mov       rcx,	[rbp + mc_genss.do_jmp.m]
    mov       rdx,	[rbp + mc_genss.do_jmp.d]
    call      mc_genss.checkshortjump
    mov       [rbp + mc_genss.do_jmp.shortjmp],	rax
L2849:
L2848:
    mov       rax,	[rbp + mc_genss.do_jmp.shortjmp]
    test      rax,	rax
    jnz       L2851
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	233
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_jmp.a]
    call      mc_genss.genrel32
    jmp       L2850
L2851:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	235
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_jmp.a]
    call      mc_genss.genrel8
L2850:
L2846:
    jmp       L2843
L2845:
    mov       rax,	[rbp + mc_genss.do_jmp.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jz        L2853
    cmp       r10,	1
    jz        L2854
    cmp       r10,	2
    jz        L2854
    cmp       r10,	4
    jz        L2854
    jmp       L2855
L2853:
    mov       rax,	[rbp + mc_genss.do_jmp.a]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    jmp       L2852
L2854:
    lea       rcx,	[rel L5795]
    call      mc_libmcl.axerror
L2855:
L2852:
    mov       rcx,	255
    mov       rdx,	4
    mov       r8,	[rbp + mc_genss.do_jmp.a]
    call      mc_genss.genxrm
L2843:
L2842:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc getcurrdatalen
mc_genss.getcurrdatalen:
;>>
    %define mc_genss.getcurrdatalen.id 16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
;---------------
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	3
    jnz       L2858
    mov       rax,	[mc_decls.ss_zdatalen]
    jmp       L2856
L2858:
L2857:
    mov       rcx,	[mc_genss.currdata]
    call      mc_genss.bufferlength
L2856:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_cmovcc
mc_genss.do_cmovcc:
;>>
    %define mc_genss.do_cmovcc.cond 16
    %define mc_genss.do_cmovcc.a 24
    %define mc_genss.do_cmovcc.b 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_cmovcc.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_cmovcc.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L2861
    mov       rax,	[rbp + mc_genss.do_cmovcc.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    test      r10,	r10
    jz        L2861
    lea       rcx,	[rel L5796]
    call      mc_libmcl.axerror
L2861:
L2860:
    mov       rax,	[rbp + mc_genss.do_cmovcc.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L2863
    lea       rcx,	[rel L5797]
    call      mc_libmcl.axerror
L2863:
L2862:
    mov       rax,	3904
    add       rax,	[rbp + mc_genss.do_cmovcc.cond]
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_cmovcc.a]
    mov       r8,	[rbp + mc_genss.do_cmovcc.b]
    call      mc_genss.genrrm
L2859:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_fmem
mc_genss.do_fmem:
;>>
    %define mc_genss.do_fmem.a 16
    %define mc_genss.do_fmem.freal 24
    %define mc_genss.do_fmem.code 32
    %define mc_genss.do_fmem.am -8
    %define mc_genss.do_fmem.regcode -16
    %define mc_genss.do_fmem.mf -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_fmem.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L2866
    lea       rcx,	[rel L5798]
    call      mc_libmcl.axerror
L2866:
L2865:
    mov       rax,	[rbp + mc_genss.do_fmem.freal]
    test      rax,	rax
    jz        L2868
    mov       rax,	[rbp + mc_genss.do_fmem.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jz        L2870
    cmp       r10,	8
    jz        L2871
    cmp       r10,	10
    jz        L2872
    cmp       r10,	16
    jz        L2872
    jmp       L2873
L2870:
    xor       eax,	eax
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    jmp       L2869
L2871:
    mov       rax,	2
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    jmp       L2869
L2872:
    mov       rax,	1
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    mov       rax,	[rbp + mc_genss.do_fmem.code]
    cmp       rax,	0
    jz        L2875
    cmp       rax,	3
    jz        L2876
    jmp       L2877
L2875:
    mov       rax,	5
    mov       [rbp + mc_genss.do_fmem.code],	rax
    jmp       L2874
L2876:
    mov       rax,	7
    mov       [rbp + mc_genss.do_fmem.code],	rax
    jmp       L2874
L2877:
    lea       rcx,	[rel L5799]
    call      mc_libmcl.axerror
L2874:
    jmp       L2869
L2873:
    call      msys.m$print_startcon
    lea       rcx,	[rel L5800]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.do_fmem.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5801]
    call      mc_libmcl.axerror
L2869:
    jmp       L2867
L2868:
    mov       rax,	[rbp + mc_genss.do_fmem.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	2
    jz        L2879
    cmp       r10,	4
    jz        L2880
    cmp       r10,	8
    jz        L2881
    jmp       L2882
L2879:
    mov       rax,	3
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    jmp       L2878
L2880:
    mov       rax,	1
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    jmp       L2878
L2881:
    mov       rax,	3
    mov       [rbp + mc_genss.do_fmem.mf],	rax
    mov       rax,	[rbp + mc_genss.do_fmem.code]
    cmp       rax,	0
    jz        L2884
    cmp       rax,	3
    jz        L2885
    jmp       L2886
L2884:
    mov       rax,	5
    mov       [rbp + mc_genss.do_fmem.code],	rax
    jmp       L2883
L2885:
    mov       rax,	7
    mov       [rbp + mc_genss.do_fmem.code],	rax
    jmp       L2883
L2886:
    lea       rcx,	[rel L5802]
    call      mc_libmcl.axerror
L2883:
    jmp       L2878
L2882:
    lea       rcx,	[rel L5803]
    call      mc_libmcl.axerror
L2878:
L2867:
    mov       rax,	[rbp + mc_genss.do_fmem.mf]
    shl       rax,	1
    mov       r10,	217
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genss.do_fmem.code]
    mov       r8,	[rbp + mc_genss.do_fmem.a]
    call      mc_genss.genxrm
L2864:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc genrel8
mc_genss.genrel8:
;>>
    %define mc_genss.genrel8.a 16
    %define mc_genss.genrel8.d -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	[rbp + mc_genss.genrel8.a]
    mov       rdx,	1
    call      mc_genss.getdef
    mov       [rbp + mc_genss.genrel8.d],	rax
    mov       rax,	[rbp + mc_genss.genrel8.d]
    movzx     r10,	byte [rax+69]
    cmp       r10,	1
    jnz       L2889
    mov       rcx,	3
    call      mc_genss.getcurrdatalen
    mov       r10,	[rbp + mc_genss.genrel8.d]
    mov       r11,	[r10+88]
    mov       rcx,	r11
    mov       rdx,	rax
    mov       r8,	6
    xor       r9d,	r9d
    call      mc_genss.addfwdref
    mov       r10,	[rbp + mc_genss.genrel8.d]
    mov       [r10+88],	rax
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    xor       eax,	eax
    mov       [r10],	al
    jmp       L2888
L2889:
    lea       rcx,	[rel L5804]
    call      mc_libmcl.axerror
L2888:
L2887:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc checkshortjump
mc_genss.checkshortjump:
;>>
    %define mc_genss.checkshortjump.m 16
    %define mc_genss.checkshortjump.d 24
    %define mc_genss.checkshortjump.n -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    xor       eax,	eax
    mov       [rbp + mc_genss.checkshortjump.n],	rax
    mov       rax,	[rbp + mc_genss.checkshortjump.m]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.checkshortjump.m],	r10
    jmp       L2892
L2891:
    mov       rax,	[rbp + mc_genss.checkshortjump.m]
    movzx     r10,	byte [rax+24]
    cmp       r10,	9
    jz        L2895
    cmp       r10,	3
    jz        L2896
    cmp       r10,	4
    jz        L2896
    cmp       r10,	5
    jz        L2896
    jmp       L2897
L2895:
    mov       rax,	[rbp + mc_genss.checkshortjump.m]
    mov       r10,	[rax+8]
    mov       rax,	[r10]
    mov       r10,	[rbp + mc_genss.checkshortjump.d]
    movsxd    r11,	dword [r10+76]
    cmp       rax,	r11
    jnz       L2899
    mov       rax,	1
    jmp       L2890
L2899:
L2898:
    jmp       L2894
L2896:
    jmp       L2894
L2897:
    inc       qword [rbp + mc_genss.checkshortjump.n]
L2894:
    mov       rax,	[rbp + mc_genss.checkshortjump.m]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.checkshortjump.m],	r10
L2892:
    mov       rax,	[rbp + mc_genss.checkshortjump.m]
    test      rax,	rax
    jz        L2900
    mov       rax,	[rbp + mc_genss.checkshortjump.n]
    cmp       rax,	8
    jle       L2891
L2900:
L2893:
    xor       eax,	eax
L2890:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc addfwdref
mc_genss.addfwdref:
;>>
    %define mc_genss.addfwdref.p 16
    %define mc_genss.addfwdref.offset 24
    %define mc_genss.addfwdref.reltype 32
    %define mc_genss.addfwdref.seg 40
    %define mc_genss.addfwdref.q -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rcx,	16
    call      mlib.pcm_allocnfz
    mov       [rbp + mc_genss.addfwdref.q],	rax
    mov       rax,	[rbp + mc_genss.addfwdref.p]
    mov       r10,	[rbp + mc_genss.addfwdref.q]
    mov       [r10],	rax
    mov       eax,	[rbp + mc_genss.addfwdref.offset]
    mov       r10,	[rbp + mc_genss.addfwdref.q]
    mov       [r10+8],	eax
    mov       ax,	[rbp + mc_genss.addfwdref.reltype]
    mov       r10,	[rbp + mc_genss.addfwdref.q]
    mov       [r10+12],	ax
    mov       ax,	[rbp + mc_genss.addfwdref.seg]
    mov       r10,	[rbp + mc_genss.addfwdref.q]
    mov       [r10+14],	ax
    mov       rax,	[rbp + mc_genss.addfwdref.q]
L2901:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc switchseg
mc_genss.switchseg:
;>>
    %define mc_genss.switchseg.newseg 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.switchseg.newseg]
    cmp       rax,	[mc_genss.currseg]
    jnz       L2904
    jmp       L2902
L2904:
L2903:
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	1
    jz        L2906
    cmp       rax,	2
    jz        L2907
    jmp       L2908
L2906:
    mov       rax,	[mc_genss.currrelocs]
    mov       [mc_decls.ss_coderelocs],	rax
    mov       rax,	[mc_genss.nrelocs]
    mov       [mc_decls.ss_ncoderelocs],	rax
    jmp       L2905
L2907:
    mov       rax,	[mc_genss.currrelocs]
    mov       [mc_decls.ss_idatarelocs],	rax
    mov       rax,	[mc_genss.nrelocs]
    mov       [mc_decls.ss_nidatarelocs],	rax
L2908:
L2905:
    mov       rax,	[rbp + mc_genss.switchseg.newseg]
    mov       [mc_genss.currseg],	rax
    mov       rax,	[mc_genss.currseg]
    cmp       rax,	1
    jz        L2910
    cmp       rax,	2
    jz        L2911
    cmp       rax,	3
    jz        L2912
    jmp       L2913
L2910:
    mov       rax,	[mc_decls.ss_code]
    mov       [mc_genss.currdata],	rax
    mov       rax,	[mc_decls.ss_coderelocs]
    mov       [mc_genss.currrelocs],	rax
    mov       rax,	[mc_decls.ss_ncoderelocs]
    mov       [mc_genss.nrelocs],	rax
    jmp       L2909
L2911:
    mov       rax,	[mc_decls.ss_idata]
    mov       [mc_genss.currdata],	rax
    mov       rax,	[mc_decls.ss_idatarelocs]
    mov       [mc_genss.currrelocs],	rax
    mov       rax,	[mc_decls.ss_nidatarelocs]
    mov       [mc_genss.nrelocs],	rax
    jmp       L2909
L2912:
    mov       rax,	[mc_decls.ss_zdata]
    mov       [mc_genss.currdata],	rax
L2913:
L2909:
L2902:
;---------------
    pop       rbp
    ret       
;End 
;Proc do_popcnt
mc_genss.do_popcnt:
;>>
    %define mc_genss.do_popcnt.a 16
    %define mc_genss.do_popcnt.b 24
    %define mc_genss.do_popcnt.am -8
    %define mc_genss.do_popcnt.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_popcnt.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L2916
    mov       rax,	[rbp + mc_genss.do_popcnt.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L2918
    mov       rax,	[rbp + mc_genss.do_popcnt.b]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L2918:
L2917:
L2916:
L2915:
    mov       al,	1
    mov       [mc_genss.f3override],	al
    mov       rcx,	4024
    mov       rdx,	[rbp + mc_genss.do_popcnt.a]
    mov       r8,	[rbp + mc_genss.do_popcnt.b]
    call      mc_genss.genrrm
L2914:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_bsf
mc_genss.do_bsf:
;>>
    %define mc_genss.do_bsf.a 16
    %define mc_genss.do_bsf.b 24
    %define mc_genss.do_bsf.opc 32
    %define mc_genss.do_bsf.am -8
    %define mc_genss.do_bsf.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_bsf.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L2921
    mov       rax,	[rbp + mc_genss.do_bsf.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L2923
    mov       rax,	[rbp + mc_genss.do_bsf.b]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L2923:
L2922:
L2921:
L2920:
    mov       rax,	[rbp + mc_genss.do_bsf.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_bsf.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L2925
    lea       rcx,	[rel L5805]
    call      mc_libmcl.axerror
L2925:
L2924:
    mov       rax,	3840
    add       rax,	[rbp + mc_genss.do_bsf.opc]
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_bsf.a]
    mov       r8,	[rbp + mc_genss.do_bsf.b]
    call      mc_genss.genrrm
L2919:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc extendsymboltable
mc_genss.extendsymboltable:
;>>
    %define mc_genss.extendsymboltable.oldsymboltable -8
    %define mc_genss.extendsymboltable.oldsymboltablesize -16
    %define mc_genss.extendsymboltable.i -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
;---------------
    mov       rax,	[mc_decls.ss_symboltablesize]
    mov       [rbp + mc_genss.extendsymboltable.oldsymboltablesize],	rax
    mov       rax,	[mc_decls.ss_symboltable]
    mov       [rbp + mc_genss.extendsymboltable.oldsymboltable],	rax
    mov       rax,	[mc_decls.ss_symboltablesize]
    shl       rax,	1
    mov       [mc_decls.ss_symboltablesize],	rax
    mov       rax,	8
    imul      rax,	[mc_decls.ss_symboltablesize]
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [mc_decls.ss_symboltable],	rax
    mov       rax,	1
    mov       [rbp + mc_genss.extendsymboltable.i],	rax
    mov       rax,	[mc_decls.ss_nsymbols]
    cmp       rax,	1
    jl        L2929
L2927:
    mov       rax,	[rbp + mc_genss.extendsymboltable.oldsymboltable]
    mov       r10,	[rbp + mc_genss.extendsymboltable.i]
    mov       r11,	[rax + r10*8-8]
    mov       rax,	[mc_decls.ss_symboltable]
    mov       r10,	[rbp + mc_genss.extendsymboltable.i]
    mov       [rax + r10*8-8],	r11
L2928:
    mov       rax,	[rbp + mc_genss.extendsymboltable.i]
    inc       rax
    mov       [rbp + mc_genss.extendsymboltable.i],	rax
    cmp       rax,	[mc_decls.ss_nsymbols]
    jle       L2927
L2929:
    mov       rax,	8
    imul      rax,	[rbp + mc_genss.extendsymboltable.oldsymboltablesize]
    mov       rcx,	[rbp + mc_genss.extendsymboltable.oldsymboltable]
    mov       rdx,	rax
    call      mlib.pcm_free
L2926:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc initlib
mc_genss.initlib:
;>>
    %define mc_genss.initlib.nlabels 16
    %define mc_genss.initlib.str -256
    %define mc_genss.initlib.i -264
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	304
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	262144
    call      mlib.pcm_alloc
    mov       [mc_decls.ss_symboltable],	rax
    mov       rax,	32768
    mov       [mc_decls.ss_symboltablesize],	rax
    xor       eax,	eax
    mov       [mc_decls.ss_nsymbols],	rax
    mov       rax,	[rbp + mc_genss.initlib.nlabels]
    imul      rax,	8
    mov       rcx,	rax
    call      mlib.pcm_alloc
    mov       [mc_decls.labeldeftable],	rax
    mov       rax,	1
    mov       [rbp + mc_genss.initlib.i],	rax
    mov       rax,	[rbp + mc_genss.initlib.nlabels]
    cmp       rax,	1
    jl        L2933
L2931:
    mov       rcx,	112
    call      mlib.pcm_allocnfz
    mov       r10,	[mc_decls.labeldeftable]
    mov       r11,	[rbp + mc_genss.initlib.i]
    mov       [r10 + r11*8-8],	rax
    mov       rax,	[mc_decls.labeldeftable]
    mov       r10,	[rbp + mc_genss.initlib.i]
    mov       r11,	[rax + r10*8-8]
    mov       eax,	[rbp + mc_genss.initlib.i]
    mov       [r11+76],	eax
    lea       rcx,	[rbp + mc_genss.initlib.str]
    call      msys.m$print_startstr
    lea       rcx,	[rel L5806]
    call      msys.m$print_setfmt
    mov       rcx,	[rbp + mc_genss.initlib.i]
    call      msys.m$print_i64_nf
    call      msys.m$print_end
    lea       rcx,	[rbp + mc_genss.initlib.str]
    call      mlib.pcm_copyheapstring
    mov       r10,	[mc_decls.labeldeftable]
    mov       r11,	[rbp + mc_genss.initlib.i]
    mov       rdi,	[r10 + r11*8-8]
    mov       [rdi],	rax
    mov       rax,	[mc_decls.labeldeftable]
    mov       r10,	[rbp + mc_genss.initlib.i]
    mov       r11,	[rax + r10*8-8]
    mov       al,	1
    mov       [r11+69],	al
L2932:
    mov       rax,	[rbp + mc_genss.initlib.i]
    inc       rax
    mov       [rbp + mc_genss.initlib.i],	rax
    cmp       rax,	[rbp + mc_genss.initlib.nlabels]
    jle       L2931
L2933:
L2930:
;---------------
    add       rsp,	304
    pop       rbp
    ret       
;End 
;Proc buffercreate
mc_genss.buffercreate:
;>>
    %define mc_genss.buffercreate.size 16
    %define mc_genss.buffercreate.a -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rcx,	32
    call      mlib.pcm_alloc
    mov       [rbp + mc_genss.buffercreate.a],	rax
    mov       rax,	[rbp + mc_genss.buffercreate.size]
    mov       r10,	[rbp + mc_genss.buffercreate.a]
    mov       [r10+24],	rax
    mov       rax,	[rbp + mc_genss.buffercreate.a]
    mov       r10,	[rax+24]
    mov       rcx,	r10
    call      mlib.pcm_alloc
    mov       r10,	[rbp + mc_genss.buffercreate.a]
    mov       [r10+8],	rax
    mov       r10,	[rbp + mc_genss.buffercreate.a]
    mov       [r10],	rax
    mov       rax,	[rbp + mc_genss.buffercreate.a]
    mov       r10,	[rax]
    mov       rax,	[rbp + mc_genss.buffercreate.a]
    mov       r11,	[rax+24]
    lea       r10,	[r10 + r11]
    mov       rax,	[rbp + mc_genss.buffercreate.a]
    mov       [rax+16],	r10
    mov       rax,	[rbp + mc_genss.buffercreate.a]
L2934:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc bufferexpand
mc_genss.bufferexpand:
;>>
    %define mc_genss.bufferexpand.a 16
    %define mc_genss.bufferexpand.newalloc -8
    %define mc_genss.bufferexpand.usedbytes -16
    %define mc_genss.bufferexpand.p -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.bufferexpand.a]
    mov       r10,	[rax+24]
    imul      r10,	2
    mov       [rbp + mc_genss.bufferexpand.newalloc],	r10
    mov       rax,	[rbp + mc_genss.bufferexpand.a]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genss.bufferexpand.a]
    mov       r11,	[rax]
    sub       r10,	r11
    mov       [rbp + mc_genss.bufferexpand.usedbytes],	r10
    mov       rax,	[rbp + mc_genss.bufferexpand.a]
    mov       r10,	[rax+24]
    mov       rax,	[rbp + mc_genss.bufferexpand.usedbytes]
    cmp       rax,	r10
    jle       L2937
    call      msys.m$print_startcon
    lea       rcx,	[rel L5807]
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    xor       ecx,	ecx
    call      exit
L2937:
L2936:
    mov       rcx,	[rbp + mc_genss.bufferexpand.newalloc]
    call      mlib.pcm_alloc
    mov       [rbp + mc_genss.bufferexpand.p],	rax
    mov       rax,	[rbp + mc_genss.bufferexpand.a]
    mov       r10,	[rax]
    mov       rcx,	[rbp + mc_genss.bufferexpand.p]
    mov       rdx,	r10
    mov       r8,	[rbp + mc_genss.bufferexpand.usedbytes]
    call      memcpy
    mov       rax,	[rbp + mc_genss.bufferexpand.p]
    mov       r10,	[rbp + mc_genss.bufferexpand.a]
    mov       [r10],	rax
    mov       rax,	[rbp + mc_genss.bufferexpand.p]
    mov       r10,	[rbp + mc_genss.bufferexpand.usedbytes]
    lea       rax,	[rax + r10]
    mov       r10,	[rbp + mc_genss.bufferexpand.a]
    mov       [r10+8],	rax
    mov       rax,	[rbp + mc_genss.bufferexpand.newalloc]
    mov       r10,	[rbp + mc_genss.bufferexpand.a]
    mov       [r10+24],	rax
    mov       rax,	[rbp + mc_genss.bufferexpand.p]
    mov       r10,	[rbp + mc_genss.bufferexpand.newalloc]
    lea       rax,	[rax + r10]
    mov       r10,	[rbp + mc_genss.bufferexpand.a]
    mov       [r10+16],	rax
L2935:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc buffercheck
mc_genss.buffercheck:
;>>
    %define mc_genss.buffercheck.a 16
    %define mc_genss.buffercheck.n 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    jmp       L2940
L2939:
    mov       rcx,	[rbp + mc_genss.buffercheck.a]
    call      mc_genss.bufferexpand
L2940:
    mov       rax,	[rbp + mc_genss.buffercheck.a]
    mov       r10,	[rax+16]
    mov       rax,	[rbp + mc_genss.buffercheck.a]
    mov       r11,	[rax+8]
    sub       r10,	r11
    cmp       r10,	[rbp + mc_genss.buffercheck.n]
    jl        L2939
L2941:
L2938:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc bufferlength
mc_genss.bufferlength:
;>>
    %define mc_genss.bufferlength.a 16
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.bufferlength.a]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genss.bufferlength.a]
    mov       r11,	[rax]
    sub       r10,	r11
    mov       rax,	r10
L2942:
;---------------
    pop       rbp
    ret       
;End 
;Proc bufferelemptr
mc_genss.bufferelemptr:
;>>
    %define mc_genss.bufferelemptr.a 16
    %define mc_genss.bufferelemptr.offset 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.bufferelemptr.a]
    mov       r10,	[rax]
    mov       rax,	[rbp + mc_genss.bufferelemptr.offset]
    lea       r10,	[r10 + rax]
    mov       rax,	r10
L2943:
;---------------
    pop       rbp
    ret       
;End 
;Proc addword
mc_genss.addword:
;>>
    %define mc_genss.addword.a 16
    %define mc_genss.addword.x 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.addword.a]
    mov       r10,	[rax+8]
    mov       ax,	[rbp + mc_genss.addword.x]
    mov       [r10],	ax
    mov       rax,	[rbp + mc_genss.addword.a]
    lea       rax,	[rax+8]
    add       qword [rax],	2
L2944:
;---------------
    pop       rbp
    ret       
;End 
;Proc adddword
mc_genss.adddword:
;>>
    %define mc_genss.adddword.a 16
    %define mc_genss.adddword.x 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.adddword.a]
    mov       r10,	[rax+8]
    mov       eax,	[rbp + mc_genss.adddword.x]
    mov       [r10],	eax
    mov       rax,	[rbp + mc_genss.adddword.a]
    lea       rax,	[rax+8]
    add       qword [rax],	4
L2945:
;---------------
    pop       rbp
    ret       
;End 
;Proc addqword
mc_genss.addqword:
;>>
    %define mc_genss.addqword.a 16
    %define mc_genss.addqword.x 24
    push      rbp
    mov       rbp,	rsp
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.addqword.a]
    mov       r10,	[rax+8]
    mov       rax,	[rbp + mc_genss.addqword.x]
    mov       [r10],	rax
    mov       rax,	[rbp + mc_genss.addqword.a]
    lea       rax,	[rax+8]
    add       qword [rax],	8
L2946:
;---------------
    pop       rbp
    ret       
;End 
;Proc genxrm
mc_genss.genxrm:
;>>
    %define mc_genss.genxrm.opcode 16
    %define mc_genss.genxrm.code 24
    %define mc_genss.genxrm.b 32
    %define mc_genss.genxrm.am -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rcx,	[rbp + mc_genss.genxrm.b]
    call      mc_genss.setopsize
    xor       ecx,	ecx
    mov       rdx,	[rbp + mc_genss.genxrm.code]
    mov       r8,	[rbp + mc_genss.genxrm.b]
    xor       r9d,	r9d
    call      mc_genss.genrm
    mov       [rbp + mc_genss.genxrm.am],	rax
    mov       rax,	[mc_genss.currmcl]
    movzx     r10,	byte [rax+24]
    cmp       r10,	13
    jz        L2949
    cmp       r10,	14
    jz        L2949
    jmp       L2950
L2949:
    and       byte [mc_genss.rex],	247
L2950:
L2948:
    mov       rax,	[rbp + mc_genss.genxrm.opcode]
    shr       rax,	16
    and       rax,	255
    test      rax,	rax
    jz        L2952
    mov       rax,	[rbp + mc_genss.genxrm.opcode]
    shr       rax,	16
    and       rax,	511
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2952:
L2951:
    call      mc_genss.genrex
    mov       rax,	[rbp + mc_genss.genxrm.opcode]
    shr       rax,	8
    and       rax,	255
    test      rax,	rax
    jz        L2954
    mov       rax,	[rbp + mc_genss.genxrm.opcode]
    shr       rax,	8
    and       rax,	255
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2954:
L2953:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.genxrm.opcode]
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.genxrm.b]
    mov       rdx,	[rbp + mc_genss.genxrm.am]
    call      mc_genss.genamode
L2947:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc genrrm
mc_genss.genrrm:
;>>
    %define mc_genss.genrrm.opcode 16
    %define mc_genss.genrrm.a 24
    %define mc_genss.genrrm.b 32
    %define mc_genss.genrrm.am -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.genrrm.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L2957
    mov       rax,	[rbp + mc_genss.genrrm.a]
    movzx     r10,	byte [rax+10]
    lea       rax,	[mc_genss.ishighreg]
    movzx     r11,	byte [rax + r10-1]
    or        [mc_genss.rex],	r11b
L2957:
L2956:
    mov       rcx,	[rbp + mc_genss.genrrm.a]
    call      mc_genss.setopsize
    movzx     rax,	byte [mc_genss.usesizeb]
    test      rax,	rax
    jz        L2959
    and       byte [mc_genss.rex],	247
    mov       rax,	[rbp + mc_genss.genrrm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jnz       L2961
    mov       al,	8
    or        [mc_genss.rex],	al
L2961:
L2960:
L2959:
L2958:
    mov       rax,	[rbp + mc_genss.genrrm.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    setz      r10b
    movzx     r10d,	r10b
    mov       rax,	[rbp + mc_genss.genrrm.a]
    movzx     r11,	byte [rax+10]
    mov       rcx,	r11
    xor       edx,	edx
    mov       r8,	[rbp + mc_genss.genrrm.b]
    mov       r9,	r10
    call      mc_genss.genrm
    mov       [rbp + mc_genss.genrrm.am],	rax
    mov       rax,	[rbp + mc_genss.genrrm.opcode]
    shr       rax,	16
    and       rax,	255
    test      rax,	rax
    jz        L2963
    mov       rax,	[rbp + mc_genss.genrrm.opcode]
    shr       rax,	16
    and       rax,	511
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2963:
L2962:
    call      mc_genss.genrex
    mov       rax,	[rbp + mc_genss.genrrm.opcode]
    shr       rax,	8
    and       rax,	255
    test      rax,	rax
    jz        L2965
    mov       rax,	[rbp + mc_genss.genrrm.opcode]
    shr       rax,	8
    and       rax,	255
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
L2965:
L2964:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.genrrm.opcode]
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.genrrm.b]
    mov       rdx,	[rbp + mc_genss.genrrm.am]
    call      mc_genss.genamode
L2955:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc getregcode
mc_genss.getregcode:
;>>
    %define mc_genss.getregcode.reg 16
    %define mc_genss.getregcode.mask 24
    %define mc_genss.getregcode.isxreg 32
    %define mc_genss.getregcode.regcode -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	16
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.getregcode.isxreg]
    test      rax,	rax
    jnz       L2968
    lea       rax,	[mc_decls.regcodes]
    mov       r10,	[rbp + mc_genss.getregcode.reg]
    movzx     r11,	byte [rax + r10]
    mov       [rbp + mc_genss.getregcode.regcode],	r11
    jmp       L2967
L2968:
    mov       rax,	[rbp + mc_genss.getregcode.reg]
    sub       rax,	1
    mov       [rbp + mc_genss.getregcode.regcode],	rax
L2967:
    mov       rax,	[rbp + mc_genss.getregcode.regcode]
    cmp       rax,	8
    jl        L2970
    mov       rax,	8
    sub       [rbp + mc_genss.getregcode.regcode],	rax
    mov       al,	[rbp + mc_genss.getregcode.mask]
    or        [mc_genss.rex],	al
L2970:
L2969:
    mov       rax,	[rbp + mc_genss.getregcode.regcode]
L2966:
;---------------
    add       rsp,	16
    pop       rbp
    ret       
;End 
;Proc checkimmrange
mc_genss.checkimmrange:
;>>
    %define mc_genss.checkimmrange.value 16
    %define mc_genss.checkimmrange.size 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.checkimmrange.size]
    cmp       rax,	1
    jz        L2973
    cmp       rax,	2
    jz        L2974
    jmp       L2975
L2973:
    mov       rax,	[rbp + mc_genss.checkimmrange.value]
    cmp       rax,	-128
    jl        L2978
    cmp       rax,	255
    jle       L2977
L2978:
    lea       rcx,	[rel L5808]
    call      mc_libmcl.axerror
L2977:
L2976:
    jmp       L2972
L2974:
    mov       rax,	[rbp + mc_genss.checkimmrange.value]
    cmp       rax,	-32768
    jl        L2981
    cmp       rax,	65535
    jle       L2980
L2981:
    lea       rcx,	[rel L5809]
    call      mc_libmcl.axerror
L2980:
L2979:
    jmp       L2972
L2975:
    mov       rax,	[rbp + mc_genss.checkimmrange.value]
    cmp       rax,	-2147483648
    jl        L2984
    mov       r10,	4294967295
    cmp       rax,	r10
    jle       L2983
L2984:
    lea       rcx,	[rel L5810]
    call      mc_libmcl.axerror
L2983:
L2982:
L2972:
L2971:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc genrm
mc_genss.genrm:
;>>
    %define mc_genss.genrm.reg 16
    %define mc_genss.genrm.opc 24
    %define mc_genss.genrm.b 32
    %define mc_genss.genrm.isxreg 40
    %define mc_genss.genrm.mode -8
    %define mc_genss.genrm.rm -16
    %define mc_genss.genrm.scale -24
    %define mc_genss.genrm.index -32
    %define mc_genss.genrm.base -40
    %define mc_genss.genrm.regix -48
    %define mc_genss.genrm.code -56
    %define mc_genss.genrm.ismem -64
    %define mc_genss.genrm.am -72
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	112
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    lea       rax,	[rbp + mc_genss.genrm.am]
    xor       r10,	r10
    mov       [rax],	r10
    mov       rax,	[rbp + mc_genss.genrm.reg]
    test      rax,	rax
    jz        L2987
    mov       rcx,	[rbp + mc_genss.genrm.reg]
    mov       rdx,	4
    mov       r8,	[rbp + mc_genss.genrm.isxreg]
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.opc],	rax
L2987:
L2986:
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L2989
    cmp       r10,	5
    jz        L2989
    cmp       r10,	3
    jz        L2990
    jmp       L2991
L2989:
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    setz      r10b
    movzx     r10d,	r10b
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r11,	byte [rax+10]
    mov       rcx,	r11
    mov       rdx,	1
    mov       r8,	r10
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	byte [rax+10]
    lea       rax,	[mc_genss.ishighreg]
    movzx     r11,	byte [rax + r10-1]
    or        [mc_genss.rex],	r11b
    mov       rax,	[rbp + mc_genss.genrm.opc]
    shl       rax,	3
    mov       r10,	192
    add       r10,	rax
    add       r10,	[rbp + mc_genss.genrm.rm]
    mov       [rbp + mc_genss.genrm.am],	r10b
    mov       rax,	[rbp + mc_genss.genrm.am]
    jmp       L2985
L2990:
    mov       rax,	1
    mov       [rbp + mc_genss.genrm.ismem],	rax
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	12
    and       r10,	15
    cmp       r10,	5
    jz        L2993
    cmp       r10,	3
    jz        L2994
    cmp       r10,	6
    jz        L2995
    jmp       L2996
L2993:
    mov       rax,	[rbp + mc_genss.genrm.b]
    mov       r10,	[rax]
    movzx     rax,	byte [r10+49]
    cmp       rax,	3
    jnz       L2998
    mov       rax,	2
    mov       [rbp + mc_genss.genrm.ismem],	rax
L2998:
L2997:
    jmp       L2992
L2994:
    mov       rax,	2
    mov       [rbp + mc_genss.genrm.ismem],	rax
    jmp       L2992
L2995:
    mov       rax,	2
    mov       [rbp + mc_genss.genrm.ismem],	rax
L2996:
L2992:
    jmp       L2988
L2991:
    lea       rcx,	[rel L5811]
    call      mc_libmcl.axerror
L2988:
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       [rbp + mc_genss.genrm.mode],	rax
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.scale],	rax
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	byte [rax+10]
    mov       [rbp + mc_genss.genrm.reg],	r10
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	byte [rax+11]
    mov       [rbp + mc_genss.genrm.regix],	r10
    mov       rax,	[rbp + mc_genss.genrm.regix]
    cmp       rax,	[rbp + mc_genss.genrm.reg]
    jnz       L3000
    cmp       rax,	0
    jnz       L3000
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.mode],	rax
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       rax,	1
    mov       [rbp + mc_genss.genrm.scale],	rax
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.index],	rax
    mov       rax,	5
    mov       [rbp + mc_genss.genrm.base],	rax
    mov       al,	4
    mov       [rbp + mc_genss.genrm.am+3],	al
    jmp       L2999
L3000:
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	5
    and       r10,	15
    cmp       r10,	1
    jg        L3001
    mov       rax,	[rbp + mc_genss.genrm.regix]
    cmp       rax,	0
    jnz       L3001
    lea       rax,	[rbp + mc_genss.genrm.am+4]
    mov       rcx,	[rbp + mc_genss.genrm.b]
    mov       rdx,	rax
    call      mc_genss.getdispsize
    mov       [rbp + mc_genss.genrm.am+3],	al
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    test      rax,	rax
    jz        L3003
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    cmp       rax,	1
    jnz       L3005
    mov       rax,	1
    jmp       L3004
L3005:
    mov       rax,	2
L3004:
    mov       [rbp + mc_genss.genrm.mode],	rax
L3003:
L3002:
    mov       rcx,	[rbp + mc_genss.genrm.reg]
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.base],	rax
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       rax,	[rbp + mc_genss.genrm.rm]
    cmp       rax,	4
    jz        L3007
    mov       rax,	[rbp + mc_genss.genrm.rm]
    cmp       rax,	5
    jnz       L3009
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    cmp       rax,	0
    jnz       L3009
    mov       rax,	1
    mov       [rbp + mc_genss.genrm.mode],	rax
    mov       al,	1
    mov       [rbp + mc_genss.genrm.am+3],	al
L3009:
L3008:
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.index],	rax
    jmp       L3006
L3007:
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.index],	rax
    mov       rax,	1
    mov       [rbp + mc_genss.genrm.scale],	rax
L3006:
    jmp       L2999
L3001:
    mov       rax,	[rbp + mc_genss.genrm.regix]
    test      rax,	rax
    jz        L3010
    mov       rax,	[rbp + mc_genss.genrm.reg]
    cmp       rax,	0
    jnz       L3010
    mov       al,	4
    mov       [rbp + mc_genss.genrm.am+3],	al
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.mode],	rax
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	5
    and       r10,	15
    test      r10,	r10
    jz        L3012
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	5
    and       r10,	15
    mov       rax,	r10
    jmp       L3011
L3012:
    mov       rax,	1
L3011:
    mov       [rbp + mc_genss.genrm.scale],	rax
    mov       rax,	5
    mov       [rbp + mc_genss.genrm.base],	rax
    mov       rcx,	[rbp + mc_genss.genrm.regix]
    mov       rdx,	2
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.index],	rax
    mov       rax,	[rbp + mc_genss.genrm.regix]
    cmp       rax,	16
    jnz       L3014
    lea       rcx,	[rel L5812]
    call      mc_libmcl.axerror
L3014:
L3013:
    jmp       L2999
L3010:
    lea       rax,	[rbp + mc_genss.genrm.am+4]
    mov       rcx,	[rbp + mc_genss.genrm.b]
    mov       rdx,	rax
    call      mc_genss.getdispsize
    mov       [rbp + mc_genss.genrm.am+3],	al
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    test      rax,	rax
    jz        L3016
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    cmp       rax,	1
    jnz       L3018
    mov       rax,	1
    jmp       L3017
L3018:
    mov       rax,	2
L3017:
    mov       [rbp + mc_genss.genrm.mode],	rax
L3016:
L3015:
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.rm],	rax
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	5
    and       r10,	15
    test      r10,	r10
    jz        L3020
    mov       rax,	[rbp + mc_genss.genrm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	5
    and       r10,	15
    mov       rax,	r10
    jmp       L3019
L3020:
    mov       rax,	1
L3019:
    mov       [rbp + mc_genss.genrm.scale],	rax
    mov       rax,	[rbp + mc_genss.genrm.reg]
    cmp       rax,	0
    jnz       L3022
    mov       rax,	5
    mov       [rbp + mc_genss.genrm.base],	rax
    jmp       L3021
L3022:
    mov       rax,	[rbp + mc_genss.genrm.reg]
    cmp       rax,	15
    jz        L3025
    cmp       rax,	8
    jnz       L3024
L3025:
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    cmp       rax,	0
    jnz       L3024
    mov       rax,	1
    mov       [rbp + mc_genss.genrm.mode],	rax
    mov       al,	1
    mov       [rbp + mc_genss.genrm.am+3],	al
L3024:
L3023:
    mov       rcx,	[rbp + mc_genss.genrm.reg]
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.base],	rax
L3021:
    mov       rax,	[rbp + mc_genss.genrm.regix]
    cmp       rax,	0
    jnz       L3027
    mov       rax,	4
    mov       [rbp + mc_genss.genrm.index],	rax
    jmp       L3026
L3027:
    mov       rcx,	[rbp + mc_genss.genrm.regix]
    mov       rdx,	2
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.genrm.index],	rax
    mov       rax,	[rbp + mc_genss.genrm.reg]
    test      rax,	rax
    jnz       L3029
    mov       al,	4
    mov       [rbp + mc_genss.genrm.am+3],	al
L3029:
L3028:
    mov       rax,	[rbp + mc_genss.genrm.regix]
    cmp       rax,	16
    jnz       L3031
    mov       rax,	[rbp + mc_genss.genrm.scale]
    cmp       rax,	1
    jle       L3031
    lea       rcx,	[rel L5813]
    call      mc_libmcl.axerror
L3031:
L3030:
L3026:
L2999:
    mov       rax,	[rbp + mc_genss.genrm.scale]
    test      rax,	rax
    jz        L3033
    lea       rax,	[mc_genss.genrm.scaletable]
    mov       r10,	[rbp + mc_genss.genrm.scale]
    mov       r11,	[rax + r10*8-8]
    shl       r11,	6
    mov       rax,	[rbp + mc_genss.genrm.index]
    shl       rax,	3
    add       r11,	rax
    add       r11,	[rbp + mc_genss.genrm.base]
    mov       [rbp + mc_genss.genrm.am+1],	r11b
    mov       al,	1
    mov       [rbp + mc_genss.genrm.am+2],	al
L3033:
L3032:
    movzx     rax,	byte [rbp + mc_genss.genrm.am+3]
    cmp       rax,	4
    jnz       L3035
    mov       rax,	[rbp + mc_genss.genrm.ismem]
    test      rax,	rax
    jz        L3035
    mov       rax,	[rbp + mc_genss.genrm.reg]
    test      rax,	rax
    jnz       L3038
    mov       rax,	[rbp + mc_genss.genrm.regix]
    test      rax,	rax
    jz        L3037
L3038:
    movzx     rax,	byte [mc_decls.phighmem]
    cmp       rax,	2
    jnz       L3040
    mov       rax,	[rbp + mc_genss.genrm.ismem]
    cmp       rax,	2
    jnz       L3040
    call      msys.m$print_startcon
    lea       rcx,	[rel L5814]
    call      msys.m$print_str_nf
    mov       rcx,	[mc_decls.aaseqno]
    call      msys.m$print_i64_nf
    mov       rcx,	[mc_genss.currmcl]
    call      mc_writenasm.strmclstr
    mov       rcx,	rax
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
L3040:
L3039:
    jmp       L3036
L3037:
    movzx     rax,	byte [mc_decls.phighmem]
    test      rax,	rax
    jz        L3041
    mov       al,	-1
    mov       [rbp + mc_genss.genrm.am+2],	al
    xor       eax,	eax
    mov       [rbp + mc_genss.genrm.mode],	rax
    mov       rax,	5
    mov       [rbp + mc_genss.genrm.rm],	rax
L3041:
L3036:
L3035:
L3034:
    mov       rax,	[rbp + mc_genss.genrm.mode]
    shl       rax,	6
    mov       r10,	[rbp + mc_genss.genrm.opc]
    shl       r10,	3
    add       rax,	r10
    add       rax,	[rbp + mc_genss.genrm.rm]
    mov       [rbp + mc_genss.genrm.am],	al
    mov       rax,	[rbp + mc_genss.genrm.am]
L2985:
;---------------
    add       rsp,	112
    pop       rbp
    ret       
;End 
;Proc do_arith
mc_genss.do_arith:
;>>
    %define mc_genss.do_arith.a 16
    %define mc_genss.do_arith.b 24
    %define mc_genss.do_arith.code 32
    %define mc_genss.do_arith.d -8
    %define mc_genss.do_arith.opc -16
    %define mc_genss.do_arith.dispsize -24
    %define mc_genss.do_arith.x -32
    %define mc_genss.do_arith.$T1 -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_arith.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3044
    cmp       r10,	3
    jz        L3045
    jmp       L3046
L3044:
    mov       rax,	[rbp + mc_genss.do_arith.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3048
    cmp       r10,	3
    jz        L3048
    cmp       r10,	2
    jz        L3049
    jmp       L3050
L3048:
    mov       rax,	[rbp + mc_genss.do_arith.code]
    shl       rax,	3
    mov       [rbp + mc_genss.do_arith.$T1],	rax
    mov       rax,	[rbp + mc_genss.do_arith.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3052
    mov       rax,	2
    jmp       L3051
L3052:
    mov       rax,	3
L3051:
    mov       r10,	[rbp + mc_genss.do_arith.$T1]
    or        r10,	rax
    mov       [rbp + mc_genss.do_arith.opc],	r10
    mov       rcx,	[rbp + mc_genss.do_arith.opc]
    mov       rdx,	[rbp + mc_genss.do_arith.a]
    mov       r8,	[rbp + mc_genss.do_arith.b]
    call      mc_genss.genrrm
    jmp       L3047
L3049:
;doregimm:
L3053:
    mov       rcx,	[rbp + mc_genss.do_arith.b]
    xor       edx,	edx
    call      mc_genss.getdef
    mov       [rbp + mc_genss.do_arith.d],	rax
    mov       rax,	[rbp + mc_genss.do_arith.d]
    test      rax,	rax
    jz        L3055
    mov       rax,	[rbp + mc_genss.do_arith.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jge       L3057
    lea       rcx,	[rel L5815]
    call      mc_libmcl.axerror
L3057:
L3056:
    mov       rcx,	129
    mov       rdx,	[rbp + mc_genss.do_arith.code]
    mov       r8,	[rbp + mc_genss.do_arith.a]
    call      mc_genss.genxrm
    mov       rcx,	[rbp + mc_genss.do_arith.b]
    mov       rdx,	4
    call      mc_genss.genopnd
    jmp       L3042
L3055:
L3054:
    mov       rax,	[rbp + mc_genss.do_arith.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_arith.x],	r10
    mov       rax,	1
    mov       [rbp + mc_genss.do_arith.dispsize],	rax
    mov       rax,	[rbp + mc_genss.do_arith.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3059
    mov       rax,	128
    mov       [rbp + mc_genss.do_arith.opc],	rax
    mov       rcx,	[rbp + mc_genss.do_arith.x]
    mov       rdx,	1
    call      mc_genss.checkimmrange
    mov       rax,	[rbp + mc_genss.do_arith.x]
    cmp       rax,	-128
    jl        L3062
    cmp       rax,	255
    jle       L3061
L3062:
    lea       rcx,	[rel L5816]
    call      mc_libmcl.axerror
L3061:
L3060:
    jmp       L3058
L3059:
    mov       rax,	[rbp + mc_genss.do_arith.x]
    cmp       rax,	-128
    jl        L3063
    cmp       rax,	127
    jg        L3063
    mov       rax,	131
    mov       [rbp + mc_genss.do_arith.opc],	rax
    jmp       L3058
L3063:
    mov       rcx,	[rbp + mc_genss.do_arith.x]
    mov       rdx,	4
    call      mc_genss.checkimmrange
    mov       rax,	129
    mov       [rbp + mc_genss.do_arith.opc],	rax
    mov       rax,	[rbp + mc_genss.do_arith.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	2
    jnz       L3065
    mov       rax,	2
    jmp       L3064
L3065:
    mov       rax,	4
L3064:
    mov       [rbp + mc_genss.do_arith.dispsize],	rax
L3058:
    mov       rcx,	[rbp + mc_genss.do_arith.opc]
    mov       rdx,	[rbp + mc_genss.do_arith.code]
    mov       r8,	[rbp + mc_genss.do_arith.a]
    call      mc_genss.genxrm
    mov       rax,	[rbp + mc_genss.do_arith.dispsize]
    cmp       rax,	1
    jz        L3067
    cmp       rax,	2
    jz        L3068
    cmp       rax,	4
    jz        L3069
    jmp       L3070
L3067:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_arith.x]
    mov       [r10],	al
    jmp       L3066
L3068:
    mov       rcx,	[rbp + mc_genss.do_arith.x]
    call      mc_genss.genword
    jmp       L3066
L3069:
    mov       rcx,	[rbp + mc_genss.do_arith.x]
    call      mc_genss.gendword
L3070:
L3066:
    mov       rcx,	[rbp + mc_genss.do_arith.dispsize]
    call      mc_genss.fixrip
    jmp       L3047
L3050:
    lea       rcx,	[rel L5817]
    call      mc_libmcl.axerror
L3047:
    jmp       L3043
L3045:
    mov       rax,	[rbp + mc_genss.do_arith.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3072
    cmp       r10,	2
    jz        L3073
    jmp       L3074
L3072:
    mov       rax,	[rbp + mc_genss.do_arith.code]
    shl       rax,	3
    mov       [rbp + mc_genss.do_arith.$T1],	rax
    mov       rax,	[rbp + mc_genss.do_arith.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3076
    xor       eax,	eax
    jmp       L3075
L3076:
    mov       rax,	1
L3075:
    mov       r10,	[rbp + mc_genss.do_arith.$T1]
    or        r10,	rax
    mov       [rbp + mc_genss.do_arith.opc],	r10
    mov       rcx,	[rbp + mc_genss.do_arith.opc]
    mov       rdx,	[rbp + mc_genss.do_arith.b]
    mov       r8,	[rbp + mc_genss.do_arith.a]
    call      mc_genss.genrrm
    jmp       L3071
L3073:
    jmp       L3053
L3074:
    lea       rcx,	[rel L5818]
    call      mc_libmcl.axerror
L3071:
    jmp       L3043
L3046:
    call      msys.m$print_startcon
    lea       rax,	[mc_decls.opndnames_ma]
    mov       r10,	[rbp + mc_genss.do_arith.code]
    mov       r11,	[rax + r10*8]
    mov       rcx,	r11
    call      msys.m$print_str_nf
    lea       rcx,	[rel L5819]
    call      msys.m$print_str_nf
    mov       rcx,	[rbp + mc_genss.do_arith.code]
    call      msys.m$print_i64_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5820]
    call      mc_libmcl.axerror
L3043:
L3042:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc do_mov
mc_genss.do_mov:
;>>
    %define mc_genss.do_mov.a 16
    %define mc_genss.do_mov.b 24
    %define mc_genss.do_mov.regcode -8
    %define mc_genss.do_mov.opc -16
    %define mc_genss.do_mov.dispsize -24
    %define mc_genss.do_mov.value -32
    %define mc_genss.do_mov.d -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rcx,	[rbp + mc_genss.do_mov.b]
    xor       edx,	edx
    call      mc_genss.getdef
    mov       [rbp + mc_genss.do_mov.d],	rax
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3079
    cmp       r10,	3
    jz        L3080
    jmp       L3081
L3079:
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3083
    cmp       r10,	3
    jz        L3083
    cmp       r10,	2
    jz        L3084
    jmp       L3085
L3083:
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L3087
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    test      r10,	r10
    jz        L3087
    call      msys.m$print_startcon
    mov       rax,	[mc_decls.currasmproc]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      msys.m$print_str_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    call      msys.m$print_startcon
    lea       rcx,	[rel L5821]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    lea       rcx,	[rel L5822]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5823]
    call      mc_libmcl.axerror
L3087:
L3086:
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3089
    mov       rax,	138
    jmp       L3088
L3089:
    mov       rax,	139
L3088:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_mov.a]
    mov       r8,	[rbp + mc_genss.do_mov.b]
    call      mc_genss.genrrm
    jmp       L3082
L3084:
    mov       rax,	[rbp + mc_genss.do_mov.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_mov.value],	r10
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.do_mov.regcode],	rax
    mov       rcx,	[rbp + mc_genss.do_mov.a]
    call      mc_genss.setopsize
    mov       rax,	[rbp + mc_genss.do_mov.d]
    test      rax,	rax
    jz        L3091
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	2
    jg        L3091
    lea       rcx,	[rel L5824]
    call      mc_libmcl.axerror
L3091:
L3090:
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3093
    cmp       r10,	2
    jz        L3094
    cmp       r10,	4
    jz        L3095
    jmp       L3096
L3093:
    mov       rax,	[rbp + mc_genss.do_mov.value]
    cmp       rax,	-128
    jl        L3099
    cmp       rax,	255
    jle       L3098
L3099:
    lea       rcx,	[rel L5825]
    call      mc_libmcl.axerror
L3098:
L3097:
    call      mc_genss.genrex
    mov       rax,	176
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_mov.value]
    mov       [r10],	al
    jmp       L3092
L3094:
    mov       rax,	[rbp + mc_genss.do_mov.value]
    cmp       rax,	-32768
    jl        L3102
    cmp       rax,	65535
    jle       L3101
L3102:
    lea       rcx,	[rel L5826]
    call      mc_libmcl.axerror
L3101:
L3100:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
    call      mc_genss.genrex
    mov       rax,	184
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      mc_genss.genword
    jmp       L3092
L3095:
    mov       rax,	[rbp + mc_genss.do_mov.d]
    test      rax,	rax
    jz        L3104
    call      mc_genss.genrex
    mov       rax,	184
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.do_mov.b]
    mov       rdx,	4
    call      mc_genss.genopnd
    jmp       L3103
L3104:
    mov       rax,	[rbp + mc_genss.do_mov.value]
    cmp       rax,	-2147483648
    jl        L3107
    mov       r10d,	4294967295
    mov       r10d,	r10d
    cmp       rax,	r10
    jle       L3106
L3107:
    call      msys.m$print_startcon
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      msys.m$print_i64_nf
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      msys.m$print_ptr_nf
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5827]
    call      mc_libmcl.axerror
L3106:
L3105:
;doreg32:
L3108:
    call      mc_genss.genrex
    mov       rax,	184
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      mc_genss.gendword
L3103:
    jmp       L3092
L3096:
    mov       rax,	[rbp + mc_genss.do_mov.d]
    test      rax,	rax
    jz        L3110
    mov       al,	8
    or        [mc_genss.rex],	al
    call      mc_genss.genrex
    mov       rax,	184
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.do_mov.b]
    mov       rdx,	8
    call      mc_genss.genopnd
    jmp       L3109
L3110:
    mov       rax,	[rbp + mc_genss.do_mov.value]
    cmp       rax,	0
    jl        L3112
    mov       rax,	[rbp + mc_genss.do_mov.value]
    mov       r10,	4294967295
    cmp       rax,	r10
    jg        L3112
    and       byte [mc_genss.rex],	247
    jmp       L3108
L3112:
L3111:
    mov       al,	8
    or        [mc_genss.rex],	al
    call      mc_genss.genrex
    mov       rax,	184
    add       rax,	[rbp + mc_genss.do_mov.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      mc_genss.genqword
L3109:
L3092:
    jmp       L3082
L3085:
    lea       rcx,	[rel L5828]
    call      mc_libmcl.axerror
L3082:
    jmp       L3078
L3080:
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3114
    cmp       r10,	2
    jz        L3115
    jmp       L3116
L3114:
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3118
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_mov.a]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3118:
L3117:
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L3120
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    test      r10,	r10
    jz        L3120
    lea       rcx,	[rel L5829]
    call      mc_libmcl.axerror
L3120:
L3119:
    mov       rax,	[rbp + mc_genss.do_mov.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3122
    mov       rax,	136
    jmp       L3121
L3122:
    mov       rax,	137
L3121:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_mov.b]
    mov       r8,	[rbp + mc_genss.do_mov.a]
    call      mc_genss.genrrm
    jmp       L3113
L3115:
    mov       rax,	[rbp + mc_genss.do_mov.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_mov.value],	r10
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3124
    mov       rax,	[rbp + mc_genss.do_mov.a]
    lea       rax,	[rax+8]
    mov       r10w,	1
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3124:
L3123:
    mov       rax,	[rbp + mc_genss.do_mov.d]
    test      rax,	rax
    jz        L3126
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	2
    jg        L3126
    lea       rcx,	[rel L5830]
    call      mc_libmcl.axerror
L3126:
L3125:
    mov       rcx,	[rbp + mc_genss.do_mov.a]
    call      mc_genss.setopsize
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3128
    mov       rax,	198
    jmp       L3127
L3128:
    mov       rax,	199
L3127:
    mov       [rbp + mc_genss.do_mov.opc],	rax
    mov       rax,	[rbp + mc_genss.do_mov.d]
    test      rax,	rax
    jnz       L3130
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    mov       rdx,	r10
    call      mc_genss.checkimmrange
L3130:
L3129:
    mov       rcx,	[rbp + mc_genss.do_mov.opc]
    xor       edx,	edx
    mov       r8,	[rbp + mc_genss.do_mov.a]
    call      mc_genss.genxrm
    mov       rax,	[rbp + mc_genss.do_mov.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_mov.value],	r10
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       [rbp + mc_genss.do_mov.dispsize],	r10
    mov       rax,	[rbp + mc_genss.do_mov.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3132
    cmp       r10,	2
    jz        L3133
    cmp       r10,	4
    jz        L3134
    cmp       r10,	8
    jz        L3134
    jmp       L3135
L3132:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_mov.value]
    mov       [r10],	al
    jmp       L3131
L3133:
    mov       rcx,	[rbp + mc_genss.do_mov.value]
    call      mc_genss.genword
    jmp       L3131
L3134:
    mov       rcx,	[rbp + mc_genss.do_mov.b]
    mov       rdx,	4
    call      mc_genss.genopnd
    mov       rax,	4
    mov       [rbp + mc_genss.do_mov.dispsize],	rax
L3135:
L3131:
    mov       rcx,	[rbp + mc_genss.do_mov.dispsize]
    call      mc_genss.fixrip
    jmp       L3113
L3116:
    lea       rcx,	[rel L5831]
    call      mc_libmcl.axerror
L3113:
    jmp       L3078
L3081:
    lea       rcx,	[rel L5832]
    call      mc_libmcl.axerror
L3078:
L3077:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc do_push
mc_genss.do_push:
;>>
    %define mc_genss.do_push.a 16
    %define mc_genss.do_push.code -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.do_push.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3138
    mov       rax,	[rbp + mc_genss.do_push.a]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3138:
L3137:
    mov       rax,	[rbp + mc_genss.do_push.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3140
    cmp       r10,	2
    jz        L3141
    cmp       r10,	3
    jz        L3142
    jmp       L3143
L3140:
    mov       rax,	[rbp + mc_genss.do_push.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jz        L3145
    lea       rcx,	[rel L5833]
    call      mc_libmcl.axerror
L3145:
L3144:
    mov       rax,	[rbp + mc_genss.do_push.a]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.do_push.code],	rax
    and       byte [mc_genss.rex],	247
    call      mc_genss.genrex
    mov       rax,	80
    add       rax,	[rbp + mc_genss.do_push.code]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    jmp       L3139
L3141:
    mov       rcx,	[rbp + mc_genss.do_push.a]
    xor       edx,	edx
    call      mc_genss.getdef
    test      rax,	rax
    jz        L3147
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	104
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_push.a]
    mov       rdx,	4
    call      mc_genss.genopnd
    jmp       L3146
L3147:
    mov       rax,	[rbp + mc_genss.do_push.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.isbytesized
    test      rax,	rax
    jz        L3148
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	106
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.do_push.a]
    mov       r10,	[rax]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r11,	[rax]
    inc       qword [rax]
    mov       [r11],	r10b
    jmp       L3146
L3148:
    mov       rax,	[rbp + mc_genss.do_push.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.isdwordsized
    test      rax,	rax
    jz        L3149
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	104
    mov       [r10],	al
    mov       rax,	[rbp + mc_genss.do_push.a]
    mov       r10,	[rax]
    mov       rcx,	r10
    call      mc_genss.gendword
    jmp       L3146
L3149:
    lea       rcx,	[rel L5834]
    call      mc_libmcl.axerror
L3146:
    jmp       L3139
L3142:
    mov       rax,	[rbp + mc_genss.do_push.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jz        L3151
    lea       rcx,	[rel L5835]
    call      mc_libmcl.axerror
L3151:
L3150:
    mov       rcx,	255
    mov       rdx,	6
    mov       r8,	[rbp + mc_genss.do_push.a]
    call      mc_genss.genxrm
    jmp       L3139
L3143:
    lea       rcx,	[rel L5836]
    call      mc_libmcl.axerror
L3139:
L3136:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_pop
mc_genss.do_pop:
;>>
    %define mc_genss.do_pop.a 16
    %define mc_genss.do_pop.code -8
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
;---------------
    mov       rax,	[rbp + mc_genss.do_pop.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3154
    mov       rax,	[rbp + mc_genss.do_pop.a]
    lea       rax,	[rax+8]
    mov       r10w,	8
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3154:
L3153:
    mov       rax,	[rbp + mc_genss.do_pop.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3156
    cmp       r10,	3
    jz        L3157
    jmp       L3158
L3156:
    mov       rax,	[rbp + mc_genss.do_pop.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jz        L3160
    lea       rcx,	[rel L5837]
    call      mc_libmcl.axerror
L3160:
L3159:
    mov       rax,	[rbp + mc_genss.do_pop.a]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.do_pop.code],	rax
    call      mc_genss.genrex
    mov       rax,	88
    add       rax,	[rbp + mc_genss.do_pop.code]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    jmp       L3155
L3157:
    mov       rax,	[rbp + mc_genss.do_pop.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jz        L3162
    lea       rcx,	[rel L5838]
    call      mc_libmcl.axerror
L3162:
L3161:
    mov       rcx,	143
    xor       edx,	edx
    mov       r8,	[rbp + mc_genss.do_pop.a]
    call      mc_genss.genxrm
    jmp       L3155
L3158:
    lea       rcx,	[rel L5839]
    call      mc_libmcl.axerror
L3155:
L3152:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_inc
mc_genss.do_inc:
;>>
    %define mc_genss.do_inc.a 16
    %define mc_genss.do_inc.code 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_inc.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3165
    cmp       r10,	3
    jz        L3165
    jmp       L3166
L3165:
    mov       rax,	[rbp + mc_genss.do_inc.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3168
    mov       rax,	254
    jmp       L3167
L3168:
    mov       rax,	255
L3167:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_inc.code]
    mov       r8,	[rbp + mc_genss.do_inc.a]
    call      mc_genss.genxrm
    jmp       L3164
L3166:
    lea       rcx,	[rel L5840]
    call      mc_libmcl.axerror
L3164:
L3163:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_neg
mc_genss.do_neg:
;>>
    %define mc_genss.do_neg.a 16
    %define mc_genss.do_neg.code 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_neg.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3171
    cmp       r10,	3
    jz        L3171
    jmp       L3172
L3171:
    mov       rax,	[rbp + mc_genss.do_neg.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3174
    mov       rax,	246
    jmp       L3173
L3174:
    mov       rax,	247
L3173:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_neg.code]
    mov       r8,	[rbp + mc_genss.do_neg.a]
    call      mc_genss.genxrm
    jmp       L3170
L3172:
    lea       rcx,	[rel L5841]
    call      mc_libmcl.axerror
L3170:
L3169:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_lea
mc_genss.do_lea:
;>>
    %define mc_genss.do_lea.a 16
    %define mc_genss.do_lea.b 24
    %define mc_genss.do_lea.regcode -8
    %define mc_genss.do_lea.am -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_lea.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3178
    mov       rax,	[rbp + mc_genss.do_lea.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3177
L3178:
    lea       rcx,	[rel L5842]
    call      mc_libmcl.axerror
L3177:
L3176:
    mov       rax,	[rbp + mc_genss.do_lea.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jge       L3180
    lea       rcx,	[rel L5843]
    call      mc_libmcl.axerror
L3180:
L3179:
    mov       rcx,	141
    mov       rdx,	[rbp + mc_genss.do_lea.a]
    mov       r8,	[rbp + mc_genss.do_lea.b]
    call      mc_genss.genrrm
L3175:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_movsx
mc_genss.do_movsx:
;>>
    %define mc_genss.do_movsx.a 16
    %define mc_genss.do_movsx.b 24
    %define mc_genss.do_movsx.opc 32
    %define mc_genss.do_movsx.am -8
    %define mc_genss.do_movsx.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_movsx.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3183
    lea       rcx,	[rel L5844]
    call      mc_libmcl.axerror
L3183:
L3182:
    mov       rax,	[rbp + mc_genss.do_movsx.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jnz       L3185
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jnz       L3185
    mov       rax,	[rbp + mc_genss.do_movsx.opc]
    cmp       rax,	190
    jnz       L3187
    mov       rcx,	[rbp + mc_genss.do_movsx.a]
    mov       rdx,	[rbp + mc_genss.do_movsx.b]
    call      mc_genss.do_movsxd
    jmp       L3186
L3187:
    mov       rax,	[rbp + mc_genss.do_movsx.a]
    movzx     r10,	byte [rax+10]
    lea       rax,	[mc_decls.regtable]
    shl       r10,	6
    lea       rax,	[rax + r10-64]
    mov       r10,	[rax+24]
    mov       [rbp + mc_genss.do_movsx.a],	r10
    mov       rcx,	[rbp + mc_genss.do_movsx.a]
    mov       rdx,	[rbp + mc_genss.do_movsx.b]
    call      mc_genss.do_mov
L3186:
    jmp       L3181
L3185:
L3184:
    mov       rax,	[rbp + mc_genss.do_movsx.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3190
    mov       rax,	[rbp + mc_genss.do_movsx.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    ja        L3189
L3190:
    lea       rcx,	[rel L5845]
    call      mc_libmcl.axerror
L3189:
L3188:
    mov       rax,	[rbp + mc_genss.do_movsx.opc]
    cmp       rax,	182
    jnz       L3192
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jnz       L3192
    lea       rcx,	[rel L5846]
    call      mc_libmcl.axerror
L3192:
L3191:
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3194
    cmp       r10,	3
    jz        L3195
    jmp       L3196
L3194:
    jmp       L3193
L3195:
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3198
    lea       rcx,	[rel L5847]
    call      mc_libmcl.axerror
L3198:
L3197:
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jnz       L3200
    lea       rcx,	[rel L5848]
    call      mc_libmcl.axerror
L3200:
L3199:
    jmp       L3193
L3196:
    lea       rcx,	[rel L5849]
    call      mc_libmcl.axerror
L3193:
    mov       rax,	[rbp + mc_genss.do_movsx.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3202
    mov       rax,	[rbp + mc_genss.do_movsx.opc]
    jmp       L3201
L3202:
    mov       rax,	[rbp + mc_genss.do_movsx.opc]
    add       rax,	1
L3201:
    mov       r10,	3840
    add       r10,	rax
    mov       rcx,	r10
    mov       rdx,	[rbp + mc_genss.do_movsx.a]
    mov       r8,	[rbp + mc_genss.do_movsx.b]
    call      mc_genss.genrrm
L3181:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_exch
mc_genss.do_exch:
;>>
    %define mc_genss.do_exch.a 16
    %define mc_genss.do_exch.b 24
    %define mc_genss.do_exch.regcode -8
    %define mc_genss.do_exch.am -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3205
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3205
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	byte [rax+10]
    cmp       r10,	1
    jz        L3206
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	byte [rax+10]
    cmp       r10,	1
    jnz       L3205
L3206:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3205
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	byte [rax+10]
    cmp       r10,	1
    jz        L3208
    mov       rax,	[rbp + mc_genss.do_exch.a]
    mov       r10,	[rbp + mc_genss.do_exch.b]
    mov       [rbp + mc_genss.do_exch.b],	rax
    mov       [rbp + mc_genss.do_exch.a],	r10
L3208:
L3207:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L3210
    lea       rcx,	[rel L5850]
    call      mc_libmcl.axerror
L3210:
L3209:
    mov       rcx,	[rbp + mc_genss.do_exch.a]
    call      mc_genss.setopsize
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	byte [rax+10]
    mov       rcx,	r10
    mov       rdx,	1
    xor       r8d,	r8d
    call      mc_genss.getregcode
    mov       [rbp + mc_genss.do_exch.regcode],	rax
    call      mc_genss.genrex
    mov       rax,	144
    add       rax,	[rbp + mc_genss.do_exch.regcode]
    mov       r10,	[mc_genss.currdata]
    lea       r10,	[r10+8]
    mov       r11,	[r10]
    inc       qword [r10]
    mov       [r11],	al
    jmp       L3203
L3205:
L3204:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L3212
    mov       rax,	[rbp + mc_genss.do_exch.a]
    mov       r10,	[rbp + mc_genss.do_exch.b]
    mov       [rbp + mc_genss.do_exch.b],	rax
    mov       [rbp + mc_genss.do_exch.a],	r10
L3212:
L3211:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3215
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3214
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3214
L3215:
    lea       rcx,	[rel L5851]
    call      mc_libmcl.axerror
L3214:
L3213:
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3217
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L3217
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_exch.b]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3217:
L3216:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_exch.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L3219
    lea       rcx,	[rel L5852]
    call      mc_libmcl.axerror
L3219:
L3218:
    mov       rax,	[rbp + mc_genss.do_exch.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3221
    mov       rax,	134
    jmp       L3220
L3221:
    mov       rax,	135
L3220:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_exch.a]
    mov       r8,	[rbp + mc_genss.do_exch.b]
    call      mc_genss.genrrm
L3203:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_movsxd
mc_genss.do_movsxd:
;>>
    %define mc_genss.do_movsxd.a 16
    %define mc_genss.do_movsxd.b 24
    %define mc_genss.do_movsxd.regcode -8
    %define mc_genss.do_movsxd.am -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L3224
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3224
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    lea       rax,	[rax+8]
    mov       r10w,	4
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3224:
L3223:
    mov       rax,	[rbp + mc_genss.do_movsxd.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	8
    jnz       L3227
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	4
    jle       L3226
L3227:
    lea       rcx,	[rel L5853]
    call      mc_libmcl.axerror
L3226:
L3225:
    mov       rax,	[rbp + mc_genss.do_movsxd.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3230
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3229
    mov       rax,	[rbp + mc_genss.do_movsxd.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3229
L3230:
    lea       rcx,	[rel L5854]
    call      mc_libmcl.axerror
L3229:
L3228:
    mov       rcx,	99
    mov       rdx,	[rbp + mc_genss.do_movsxd.a]
    mov       r8,	[rbp + mc_genss.do_movsxd.b]
    call      mc_genss.genrrm
L3222:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_imul2
mc_genss.do_imul2:
;>>
    %define mc_genss.do_imul2.a 16
    %define mc_genss.do_imul2.b 24
    %define mc_genss.do_imul2.regcode -8
    %define mc_genss.do_imul2.am -16
    %define mc_genss.do_imul2.opc -24
    %define mc_genss.do_imul2.dispsize -32
    %define mc_genss.do_imul2.value -40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	80
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_imul2.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3233
    lea       rcx,	[rel L5855]
    call      mc_libmcl.axerror
L3233:
L3232:
    mov       rax,	[rbp + mc_genss.do_imul2.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3235
    mov       rax,	[rbp + mc_genss.do_imul2.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_imul2.b]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3235:
L3234:
    mov       rax,	[rbp + mc_genss.do_imul2.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3237
    lea       rcx,	[rel L5856]
    call      mc_libmcl.axerror
L3237:
L3236:
    mov       rax,	[rbp + mc_genss.do_imul2.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3239
    cmp       r10,	3
    jz        L3239
    cmp       r10,	2
    jz        L3240
    jmp       L3241
L3239:
    mov       rax,	[rbp + mc_genss.do_imul2.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_imul2.b]
    movzx     r11,	word [rax+8]
    and       r11,	31
    cmp       r10,	r11
    jz        L3243
    lea       rcx,	[rel L5857]
    call      mc_libmcl.axerror
L3243:
L3242:
    mov       rcx,	4015
    mov       rdx,	[rbp + mc_genss.do_imul2.a]
    mov       r8,	[rbp + mc_genss.do_imul2.b]
    call      mc_genss.genrrm
    jmp       L3238
L3240:
    mov       rcx,	[rbp + mc_genss.do_imul2.b]
    xor       edx,	edx
    call      mc_genss.getdef
    test      rax,	rax
    jz        L3245
    lea       rcx,	[rel L5858]
    call      mc_libmcl.axerror
L3245:
L3244:
    mov       rax,	[rbp + mc_genss.do_imul2.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_imul2.value],	r10
    mov       rax,	[rbp + mc_genss.do_imul2.value]
    cmp       rax,	-128
    jl        L3247
    cmp       rax,	127
    jg        L3247
    mov       rax,	107
    mov       [rbp + mc_genss.do_imul2.opc],	rax
    jmp       L3246
L3247:
    mov       rax,	105
    mov       [rbp + mc_genss.do_imul2.opc],	rax
L3246:
    mov       rcx,	[rbp + mc_genss.do_imul2.opc]
    mov       rdx,	[rbp + mc_genss.do_imul2.a]
    mov       r8,	[rbp + mc_genss.do_imul2.a]
    call      mc_genss.genrrm
    mov       rax,	[rbp + mc_genss.do_imul2.value]
    cmp       rax,	-128
    jl        L3249
    cmp       rax,	127
    jg        L3249
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_imul2.value]
    mov       [r10],	al
    mov       rax,	1
    mov       [rbp + mc_genss.do_imul2.dispsize],	rax
    jmp       L3248
L3249:
    mov       rax,	[rbp + mc_genss.do_imul2.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	2
    jnz       L3250
    mov       rcx,	[rbp + mc_genss.do_imul2.value]
    call      mc_genss.genword
    mov       rax,	2
    mov       [rbp + mc_genss.do_imul2.dispsize],	rax
    jmp       L3248
L3250:
    mov       rcx,	[rbp + mc_genss.do_imul2.value]
    call      mc_genss.gendword
    mov       rax,	4
    mov       [rbp + mc_genss.do_imul2.dispsize],	rax
L3248:
    mov       rcx,	[rbp + mc_genss.do_imul2.dispsize]
    call      mc_genss.fixrip
    jmp       L3238
L3241:
    lea       rcx,	[rel L5859]
    call      mc_libmcl.axerror
L3238:
L3231:
;---------------
    add       rsp,	80
    pop       rbp
    ret       
;End 
;Proc do_shift
mc_genss.do_shift:
;>>
    %define mc_genss.do_shift.a 16
    %define mc_genss.do_shift.b 24
    %define mc_genss.do_shift.code 32
    %define mc_genss.do_shift.w -8
    %define mc_genss.do_shift.opc -16
    %define mc_genss.do_shift.needdisp -24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_shift.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3253
    mov       rax,	[rbp + mc_genss.do_shift.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3253
    lea       rcx,	[rel L5860]
    call      mc_libmcl.axerror
L3253:
L3252:
    mov       rcx,	[rbp + mc_genss.do_shift.b]
    xor       edx,	edx
    call      mc_genss.getdef
    test      rax,	rax
    jz        L3255
    lea       rcx,	[rel L5861]
    call      mc_libmcl.axerror
L3255:
L3254:
    mov       rax,	[rbp + mc_genss.do_shift.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3257
    xor       eax,	eax
    jmp       L3256
L3257:
    mov       rax,	1
L3256:
    mov       [rbp + mc_genss.do_shift.w],	rax
    xor       eax,	eax
    mov       [rbp + mc_genss.do_shift.needdisp],	rax
    mov       rax,	[rbp + mc_genss.do_shift.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jz        L3259
    cmp       r10,	1
    jz        L3260
    jmp       L3261
L3259:
    mov       rax,	[rbp + mc_genss.do_shift.b]
    mov       r10,	[rax]
    cmp       r10,	1
    jnz       L3263
    mov       rax,	208
    add       rax,	[rbp + mc_genss.do_shift.w]
    mov       [rbp + mc_genss.do_shift.opc],	rax
    jmp       L3262
L3263:
    mov       rax,	192
    add       rax,	[rbp + mc_genss.do_shift.w]
    mov       [rbp + mc_genss.do_shift.opc],	rax
    mov       rax,	1
    mov       [rbp + mc_genss.do_shift.needdisp],	rax
L3262:
    jmp       L3258
L3260:
    mov       rax,	[rbp + mc_genss.do_shift.b]
    movzx     r10,	byte [rax+10]
    cmp       r10,	11
    jnz       L3266
    mov       rax,	[rbp + mc_genss.do_shift.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3265
L3266:
    lea       rcx,	[rel L5862]
    call      mc_libmcl.axerror
L3265:
L3264:
    mov       rax,	210
    add       rax,	[rbp + mc_genss.do_shift.w]
    mov       [rbp + mc_genss.do_shift.opc],	rax
    jmp       L3258
L3261:
    lea       rcx,	[rel L5863]
    call      mc_libmcl.axerror
L3258:
    mov       rcx,	[rbp + mc_genss.do_shift.opc]
    mov       rdx,	[rbp + mc_genss.do_shift.code]
    mov       r8,	[rbp + mc_genss.do_shift.a]
    call      mc_genss.genxrm
    mov       rax,	[rbp + mc_genss.do_shift.needdisp]
    test      rax,	rax
    jz        L3268
    mov       rax,	[rbp + mc_genss.do_shift.b]
    mov       r10,	[rax]
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r11,	[rax]
    inc       qword [rax]
    mov       [r11],	r10b
    mov       rcx,	1
    call      mc_genss.fixrip
L3268:
L3267:
L3251:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_test
mc_genss.do_test:
;>>
    %define mc_genss.do_test.a 16
    %define mc_genss.do_test.b 24
    %define mc_genss.do_test.value -8
    %define mc_genss.do_test.opc -16
    %define mc_genss.do_test.am -24
    %define mc_genss.do_test.regcode -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3271
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	byte [rax+10]
    cmp       r10,	1
    jnz       L3271
    mov       rax,	[rbp + mc_genss.do_test.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jnz       L3271
    mov       rax,	[rbp + mc_genss.do_test.b]
    mov       r10,	[rax]
    mov       [rbp + mc_genss.do_test.value],	r10
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3273
    cmp       r10,	2
    jz        L3274
    cmp       r10,	4
    jz        L3275
    jmp       L3276
L3273:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	168
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_test.value]
    mov       [r10],	al
    jmp       L3272
L3274:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	169
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_test.value]
    call      mc_genss.genword
    jmp       L3272
L3275:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	169
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_test.value]
    call      mc_genss.gendword
    jmp       L3272
L3276:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	72
    mov       [r10],	al
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	169
    mov       [r10],	al
    mov       rcx,	[rbp + mc_genss.do_test.value]
    call      mc_genss.gendword
L3272:
    jmp       L3270
L3271:
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3278
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L3277
L3278:
    mov       rax,	[rbp + mc_genss.do_test.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	2
    jnz       L3277
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3280
    mov       rax,	246
    jmp       L3279
L3280:
    mov       rax,	247
L3279:
    mov       rcx,	rax
    xor       edx,	edx
    mov       r8,	[rbp + mc_genss.do_test.a]
    call      mc_genss.genxrm
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jz        L3282
    cmp       r10,	2
    jz        L3283
    jmp       L3284
L3282:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_test.value]
    mov       [r10],	al
    jmp       L3281
L3283:
    mov       rcx,	[rbp + mc_genss.do_test.value]
    call      mc_genss.genword
    jmp       L3281
L3284:
    mov       rcx,	[rbp + mc_genss.do_test.value]
    call      mc_genss.gendword
L3281:
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	r10
    call      mc_genss.fixrip
    jmp       L3270
L3277:
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3286
    cmp       r10,	3
    jnz       L3285
L3286:
    mov       rax,	[rbp + mc_genss.do_test.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3285
;domemreg:
L3287:
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jnz       L3289
    mov       rax,	132
    jmp       L3288
L3289:
    mov       rax,	133
L3288:
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_test.a]
    mov       r8,	[rbp + mc_genss.do_test.b]
    call      mc_genss.genrrm
    jmp       L3270
L3285:
    mov       rax,	[rbp + mc_genss.do_test.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3290
    mov       rax,	[rbp + mc_genss.do_test.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jnz       L3290
    mov       rax,	[rbp + mc_genss.do_test.a]
    mov       r10,	[rbp + mc_genss.do_test.b]
    mov       [rbp + mc_genss.do_test.b],	rax
    mov       [rbp + mc_genss.do_test.a],	r10
    jmp       L3287
L3290:
    lea       rcx,	[rel L5864]
    call      mc_libmcl.axerror
L3270:
L3269:
;---------------
    add       rsp,	64
    pop       rbp
    ret       
;End 
;Proc do_setcc
mc_genss.do_setcc:
;>>
    %define mc_genss.do_setcc.cond 16
    %define mc_genss.do_setcc.b 24
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
;---------------
    mov       rax,	[rbp + mc_genss.do_setcc.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3295
    cmp       r10,	3
    jnz       L3294
L3295:
    mov       rax,	[rbp + mc_genss.do_setcc.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	1
    jle       L3293
L3294:
    lea       rcx,	[rel L5865]
    call      mc_libmcl.axerror
L3293:
L3292:
    mov       rax,	3984
    add       rax,	[rbp + mc_genss.do_setcc.cond]
    mov       rcx,	rax
    xor       edx,	edx
    mov       r8,	[rbp + mc_genss.do_setcc.b]
    call      mc_genss.genxrm
L3291:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc checksize
mc_genss.checksize:
;>>
    %define mc_genss.checksize.a 16
    %define mc_genss.checksize.size1 24
    %define mc_genss.checksize.size2 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.checksize.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3298
    lea       rcx,	[rel L5866]
    call      mc_libmcl.axerror
L3298:
L3297:
    mov       rax,	[rbp + mc_genss.checksize.size1]
    test      rax,	rax
    jz        L3300
    mov       rax,	[rbp + mc_genss.checksize.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	[rbp + mc_genss.checksize.size1]
    jz        L3300
    cmp       r10,	[rbp + mc_genss.checksize.size2]
    jz        L3300
    call      msys.m$print_startcon
    lea       rcx,	[rel L5867]
    call      msys.m$print_str_nf
    mov       rax,	[rbp + mc_genss.checksize.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rcx,	r10
    xor       edx,	edx
    call      msys.m$print_u64
    call      msys.m$print_newline
    call      msys.m$print_end
    lea       rcx,	[rel L5868]
    call      mc_libmcl.axerror
L3300:
L3299:
L3296:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_arithxmm
mc_genss.do_arithxmm:
;>>
    %define mc_genss.do_arithxmm.a 16
    %define mc_genss.do_arithxmm.b 24
    %define mc_genss.do_arithxmm.prefix 32
    %define mc_genss.do_arithxmm.opc 40
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mc_genss.do_arithxmm.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jnz       L3304
    mov       rax,	[rbp + mc_genss.do_arithxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jz        L3303
    mov       rax,	[rbp + mc_genss.do_arithxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3303
L3304:
    lea       rcx,	[rel L5869]
    call      mc_libmcl.axerror
L3303:
L3302:
    mov       rax,	[rbp + mc_genss.do_arithxmm.prefix]
    test      rax,	rax
    jz        L3306
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_arithxmm.prefix]
    mov       [r10],	al
L3306:
L3305:
    mov       rax,	3840
    add       rax,	[rbp + mc_genss.do_arithxmm.opc]
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_arithxmm.a]
    mov       r8,	[rbp + mc_genss.do_arithxmm.b]
    call      mc_genss.genrrm
L3301:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_logicxmm
mc_genss.do_logicxmm:
;>>
    %define mc_genss.do_logicxmm.a 16
    %define mc_genss.do_logicxmm.b 24
    %define mc_genss.do_logicxmm.opc 32
    %define mc_genss.do_logicxmm.size 40
    %define mc_genss.do_logicxmm.am -8
    %define mc_genss.do_logicxmm.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mc_genss.do_logicxmm.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jnz       L3310
    mov       rax,	[rbp + mc_genss.do_logicxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jz        L3309
    mov       rax,	[rbp + mc_genss.do_logicxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3309
L3310:
    lea       rcx,	[rel L5870]
    call      mc_libmcl.axerror
L3309:
L3308:
    mov       rax,	[rbp + mc_genss.do_logicxmm.size]
    cmp       rax,	8
    jnz       L3312
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	102
    mov       [r10],	al
L3312:
L3311:
    mov       rax,	3840
    add       rax,	[rbp + mc_genss.do_logicxmm.opc]
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_logicxmm.a]
    mov       r8,	[rbp + mc_genss.do_logicxmm.b]
    call      mc_genss.genrrm
L3307:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_convertfloat
mc_genss.do_convertfloat:
;>>
    %define mc_genss.do_convertfloat.a 16
    %define mc_genss.do_convertfloat.b 24
    %define mc_genss.do_convertfloat.prefix 32
    %define mc_genss.do_convertfloat.am -8
    %define mc_genss.do_convertfloat.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_convertfloat.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jnz       L3316
    mov       rax,	[rbp + mc_genss.do_convertfloat.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jz        L3315
    mov       rax,	[rbp + mc_genss.do_convertfloat.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3315
L3316:
    lea       rcx,	[rel L5871]
    call      mc_libmcl.axerror
L3315:
L3314:
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_convertfloat.prefix]
    mov       [r10],	al
    mov       al,	1
    mov       [mc_genss.nowmask],	al
    mov       rcx,	3930
    mov       rdx,	[rbp + mc_genss.do_convertfloat.a]
    mov       r8,	[rbp + mc_genss.do_convertfloat.b]
    call      mc_genss.genrrm
L3313:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_fix
mc_genss.do_fix:
;>>
    %define mc_genss.do_fix.a 16
    %define mc_genss.do_fix.b 24
    %define mc_genss.do_fix.prefix 32
    %define mc_genss.do_fix.opc 40
    %define mc_genss.do_fix.am -8
    %define mc_genss.do_fix.regcode -16
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	48
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
    mov       [rbp+40],	r9
;---------------
    mov       rax,	[rbp + mc_genss.do_fix.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jnz       L3320
    mov       rax,	[rbp + mc_genss.do_fix.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jz        L3319
    mov       rax,	[rbp + mc_genss.do_fix.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3319
L3320:
    lea       rcx,	[rel L5872]
    call      mc_libmcl.axerror
L3319:
L3318:
    mov       rcx,	[rbp + mc_genss.do_fix.a]
    mov       rdx,	4
    mov       r8,	8
    call      mc_genss.checksize
    mov       rax,	[rbp + mc_genss.do_fix.prefix]
    cmp       rax,	243
    jnz       L3322
    mov       rax,	4
    jmp       L3321
L3322:
    mov       rax,	8
L3321:
    mov       r10,	[rbp + mc_genss.do_fix.b]
    lea       r10,	[r10+8]
    mov       di,	[r10]
    mov       r11,	-32
    and       di,	r11w
    or        di,	ax
    mov       [r10],	di
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_fix.prefix]
    mov       [r10],	al
    mov       rax,	3840
    add       rax,	[rbp + mc_genss.do_fix.opc]
    mov       rcx,	rax
    mov       rdx,	[rbp + mc_genss.do_fix.a]
    mov       r8,	[rbp + mc_genss.do_fix.b]
    call      mc_genss.genrrm
L3317:
;---------------
    add       rsp,	48
    pop       rbp
    ret       
;End 
;Proc do_float
mc_genss.do_float:
;>>
    %define mc_genss.do_float.a 16
    %define mc_genss.do_float.b 24
    %define mc_genss.do_float.prefix 32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	32
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_float.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jnz       L3326
    mov       rax,	[rbp + mc_genss.do_float.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3325
    mov       rax,	[rbp + mc_genss.do_float.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	3
    jz        L3325
L3326:
    lea       rcx,	[rel L5873]
    call      mc_libmcl.axerror
L3325:
L3324:
    mov       rcx,	[rbp + mc_genss.do_float.b]
    mov       rdx,	4
    mov       r8,	8
    call      mc_genss.checksize
    mov       rax,	[rbp + mc_genss.do_float.prefix]
    cmp       rax,	243
    jnz       L3328
    mov       rax,	4
    jmp       L3327
L3328:
    mov       rax,	8
L3327:
    mov       r10,	[rbp + mc_genss.do_float.a]
    lea       r10,	[r10+8]
    mov       di,	[r10]
    mov       r11,	-32
    and       di,	r11w
    or        di,	ax
    mov       [r10],	di
    mov       rax,	[mc_genss.currdata]
    lea       rax,	[rax+8]
    mov       r10,	[rax]
    inc       qword [rax]
    mov       al,	[rbp + mc_genss.do_float.prefix]
    mov       [r10],	al
    mov       al,	1
    mov       [mc_genss.usesizeb],	al
    mov       rcx,	3882
    mov       rdx,	[rbp + mc_genss.do_float.a]
    mov       r8,	[rbp + mc_genss.do_float.b]
    call      mc_genss.genrrm
L3323:
;---------------
    add       rsp,	32
    pop       rbp
    ret       
;End 
;Proc do_movxmm
mc_genss.do_movxmm:
;>>
    %define mc_genss.do_movxmm.a 16
    %define mc_genss.do_movxmm.b 24
    %define mc_genss.do_movxmm.size 32
    %define mc_genss.do_movxmm.am -8
    %define mc_genss.do_movxmm.regcode -16
    %define mc_genss.do_movxmm.regcode1 -24
    %define mc_genss.do_movxmm.regcode2 -32
    push      rbp
    mov       rbp,	rsp
    sub       rsp,	64
    mov       [rbp+16],	rcx
    mov       [rbp+24],	rdx
    mov       [rbp+32],	r8
;---------------
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3331
    cmp       r10,	5
    jz        L3332
    cmp       r10,	3
    jz        L3333
    jmp       L3334
L3331:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	5
    jz        L3336
    jmp       L3337
L3336:
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	[rbp + mc_genss.do_movxmm.size]
    jz        L3339
    lea       rcx,	[rel L5874]
    call      mc_libmcl.axerror
L3339:
L3338:
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    mov       al,	1
    mov       [mc_genss.sizeoverride],	al
    mov       rcx,	3966
    mov       rdx,	[rbp + mc_genss.do_movxmm.b]
    mov       r8,	[rbp + mc_genss.do_movxmm.a]
    call      mc_genss.genrrm
    jmp       L3335
L3337:
    lea       rcx,	[rel L5875]
    call      mc_libmcl.axerror
L3335:
    jmp       L3330
L3332:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    shr       r10,	9
    and       r10,	7
    cmp       r10,	1
    jz        L3341
    cmp       r10,	5
    jz        L3342
    cmp       r10,	3
    jz        L3343
    jmp       L3344
L3341:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	[rbp + mc_genss.do_movxmm.size]
    jz        L3346
    lea       rcx,	[rel L5876]
    call      mc_libmcl.axerror
L3346:
L3345:
    mov       al,	1
    mov       [mc_genss.sizeoverride],	al
    mov       rcx,	3950
    mov       rdx,	[rbp + mc_genss.do_movxmm.a]
    mov       r8,	[rbp + mc_genss.do_movxmm.b]
    call      mc_genss.genrrm
    jmp       L3340
L3342:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
    mov       al,	1
    mov       [mc_genss.f3override],	al
    mov       rcx,	3966
    mov       rdx,	[rbp + mc_genss.do_movxmm.a]
    mov       r8,	[rbp + mc_genss.do_movxmm.b]
    call      mc_genss.genrrm
    jmp       L3340
L3343:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	0
    jnz       L3348
    mov       rax,	[rbp + mc_genss.do_movxmm.a]
    movzx     r10,	word [rax+8]
    and       r10,	31
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    lea       rax,	[rax+8]
    mov       di,	[rax]
    mov       r11,	-32
    and       di,	r11w
    or        di,	r10w
    mov       [rax],	di
L3348:
L3347:
    mov       rax,	[rbp + mc_genss.do_movxmm.b]
    movzx     r10,	word [rax+8]
    and       r10,	31
    cmp       r10,	[rbp + mc_genss.do_movxmm.size]
    jz        L3350
    lea       rcx,	[rel L5877]
    call      mc_libmcl.axerror
L3350:
L3349:
    mov       rax,	[rbp + mc_genss.do_movxmm.size]
    cmp       rax,	4
    jnz       L3352
    mov       al,	1
    mov       [mc_genss.sizeoverride],	al
    mov       al,	1
    mov       [mc_genss.nowmask],	al