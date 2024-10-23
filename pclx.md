````
Front-ends             IR/IL             Back-ends             

M7 Compiler ──>──┐                ┌────> PCL  - Text Dump
C Compiler  ──>──┼────> PCL ──>───┼────> RUNP - Interpret PCL
Q Demo ───────>──┤                ├────> Windows-x64 ────> EXE/DLL/OBJ/MX/ASM/NASM/RUN
C Demo ───────>──┤                ├────> (Linux-x64 ──────> NASM/MX/RUN)
(PCL text) ───>──┤                ├────> (Linux-ARM64 ────> AT&T-ASM)
(Other) ──────>──┘                ├────> (Z80 8-bit ──────> ZASM)
                                  ├────> (32-bit targets)
                                  └────> (Linear C)
Key:
 EXE/DLL/OBJ  Windows' PE-format binaries
 MX           My private, portable (and simple) binary format. This
              requires a small program compiled locally to launch.
 ASM          x64 assembly in the syntax used by my AA assembler/linker
 NASM         x64 assembly in NASM syntax (NASM runs under Linux too)
 ZASM         My Z80 assembly syntax
 Linear C     Crude, unstructured C source code
````
