section .text
   global _start

print:   push    rbp
   mov     rbp, rsp
   sub     rsp, 64
   mov     DWORD   [rbp-52], edi
   mov     DWORD   [rbp-4], 1
   mov     eax, DWORD   [rbp-4]
   movsx   rdx, eax
   mov     eax, 32
   sub     rax, rdx
   mov     BYTE   [rbp-48+rax], 10
.L2:
   mov     edx, DWORD   [rbp-52]
   movsx   rax, edx
   imul    rax, rax, 1717986919
   shr     rax, 32
   sar     eax, 2
   mov     esi, edx
   sar     esi, 31
   sub     eax, esi
   mov     ecx, eax
   mov     eax, ecx
   sal     eax, 2
   add     eax, ecx
   add     eax, eax
   mov     ecx, edx
   sub     ecx, eax
   mov     eax, ecx
   lea     ecx, [rax+48]
   mov     eax, DWORD   [rbp-4]
   movsx   rdx, eax
   mov     eax, 31
   sub     rax, rdx
   mov     edx, ecx
   mov     BYTE   [rbp-48+rax], dl
   add     DWORD   [rbp-4], 1
   mov     eax, DWORD   [rbp-52]
   movsx   rdx, eax
   imul    rdx, rdx, 1717986919
   shr     rdx, 32
   sar     edx, 2
   sar     eax, 31
   mov     ecx, eax
   mov     eax, edx
   sub     eax, ecx
   mov     DWORD   [rbp-52], eax
   cmp     DWORD   [rbp-52], 0
   jg      .L2
   mov     eax, DWORD   [rbp-4]
   cdqe
   mov     edx, DWORD   [rbp-4]
   movsx   rdx, edx
   mov     ecx, 32
   sub     rcx, rdx
   lea     rdx, [rbp-48]
   add     rcx, rdx
   mov     rdx, rax
   mov     rsi, rcx
   mov     edi, 1
   mov     rax, 1
   syscall
   nop
   leave
   ret
_start:
    ; push 3344333 onto stack
    push 3344333
    ; variable declaration
    mov rax, MEMORY
    mov rdi, 0
    add rax, rdi
    push rax
    ; write byte to variable
    pop rax
    pop rdi
    mov [rax], rdi
    ; push 43344444 onto stack
    push 43344444
    ; variable declaration
    mov rax, MEMORY
    mov rdi, 4
    add rax, rdi
    push rax
    ; write byte to variable
    pop rax
    pop rdi
    mov [rax], rdi
    ; variable declaration
    mov rax, MEMORY
    mov rdi, 4
    add rax, rdi
    push rax
    ; load byte from variable
    pop rax
    xor rbx, rbx
    mov rbx, qword [rax]
    push rbx
    ; calls print label to print top of stack
    pop rdi
    call print
    ; variable declaration
    mov rax, MEMORY
    mov rdi, 0
    add rax, rdi
    push rax
    ; load byte from variable
    pop rax
    xor rbx, rbx
    mov rbx, qword [rax]
    push rbx
    ; calls print label to print top of stack
    pop rdi
    call print
    
    ; end of code, exit status
    mov rax, 60
    mov rdi, 0
    syscall

section .data

section .bss
    ; MEMORY
  MEMORY: resb 64000
    ; heap
