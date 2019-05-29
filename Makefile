

all: hello.o hello

hello:
	ld -s -o hello hello.o

hello.o:
	nasm -f elf64 hello.asm

.PHONY: clean
clean:
	rm hello.o hello
