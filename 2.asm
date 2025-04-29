LXI H, 0x001A     ; HL = X₁
MOV B, M          ; B = X₁

INX H             ; HL = X₂
MOV A, M          ; A = X₂
CMA               ; A = ~X₂
ANA B             ; A = ~X₂ AND X₁
MOV C, A          ; C = ~X₂ AND X₁

INX H             ; HL = X₃
MOV A, M          ; A = X₃
CMA               ; A = ~X₃
ANA C             ; A = ~X₃ AND ~X₂ AND X₁
MOV C, A          ; C = ~X₃ AND ~X₂ AND X₁

INX H             ; HL = X₄
MOV A, M          ; A = X₄
ORA C             ; A = X₄ OR (~X₃ AND ~X₂ AND X₁)

ANI 0x01          ; Оствляем младший бит

INX H             ; HL = Y
MOV M, A          ; Сохраняем результат
HLT               ; Остановка
