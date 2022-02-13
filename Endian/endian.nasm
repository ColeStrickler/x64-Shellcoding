; Filename: helloworld.nasm

global _start			






section .text
_start:


	; print on to screen
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	; references addresses
	mov rdx, length
	syscall

	mov rax, [var1]
	mov rbx, [var2]

	; exit gracefully

	mov rax, 60
	mov rdi, 69
	syscall





section .data

	message: db "Hello World!",0xa
	length: equ $-message
	; counts bytes occupied by the message string

	var1: db 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88
	var2: db 0x88, 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11