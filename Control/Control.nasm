; Filename: Control.nasm
; Author:  Vivek Ramachandran
; Website:  http://securitytube.net
; Training: http://securitytube-training.com 
;
;
; Purpose: 

global _start			

section .text
_start:

	jmp Begin

NeverExecute:

	mov rax, 0x10
	xor rbx, rbx

Begin:
	mov rax, 0x5

PrintHW:

	push rax


	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, mlen
	syscall
	pop rax
	dec rax
	jnz PrintHW

	mov rax, 60
	mov rdi, 11
	syscall



section .data

	message: db "Hello World! "
	mlen     equ $-message


