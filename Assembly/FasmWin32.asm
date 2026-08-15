formate PE console
entry start
include 'win32a.inc'
section '.texr' code readtable executable
start:
      cinvoke printf, "Hello, World!"
      invoke  ExitProcess, 0
section '.idata' import data readable
library kernel32, 'kernel32.dll', \
  msvcrt, 'msvcrt.dll'
import kerndel32,ExitProcess,'ExitProcess'
import msvcrt, printf, 'printf',
