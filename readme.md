# Assembly

[book assembly](https://mentebinaria.gitbook.io/assembly/)

- install nasm

---

## Sintaxe

Comentários
```
; Um exemplo
mov eax, 777 ; Outro exemplo
```

`mov eax, 777`  
semelhante  
`eax = 777;`

```
"AH:  %02x\n"
"AL:  %02x\n"
"AX:  %04x\n"
"EAX: %08x\n"
```

### Endereçamento em IA-16
```
mov [bx],           ax ; Correto!
mov [bx+si],        ax ; Correto!
mov [bp+di],        ax ; Correto!
mov [bp+si],        ax ; Correto!
mov [bx+di + 0xa1], ax ; Correto!
mov [si],           ax ; Correto!
mov [0x1a],         ax ; Correto!

mov [dx],    ax ; ERRADO!
mov [bx+bp], ax ; ERRADO!
mov [si+di], ax ; ERRADO!
```

### Endereçamento em IA-32
```
mov [edx],                      eax ; Correto!
mov [ebx+ebp],                  eax ; Correto!
mov [esi+edi],                  eax ; Correto!
mov [esp+ecx],                  eax ; Correto!
mov [ebx*4 + 0x1a],             eax ; Correto!
mov [ebx + ebp*8 + 0xab12cd34], eax ; Correto!
mov [esp + ebx*2],              eax ; Correto!
mov [0xffffaaaa],               eax ; Correto!

mov [esp*2], eax   ; ERRADO!
```
