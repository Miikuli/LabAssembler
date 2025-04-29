; Адреса:
; 0x014: X1 - 14
; 0x015: X2 - 0B
; 0x016: X3 - 08
; 0x017: X4 - 0C
; 0x018: y - 0D

; y = X1 - (X2 + X3 - X4)

LXI H, 0x0014     ; HL = адрес X1

MOV E, M          ; E = X1 (из 0x014)
INX H             ; HL = адрес X2
MOV C, M          ; C = X2 (из 0x015)
INX H             ; HL = адрес X3
MOV D, M          ; D = X3 (из 0x016)
INX H             ; HL = адрес X4
MOV A, M          ; A = X4 (из 0x017)

MOV B, A          ; Сохраним X4 в B
MOV A, C          ; A = X2 (из C)
ADD D             ; A = X2 + X3
SUB B             ; A = X2 + X3 - X4
MOV C, A          ; C = X2 + X3 - X4 (Сохраним промежуточный результат в C)

MOV A, E          ; A = X1
SUB C             ; A = X1 - (X2 + X3 - X4)

INX H
MOV M, A         
HLT        
