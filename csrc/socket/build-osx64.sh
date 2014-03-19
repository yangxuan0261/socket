files="$(ls -1 src/*.c | grep -v "wsocket\|serial")"
mkdir -p ../../bin/osx64/clib/socket
gcc -arch x86_64 -O2 $files -shared -o ../../bin/osx64/clib/socket/core.so -I. -I../lua -undefined dynamic_lookup \
    -DLUASOCKET_API=extern

mkdir -p ../../bin/osx64/clib/mime
gcc -arch x86_64 -O2 src/mime.c -shared -o ../../bin/osx64/clib/mime/core.so -I. -I../lua -undefined dynamic_lookup
