swig -go -intgosize 64 example.i
#    or add “-outdir output -o output/example_wrap.c ”
#		    result:
#				go file
#				_go.c file that should be compiled with cgo
#				wrapper that should be compiled into .so
6g example.go
6c -I /home/witek/.gvm/gos/go1.4.2/pkg/linux_amd64/ example_gc.c
pack grc example.a example.6 example_gc.6
gcc -c -O -fpic example_wrap.c
#my go code
gcc -c -O -fpic example.c
gcc -shared -o example.so example_wrap.o example.o
6g runme.go

