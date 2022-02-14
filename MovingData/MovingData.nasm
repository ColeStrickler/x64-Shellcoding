; Filename: MovingData.nasm

global _start			

section .text
_start:

	; mov immediate data to register 

	mov rax, 0xaaaaaaaabbbbbbbb
	mov eax, 0xaaaaaaaa
	mov rax, 0xaaaaaaaabbbbbbbb
	mov al, 0x11
	mov rax, 0xaaaaaaaabbbbbbbb
	mov ah, 0xcc
	mov ax, 0xdddd

	mov rbp, rax
	mov r10, rbp

	mov r11d, r10d
	mov r12w, r11w
	mov r13b, r12b

	mov rsi, [sample2]
	mov r14d, [sample]
	mov r15w, [sample]
	mov dil, [sample]

	mov rax, [sample2]
	mov byte [sample], al
	mov word [sample], ax
	mov dword [sample], eax
	mov qword [sample], rax

	lea rax, [sample]
	lea rbx, [rax]


	mov rax, 0x123456789abcdef
	mov rbx, 0x999999999999999
	xchg rax, rbx

	mov rax, 0x3c
	mov rdi, 0
	syscall 

section .data

	sample:	db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22
	sample2: dq 0x1122334455667788
	sample3: times 8 db 0x00




