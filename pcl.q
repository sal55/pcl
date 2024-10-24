global  enumdata typenames =

	(tpvoid=0,    "void"),

	(tpr32,       "r32"),
	(tpr64,       "r64"),

	(tpu8,        "u8"),
	(tpu16,       "u16"),
	(tpu32,       "u32"),
	(tpu64,       "u64"),

	(tpi8,        "i8"),
	(tpi16,       "i16"),
	(tpi32,       "i32"),
	(tpi64,       "i64"),

	(tpblock,     "block"),
	(tpvector,    "vector"),
end


global enumdata ccnames =
	(no_cc=0,	"xx"),
	(eq_cc,		"eq"),
	(ne_cc,		"ne"),
	(lt_cc,		"lt"),
	(le_cc,		"le"),
	(ge_cc,		"ge"),
	(gt_cc,		"gt"),
end

global enumdata idnames =
	(Null_id=0,		"--"),			!Not set (used for overall program name)
	(import_id,		"Import"),		!Imported symbol (proc or static)
	(proc_id,		"Proc"),		!Local proc
	(static_id,		"Static"),		!Local static
	(local_id,		"Local"),		!Function local var
	(param_id,		"Param"),		!Function param
	(label_id,		"Label"),		!Used in assembly
	(export_id,		"Export"),		!Used by makesymbol, is converted to proc_id/.exported
end

global enumdata pclnames =

	(knop=0,       $),

	(kload,        $),
	(kiload,       $),
	(kiloadx,      $),

	(kstore,       $),
	(kistore,      $),
	(kistorex,     $),

	(kdupl,        $),
	(kdouble,      $),
	(kswapstk,     $),
	(kunload,      $),

	(kopnd,        $),
	(ktype,        $),

	(kloadbit,     $),
	(kloadbf,      $),
	(kstorebit,    $),
	(kstorebf,     $),

	(kcallp,       $),
	(kicallp,      $),
	(kretproc,     $),
	(kcallf,       $),
	(kicallf,      $),
	(kretfn,       $),

	(kjump,        $),
	(kijump,       $),
	(kjumpcc,      $),
	(kjumpt,       $),
	(kjumpf,       $),
	(kjumpret,     $),
	(kjumpretm,    $),

	(ksetcc,       $),

	(kstop,        $),

	(kto,          $),
	(kforup,       $),
	(kfordown,     $),

	(kiswap,       $),

	(kswitch,      $),
	(kswitchu,     $),
	(kswlabel,     $),
	(kendsw,       $),

	(kclear,       $),

	(kassem,       $),

	(kadd,         $),

	(ksub,         $),
	(kmul,         $),
	(kdiv,         $),
	(kidiv,        $),
	(kirem,        $),
	(kidivrem,     $),
	(kbitand,      $),
	(kbitor,       $),
	(kbitxor,      $),
	(kshl,         $),
	(kshr,         $),
	(kmin,         $),
	(kmax,         $),
	(kaddpx,       $),
	(ksubpx,       $),
	(ksubp,        $),

	(kneg,         $),
	(kabs,         $),
	(kbitnot,      $),
	(knot,         $),
	(ktoboolt,     $),
	(ktoboolf,     $),
	(ksqr,         $),

	(ksqrt,        $),
	(ksin,         $),
	(kcos,         $),
	(ktan,         $),
	(kasin,        $),
	(kacos,        $),
	(katan,        $),
	(klog,         $),
	(klog10,       $),
	(kexp,         $),
	(kround,       $),
	(kfloor,       $),
	(kceil,        $),
	(ksign,        $),

	(katan2,       $),
	(kpower,       $),
	(kfmod,        $),

	(kincrto,      $),
	(kdecrto,      $),
	(kincrload,    $),
	(kdecrload,    $),
	(kloadincr,    $),
	(kloaddecr,    $),

	(kaddto,       $),
	(ksubto,       $),
	(kmulto,       $),
	(kdivto,       $),
	(kidivto,      $),
	(kiremto,      $),
	(kbitandto,    $),
	(kbitorto,     $),
	(kbitxorto,    $),
	(kshlto,       $),
	(kshrto,       $),
	(kminto,       $),
	(kmaxto,       $),
	(kaddpxto,     $),
	(ksubpxto,     $),

	(knegto,       $),
	(kabsto,       $),
	(kbitnotto,    $),
	(knotto,       $),
	(ktoboolto,    $),

	(ktypepun,     $),
	(kfloat,       $),
	(kfix,         $),
	(ktruncate,    $),
	(kwiden,       $),
	(kfwiden,      $),
	(kfnarrow,     $),

	(kstartmx,     $),
	(kresetmx,     $),
	(kendmx,       $),

	(kdefproc,     $),
	(ktcproc,      $),
	(kendproc,     $),
	(kistatic,     $),
	(kzstatic,     $),
	(kdata,        $),

	(klabel,       $),
	(klabeldef,    $),
	(ksetjmp,      $),
	(klongjmp,     $),

	(ksetcall,     $),
	(ksetarg,      $),
	(kloadall,     $),

	(keval,        $),
	(kcomment,     $),
	(kendprog,     $),

!------------------------- -
	(kstoresl,     $),
	(kstoresld,    $),
	(ksliceupb,    $),
	(kslicelen,    $),
	(ksliceptr,    $),

end

type pcl = ref void
type psymbol = ref void

importdll pcl =
    proc pcl_writepst(ref void f=nil)
    func pcl_writepcl(stringz filename=nil) => stringz
    proc pcl_genmcl()
    proc pcl_genss(i64 obj=0)
    func pcl_writeasm(stringz filename=nil,i64 atype='AA') => stringz
    proc pcl_writeobj(stringz filename)
    proc pcl_writedll(stringz filename)
    proc pcl_writeexe(stringz filename)
    proc pcl_writemx(stringz filename)
    proc pcl_exec(i64 cmdskip)
    proc pcl_setflags(i64 highmem=-1,verbose=-1,shortnames=-1,hostcmdskip=-1)
    proc pcl_runpcl()
    func pcl_start(stringz name=nil,i64 nunits=0) => psymbol
    proc pcl_end()
    proc pc_gen(i64 opcode,pcl p=nil)
    proc pc_genix(i64 opcode,scale=1,offset=0)
    proc pc_genx(i64 opcode,x,pcl p=nil)
    proc pc_genxy(i64 opcode,x,y,pcl p=nil)
    proc pc_gencond(i64 opcode,cond,pcl p=nil)
    func genint(i64 a) => pcl
    func genreal(r64 x,i64 mode=2) => pcl
    func genrealimm(r64 x,i64 mode=2) => pcl
    func genstring(stringz s) => pcl
    func genpcstrimm(stringz s) => pcl
    func genlabel(i64 a) => pcl
    func genmem(psymbol d) => pcl
    func genmemaddr(psymbol d) => pcl
    func gendata(ref u8 s,i64 length) => pcl
    proc gencomment(stringz s)
    func genname(stringz s) => pcl
    func gennameaddr(stringz s) => pcl
    func genassem(ref void code) => pcl
    func strpmode(i64 mode,size=0) => stringz
    proc pc_setmode(i64 m,size=0)
    proc pc_setmode2(i64 m)
    proc pc_setxy(i64 x,y)
    proc pc_setscaleoff(i64 scale,offset=0)
    proc pc_setoffset(i64 offset)
    proc pc_addoffset(i64 offset)
    proc pc_setincr(i64 n)
    proc pc_setnargs(i64 n)
    proc pc_setnvariadics(i64 n)
    proc pc_setalign(i64 n)
    func pc_makesymbol(stringz s,i64 id=0) => psymbol
    proc pc_addplib(stringz name)
    proc pc_defproc(psymbol d,i64 mode=0,threaded=0)
    proc pc_addparam(psymbol d)
    proc pc_addlocal(psymbol d)
    proc pc_endproc()
end
