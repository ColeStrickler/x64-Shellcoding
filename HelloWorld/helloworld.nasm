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


	; exit gracefully

	mov rax, 60
	mov rdi, 69
	syscall





section .data

	message: db "Hello World!",0xa
	length: equ $-message
	; counts bytes occupied by the message string


