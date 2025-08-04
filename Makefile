all: os-image

boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin

kernel.o: kernel.c
	gcc -m32 -ffreestanding -c kernel.c -o kernel.o

kernel.bin: kernel.o linker.ld
	ld -m elf_i386 -T linker.ld -o kernel.bin kernel.o

os-image: boot.bin kernel.bin
	cat boot.bin kernel.bin > os-image

run: os-image
	qemu-system-i386 -drive format=raw,file=os-image

clean:
	rm -f *.bin *.o os-image
