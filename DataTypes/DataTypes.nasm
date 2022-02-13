; DataTypes.nasm 
; Author: Vivek Ramachandran



global _start

section .text

_start:

	; print hello world on the screen

	mov rax, 1
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, length
	syscall
	

	mov rax, var4
	mov rax, [var4]

	; exit

	mov rax, 60
	mov rdi, 11
	syscall


section .data

	hello_world: db "Hello World!", 0xa

	length: equ $-hello_world


	var1: db 0x11, 0x22
	var2: dw 0x3344
	var3: dd 0xaabbccdd
	var4: dq 0xaabbccdd11223344
	repeat_buffer: times 128 db 0xaa

section .bss
	buffer: resb 64
