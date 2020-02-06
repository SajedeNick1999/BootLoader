#Boot Loader
this is very simple Bootloader that just print "WelcomeToSajedesBootLoader:)"

##Getting started
you can use below instructions to run this bootloader

###Prerequisites
you have to install 'nasm' assembler and 'qemu' as emulator

####Installing
first for installing 'nasm' , open terminal and type this:

>sudo apt-get install nasm

then for installing 'qemu' type this :

>sudo apt-get install qemu


##Running
first get the 'boot_sect.asm' .
then for assembling this file into actual machine code type this in terminal :

>nasm boot_sect.asm -f bin -o boot_sect.bin

then for creating img file type this:

>dd if=/dev/zero of=boot_sect.img bs=512 count=2880

then for coping .bin file to this img file:

>dd status=noxfer conv=notrunc if=boot_sect.bin of=boot_sect.img

finaly for running emulator and running boot if your system is 64-bit :

>qemu-system-x86_64 boot_sect.bin

and if it is 32-bit :

>qemu-system-i386 hello_boot.bin


##Author
**Sajede Nicknadaf 9637453**
