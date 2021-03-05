
.PHONY: all
all: 
	cd hello_cpp; make
	cd hello_go; make
	cd hello_pas; make
	cd hello_rs; make

report.txt:
	echo `du -h hello_cpp/hello` >  report.txt
	echo `du -h hello_go/hello`  >> report.txt
	echo `du -h hello_pas/hello` >> report.txt
	echo `du -h hello_rs/hello`  >> report.txt
