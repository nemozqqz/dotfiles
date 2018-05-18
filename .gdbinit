source /home/vagrant/softwares/pwndbg/gdbinit.py


set disassembly-flavor intel

dir /usr/src/glibc/glibc-2.23/malloc/:/usr/src/glibc/glibc-2.23/stdio-common/:/usr/src/glibc/glibc-2.23/csu/:/usr/src/glibc/glibc-2.23/elf/:/usr/src/glibc/glibc-2.23/stdlib/:/usr/src/glibc/glibc-2.23/libio/:/usr/src/glibc/glibc-2.23/time/:/usr/src/glibc/glibc-2.23/timezone

set debug-file-directory /usr/lib/debug


#for heap
#python from libheap import *

#for c++
#python sys.path.append("/usr/share/gcc-4.8/python")


#add-auto-load-safe-path /home/vagrant/practice/learn/6.828/xv6-public/.gdbinit

#alias
alias -a maps = vmmap
