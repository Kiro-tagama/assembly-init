; modo de opeção em 64bits
bits 64

section .text

global assembly
assembly:
    ;mov eax, 777 + 1 ; retorna 778
    ;mov eax, 0b1011 ; return 11
    ;mov eax, 0o10 ; return 8
    ;mov eax, 0xff ; return 255
    ;jmp .subrotulo
    mov rbx, 5
    mov rcx, 10
    ;lea eax, [rcx + rbx] ; resutado 15
    ;lea eax, [rbx * rcx] ; err
    ;lea eax, [0+rbx * rcx ] ; err
    lea eax, [rcx + rbx*2 + 5] ; resultado 25, ele fez a mult primeiro

    ret
    
;.subrotulo:
;    mov eax, 555
;    ret

; retorna 777

