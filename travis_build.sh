#!/bin/sh -x

# In a fresh WSL installation, first do `sudo apt-get install mingw-w64`

mkdir build
i686-w64-mingw32-gcc hello.c -o build/hello-w32.exe
x86_64-w64-mingw32-gcc hello.c -o build/hello-w64.exe

# Check running locally within WSL, then copy to windows side for testing.
if uname -a | grep -q 'Microsoft' ; then
	mkdir -p /mnt/c/tmp/hello
	cp build/* /mnt/c/tmp/hello
fi

# Now in CMD.EXE do...
#   cd C:\tmp\hello
#   hello-w32.exe
