          * = $0000
L0000     EOR $3833
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          CLI
          JSR $4F50
          .BYTE $57    ;%01010111 'W'
          EOR $52
          JSR $4553
          LSR $4553
          JSR $494D
          .BYTE $43    ;%01000011 'C'
          .BYTE $4F    ;%01001111 'O'
          LSR $4620
          EOR #$52
          EOR $4157
          .BYTE $52    ;%01010010 'R'
          EOR $20
          .BYTE $52    ;%01010010 'R'
          ADC $76
          JSR L2038
          PLP
          .BYTE $43    ;%01000011 'C'
          AND #$20
          AND ($39),Y
          AND $2035,Y
          .BYTE $52    ;%01010010 'R'
          EOR #$4F
          .BYTE $53    ;%01010011 'S'
          JSR $5953
          .BYTE $53    ;%01010011 'S'
          .BYTE $54    ;%01010100 'T'
          EOR $4D
          .BYTE $53    ;%01010011 'S'
          JSR $4F43
L0040     ROL $4C2C
          .BYTE $54    ;%01010100 'T'
          .BYTE $44    ;%01000100 'D'
          ROL $2078
          LSR $90CC,X
          .BYTE $03    ;%00000011
          JSR $CC98
          JSR $CE4A
          CLI
          NOP
          NOP
          .BYTE $77    ;%01110111 'w'
          .BYTE $34    ;%00110100 '4'
          .BYTE $FC    ;%11111100
          SEI
          JSR $C1DD
          JSR $CCFC
          JSR $CD03
          JSR $CD0D
          .BYTE $EF    ;%11101111
          .BYTE $80    ;%10000000
          .BYTE $FF    ;%11111111
          EOR ($FF),Y
          STA $58,X
          JSR $CD77
          BCC L0074
          JMP $CD17
L0074     JSR $CDA8
          JSR $CDDD
          .BYTE $D7    ;%11010111
          STA $05,X
          JSR $DCE6
          .BYTE $DF    ;%11011111
          STA $20,X
          .BYTE $63    ;%01100011 'c'
          CMP $BFD7,X
          .BYTE $03    ;%00000011
          JSR $E200
          JSR $E3E3
          JSR $C1A3
          BCC L006B
          .BYTE $F7    ;%11110111
          EOR ($06),Y
          .BYTE $F7    ;%11110111
          STA $D2,X
          JMP $C0D8
          .BYTE $3C    ;%00111100 '<'
          PLP
          SBC #$E6
          ROR $7D20,X
          .BYTE $C2    ;%11000010
          .BYTE $EF    ;%11101111
          EOR ($4C),Y
          .BYTE $EB    ;%11101011
          CPY #$78
          JSR $CC5E
          BCC L00B2
          JSR $CC98
L00B2     JSR $CE4A
          CLI
          NOP
          .BYTE $77    ;%01110111 'w'
          .BYTE $34    ;%00110100 '4'
          .BYTE $FC    ;%11111100
          SEI
          JSR $C1DD
          JSR $CCFC
          JSR $CD03
          JSR $CD0D
          .BYTE $EF    ;%11101111
          .BYTE $80    ;%10000000
          .BYTE $FF    ;%11111111
          EOR ($FF),Y
          STA $58,X
          JSR $CD77
          BCC L00D6
          JMP $CD17
L00D6     .BYTE $F7    ;%11110111
          EOR ($03),Y
          JSR $D130
          JSR $CDA8
          JSR $CDDD
          .BYTE $D7    ;%11010111
          STA $05,X
          JSR $DCE6
          .BYTE $DF    ;%11011111
          STA $20,X
          .BYTE $63    ;%01100011 'c'
          CMP $BFD7,X
          .BYTE $03    ;%00000011
          JSR $E200
          JSR $E3E3
          JSR $C1A3
          BCC L00CD
          .BYTE $F7    ;%11110111
          EOR ($06),Y
          .BYTE $F7    ;%11110111
          STA $CC,X
          JMP $C13A
          .BYTE $3C    ;%00111100 '<'
          PLP
          SBC #$E7
          JMP (L200E)
          .BYTE $6B    ;%01101011 'k'
          .BYTE $C2    ;%11000010
          .BYTE $EF    ;%11101111
          EOR ($20),Y
          JSR L20CA
          .BYTE $1C    ;%00011100
          CMP ($4C),Y
          EOR $20C1
          STX $C3,Y
          .BYTE $EF    ;%11101111
          EOR ($20),Y
          DEX
          DEX
          JMP $C14D
          .BYTE $A7    ;%10100111
          .BYTE $BF    ;%10111111
          .BYTE $0F    ;%00001111
          LDA $9D
          BNE L0135
          LDA $9E
          BNE L0135
          LDA $9F
          BNE L0135
          PHP
          .BYTE $80    ;%10000000
          BIT $08
          SEI
          .BYTE $E7    ;%11100111
          .BYTE $80    ;%10000000
          .BYTE $1F    ;%00011111
          .BYTE $07    ;%00000111
          .BYTE $80    ;%10000000
          .BYTE $1C    ;%00011100
          .BYTE $A7    ;%10100111
          .BYTE $80    ;%10000000
          ORA $8087,Y
          ASL $87,X
          STA ($13,X)
          .BYTE $67    ;%01100111 'g'
          STA ($10,X)
          .BYTE $47    ;%01000111 'G'
          STA ($0D,X)
          .BYTE $27    ;%00100111 '''
          STA ($0A,X)
          .BYTE $07    ;%00000111
          STA ($07,X)
          .BYTE $E7    ;%11100111
          STA ($04,X)
          PLP
          NOP
          SEC
          RTS
          PLP
          NOP
          CLC
          RTS
          LDA #$08
          .BYTE $E7    ;%11100111
          BVC L0169
          LDA #$04
          .BYTE $C7    ;%11000111
          BVC L0169
          LDA #$00
L0169     .BYTE $F7    ;%11110111
          JMP (L1805)
          ADC #$03
          .BYTE $80    ;%10000000
          .BYTE $13    ;%00010011
          PHA
          JSR $D052
          BNE L017D
          PLA
          CLC
          ADC #$01
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
L017D     PLA
          .BYTE $17    ;%00010111
          ADC $1803
          ADC #$02
          ASL A
          TAX
          LDA $C213,X
          STA $F5
          LDA $C214,X
          STA $F6
          .BYTE $02    ;%00000010
          SBC $60,X
          .BYTE $4B    ;%01001011 'K'
          .BYTE $C2    ;%11000010
          .BYTE $3B    ;%00111011 ';'
          .BYTE $C2    ;%11000010
          .BYTE $4B    ;%01001011 'K'
          .BYTE $C2    ;%11000010
          .BYTE $5B    ;%01011011 '['
          .BYTE $C2    ;%11000010
          .BYTE $4B    ;%01001011 'K'
          .BYTE $C2    ;%11000010
          .BYTE $3B    ;%00111011 ';'
          .BYTE $C2    ;%11000010
          .BYTE $4B    ;%01001011 'K'
          .BYTE $C2    ;%11000010
          .BYTE $5B    ;%01011011 '['
          .BYTE $C2    ;%11000010
          .BYTE $4B    ;%01001011 'K'
          .BYTE $C2    ;%11000010
          .BYTE $3B    ;%00111011 ';'
          .BYTE $C2    ;%11000010
          .BYTE $2B    ;%00101011 '+'
          .BYTE $C2    ;%11000010
          .BYTE $5B    ;%01011011 '['
          .BYTE $C2    ;%11000010
          .BYTE $3C    ;%00111100 '<'
          ORA ($5D,X)
          .BYTE $3C    ;%00111100 '<'
          BRK
          LSR $003C,X
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $04    ;%00000100
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          ADC ($60,X)
          .BYTE $3C    ;%00111100 '<'
          BRK
          EOR $003C,X
          LSR $003C,X
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          ADC ($60,X)
          .BYTE $3C    ;%00111100 '<'
          ORA ($5D,X)
          .BYTE $3C    ;%00111100 '<'
          BRK
          LSR $013C,X
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          ADC ($60,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $7F    ;%01111111
          EOR $003C,X
          LSR $013C,X
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $7F    ;%01111111
          ADC ($60,X)
          .BYTE $E7    ;%11100111
          JMP ($F70B)
L01EF     BVC L01F5
          JSR $C27D
          RTS
L01F5     JSR $C349
          RTS
          JSR $C396
          RTS
          JSR $C406
          LDA $65
          .BYTE $17    ;%00010111
          ADC $201C
          .BYTE $52    ;%01010010 'R'
          BNE L0211
          LDA #$00
          PLP
          NOP
          BEQ L0221
          LDY #$04
L0211     BEQ L0221
          TYA
          LSR A
          TAY
          BEQ L021F
L0218     LSR $67
          ROR $66
          DEY
          BNE L0218
L021F     LDA $66
L0221     STA $70
          JSR $CCA5
          BCC L022A
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
L022A     JSR $C410
          BCS L0266
          .BYTE $07    ;%00000111
          ADC $A516
          BVS L01FE
          .BYTE $04    ;%00000100
          BCS L0248
          LDA $5A
          CLC
          ADC #$01
          STA $5A
          BCC L0266
          LDA #$00
          PHA
          LDA #$01
          .BYTE $80    ;%10000000
          ASL $A2
          BRK
          LDA #$10
          .BYTE $62    ;%01100010 'b'
          BVS L01EF
          .BYTE $5B    ;%01011011 '['
          JSR $E69D
          BCS L0258
          JSR $C2EA
L0258     PLA
          STA $F7
          LDA $5C
          SBC $F7
          STA $5C
          BCS L0266
          JSR $C2EA
L0266     JSR $C7A1
          RTS
          JSR $C311
          LDY #$5B
          JSR $E669
          JSR $C31D
          ADC $5C
          STA $5C
          LDA $6E
          BEQ L0280
          .BYTE $1A    ;%00011010
          STA $6E
L0280     .BYTE $63    ;%01100011 'c'
          JSR $D052
          ASL A
          TAX
          LDA $C329,X
          STA $5B
          LDA $C32A,X
          STA $5C
          .BYTE $62    ;%01100010 'b'
          PHP
          JSR $D052
          ASL A
          TAX
          LDA $C329,X
          PLP
          NOP
          RTS
          PHP
          JSR $D052
          ASL A
          TAX
          LDA $C32A,X
          PLP
          NOP
L02A8     RTS
          PLP
          LDY #$28
          LDY #$28
          LDY #$28
          LDY #$28
          LDY #$A0
          STY $A028
          PLP
          LDY #$28
          LDY #$58
          TYA
          .BYTE $FA    ;%11111010
          .BYTE $FF    ;%11111111
          CPY #$A8
          PLP
          LDY #$80
          BVS L02EE
          LDY #$28
          LDY #$20
          ASL $C4
          JSR $D052
          PHP
          LDA #$00
          PLP
          NOP
          BEQ L02D8
          LDA $65
L02D8     STA $70
          JSR $CCA5
          BCC L02E1
          .BYTE $80    ;%10000000
          AND ($20),Y
          BPL L02A8
          BCS L0266
          LDA $70
          CMP #$04
          BCC L02EF
          JMP $C2C8
L02EF     .BYTE $07    ;%00000111
          ADC $A50D
          .BYTE $5A    ;%01011010 'Z'
          CLC
          ADC #$01
          STA $5A
          BCC L0312
          LDA #$01
          .BYTE $80    ;%10000000
          ORA #$A2
          BRK
          LDA #$13
          .BYTE $C7    ;%11000111
          BVC L0308
          LDA #$02
L0308     LDY #$5B
          JSR $E69D
          BCS L0312
          JSR $C2EA
L0312     JSR $C7A1
          RTS
          JSR $C406
          LDA $62
          BNE L0326
          LDA $63
          BNE L0326
          LDA #$01
          PHA
          .BYTE $80    ;%10000000
          ASL $A2
          BRK
          LDA #$7F
          .BYTE $E2    ;%11100010
          .BYTE $62    ;%01100010 'b'
          STA $70
          PLA
          LDA $68
          BNE L033C
          LDA $69
          BNE L033C
          LDA #$01
          PHA
          .BYTE $80    ;%10000000
          ASL $A2
          BRK
          LDA #$7F
          .BYTE $E2    ;%11100010
          PLA
          STA $71
          PLA
          JSR $CCA5
          BCS L0382
          LDA $70
          CMP #$03
          BCC L0382
          LDX #$00
          LDA #$0F
          .BYTE $C7    ;%11000111
          JMP ($A902)
          BPL L03BC
          BVS L02FC
          .BYTE $5B    ;%01011011 '['
          JSR $E669
          PLA
          ADC $5C
          STA $5C
          JSR $C31D
          .BYTE $3A    ;%00111010 ':'
          CMP $5C
          BCS L0382
          INC $6E
          JSR $C311
          LDY #$5B
          JSR $E69D
          JSR $C31D
          STA $F9
          LDA $5C
          SBC $F9
          STA $5C
L0382     JSR $C7A1
          RTS
          JSR $E39E
          JSR $C680
          JSR $C6EF
          RTS
          .BYTE $37    ;%00110111 '7'
          CPY #$03
L0393     JMP $C4FF
          JSR $C5F9
          BCS L0393
          JSR $D052
          PHA
          JSR $E589
          STA $FB
          PLA
          CMP #$09
          BEQ L03ED
          CMP #$0A
          BEQ L03ED
          CMP #$08
          BEQ L03BF
          CMP #$05
          BNE L03BF
          LDA $C8
          BEQ L03E5
          CMP #$01
          BEQ L03DD
          .BYTE $80    ;%10000000
          ROL $E7
          .BYTE $C2    ;%11000010
          .BYTE $0B    ;%00001011
          .BYTE $C7    ;%11000111
          .BYTE $C2    ;%11000010
          BPL L0402
          ORA $3CF5
          CMP $F6
          .BYTE $80    ;%10000000
          ROL $233C,X
          SBC $3C,X
          CMP $F6
          .BYTE $80    ;%10000000
          ROL $3C,X
          ASL $F5,X
          .BYTE $3C    ;%00111100 '<'
          CMP $F6
          .BYTE $80    ;%10000000
          ROL $743C
          SBC $3C,X
          CMP $F6
          .BYTE $80    ;%10000000
          ROL $3C
          .BYTE $6B    ;%01101011 'k'
          SBC $3C,X
          CMP $F6
          .BYTE $80    ;%10000000
          ASL $C2E7,X
          .BYTE $0B    ;%00001011
          .BYTE $C7    ;%11000111
          .BYTE $C2    ;%11000010
          BPL L0430
          .BYTE $52    ;%01010010 'R'
          SBC $3C,X
          CMP $F6
          .BYTE $80    ;%10000000
          BPL L0438
          .BYTE $3C    ;%00111100 '<'
          SBC $3C,X
          CMP $F6
          .BYTE $80    ;%10000000
L0402     PHP
          .BYTE $3C    ;%00111100 '<'
          EOR $F5
          .BYTE $3C    ;%00111100 '<'
          CMP $F6
          .BYTE $80    ;%10000000
          BRK
          LDY #$00
          .BYTE $3C    ;%00111100 '<'
          ASL $F9
          .BYTE $17    ;%00010111
          ADC $A216
          BRK
          LDA L006B
          .BYTE $62    ;%01100010 'b'
          ROR A
          PLA
          CMP #$7C
          BCC L0420
          LDA #$7B
L0420     TAX
          LDA $C57D,X
          CLC
          ADC $FB
          STA $F9
          LDA ($F5),Y
          TAX
          BEQ L047F
          LDA $6E
L0430     CMP ($F5),Y
          BEQ L0471
L0434     BCS L043A
          INY
          INY
L0438     .BYTE $80    ;%10000000
          .BYTE $EF    ;%11101111
L043A     LDA $71
          SEC
          SBC $F9
          INY
          CMP ($F5),Y
          PHP
          INY
          PLP
L0445     NOP
          BEQ L044A
          BCS L047F
L044A     DEX
          LDA $0103
          BEQ L0456
          .BYTE $1A    ;%00011010
          STA $0103
          BNE L0484
L0456     STX $F8
          LDA $6E
          SEC
          SBC $F8
          CMP #$03
          BCC L0468
          LDA $6E
          SBC #$02
          TAX
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0468     LDX $F8
          STX $6E
          JSR $C301
          .BYTE $80    ;%10000000
          ASL $71A5
          SEC
          SBC $F9
          INY
          CMP ($F5),Y
          BEQ L047F
          BCS L0486
          .BYTE $80    ;%10000000
          .BYTE $C3    ;%11000011
L047F     LDA #$03
          STA $0103
L0484     CLC
          RTS
L0486     LDA #$03
          STA $0103
          SEC
          RTS
          ORA $90,X
          .BYTE $0B    ;%00001011
          STX $8B06
          ORA ($70,X)
          BRK
          BVC L0434
          .BYTE $32    ;%00110010 '2'
          STA $15,X
          BCC L04A8
          STX $8B06
          ORA ($70,X)
          BRK
          .BYTE $64    ;%01100100 'd'
          LDX #$5A
          .BYTE $9F    ;%10011111
          BVC L0445
          LSR $99
          .BYTE $3C    ;%00111100 '<'
          .BYTE $97    ;%10010111
          .BYTE $32    ;%00110010 '2'
          STA $28,X
          STY $1E,X
          .BYTE $92    ;%10010010
          ORA $90,X
          .BYTE $0B    ;%00001011
          STX $8B06
          ORA ($70,X)
          BRK
          .BYTE $14    ;%00010100
          DEY
          ASL A
          ROR $7706,X
          ORA ($6A,X)
          BRK
          BVC L0464
          .BYTE $32    ;%00110010 '2'
          .BYTE $97    ;%10010111
          .BYTE $14    ;%00010100
          DEY
          ASL A
          ROR $7706,X
          ORA ($6A,X)
          BRK
          .BYTE $64    ;%01100100 'd'
          LDX #$5A
          LDY #$50
          STA $9B46,X
          .BYTE $3C    ;%00111100 '<'
          STA $9732,Y
          PLP
          STA $1E,X
          .BYTE $8F    ;%10001111
          .BYTE $14    ;%00010100
          DEY
          ASL A
          ROR $7706,X
          ORA ($6A,X)
          BRK
          ORA $96,X
          .BYTE $0B    ;%00001011
          TXA
          ASL $81
          ORA ($77,X)
          BRK
          ORA $9A,X
          .BYTE $0B    ;%00001011
          BCC L04FF
          .BYTE $87    ;%10000111
          ORA ($7D,X)
          BRK
          ASL $06
L04FF     ASL $06
          ORA $05
          ORA $05
          ORA $05
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $03    ;%00000011
          .BYTE $03    ;%00000011
          .BYTE $03    ;%00000011
          .BYTE $03    ;%00000011
          .BYTE $03    ;%00000011
          .BYTE $02    ;%00000010
          .BYTE $02    ;%00000010
          .BYTE $02    ;%00000010
          ORA ($01,X)
          ORA (L0000,X)
          BRK
          BRK
          BRK
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          INC $FEFE,X
          INC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
          SBC $FDFD,X
L0579     .BYTE $A7    ;%10100111
          .BYTE $C2    ;%11000010
          .BYTE $72    ;%01110010 'r'
          .BYTE $17    ;%00010111
          ADC $C76F
          .BYTE $53    ;%01010011 'S'
          JMP ($50A7)
          ADC #$20
          .BYTE $52    ;%01010010 'R'
          BNE L0579
          .BYTE $64    ;%01100100 'd'
          TAX
          LDA $6E
          LDY $71
          JSR $C659
          BCC L05EE
          STA $6E
          RTS
          .BYTE $A7    ;%10100111
          .BYTE $C2    ;%11000010
          .BYTE $54    ;%01010100 'T'
          .BYTE $17    ;%00010111
          ADC $C751
          BVC L05EE
          .BYTE $A7    ;%10100111
          BVC L05EE
          JSR $D057
          BEQ L05EE
          TAX
          LDA $0106
          LDY $010A
          JSR $C659
          BCC L05EE
          STA $0106
          RTS
          .BYTE $A7    ;%10100111
          .BYTE $C2    ;%11000010
          .BYTE $33    ;%00110011 '3'
          .BYTE $17    ;%00010111
          ADC $C730
          BVC L05EE
          .BYTE $A7    ;%10100111
          BVC L05EE
          JSR $D05D
          BEQ L05EE
          TAX
          LDA $0107
          LDY $010B
          JSR $C659
          BCC L05EE
          STA $0107
          RTS
          CMP #$FF
          BEQ L05EE
          CMP #$04
          BCC L05EE
          TYA
          CMP $C670,X
          BCS L05EE
          JSR $C301
          LDA #$03
          SEC
          RTS
L05EE     CLC
          RTS
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          SEI
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $77    ;%01110111 'w'
          .BYTE $77    ;%01110111 'w'
          .BYTE $7A    ;%01111010 'z'
          .BYTE $7C    ;%01111100 '|'
          SEI
          .BYTE $7C    ;%01111100 '|'
          .BYTE $7C    ;%01111100 '|'
          JSR $C617
          BCS L066E
          JSR $D057
          BNE L061F
          JSR $D09A
          BNE L0611
          .BYTE $80    ;%10000000
          EOR $7808,X
          STA $0108
          LDA #$FF
          STA $0106
          PLP
          NOP
          .BYTE $80    ;%10000000
          .BYTE $4F    ;%01001111 'O'
L061F     JSR $D09A
          BEQ L0666
          STA $F8
          LDA $0106
          STA $FA
          LDA $010A
          STA $F9
          JSR $C75E
          BCS L065C
          LDX $0106
          CPX #$FF
          BEQ L065C
          LDX $0104
          BEQ L0647
          DEX
          STX $0104
          BNE L066E
L0647     STA $F8
          LDA $0106
          SEC
          SBC $F8
          CMP #$03
          BCC L065A
          LDA $0106
          SBC #$02
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L065A     LDA $F8
L065C     STA $0106
          LDA #$03
          STA $0104
          .BYTE $80    ;%10000000
          PHP
L0666     LDA #$00
          STA $0106
          STA $0108
L066E     RTS
          JSR $C638
          BCS L06DD
          JSR $D05D
          BNE L068E
          JSR $D082
          BNE L0680
          .BYTE $80    ;%10000000
          EOR $7808,X
          STA $0109
          LDA #$FF
          STA $0107
          PLP
          NOP
          .BYTE $80    ;%10000000
          .BYTE $4F    ;%01001111 'O'
L068E     JSR $D082
          BEQ L06D5
          STA $F8
          LDA $0107
          STA $FA
          LDA $010B
          STA $F9
          JSR $C75E
          BCS L06CB
          LDX $0107
          CPX #$FF
          BEQ L06CB
          LDX $0105
          BEQ L06B6
          DEX
          STX $0105
          BNE L06DD
L06B6     STA $F8
          LDA $0107
          SEC
          SBC $F8
          CMP #$03
          BCC L06C9
          LDA $0107
          SBC #$02
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L06C9     LDA $F8
L06CB     STA $0107
          LDA #$03
          STA $0105
          .BYTE $80    ;%10000000
          PHP
L06D5     LDA #$00
          STA $0107
          STA $0109
L06DD     RTS
          LDA $F8
          JSR $E521
          STA $FB
          LDA $F8
          JSR $D019
          LDY #$00
          .BYTE $3C    ;%00111100 '<'
          ASL $F7
          .BYTE $17    ;%00010111
          ADC $3C13
          ASL $F7
          .BYTE $A7    ;%10100111
          BVC L0705
          .BYTE $3C    ;%00111100 '<'
          ASL $F7
          .BYTE $C7    ;%11000111
          BVC L0705
          CLC
          LDA $FB
          ADC $C5
          STA $F7
L0705     LDA ($F5),Y
          CMP #$FF
          BEQ L0717
          CLC
          ADC $F7
          CMP $F9
          BCS L0717
          INY
          INY
          INY
          .BYTE $80    ;%10000000
          INC $B1C8
          SBC $C5,X
          .BYTE $FA    ;%11111010
L071C     BCC L0720
          LDA $FA
L0720     RTS
          .BYTE $17    ;%00010111
          CPY #$01
          RTS
          .BYTE $A7    ;%10100111
          JMP (L2073)
          .BYTE $63    ;%01100011 'c'
          BNE L071C
          .BYTE $32    ;%00110010 '2'
          JSR $D0E6
          CMP #$FF
          BEQ L075F
          CMP #$33
          BCC L073B
          JMP $C8C5
L073B     CMP #$15
          BCC L0742
          JMP $C8A7
L0742     CMP #$0B
          BCC L0749
          JMP $C877
L0749     CMP #$06
          BCC L0750
          JMP $C83A
L0750     CMP #$00
          BCC L0757
          JMP $C81C
L0757     JSR $C974
          BCS L077D
          JMP $C81C
L075F     .BYTE $3C    ;%00111100 '<'
          BRK
          STY $E320
          INY
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C962,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C963,X
          STA $6D
          RTS
L077D     .BYTE $3C    ;%00111100 '<'
          BRK
          STY $E320
          INY
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C950,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C951,X
          STA $6D
          RTS
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          STY $E320
          INY
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C93E,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C93F,X
          STA $6D
          RTS
          LDA $6D
          PHA
          JSR $C8E3
          TAX
          PHP
          SEI
          LDA $04
          AND #$13
          ORA $C92C,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C92D,X
          STA $6D
          PLA
          AND #$40
          CMP #$40
          BEQ L07E6
          LDA $C92E,X
          .BYTE $73    ;%01110011 's'
          .BYTE $0F    ;%00001111
          JSR $CEB5
L07E6     LDA $C92E,X
          .BYTE $93    ;%10010011
          PHP
          LDA $8C
          BNE L07F2
          JSR $CE82
L07F2     RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          STY $3C60
          BRK
          STY $6DA5
          PHA
          JSR $C8E3
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C91A,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C91B,X
          STA $6D
          PLA
          AND #$70
          CMP #$20
          BEQ L0826
          LDA $C91C,X
          .BYTE $53    ;%01010011 'S'
          .BYTE $CF    ;%11001111
          JSR $CEA5
L0826     RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          STY $E320
          INY
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C908,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C909,X
          STA $6D
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          STY $E320
          INY
          TAX
          PHP
          SEI
          LDA $04
          AND #$03
          ORA $C8F6,X
          STA $04
          PLP
          NOP
          LDA $6D
          AND #$81
          ORA $C8F7,X
          STA $6D
          RTS
          LDA #$00
          .BYTE $A7    ;%10100111
          BVC L086F
          LDA #$06
          .BYTE $C7    ;%11000111
          BVC L086F
          LDA #$0C
L086F     .BYTE $07    ;%00000111
          ADC $1803
          ADC #$03
          RTS
          BMI L0888
          .BYTE $02    ;%00000010
          BPL L088B
          .BYTE $02    ;%00000010
          LDY $0010,X
          .BYTE $9C    ;%10011100
          BMI L0882
L0882     .BYTE $9C    ;%10011100
          BPL L0885
L0885     .BYTE $9C    ;%10011100
          BPL L0888
L0888     BMI L08BA
          .BYTE $02    ;%00000010
L088B     BRK
          BMI L0890
          CLV
          BMI L0891
L0891     DEY
          BMI L0894
L0894     DEY
          BMI L0897
L0897     DEY
          BMI L089A
L089A     BMI L08BC
          .BYTE $02    ;%00000010
          JSR L0220
          LDY $20,X
          BRK
          LDY $20
          BRK
          LDY $20
          .BYTE $04    ;%00000100
          LDY $20
          BRK
          BMI L091E
          .BYTE $02    ;%00000010
          JSR L1270
          BCS L0924
          .BYTE $02    ;%00000010
          LDY #$70
          .BYTE $12    ;%00010010
          LDY #$70
L08BA     .BYTE $1A    ;%00011010
          LDY #$70
          .BYTE $12    ;%00010010
          BMI L08F0
          .BYTE $02    ;%00000010
          BMI L08F3
          .BYTE $02    ;%00000010
          BMI L08F6
          .BYTE $02    ;%00000010
          BCS L08F9
          .BYTE $02    ;%00000010
          BMI L08FC
          .BYTE $02    ;%00000010
          BCS L08FF
          .BYTE $02    ;%00000010
          BVS L0902
          .BYTE $03    ;%00000011
          BVS L0905
          .BYTE $03    ;%00000011
          BVS L0908
          .BYTE $03    ;%00000011
          BEQ L090B
          .BYTE $03    ;%00000011
          BMI L090E
          .BYTE $03    ;%00000011
          BCS L0911
          .BYTE $03    ;%00000011
          BMI L0914
          .BYTE $02    ;%00000010
          BMI L0917
          .BYTE $02    ;%00000010
          LDY $0030,X
L08EB     LDY $0030,X
          LDY $0030,X
          LDY $0030,X
          .BYTE $17    ;%00010111
          ADC $2032
          .BYTE $52    ;%01010010 'R'
L08F9     BNE L08EB
          .BYTE $0B    ;%00001011
L08FC     STA $F8
          LDA $71
          .BYTE $87    ;%10000111
          .BYTE $F7    ;%11110111
L0902     JSR $C9AB
L0905     BCS L092A
          JSR $D057
          BEQ L0918
          STA $F8
L090E     LDA $010A
L0911     STA $F7
          JSR $C9AB
          BCS L092A
L0918     JSR $D05D
          BEQ L0929
          STA $F8
          LDA $010B
          STA $F7
L0924     JSR $C9AB
          BCS L092A
L0929     CLC
L092A     RTS
          LDA $F8
          LDX #$74
          CMP #$08
          BEQ L0949
          LDX #$64
          CMP #$09
          BEQ L0949
          CMP #$0A
          BEQ L0949
          LDX #$64
          CMP #$05
          BEQ L0949
          LDX #$64
          CMP #$0D
          BEQ L0949
L0949     TXA
          CMP $F7
          RTS
          LDA #$00
          STA $EA
          .BYTE $F7    ;%11110111
          BVC L0971
          .BYTE $97    ;%10010111
          CMP ($1C,X)
          .BYTE $07    ;%00000111
          ADC $0719
          PHP
          BPL L0985
          ASL $200D
          TXS
          BNE L0944
          BRK
          BNE L096D
          LDA #$00
          STA $EA
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L096D     LDA #$FF
          STA $EA
L0971     CLC
          RTS
          SEC
          RTS
          JSR $C9FC
          JSR $C9FC
          RTS
          RTS
          .BYTE $E7    ;%11100111
          BVC L099F
          .BYTE $07    ;%00000111
          ADC $0F1C
          .BYTE $04    ;%00000100
L0985     .BYTE $3C    ;%00111100 '<'
          .BYTE $04    ;%00000100
          .BYTE $A7    ;%10100111
          LDA #$C8
L098A     JSR $CD77
          BCS L0993
          LDA $A7
          BNE L098A
L0993     .BYTE $1F    ;%00011111
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
L0996     .BYTE $02    ;%00000010
          .BYTE $A7    ;%10100111
L0998     NOP
          LDA $A7
          BNE L0998
          .BYTE $FF    ;%11111111
          STA $60,X
          .BYTE $1F    ;%00011111
          CPY $20
          .BYTE $52    ;%01010010 'R'
          BNE L0996
          DEC $C9,X
          PHP
          BEQ L09B5
          CMP #$09
          BEQ L09B5
          CMP #$0A
          BEQ L09B5
          .BYTE $80    ;%10000000
          .BYTE $57    ;%01010111 'W'
L09B5     .BYTE $07    ;%00000111
          BVC L0A0C
          JSR $C9CD
          BCS L0A0C
          .BYTE $47    ;%01000111 'G'
          CPY #$03
          .BYTE $A7    ;%10100111
          BVC L0A0C
          .BYTE $A7    ;%10100111
          JMP ($A546)
          .BYTE $73    ;%01110011 's'
          BNE L0A0C
          .BYTE $BF    ;%10111111
          JMP ($6D07)
          AND $71A5,X
          CMP #$A9
          BEQ L09D7
          BCS L0A0C
L09D7     LDA $6E
          CMP #$FF
          BEQ L0A0C
          CMP #$5F
          BCC L09E3
          .BYTE $80    ;%10000000
          AND #$A5
          .BYTE $72    ;%01110010 'r'
          CMP $ED
          BCS L0A0C
          CMP $F0
          BCC L0A0C
          CMP $EE
          BCS L09FD
L09F1     .BYTE $E7    ;%11100111
          CMP ($10,X)
          LDA $EA
          BNE L0A04
          JSR $CA8D
          .BYTE $80    ;%10000000
          ASL A
L09FD     JSR $D052
          CMP #$08
          BNE L09F1
L0A04     JSR $CAA9
          LDA #$C8
          STA $0102
L0A0C     RTS
          .BYTE $EF    ;%11101111
          JMP ($6CCF)
          .BYTE $DF    ;%11011111
          ASL A
          .BYTE $3F    ;%00111111 '?'
          .BYTE $04    ;%00000100
          .BYTE $0F    ;%00001111
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          LDX $3C
          .BYTE $D2    ;%11010010
          .BYTE $9C    ;%10011100
          .BYTE $1F    ;%00011111
          STA $A5,X
          .BYTE $F3    ;%11110011
          STA $F4
          .BYTE $3C    ;%00111100 '<'
          ASL A
          TYA
          .BYTE $9F    ;%10011111
          STA $60,X
L0A29     .BYTE $EF    ;%11101111
          JMP ($6CDF)
          .BYTE $DF    ;%11011111
          ASL A
          .BYTE $0F    ;%00001111
          .BYTE $04    ;%00000100
          .BYTE $3F    ;%00111111 '?'
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          LDX $3C
          .BYTE $D2    ;%11010010
          .BYTE $9C    ;%10011100
          .BYTE $1F    ;%00011111
          STA $3C,X
          ASL A
          TYA
          .BYTE $3C    ;%00111100 '<'
          BMI L0A29
          .BYTE $9F    ;%10011111
          STA $60,X
L0A44     JMP $CB9B
L0A47     JMP $CBA4
          LDA $EB
          STA $EC
          LDA $70
          STA $EB
          .BYTE $3C    ;%00111100 '<'
          ORA $E6
          JSR $D052
          BNE L0A5D
          JMP $CB9D
L0A5D     LDA #$60
          .BYTE $07    ;%00000111
          ADC $A5E2
          .BYTE $72    ;%01110010 'r'
          CMP $F1
          LDA #$20
          BCS L0A44
          LDA $72
          CMP $F2
          LDA #$21
          BCC L0A44
          LDA $71
          CMP #$3E
          LDA #$01
          BCC L0A47
          LDA $71
          CMP #$B4
          BCC L0A90
          LDA $E7
          BEQ L0A8B
          .BYTE $1A    ;%00011010
          BEQ L0A8B
          STA $E7
          .BYTE $80    ;%10000000
          PHP
L0A8B     LDA #$02
          JMP $CBA4
L0A90     .BYTE $3C    ;%00111100 '<'
          .BYTE $03    ;%00000011
          .BYTE $E7    ;%11100111
          LDA $70
          CMP #$07
          BCS L0A9B
          .BYTE $0F    ;%00001111
          CPY $C9
          .BYTE $7B    ;%01111011 '{'
          LDA #$11
          BCC L0AA4
          JMP $CBA4
L0AA4     LDA #$70
          .BYTE $07    ;%00000111
          STA $72,X
          LDA $70
          CMP #$03
          BCS L0AB4
          .BYTE $3C    ;%00111100 '<'
          BPL L0B25
          .BYTE $80    ;%10000000
          ROR $6CC7,X
          .BYTE $07    ;%00000111
          JSR $CBDA
          BCC L0AE9
          .BYTE $80    ;%10000000
          ROR $A5
          LDX $C9
          ORA $90
          ORA ($60,X)
          LDX $71
          CPX #$68
          BCS L0ACF
          LDA #$03
          .BYTE $80    ;%10000000
          EOR $A5,X
          .BYTE $F4    ;%11110100
          BNE L0AE9
          .BYTE $17    ;%00010111
          .BYTE $04    ;%00000100
          .BYTE $13    ;%00010011
          LDA $6E
          CMP #$5A
          BCS L0AE9
          LDA $70
          CMP #$0A
          BCC L0AE9
          .BYTE $1F    ;%00011111
          .BYTE $04    ;%00000100
          .BYTE $2F    ;%00101111 '/'
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $04    ;%00000100
          LDX $AD
          .BYTE $02    ;%00000010
          ORA ($C9,X)
          .BYTE $FF    ;%11111111
          BEQ L0B16
          LDA $70
          CMP #$06
          BCC L0AFC
L0AF6     LDA #$09
          STA $0102
          RTS
L0AFC     LDA $0102
          BEQ L0B06
          .BYTE $1A    ;%00011010
          STA $0102
          RTS
L0B06     LDA $71
          CMP #$A9
          BCC L0AF6
          LDA #$FF
          STA $0102
          LDA #$28
          STA $98
          RTS
L0B16     LDA $98
          BEQ L0B32
          RTS
          STA $73
L0B1D     JSR $CC98
          JSR $CC5E
          RTS
L0B24     .BYTE $AF    ;%10101111
L0B25     JMP ($7385)
          JSR $CC98
          JSR $CC5E
          JSR $CE67
          RTS
L0B32     LDX #$04
          LDA $71
          CMP #$A2
          BCC L0B56
          LDA $A6
          BNE L0B1D
          LDA $EC
          CMP #$05
          BCS L0B1D
          JSR $CC5E
          JSR $CC81
          BCC L0B55
          CMP #$32
          LDX #$40
          BCC L0B24
          .BYTE $3C    ;%00111100 '<'
          PHA
          .BYTE $73    ;%01110011 's'
L0B55     RTS
L0B56     TXA
          JMP $CBA4
          LDA $A6
          BNE L0BAB
          LDX #$03
          LDA $71
          CMP #$68
          BCC L0BAD
          LDA $98
          BNE L0BAB
          LDA $0102
          CMP #$FF
          BEQ L0BAB
          DEC $E8
          BEQ L0BA1
          .BYTE $3C    ;%00111100 '<'
          ASL A
          TYA
          .BYTE $9F    ;%10011111
          STA $3C,X
          .BYTE $D2    ;%11010010
          .BYTE $9C    ;%10011100
          LDA $72
          CMP $EF
          BCS L0BAB
          LDA $6E
          CMP #$5A
          BCS L0BAB
          LDA $70
          CMP #$0A
          BCC L0BAB
          .BYTE $E7    ;%11100111
          CMP ($19,X)
          LDA $EA
          BNE L0BAB
          .BYTE $CF    ;%11001111
          JMP (L073C)
          LDX $A5
          .BYTE $F3    ;%11110011
          STA $F4
          .BYTE $80    ;%10000000
          ASL A
L0BA1     LDA #$70
          STA $73
          JSR $CC98
          JSR $CC5E
L0BAB     CLC
          RTS
L0BAD     TXA
          SEC
          RTS
          JMP $CBA4
          RTS
          .BYTE $07    ;%00000111
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $0F    ;%00001111
          .BYTE $04    ;%00000100
          .BYTE $80    ;%10000000
          ASL $A6A5
          CMP #$04
          BCC L0BC9
          LDA $70
          CMP #$04
          BCS L0BC9
          .BYTE $1F    ;%00011111
          .BYTE $04    ;%00000100
L0BC9     RTS
          RTS
          .BYTE $07    ;%00000111
          .BYTE $04    ;%00000100
          .BYTE $0F    ;%00001111
          .BYTE $27    ;%00100111 '''
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $2F    ;%00101111 '/'
          .BYTE $04    ;%00000100
          .BYTE $80    ;%10000000
          PHP
          LDA $70
          CMP #$04
          BCS L0BDD
          .BYTE $3F    ;%00111111 '?'
          .BYTE $04    ;%00000100
L0BDD     RTS
          .BYTE $E7    ;%11100111
          JMP (L2709)
          .BYTE $04    ;%00000100
          ASL $07
          .BYTE $04    ;%00000100
          .BYTE $03    ;%00000011
          CLC
          .BYTE $80    ;%10000000
          ORA ($38,X)
          PHP
          .BYTE $FF    ;%11111111
          JMP (L0ACF)
          .BYTE $3F    ;%00111111 '?'
          .BYTE $04    ;%00000100
          .BYTE $1F    ;%00011111
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          .BYTE $3C    ;%00111100 '<'
          BRK
          TYA
          .BYTE $1F    ;%00011111
          STA $9F,X
          STA $28,X
          NOP
          RTS
          .BYTE $37    ;%00110111 '7'
          CPY #$02
          CLC
          RTS
          LDA $6E
          STA $6F
          CMP #$4B
          BCS L0C10
          SEC
          RTS
L0C10     .BYTE $3C    ;%00111100 '<'
          .BYTE $64    ;%01100100 'd'
          ROR $0120
          .BYTE $C3    ;%11000011
          CLC
          RTS
          LDA $6E
          CMP #$64
          BEQ L0C23
          BCC L0C23
          JSR $CC81
L0C23     CLC
          RTS
          JSR $D052
          BNE L0C3E
          JSR $D075
          BEQ L0C7A
          ORA $6C
          STA $6C
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ROR $FF3C
          .BYTE $6F    ;%01101111 'o'
          .BYTE $FF    ;%11111111
          PHP
          JMP $CCFA
L0C3E     JSR $D075
          BEQ L0C65
          LDA $6E
          CMP #$FF
          BEQ L0C4B
          CLC
          RTS
L0C4B     JSR $CFD7
          .BYTE $FB    ;%11111011
          STA $6F
          CMP #$FF
          BEQ L0C59
          STA $6E
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
L0C59     CMP $6E
          BNE L0C63
          .BYTE $3C    ;%00111100 '<'
          .BYTE $34    ;%00110100 '4'
          ROR $0120
          .BYTE $C3    ;%11000011
L0C63     CLC
          RTS
L0C65     LDA $6C
          AND #$F0
          STA $6C
          JSR $CE4A
          .BYTE $3C    ;%00111100 '<'
          BRK
          ROR $003C
          .BYTE $6F    ;%01101111 'o'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $5B    ;%01011011 '['
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $5C    ;%01011100 '\'
L0C7A     SEC
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          PLA
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC #$60
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $62    ;%01100010 'b'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $63    ;%01100011 'c'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $64    ;%01100100 'd'
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC $3C
          BRK
          ROR $3C
          BRK
          .BYTE $67    ;%01100111 'g'
          RTS
          ASL A
          ASL A
          ASL A
          PHA
          PHA
          TAX
          LDA $CD47,X
          STA $F5
          LDA $CD48,X
          STA $F6
          SEI
          JSR $E6F9
          PLA
          TAX
          LDA $CD49,X
          STA $F5
          LDA $CD4A,X
          STA $F6
          .BYTE $02    ;%00000010
          SBC $68,X
          TAX
          LDA $CD4B,X
L0CBE     STA $F5
          LDA $CD4C,X
L0CC3     STA $F6
          .BYTE $B2    ;%10110010
          SBC $66,X
          .BYTE $E7    ;%11100111
          .BYTE $43    ;%01000011 'C'
          INX
          AND #$C1
          BRK
          BRK
          .BYTE $87    ;%10000111
          .BYTE $E7    ;%11100111
L0CD1     .BYTE $77    ;%01110111 'w'
          INX
          AND #$C1
          BRK
          BRK
          LDY $E7,X
          BCS L0CC3
          AND #$C1
          BRK
          BRK
          .BYTE $87    ;%10000111
          .BYTE $E7    ;%11100111
          .BYTE $77    ;%01110111 'w'
          INX
          AND #$C1
          BRK
          BRK
          LDY $E7,X
          TAY
          INX
          AND #$C1
          BRK
          BRK
          ROR $E7
          .BYTE $43    ;%01000011 'C'
          INX
          AND #$C1
          BRK
          BRK
          .BYTE $E7    ;%11100111
          BVC L0D03
          .BYTE $C7    ;%11000111
          BVC L0D0F
          .BYTE $A7    ;%10100111
          BVC L0D1B
          .BYTE $42    ;%01000010 'B'
          .BYTE $80    ;%10000000
          SBC $00A9,X
          .BYTE $07    ;%00000111
          ASL $A91C
          ORA ($37,X)
          ASL A
          .BYTE $17    ;%00010111
          .BYTE $80    ;%10000000
          .BYTE $17    ;%00010111
L0D0F     LDA #$03
          .BYTE $37    ;%00110111 '7'
          ASL A
          BPL L0CBE
          .BYTE $02    ;%00000010
          .BYTE $17    ;%00010111
          ASL $800B
          .BYTE $0B    ;%00001011
L0D1B     LDA #$04
          .BYTE $27    ;%00100111 '''
          ASL A
          .BYTE $04    ;%00000100
          LDA #$05
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          SEC
          RTS
          CLC
          RTS
          .BYTE $07    ;%00000111
          .BYTE $82    ;%10000010
          BMI L0CD1
          .BYTE $8F    ;%10001111
          BNE L0D5B
          .BYTE $07    ;%00000111
          PHP
          .BYTE $03    ;%00000011
          .BYTE $37    ;%00110111 '7'
          ASL $2015
          TXS
          BNE L0CC3
          BEQ L0D4A
          .BYTE $07    ;%00000111
          ADC $201D
          STA $CE,X
          .BYTE $0F    ;%00001111
          ADC $4A20
          DEC $00A9
          SEC
          RTS
L0D4A     .BYTE $17    ;%00010111
          ADC L200E
          STA $CE,X
          .BYTE $1F    ;%00011111
          ADC L08FF
          JSR $CE4A
          LDA #$01
          SEC
          RTS
L0D5B     CLC
          RTS
          .BYTE $E7    ;%11100111
          CPY $3768
          PHP
          AND $F7
          .BYTE $D3    ;%11010011
          .BYTE $62    ;%01100010 'b'
          PHP
          SEI
          .BYTE $FF    ;%11111111
          .BYTE $D3    ;%11010011
          .BYTE $1F    ;%00011111
          .BYTE $D3    ;%11010011
          .BYTE $9F    ;%10011111
          .BYTE $02    ;%00000010
          .BYTE $3C    ;%00111100 '<'
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          BRK
          ORA ($3C,X)
          BRK
          .BYTE $D3    ;%11010011
          .BYTE $3C    ;%00111100 '<'
          BRK
          CLD
          .BYTE $EF    ;%11101111
          .BYTE $02    ;%00000010
          .BYTE $3F    ;%00111111 '?'
          ROL $027F,X
          .BYTE $3F    ;%00111111 '?'
          .BYTE $02    ;%00000010
          PLP
          NOP
          LDA #$00
          SEC
          RTS
          .BYTE $F7    ;%11110111
          BVC L0DC8
          .BYTE $37    ;%00110111 '7'
          ASL A
          .BYTE $3A    ;%00111010 ':'
          .BYTE $07    ;%00000111
          ASL $E737
          .BYTE $D3    ;%11010011
          .BYTE $34    ;%00110100 '4'
          PHP
          SEI
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2F    ;%00101111 '/'
          ROL $026F,X
          .BYTE $2F    ;%00101111 '/'
          .BYTE $02    ;%00000010
          .BYTE $FF    ;%11111111
          .BYTE $02    ;%00000010
          .BYTE $8F    ;%10001111
          .BYTE $02    ;%00000010
          .BYTE $3C    ;%00111100 '<'
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ORA ($3C,X)
          BRK
          DEC $003C
          .BYTE $CF    ;%11001111
          .BYTE $3C    ;%00111100 '<'
          BRK
          BNE L0DEE
          CMP ($D3,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $80    ;%10000000
          CMP $3C,X
          BRK
          CLD
          .BYTE $3C    ;%00111100 '<'
          BRK
          CMP $957F,Y
          .BYTE $3C    ;%00111100 '<'
          BRK
          STA $EA28,Y
          LDA #$01
          SEC
          RTS
L0DC8     CLC
          RTS
          LDA $73
          STA $0100
          LDA #$00
          STA $73
          .BYTE $B7    ;%10110111
          JMP ($BF10)
          JMP ($7808)
          .BYTE $3C    ;%00111100 '<'
          BRK
          DEY
          .BYTE $3C    ;%00111100 '<'
          BRK
          STY $82DF
          .BYTE $BF    ;%10111111
          .BYTE $82    ;%10000010
          PLP
          NOP
          RTS
          PHP
          SEI
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $87    ;%10000111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
L0DEE     .BYTE $89    ;%10001001
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          TXA
          .BYTE $3C    ;%00111100 '<'
          ORA ($8B,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          STA $023C
          STX $82CF
          .BYTE $AF    ;%10101111
          .BYTE $82    ;%10000010
          PLP
          NOP
          RTS
          .BYTE $E7    ;%11100111
          JMP (L080F)
          SEI
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $8B    ;%10001011
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          STA $023C
          STX $82AF
          PLP
          NOP
          RTS
          .BYTE $F7    ;%11110111
          BVC L0E24
          PHP
          SEI
          .BYTE $3C    ;%00111100 '<'
          CMP $90
          .BYTE $3C    ;%00111100 '<'
          DEC $0F91
          .BYTE $82    ;%10000010
          PLP
          NOP
L0E24     RTS
          .BYTE $F7    ;%11110111
          BVC L0E34
          PHP
          SEI
          .BYTE $3C    ;%00111100 '<'
          BNE L0DBD
          .BYTE $3C    ;%00111100 '<'
          DEC $0F91
          .BYTE $82    ;%10000010
          PLP
          NOP
L0E34     RTS
          .BYTE $F7    ;%11110111
          BVC L0E44
          PHP
          SEI
          .BYTE $3C    ;%00111100 '<'
          DEC $3C90,X
          DEC $0F91
          .BYTE $82    ;%10000010
          PLP
          NOP
L0E44     RTS
          BRK
          BRK
          ORA ($15,X)
          BRK
          ORA $1A
          BRK
          ORA $FF
          .BYTE $FF    ;%11111111
          BRK
          BRK
          ORA ($1E,X)
          BRK
          ORA L0000
          BRK
          ORA $1E
          BRK
          ORA $FF
          .BYTE $FF    ;%11111111
          BRK
          BRK
          ORA ($1E,X)
          BRK
          .BYTE $14    ;%00010100
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          ASL $1400,X
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          ASL $1400,X
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          BRK
          BRK
          ASL A
          ASL $1400,X
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          ASL $1400,X
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          ASL $1400,X
          .BYTE $7A    ;%01111010 'z'
          BRK
          .BYTE $14    ;%00010100
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $74    ;%01110100 't'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $7A    ;%01111010 'z'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $7B    ;%01111011 '{'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ADC $3C,X
          .BYTE $FF    ;%11111111
          .BYTE $7C    ;%01111100 '|'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ADC $3C60,X
          BRK
          ROR $3C,X
          BRK
          .BYTE $77    ;%01110111 'w'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          SEI
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ADC $7860,Y
          BRK
          BRK
          .BYTE $83    ;%10000011
          ORA (L0000,X)
          STY $0305
          STX $040A
          BCC L0ECC
          .BYTE $07    ;%00000111
          .BYTE $92    ;%10010010
          ASL $9407,X
          PLP
          .BYTE $07    ;%00000111
          STA $32,X
          .BYTE $07    ;%00000111
          .BYTE $97    ;%10010111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $07    ;%00000111
          STA $0746,Y
          .BYTE $9C    ;%10011100
          BVC L0ED2
          .BYTE $9F    ;%10011111
L0ECC     .BYTE $5A    ;%01011010 'Z'
          .BYTE $07    ;%00000111
          LDX #$64
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
L0ED2     .BYTE $64    ;%01100100 'd'
          BRK
          JMP (L0000)
          BVS L0EDA
          BRK
L0EDA     .BYTE $77    ;%01110111 'w'
          ORA $03
          ROR $040A,X
          DEY
          .BYTE $14    ;%00010100
          .BYTE $07    ;%00000111
          .BYTE $8F    ;%10001111
          ASL $9507,X
          PLP
          .BYTE $07    ;%00000111
          .BYTE $97    ;%10010111
          .BYTE $32    ;%00110010 '2'
          .BYTE $07    ;%00000111
          STA L073C,Y
          .BYTE $9B    ;%10011011
          LSR $07
          STA L0750,X
          LDY #$5A
          .BYTE $07    ;%00000111
          LDX #$64
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
          .BYTE $64    ;%01100100 'd'
          BRK
          .BYTE $74    ;%01110100 't'
          BRK
          BRK
          ADC $0001,X
          STA ($05,X)
          .BYTE $03    ;%00000011
          TXA
          ASL A
          .BYTE $04    ;%00000100
          STX $14,Y
          .BYTE $07    ;%00000111
          .BYTE $9F    ;%10011111
          ASL $A907,X
          PLP
          .BYTE $07    ;%00000111
          .BYTE $B3    ;%10110011
          .BYTE $32    ;%00110010 '2'
          .BYTE $07    ;%00000111
          LDA L073C,X
          .BYTE $C7    ;%11000111
          LSR $07
          CMP ($50),Y
          .BYTE $07    ;%00000111
          .BYTE $DB    ;%11011011
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $07    ;%00000111
          .BYTE $DB    ;%11011011
          .BYTE $64    ;%01100100 'd'
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
          .BYTE $64    ;%01100100 'd'
          BRK
          .BYTE $74    ;%01110100 't'
          BRK
          BRK
          .BYTE $83    ;%10000011
          ORA (L0000,X)
          .BYTE $87    ;%10000111
          ORA $03
          BCC L0F3D
          .BYTE $04    ;%00000100
          TXS
          .BYTE $14    ;%00010100
          .BYTE $07    ;%00000111
          LDY $1E
          .BYTE $07    ;%00000111
          LDX $0728
L0F3D     .BYTE $B7    ;%10110111
          .BYTE $32    ;%00110010 '2'
          .BYTE $07    ;%00000111
          CMP ($3C,X)
          .BYTE $07    ;%00000111
          .BYTE $CB    ;%11001011
          LSR $07
          CMP $50,X
          .BYTE $07    ;%00000111
          .BYTE $DF    ;%11011111
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $07    ;%00000111
          .BYTE $DF    ;%11011111
          .BYTE $64    ;%01100100 'd'
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
          .BYTE $64    ;%01100100 'd'
          BRK
          .BYTE $34    ;%00110100 '4'
          BRK
          .BYTE $22    ;%00100010 '"'
          .BYTE $47    ;%01000111 'G'
          BRK
          JSR $D052
          JSR $D019
          LDY #$00
          .BYTE $3C    ;%00111100 '<'
          .BYTE $07    ;%00000111
          SBC $6D17,Y
          .BYTE $14    ;%00010100
          LDX #$00
          LDA L006B
          .BYTE $62    ;%01100010 'b'
          ROR A
          PLA
          CMP #$1C
          BCC L0F72
          LDA #$1B
L0F72     TAX
          LDA $C57D,X
          .BYTE $3A    ;%00111010 ':'
          STA $F9
          LDA ($F5),Y
          CMP #$FF
          BEQ L0F8B
          CLC
          SBC #$F9
          CMP $6A
          BCS L0F8B
          INY
          INY
          INY
          .BYTE $80    ;%10000000
          INC $B1C8
          SBC $C8,X
          SEC
          SBC ($F5),Y
          RTS
          LDA #$FF
          RTS
          LDA #$FF
          RTS
          CMP #$09
          BEQ L0FC9
          CMP #$0A
          BEQ L0FC9
          CMP #$08
          BEQ L0FB1
          CMP #$05
          BNE L0FB1
          LDA $C8
          CMP #$01
          BEQ L0FB9
          .BYTE $80    ;%10000000
          BPL L0FEE
          ROL A
          SBC $3C,X
          .BYTE $CF    ;%11001111
          INC $80,X
          CLC
L0FB9     .BYTE $3C    ;%00111100 '<'
          TAY
          SBC $3C,X
          .BYTE $CF    ;%11001111
          INC $80,X
          BPL L0FFE
          ROR $3CF5,X
          .BYTE $CF    ;%11001111
          INC $80,X
          PHP
L0FC9     .BYTE $3C    ;%00111100 '<'
          .BYTE $54    ;%01010100 'T'
          SBC $3C,X
          .BYTE $CF    ;%11001111
          INC $80,X
          BRK
          RTS
          LDA $6C
          AND #$0F
          RTS
          LDA $0108
          AND #$0F
          RTS
          LDA $0109
          AND #$0F
          RTS
          JSR $D052
          STA $F7
          JSR $D057
          ORA $F7
          STA $F7
          JSR $D05D
          ORA $F7
          RTS
          LDA $71
          CMP #$2A
          BCC L0FFF
          JSR $D0C3
L0FFE     RTS
L0FFF     LDA #$00
          RTS
          .BYTE $17    ;%00010111
          PHP
          .BYTE $FA    ;%11111010
          LDA $010B
          CMP #$2A
          BCC L0FFF
          LDX $C8
          LDA $D093,X
          .BYTE $80    ;%10000000
          .BYTE $1A    ;%00011010
          ORA ($02,X)
          .BYTE $02    ;%00000010
          .BYTE $04    ;%00000100
          ORA $06
          .BYTE $07    ;%00000111
          LDX #$FF
          LDA $010A
          CMP #$2A
          BCC L0FFF
          LDA #$00
          .BYTE $D7    ;%11010111
          PHP
          ORA ($2B,X)
          .BYTE $97    ;%10010111
          ASL $01
          .BYTE $0B    ;%00001011
          TAX
          LDA $D0BB,X
          BEQ L103A
          CMP #$FF
          BNE L103A
          JSR $D0C3
L103A     RTS
          BRK
          .BYTE $FF    ;%11111111
          ORA L0000
          ORA #$08
          ORA #$08
          LDA $C7
          CMP #$73
          BEQ L1050
          CMP #$70
          BEQ L1053
          LDA #$08
          RTS
L1050     LDA #$09
          RTS
L1053     LDA #$08
          RTS
          .BYTE $4F    ;%01001111 'O'
          ASL A
          .BYTE $6F    ;%01101111 'o'
          ASL A
          RTS
          .BYTE $57    ;%01010111 'W'
          CPY #$03
          .BYTE $17    ;%00010111
          ADC $5F04
          ASL A
          .BYTE $7F    ;%01111111
          ASL A
          RTS
          LDY #$00
          JSR $D052
          BNE L1078
          JSR $D057
          BNE L1086
          JSR $D05D
          BNE L1095
          RTS
L1078     LDA $6E
          LDX $0106
          CPX #$FF
          BEQ L1089
          CMP $0106
          BCS L1089
L1086     LDA $0106
L1089     LDX $0107
          CPX #$FF
          BEQ L1098
          CMP $0107
          BCS L1098
L1095     LDA $0107
L1098     TAX
          LDX #$FF
          RTS
          .BYTE $67    ;%01100111 'g'
          .BYTE $3F    ;%00111111 '?'
          BPL L1117
          AND $AD0D,X
          .BYTE $1A    ;%00011010
          ORA ($C9,X)
          .BYTE $FF    ;%11111111
          BEQ L10AF
          .BYTE $3A    ;%00111010 ':'
          STA $011A
          .BYTE $7F    ;%01111111
          AND $E760,X
          BVC L10BE
          .BYTE $77    ;%01110111 'w'
          AND $1709,Y
          ADC $A705
          BVC L10BF
L10BC     CLI
          .BYTE $C2    ;%11000010
L10BE     RTS
L10BF     JSR $D0E6
          CMP #$FF
          BEQ L10BC
          LDA $C0
          BNE L10BC
          LDA $C1
          BNE L10BC
          .BYTE $27    ;%00100111 '''
          .BYTE $BF    ;%10111111
          .BYTE $EB    ;%11101011
          LDA $011A
          CMP #$FF
          BNE L10BC
          LDA $C6
          CMP #$03
          BNE L10BC
          SEI
          JSR $D1BB
          .BYTE $3C    ;%00111100 '<'
          BRK
          ROL $003C,X
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          BRK
          AND $3F6F,X
          .BYTE $8F    ;%10001111
          .BYTE $3F    ;%00111111 '?'
          CLI
          NOP
          .BYTE $42    ;%01000010 'B'
          NOP
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          .BYTE $7F    ;%01111111
          .BYTE $3F    ;%00111111 '?'
          JSR $DA11
          .BYTE $3C    ;%00111100 '<'
          .BYTE $04    ;%00000100
          LDX #$EF
          STA $CF,X
          .BYTE $3F    ;%00111111 '?'
          .BYTE $AF    ;%10101111
          ROL $A868,X
          PLA
          TAX
          PLA
          RTI
          PHA
          TXA
          PHA
          TYA
          PHA
          .BYTE $3C    ;%00111100 '<'
          BRK
L1117     .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          BRK
          AND $3FCF,X
          .BYTE $7F    ;%01111111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $9F    ;%10011111
          .BYTE $3F    ;%00111111 '?'
          LDX #$BE
          TXS
          LDA #$04
          JMP $CD17
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          .BYTE $D7    ;%11010111
          BVC L113A
          .BYTE $57    ;%01010111 'W'
          PHP
          ORA $37
          ASL $EF02
          PHP
L113A     RTI
          LDA $39
          AND #$E7
          STA $39
          CLC
          RTS
          LDA $39
          AND #$EF
          ORA #$08
          STA $39
          SEC
          RTS
          .BYTE $97    ;%10010111
          .BYTE $BF    ;%10111111
          ORA ($60,X)
          .BYTE $37    ;%00110111 '7'
          ASL A
          .BYTE $03    ;%00000011
          .BYTE $E7    ;%11100111
          BVC L1160
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          JMP $D206
L1160     .BYTE $77    ;%01110111 'w'
          .BYTE $BF    ;%10111111
          PHP
          JSR $D4E2
          BCC L116B
          JMP $D206
L116B     .BYTE $F7    ;%11110111
          ASL $04
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $8F    ;%10001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $D7    ;%11010111
          ASL $04
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $AF    ;%10101111
          .BYTE $44    ;%01000100 'D'
          .BYTE $B7    ;%10110111
          ASL $04
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          .BYTE $44    ;%01000100 'D'
          LDA L00CD
          CMP #$01
          BNE L1197
          .BYTE $77    ;%01110111 'w'
          .BYTE $BF    ;%10111111
          PHP
          .BYTE $F7    ;%11110111
          BVC L1197
          .BYTE $07    ;%00000111
          .BYTE $44    ;%01000100 'D'
          ASL $1080
L1197     .BYTE $E7    ;%11100111
          JMP ($A70F)
          JMP ($E70C)
          BVC L11A7
          .BYTE $C7    ;%11000111
          BVC L11A7
          .BYTE $1F    ;%00011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L11A7     .BYTE $0F    ;%00001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $B7    ;%10110111
          JMP (L270F)
          .BYTE $44    ;%01000100 'D'
          ASL $2F
          .BYTE $44    ;%01000100 'D'
          .BYTE $1F    ;%00011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          AND ($3F,X)
          .BYTE $44    ;%01000100 'D'
          .BYTE $0F    ;%00001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $1B    ;%00011011
          .BYTE $E7    ;%11100111
          JMP (L3F04)
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $14    ;%00010100
          .BYTE $0F    ;%00001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $C7    ;%11000111
          JMP (L2703)
          .BYTE $44    ;%01000100 'D'
          ASL A
          .BYTE $17    ;%00010111
          CPY $03
          .BYTE $E7    ;%11100111
          CPY $04
          .BYTE $2F    ;%00101111 '/'
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $3F    ;%00111111 '?'
          .BYTE $44    ;%01000100 'D'
          JSR $D497
          CMP #$01
          BNE L11EF
          JSR $D293
          LDA L00CD
          CMP #$02
          BNE L11EE
          .BYTE $77    ;%01110111 'w'
          .BYTE $BF    ;%10111111
          ORA $F7
          BVC L11EE
          .BYTE $6F    ;%01101111 'o'
          EOR ($60,X)
L11EF     CMP #$02
          BNE L11F7
          JSR $D2F7
          RTS
L11F7     CMP #$03
          BNE L11FF
          JSR $D33F
          RTS
L11FF     CMP #$86
          BNE L1207
          JSR $D3BE
          RTS
L1207     CMP #$05
          BNE L120F
          JSR $D3FF
          RTS
L120F     JSR $D576
          RTS
          .BYTE $A7    ;%10100111
          .BYTE $BF    ;%10111111
          .BYTE $04    ;%00000100
          JSR $D576
          RTS
          LDA $9D
          LDX #$02
          CMP #$14
          BCS L122C
          LDX #$01
          CMP #$0A
          BCS L122C
          LDA #$00
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L122C     TXA
          JSR $D441
          STA L0040
          LDA $9D
          TAX
          CMP #$0A
          BCC L1243
          SBC #$0A
          TAX
          CMP #$0A
          BCC L1243
          SBC #$0A
          TAX
L1243     TXA
          JSR $D441
          .BYTE $67    ;%01100111 'g'
          EOR ($06,X)
          STA $41
          .BYTE $6F    ;%01101111 'o'
          EOR ($80,X)
          .BYTE $02    ;%00000010
          STA $41
          LDA $9E
          LDX #$00
          CMP #$0A
          BCC L125F
          SBC #$0A
          INX
          .BYTE $80    ;%10000000
          .BYTE $F7    ;%11110111
L125F     TXA
          JSR $D441
          STA $42
          LDA $9E
          TAX
          CMP #$0A
          BCC L1270
          SBC #$0A
          .BYTE $80    ;%10000000
          .BYTE $F7    ;%11110111
L1270     TXA
          JSR $D441
          STA $43
          RTS
          JSR $D0E6
          BEQ L1282
          .BYTE $C7    ;%11000111
          BVC L128D
          .BYTE $07    ;%00000111
          ADC $070B
          ADC $2004
          STA ($D5,X)
          RTS
          JSR $D576
          RTS
L128D     CMP #$FF
          BEQ L12BE
          .BYTE $F7    ;%11110111
          JMP ($A508)
          ROR $64C9
          BCC L129C
          LDA #$64
L129C     TAX
          LDA $D5AD,X
          .BYTE $F7    ;%11110111
          JMP ($C918)
          .BYTE $5F    ;%01011111 '_'
          BCC L12BB
          LDA #$5F
          .BYTE $17    ;%00010111
          CPY $0F
          LDA #$63
          .BYTE $C7    ;%11000111
          CPY $0A
          LDA #$64
          .BYTE $E7    ;%11100111
          CPY $05
          .BYTE $A7    ;%10100111
          CPY $02
          LDA #$5F
L12BB     JSR $D36E
L12BE     RTS
          LDA $6E
          .BYTE $C7    ;%11000111
          CPY #$1E
          LDA $0106
          .BYTE $A7    ;%10100111
          CPY #$18
          LDA $0107
          .BYTE $87    ;%10000111
          CPY #$12
          JSR $D0E6
          BNE L12E2
          .BYTE $07    ;%00000111
          ADC $2005
          STA ($D5,X)
          .BYTE $80    ;%10000000
          .BYTE $0C    ;%00001100
          JSR $D576
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
L12E2     CMP #$FF
          BEQ L12ED
          JSR $D36E
          LDA $C0
          STA L0040
L12ED     RTS
          PHA
          CMP #$64
          BCC L1304
          CMP #$C8
          BCC L12FB
          LDA #$02
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L12FB     LDA #$01
          JSR $D441
          STA $41
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1304     LDA #$00
          STA $41
          PLA
          LDY #$00
          CMP #$0A
          BCC L1314
          SBC #$0A
          INY
          .BYTE $80    ;%10000000
          .BYTE $F7    ;%11110111
L1314     PHA
          TYA
          CMP #$14
          BCS L1324
          CMP #$0A
          BCS L1328
          CMP #$00
          BNE L132C
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
L1324     SBC #$14
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1328     SBC #$0A
          .BYTE $80    ;%10000000
          BRK
L132C     JSR $D441
          STA $42
          PLA
          JSR $D441
          STA $43
          .BYTE $6F    ;%01101111 'o'
          .BYTE $43    ;%01000011 'C'
          LDA #$00
          STA L0040
          RTS
          LDA $71
          LSR A
          LSR A
          LSR A
          LSR A
          CMP #$0A
          BCC L134A
          ADC #$36
L134A     JSR $D441
          STA L0040
          LDA $71
          AND #$0F
          CMP #$0A
          BCC L1359
          ADC #$36
L1359     JSR $D441
          STA $41
          LDA $70
          LSR A
          LSR A
          LSR A
          LSR A
          CMP #$0A
          BCC L136A
          ADC #$36
L136A     JSR $D441
          STA $42
          LDA $70
          AND #$0F
          CMP #$0A
          BCC L1379
          ADC #$36
L1379     JSR $D441
          STA $43
          RTS
          LDA $72
          LSR A
          LSR A
          LSR A
          LSR A
          CMP #$0A
          BCC L138B
          ADC #$36
L138B     JSR $D441
          STA L0040
          LDA $72
          AND #$0F
          CMP #$0A
          BCC L139A
          ADC #$36
L139A     JSR $D441
          STA $41
          LDA #$00
          STA $42
          LDA $6C
          AND #$0F
          TAY
          LDA $D431,Y
          JSR $D441
          STA $43
          RTS
          JSR L3231
          .BYTE $33    ;%00110011 '3'
          .BYTE $34    ;%00110100 '4'
          AND $36,X
          .BYTE $37    ;%00110111 '7'
          SEC
          AND $4241,Y
          .BYTE $43    ;%01000011 'C'
          .BYTE $44    ;%01000100 'D'
          EOR $46
          CMP #$0A
          BCS L13C9
          ADC #$30
          .BYTE $80    ;%10000000
          ASL $C9
          RTS
          BCC L13CF
          SBC #$20
L13CF     SEC
          SBC #$20
          TAY
          LDA $D457,Y
          RTS
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BEQ L1376
          BRK
          BRK
          BRK
          .BYTE $02    ;%00000010
          BRK
          BRK
          SBC $60,X
          LDX $F2,Y
          .BYTE $63    ;%01100011 'c'
          .BYTE $D3    ;%11010011
          .BYTE $D7    ;%11010111
          ADC ($F7),Y
          .BYTE $F3    ;%11110011
          BRK
          BRK
          BRK
          .BYTE $12    ;%00010010
          BRK
          BRK
          BRK
          .BYTE $77    ;%01110111 'w'
          .BYTE $C7    ;%11000111
          STA $E6,X
          .BYTE $97    ;%10010111
          .BYTE $17    ;%00010111
          CMP $67,X
          RTI
          CPX L0000
          STA $75
          BRK
          BRK
          BRK
          BRK
          AND L0000,X
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          STA L0000,X
          BEQ L1426
          .BYTE $80    ;%10000000
          LDX #$04
          .BYTE $77    ;%01110111 'w'
          CPY #$0E
          LDA $9F
          LSR A
          BCS L1460
          LDX #$03
          LSR A
          BCS L1460
L1426     LDX #$05
          .BYTE $80    ;%10000000
          ROL $A2,X
          .BYTE $03    ;%00000011
          .BYTE $E7    ;%11100111
          CPY #$31
          LDA $C6
          CMP #$00
          BNE L1438
          .BYTE $C7    ;%11000111
          BVC L143C
L1438     CMP #$04
          BNE L1456
L143C     LDA $9F
          BEQ L1452
          LDA $C3
          BNE L1446
          LDA #$05
L1446     LDX #$00
          .BYTE $E2    ;%11100010
          .BYTE $9F    ;%10011111
          LSR A
          PLA
          BCC L1452
          LDA #$02
          .BYTE $80    ;%10000000
          .BYTE $0F    ;%00001111
L1452     LDA #$01
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
L1456     TAX
          BNE L1460
          LDX #$02
          .BYTE $B7    ;%10110111
          BVC L1460
          LDX #$01
L1460     TXA
          RTS
          LDA L00CD
          CMP #$03
          BNE L1475
          .BYTE $97    ;%10010111
          .BYTE $44    ;%01000100 'D'
          ORA $20
          .BYTE $5A    ;%01011010 'Z'
          CMP $80,X
          ADC ($20,X)
          ADC ($D5,X)
          .BYTE $80    ;%10000000
          .BYTE $5C    ;%01011100 '\'
L1475     CMP #$04
          BNE L1486
          .BYTE $B7    ;%10110111
          .BYTE $44    ;%01000100 'D'
          ORA $20
          .BYTE $5A    ;%01011010 'Z'
          CMP $80,X
          BVC L14A2
          PLA
          CMP $80,X
          .BYTE $4B    ;%01001011 'K'
L1486     CMP #$05
          BNE L1497
          .BYTE $D7    ;%11010111
          .BYTE $44    ;%01000100 'D'
          ORA $20
          .BYTE $5A    ;%01011010 'Z'
          CMP $80,X
          .BYTE $3F    ;%00111111 '?'
          JSR $D56F
          .BYTE $80    ;%10000000
          .BYTE $3A    ;%00111010 ':'
L1497     CMP #$06
          BNE L14A8
          .BYTE $97    ;%10010111
          .BYTE $44    ;%01000100 'D'
          ORA $20
          .BYTE $5A    ;%01011010 'Z'
          CMP $80,X
L14A2     ROL $5320
          CMP $80,X
          AND #$C9
          .BYTE $07    ;%00000111
          BNE L14C3
          .BYTE $87    ;%10000111
          .BYTE $44    ;%01000100 'D'
          ORA $A7
          .BYTE $44    ;%01000100 'D'
          .BYTE $07    ;%00000111
          .BYTE $80    ;%10000000
          ASL A
          JSR $D568
          .BYTE $80    ;%10000000
          CLC
          JSR $D56F
          .BYTE $80    ;%10000000
          .BYTE $13    ;%00010011
          JSR $D561
          .BYTE $80    ;%10000000
          ASL $08C9
          BNE L14CF
          .BYTE $C7    ;%11000111
          .BYTE $44    ;%01000100 'D'
          NOP
          .BYTE $A7    ;%10100111
          .BYTE $44    ;%01000100 'D'
          SBC ($80),Y
          NOP
L14CF     CLC
          RTS
          SEC
          RTS
          .BYTE $8F    ;%10001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $AF    ;%10101111
          .BYTE $44    ;%01000100 'D'
          .BYTE $CF    ;%11001111
          .BYTE $44    ;%01000100 'D'
          RTS
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          RTS
          .BYTE $8F    ;%10001111
          .BYTE $44    ;%01000100 'D'
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          RTS
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $AF    ;%10101111
          .BYTE $44    ;%01000100 'D'
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          RTS
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $CF    ;%11001111
          .BYTE $44    ;%01000100 'D'
          RTS
          LDA #$00
          STA L0040
          STA $41
          STA $42
          STA $43
          RTS
          LDX #$00
          LDA $D591,X
          BEQ L1510
          JSR $D441
          STA L0040,X
          INX
          .BYTE $80    ;%10000000
          .BYTE $F3    ;%11110011
L1510     RTS
          JSR $4120
          .BYTE $43    ;%01000011 'C'
          BRK
          .BYTE $3F    ;%00111111 '?'
          .BYTE $44    ;%01000100 'D'
          LDX #$00
          LDA $D5A8,X
          BEQ L1527
          JSR $D441
          STA L0040,X
          INX
          .BYTE $80    ;%10000000
          .BYTE $F3    ;%11110011
L1527     RTS
          AND ($38),Y
          .BYTE $72    ;%01110010 'r'
          .BYTE $37    ;%00110111 '7'
          BRK
          BRK
          ORA $05
          ORA $05
          ORA $0A
          ASL A
          ASL A
          ASL A
          ASL A
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          ASL $1E1E,X
          ASL $1E1E,X
          ASL $1E1E,X
          ASL $281E,X
          PLP
          PLP
          PLP
          PLP
          PLP
          PLP
          PLP
          PLP
          PLP
          PLP
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          LSR $46
          LSR $46
          LSR $46
          LSR $46
          LSR $46
          BVC L15C8
          BVC L15CA
          BVC L15CC
          BVC L15CE
          BVC L15D0
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $5A    ;%01011010 'Z'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          .BYTE $64    ;%01100100 'd'
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $F7
          PHA
          LDA $F8
          PHA
          LDA $F9
          PHA
          LDA $FA
          PHA
          LDA $81
          BEQ L15B6
          .BYTE $A7    ;%10100111
          STA ($1E,X)
          .BYTE $C7    ;%11000111
          STA ($21,X)
          JSR $D668
          LDA $81
          BNE L15B6
          .BYTE $9F    ;%10011111
          .BYTE $34    ;%00110100 '4'
L15B6     PLA
          STA $FA
          PLA
          STA $F9
          PLA
          STA $F8
          PLA
          STA $F7
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
L15C8     JSR $D877
          JMP $D630
L15CE     JSR $D897
          .BYTE $C7    ;%11000111
          STA ($11,X)
          .BYTE $A7    ;%10100111
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
          .BYTE $87    ;%10000111
          .BYTE $80    ;%10000000
          PHP
          .BYTE $17    ;%00010111
          .BYTE $80    ;%10000000
          PHP
          JSR $D754
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $D74E
          JMP $D630
          .BYTE $E7    ;%11100111
          STA ($12,X)
          .BYTE $97    ;%10010111
          STA ($03,X)
          JMP $D724
          .BYTE $07    ;%00000111
          STA ($36,X)
          .BYTE $27    ;%00100111 '''
          STA ($4E,X)
          .BYTE $47    ;%01000111 'G'
          STA ($26,X)
          JMP $D6FB
          LDA $35
          .BYTE $FF    ;%11111111
          STA ($AD,X)
          ORA ($01,X)
          BEQ L160D
          .BYTE $1A    ;%00011010
          STA $0101
          JMP $D777
L160D     JSR $D7BB
          BCC L161F
          JSR $D77F
          BCC L161F
          JSR $D791
          BCC L161F
          JSR $D7A3
L161F     RTS
          .BYTE $5F    ;%01011111 '_'
          STA ($A5,X)
          AND $85,X
          .BYTE $72    ;%01110010 'r'
          JSR $D7AC
          RTS
          .BYTE $1F    ;%00011111
          STA ($A0,X)
          ADC $A5
          AND $85,X
          .BYTE $6B    ;%01101011 'k'
          PHA
          JSR $E651
          PLA
          JSR $D804
          LDY #$5F
          JSR $E61D
L163F     JSR $D791
          BCS L1658
          RTS
          .BYTE $3F    ;%00111111 '?'
          STA ($A0,X)
          .BYTE $62    ;%01100010 'b'
          LDA $35
          PHA
          JSR $E651
          PLA
          JSR $D830
          LDY #$5D
          JSR $E61D
L1658     .BYTE $D7    ;%11010111
L1659     .BYTE $80    ;%10000000
          ASL $AF
          .BYTE $80    ;%10000000
          JSR $D849
          RTS
          .BYTE $BF    ;%10111111
          .BYTE $80    ;%10000000
          LDY #$5F
          JSR $E611
          BNE L1675
          LDY #$5D
          JSR $E611
          BNE L1675
          JSR $D7A3
          RTS
L1675     JSR $D77F
          BCS L163F
          RTS
          .BYTE $7F    ;%01111111
          STA ($A5,X)
          AND $85,X
          ROR A
          STA $71
          JSR $D7D4
          LDA $71
          LDY #$68
          JSR $E669
          DEC $61
          .BYTE $D7    ;%11010111
          .BYTE $80    ;%10000000
          ASL $8F
          .BYTE $80    ;%10000000
          JSR $D849
          RTS
          .BYTE $9F    ;%10011111
          .BYTE $80    ;%10000000
          JSR $D7AC
          BCS L16A0
          RTS
L16A0     JSR $D0DB
          RTS
          .BYTE $9F    ;%10011111
          STA ($A5,X)
          .BYTE $34    ;%00110100 '4'
          AND #$07
          CMP #$04
          BEQ L16B7
          LDA $35
          STA $010A
          JSR $D7C4
          RTS
L16B7     LDA $35
          STA $010B
          JSR $D77F
          BCC L16C9
          JSR $D791
          BCC L16C9
          JSR $D7A3
L16C9     RTS
          LDA $81
          BNE L16D7
          .BYTE $A7    ;%10100111
          .BYTE $80    ;%10000000
          BCC L1659
          .BYTE $80    ;%10000000
          CPY $07
          .BYTE $80    ;%10000000
          ORA ($60,X)
          .BYTE $1F    ;%00011111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $62    ;%01100010 'b'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $63    ;%01100011 'c'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $64    ;%01100100 'd'
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC $3C
          BRK
          ROR $3C
          BRK
          .BYTE $67    ;%01100111 'g'
          .BYTE $3C    ;%00111100 '<'
          BRK
          PLA
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC #$A9
          PHP
          STA $0101
          .BYTE $EF    ;%11101111
          STA ($A9,X)
          .BYTE $02    ;%00000010
          JSR $D7CD
          RTS
          LDY #$5F
          JSR $E611
          BNE L1708
          SEC
          RTS
L1708     .BYTE $0F    ;%00001111
          STA ($A9,X)
          BRK
          JSR $D7CD
          CLC
          RTS
          LDY #$5D
          JSR $E611
          BNE L171A
          SEC
          RTS
L171A     .BYTE $2F    ;%00101111 '/'
          STA ($A9,X)
          ORA ($20,X)
          CMP $18D7
          RTS
          .BYTE $4F    ;%01001111 'O'
          STA ($A9,X)
          .BYTE $02    ;%00000010
          JSR $D7CD
          CLC
          RTS
          LDA $61
          BNE L1732
          SEC
          RTS
L1732     .BYTE $6F    ;%01101111 'o'
          STA ($A9,X)
          .BYTE $03    ;%00000011
          JSR $D7CD
          CLC
          RTS
          .BYTE $8F    ;%10001111
          STA ($A9,X)
          .BYTE $07    ;%00000111
          JSR $D7CD
          CLC
          RTS
          .BYTE $8F    ;%10001111
          STA ($A9,X)
          .BYTE $04    ;%00000100
          JSR $D7CD
          CLC
          RTS
          ORA #$10
          STA $34
          .BYTE $DF    ;%11011111
          AND $E760,X
          JMP ($6001)
          CMP $7B
          BEQ L175E
          BCC L176E
L175E     CMP $7A
          BEQ L176B
          BCC L176B
          LDX $7A
          STX $7B
          STA $7A
          RTS
L176B     STA $7B
          RTS
L176E     CMP $7D
          BEQ L1774
          BCS L1783
L1774     CMP $7C
          BEQ L1781
          BCS L1781
          LDX $7C
          STX $7D
          STA $7C
          RTS
L1781     STA $7D
L1783     RTS
          CMP $77
          BEQ L178A
          BCC L179A
L178A     CMP $76
          BEQ L1797
          BCC L1797
          LDX $76
          STX $77
          STA $76
          RTS
L1797     STA $77
          RTS
L179A     CMP $79
          BEQ L17A0
          BCS L17AF
L17A0     CMP $78
          BEQ L17AD
          BCS L17AD
          LDX $78
          STX $79
          STA $78
          RTS
L17AD     STA $79
L17AF     RTS
          CMP L0074
          BCC L17B7
          STA L0074
          RTS
L17B7     CMP $75
          BCS L17BD
          STA $75
L17BD     RTS
          .BYTE $C7    ;%11000111
          .BYTE $D3    ;%11010011
          .BYTE $03    ;%00000011
          .BYTE $DF    ;%11011111
          .BYTE $80    ;%10000000
          RTS
          LDA $81
          BEQ L17C9
          RTS
L17C9     .BYTE $3C    ;%00111100 '<'
          PHP
          .BYTE $DA    ;%11011010
          .BYTE $DF    ;%11011111
          .BYTE $D3    ;%11010011
          .BYTE $4F    ;%01001111 'O'
          .BYTE $02    ;%00000010
          .BYTE $7F    ;%01111111
          .BYTE $02    ;%00000010
          .BYTE $4F    ;%01001111 'O'
          .BYTE $D3    ;%11010011
          .BYTE $AF    ;%10101111
          .BYTE $D3    ;%11010011
          .BYTE $DF    ;%11011111
          .BYTE $80    ;%10000000
          .BYTE $AF    ;%10101111
          STA ($6F,X)
          .BYTE $D3    ;%11010011
          LDA #$06
          JSR $D7CD
          RTS
          .BYTE $3C    ;%00111100 '<'
          PHP
          .BYTE $DA    ;%11011010
          .BYTE $0F    ;%00001111
          .BYTE $02    ;%00000010
          .BYTE $3F    ;%00111111 '?'
          .BYTE $02    ;%00000010
          .BYTE $2F    ;%00101111 '/'
          .BYTE $D3    ;%11010011
          .BYTE $8F    ;%10001111
          .BYTE $D3    ;%11010011
          .BYTE $CF    ;%11001111
          STA ($6F,X)
          .BYTE $D3    ;%11010011
          LDA #$05
          JSR $D7CD
          RTS
          .BYTE $77    ;%01110111 'w'
          .BYTE $D3    ;%11010011
          .BYTE $0B    ;%00001011
          LDA $35
          DEC $DA
          BNE L1802
          .BYTE $7F    ;%01111111
          .BYTE $D3    ;%11010011
L1802     JMP $D85C
L1805     .BYTE $6F    ;%01101111 'o'
          .BYTE $02    ;%00000010
          .BYTE $5F    ;%01011111 '_'
          .BYTE $02    ;%00000010
          .BYTE $5F    ;%01011111 '_'
          .BYTE $D3    ;%11010011
          .BYTE $BF    ;%10111111
          .BYTE $D3    ;%11010011
          .BYTE $BF    ;%10111111
          STA ($A5,X)
          AND $85,X
          BNE L1834
          .BYTE $62    ;%01100010 'b'
          CLD
          RTS
          .BYTE $77    ;%01110111 'w'
          .BYTE $D3    ;%11010011
          .BYTE $0B    ;%00001011
          LDA $35
          DEC $DA
          BNE L1822
          .BYTE $7F    ;%01111111
          .BYTE $D3    ;%11010011
L1822     JMP $D871
          .BYTE $CF    ;%11001111
          .BYTE $D3    ;%11010011
          .BYTE $2F    ;%00101111 '/'
          .BYTE $02    ;%00000010
          .BYTE $1F    ;%00011111
          .BYTE $02    ;%00000010
          .BYTE $3F    ;%00111111 '?'
          .BYTE $D3    ;%11010011
          .BYTE $9F    ;%10011111
          .BYTE $D3    ;%11010011
          .BYTE $DF    ;%11011111
          STA ($A5,X)
          AND $C9,X
L1834     ORA $B0
          .BYTE $02    ;%00000010
          LDA #$FF
          CMP #$E4
          BCC L183F
          LDA #$FF
L183F     STA $CF
          .BYTE $44    ;%01000100 'D'
          .BYTE $CF    ;%11001111
          LDA $D0
          CMP #$E4
          BCC L184B
          LDA #$00
L184B     CMP #$05
          BCS L1851
          LDA #$00
L1851     STA $CE
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $F7
          PHA
          LDA $F8
          PHA
          LDA $F9
          PHA
          LDA $FA
          PHA
          JSR $D978
          JSR $DAE1
          JSR $D971
          .BYTE $F7    ;%11110111
          .BYTE $80    ;%10000000
          ORA $20
          DEC $D0,X
          .BYTE $8F    ;%10001111
          .BYTE $34    ;%00110100 '4'
          .BYTE $F7    ;%11110111
          BVC L1889
          .BYTE $F7    ;%11110111
          .BYTE $D3    ;%11010011
          .BYTE $04    ;%00000100
          .BYTE $8F    ;%10001111
          .BYTE $34    ;%00110100 '4'
          .BYTE $CF    ;%11001111
          .BYTE $80    ;%10000000
          DEC $A1
          LDA $A1
          BNE L18CF
          .BYTE $3C    ;%00111100 '<'
          ASL A
          LDA ($20,X)
          LDA $D9,X
          JSR $DB2F
          JSR $D9C0
          JSR $D9CB
          LDA $A2
          .BYTE $1A    ;%00011010
          STA $A2
          BEQ L18A9
          CMP #$02
          BEQ L18CF
          LDA $A4
          BNE L18CF
          JSR $D1CD
          .BYTE $80    ;%10000000
          ROL $3C
          .BYTE $04    ;%00000100
          LDX #$EF
          STA $20,X
          INX
          CMP $F120,Y
          CMP $FC20,Y
          CMP L0720,Y
          .BYTE $DA    ;%11011010
          JSR $DA11
          DEC $A3
          LDA $A3
          BNE L18CF
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $A3    ;%10100011
          JSR $DABC
          JSR $DAC5
          JSR $DAD0
L18CF     .BYTE $D7    ;%11010111
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $DB94
          .BYTE $F7    ;%11110111
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          .BYTE $0F    ;%00001111
          .BYTE $80    ;%10000000
          JSR $D74A
          PLA
          STA $FA
          PLA
          STA $F9
          PLA
          STA $F8
          PLA
          STA $F7
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          LDA $A9
          BEQ L18F7
          DEC $A9
L18F7     RTS
          .BYTE $F7    ;%11110111
          BVC L191F
          .BYTE $C7    ;%11000111
          ORA $A70B,Y
          ORA $8708,Y
          ORA $6705,Y
          ORA $8002,Y
          ASL $FF,X
          .BYTE $1A    ;%00011010
          .BYTE $9F    ;%10011111
          .BYTE $1A    ;%00011010
          .BYTE $BF    ;%10111111
          .BYTE $1A    ;%00011010
          .BYTE $DF    ;%11011111
          ORA $19BF,Y
          .BYTE $9F    ;%10011111
          ORA $197F,Y
          .BYTE $EF    ;%11101111
          .BYTE $1A    ;%00011010
          .BYTE $8F    ;%10001111
          .BYTE $1A    ;%00011010
          .BYTE $AF    ;%10101111
          .BYTE $1A    ;%00011010
          .BYTE $80    ;%10000000
          BRK
L191F     LDA $013B
          BNE L193D
          LDA $013C
          BNE L193D
          TSX
          CPX #$3B
          BCS L1930
          .BYTE $80    ;%10000000
          ORA $A0A5
          BNE L193D
          RTS
          .BYTE $C7    ;%11000111
          CMP ($04,X)
          DEC $E9
          BEQ L193D
          RTS
L193D     JMP $E6B1
          DEC $96
          BEQ L1945
          RTS
L1945     .BYTE $3C    ;%00111100 '<'
          PHP
          STX $CF,Y
          STA $60,X
          LDA $9B
          BEQ L1955
          DEC $9B
          BNE L1955
          .BYTE $2F    ;%00101111 '/'
          STA $A5,X
          .BYTE $A7    ;%10100111
          BEQ L195B
          DEC $A7
L195B     LDA $A8
          BEQ L1961
          DEC $A8
L1961     LDA $A4
          BEQ L1967
          DEC $A4
L1967     RTS
          LDA $A6
          BEQ L1970
          DEC $A6
          BNE L1970
L1970     RTS
          LDA $99
          BEQ L197B
          DEC $99
          BNE L197B
          .BYTE $6F    ;%01101111 'o'
          STA $60,X
          LDA $9A
          BEQ L1986
          DEC $9A
          BNE L1986
          .BYTE $4F    ;%01001111 'O'
          STA $60,X
          DEC $97
          BNE L1990
          .BYTE $AF    ;%10101111
          STA $3C,X
          .BYTE $3C    ;%00111100 '<'
          .BYTE $97    ;%10010111
L1990     RTS
          INC $9F
          LDA $9F
          CMP #$3C
          BNE L19CC
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9F    ;%10011111
          INC $9E
          LDA $9E
          CMP #$3C
          BNE L19CC
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9E    ;%10011110
          INC $9D
          LDA $9D
          CMP #$18
          BNE L19CC
          .BYTE $3C    ;%00111100 '<'
          BRK
          STA $A508,X
          INC $F0
          .BYTE $13    ;%00010011
          DEC $E6
          BNE L19CA
          LDA $73
          CMP #$10
          BEQ L19C7
          CMP #$20
          BCS L19C7
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
L19C7     JSR $CE4A
L19CA     PLP
          NOP
L19CC     .BYTE $37    ;%00110111 '7'
          .BYTE $BF    ;%10111111
          JMP ($BFB7)
          ADC #$07
          .BYTE $BF    ;%10111111
          EOR ($A5,X)
          .BYTE $9F    ;%10011111
          BNE L1A3B
          LDA $0119
          CLC
          SBC #$00
          BCS L19E3
          LDA #$3B
L19E3     STA $0119
          BCS L1A3B
          LDA $0118
          CLC
          SBC #$00
          BCS L19F2
          LDA #$17
L19F2     STA $0118
          BCS L1A3B
          LDA $0116
          BNE L1A01
          LDX $0117
          BEQ L1A12
L1A01     CLC
          SBC #$00
          STA $0116
          LDA $0117
          SBC #$00
          LDA $0117
          JMP $DABB
L1A12     .BYTE $3F    ;%00111111 '?'
          .BYTE $BF    ;%10111111
          .BYTE $80    ;%10000000
          .BYTE $17    ;%00010111
          LDA $0118
          CMP $9D
          BNE L1A3B
          LDA $0119
          CMP $9E
          BNE L1A3B
          LDA $9F
          BNE L1A3B
          .BYTE $07    ;%00000111
          .BYTE $BF    ;%10111111
          .BYTE $02    ;%00000010
          .BYTE $3F    ;%00111111 '?'
          .BYTE $BF    ;%10111111
          .BYTE $A7    ;%10100111
          BVC L1A37
          .BYTE $FF    ;%11111111
          ASL A
          NOP
          .BYTE $EF    ;%11101111
          ASL A
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1A37     .BYTE $AF    ;%10101111
          ASL A
          .BYTE $BF    ;%10111111
          ASL A
L1A3B     RTS
          LDA $A5
          BEQ L1A44
          DEC $A5
          BNE L1A44
L1A44     RTS
          LDA $9C
          BEQ L1A4F
          DEC $9C
          BNE L1A4F
          .BYTE $0F    ;%00001111
          STA $60,X
          LDA $98
          BEQ L1A5A
          DEC $98
          BNE L1A5A
          .BYTE $8F    ;%10001111
          STA $A5,X
          .BYTE $F4    ;%11110100
          BEQ L1A60
          DEC $F4
L1A60     RTS
          .BYTE $17    ;%00010111
          .BYTE $82    ;%10000010
          .BYTE $04    ;%00000100
          .BYTE $1F    ;%00011111
          .BYTE $82    ;%10000010
          .BYTE $80    ;%10000000
          PHP
          LDA $8F
          BEQ L1AAE
          DEC $8F
          BNE L1AAE
          LDY #$00
          LDA ($90),Y
          STA $20
          INY
          CMP ($90),Y
          BNE L1A83
          CMP #$FF
          BEQ L1A90
          CMP #$00
          BEQ L1A97
L1A83     LDA ($90),Y
          STA $21
          INY
          LDA ($90),Y
          STA $8F
          .BYTE $FF    ;%11111111
          .BYTE $27    ;%00100111 '''
          .BYTE $80    ;%10000000
          ORA ($3C),Y
          INC $EF21
          .BYTE $27    ;%00100111 '''
          .BYTE $80    ;%10000000
          .BYTE $17    ;%00010111
L1A97     .BYTE $3C    ;%00111100 '<'
          INC $C821
          LDA ($90),Y
          STA $8F
          .BYTE $EF    ;%11101111
          .BYTE $27    ;%00100111 '''
          INY
          TYA
          CLC
          ADC $90
          STA $90
          LDA #$00
          ADC $91
          STA $91
L1AAE     RTS
          .BYTE $D7    ;%11010111
          .BYTE $BF    ;%10111111
          ORA ($60,X)
          .BYTE $F7    ;%11110111
          .BYTE $82    ;%10000010
          .BYTE $04    ;%00000100
          .BYTE $FF    ;%11111111
          .BYTE $82    ;%10000010
          .BYTE $80    ;%10000000
          PHP
          LDA $84
          BEQ L1AD3
          DEC $84
          BNE L1AD3
          .BYTE $CF    ;%11001111
          ASL A
          LDX $83
          BEQ L1ACA
          .BYTE $DF    ;%11011111
          ASL A
L1ACA     LDA $85,X
          STA $84
          TXA
          EOR #$01
          STA $83
L1AD3     .BYTE $D7    ;%11010111
          .BYTE $82    ;%10000010
          .BYTE $04    ;%00000100
          .BYTE $DF    ;%11011111
          .BYTE $82    ;%10000010
          .BYTE $80    ;%10000000
          PHP
          LDA $88
          BEQ L1AF3
L1ADE     DEC $88
          BNE L1AF3
          .BYTE $AF    ;%10101111
          .BYTE $04    ;%00000100
          LDX $87
          BEQ L1AEA
          .BYTE $BF    ;%10111111
          .BYTE $04    ;%00000100
L1AEA     LDA $89,X
          STA $88
          TXA
          EOR #$01
          STA $87
L1AF3     .BYTE $B7    ;%10110111
          .BYTE $82    ;%10000010
          .BYTE $04    ;%00000100
          .BYTE $BF    ;%10111111
          .BYTE $82    ;%10000010
          .BYTE $80    ;%10000000
          PHP
          LDA $8C
          BEQ L1B13
          DEC $8C
          BNE L1B13
          .BYTE $8F    ;%10001111
          .BYTE $04    ;%00000100
          LDX $8B
          BEQ L1B0A
          .BYTE $9F    ;%10011111
          .BYTE $04    ;%00000100
L1B0A     LDA $8D,X
          STA $8C
          TXA
          EOR #$01
          STA $8B
L1B13     RTS
          .BYTE $E7    ;%11100111
          CPY $F706
          .BYTE $D3    ;%11010011
          .BYTE $03    ;%00000011
          .BYTE $37    ;%00110111 '7'
          PHP
          ORA ($60,X)
          JSR $D83E
          LDA $D8
          BNE L1B29
          LDA $D9
          BEQ L1B2C
L1B29     .BYTE $77    ;%01110111 'w'
          STA $F1,X
L1B2C     .BYTE $27    ;%00100111 '''
          .BYTE $C2    ;%11000010
          ORA #$20
          ORA $A5DC
          DEC $20B0
          .BYTE $80    ;%10000000
          BPL L1ADE
          .BYTE $CF    ;%11001111
          BEQ L1B48
          CMP #$FF
          BEQ L1B48
          LDA $CE
          BEQ L1B48
          CMP #$FF
          BNE L1B56
L1B48     .BYTE $17    ;%00010111
          CMP $D2,X
          .BYTE $17    ;%00010111
          .BYTE $C2    ;%11000010
          .BYTE $04    ;%00000100
          DEC $D4
          BNE L1B1D
          .BYTE $1F    ;%00011111
          CMP $80,X
          BIT $3C
          BRK
          CMP $0A,X
          ROL $D5
          LSR A
          STA L00D6
          LDA $CF
          ASL A
          ROL $D5
          LSR A
          STA $D7
          ROL $D5
          ROL $D5
          ROL $D5
          .BYTE $EF    ;%11101111
          CMP $0F,X
          CMP $3C,X
          .BYTE $04    ;%00000100
          .BYTE $D4    ;%11010100
          .BYTE $3C    ;%00111100 '<'
          BRK
          DEC $003C
          .BYTE $CF    ;%11001111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2F    ;%00101111 '/'
          ROL L033C,X
          BNE L1BBE
          BRK
          CMP $043C,Y
          STA $957F,Y
          JSR $DC6F
          RTS
          LDA $CF
          BEQ L1BD9
          CMP #$FF
          BEQ L1BD9
          LDA $CE
          BEQ L1BD9
          CMP #$FF
          BEQ L1BD9
          LDA $D1
          BEQ L1BCF
          SEC
          SBC $CE
          BEQ L1BB2
          BCC L1BAE
          CMP #$1E
          BCS L1BCF
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1BAE     CMP #$E1
          BCC L1BCF
L1BB2     LDA $D2
          SEC
          SBC $CF
          BEQ L1BC5
          BCC L1BC1
          CMP #$28
          BCS L1BCF
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1BC1     CMP #$D7
          BCC L1BCF
L1BC5     LDA $CF
          STA $D2
          LDA $CE
          STA $D1
          SEC
          RTS
L1BCF     LDA $CF
          STA $D2
          LDA $CE
          STA $D1
          CLC
          RTS
L1BD9     LDA #$00
          STA $D1
          STA $D2
          CLC
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          JSR $DC6F
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          LDA $D8
          BEQ L1C02
          DEC $D8
          LDX $D9
          LDA $D5,X
          STA L0000
          .BYTE $BF    ;%10111111
          .BYTE $02    ;%00000010
          .BYTE $AF    ;%10101111
          .BYTE $02    ;%00000010
          INC $D9
          RTS
L1C02     .BYTE $3C    ;%00111100 '<'
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          BRK
          CMP $4C60,Y
          ORA ($F7,X)
          SBC ($58,X)
          ORA ($D2,X)
          CMP $0153,X
          CMP #$DD
          .BYTE $42    ;%01000010 'B'
          .BYTE $02    ;%00000010
          .BYTE $DB    ;%11011011
          CMP $0754,X
          AND #$DE
          .BYTE $57    ;%01010111 'W'
          PHP
          TXS
          DEC $0444,X
          .BYTE $5F    ;%01011111 '_'
          .BYTE $DF    ;%11011111
          .BYTE $47    ;%01000111 'G'
          .BYTE $02    ;%00000010
          .BYTE $92    ;%10010010
          .BYTE $DF    ;%11011111
          EOR $A702
          .BYTE $DF    ;%11011111
          EOR $04
          DEC $46DF
          ORA $21
          CPX #$4B
          ORA ($54,X)
          CPX #$5A
          .BYTE $04    ;%00000100
          BIT $E1
          .BYTE $52    ;%01010010 'R'
          .BYTE $07    ;%00000111
          LDA #$E1
          .BYTE $43    ;%01000011 'C'
          PHP
          .BYTE $AF    ;%10101111
          CPX #$A0
          BRK
          LDA $AB
          .BYTE $1A    ;%00011010
          .BYTE $1A    ;%00011010
          STA $F9
L1C4D     LDA ($CA),Y
          STA $00AD,Y
          INY
          DEC $F9
          BNE L1C4D
          .BYTE $5F    ;%01011111 '_'
          .BYTE $BF    ;%10111111
          RTS
          .BYTE $57    ;%01010111 'W'
          .BYTE $BF    ;%10111111
          PHP
          PHP
          SEI
          JSR $DCC5
          JMP $DD3D
          RTS
          .BYTE $E7    ;%11100111
          BVC L1C7B
          .BYTE $C7    ;%11000111
          BVC L1C76
          .BYTE $A7    ;%10100111
          BVC L1C71
          .BYTE $80    ;%10000000
          .BYTE $F4    ;%11110100
L1C71     .BYTE $27    ;%00100111 '''
          CMP ($07,X)
          .BYTE $80    ;%10000000
          .BYTE $EF    ;%11101111
L1C76     .BYTE $07    ;%00000111
          CMP ($02,X)
          .BYTE $80    ;%10000000
          NOP
L1C7B     .BYTE $E7    ;%11100111
          .BYTE $BF    ;%10111111
          .BYTE $DC    ;%11011100
          PHP
          SEI
          LDA $6C
          STA $AD
          LDA $0108
          STA $B4
          LDA $0109
          STA $B7
          LDA $6D
          STA $AE
          JSR $D0E6
          STA $AF
          LDA $6E
          STA $B3
          LDA $0106
          STA $B5
          LDA $0107
          STA $B8
          LDA $70
          STA $B0
          LDA $71
          STA $B1
          LDA $010A
          STA $B6
          LDA $010B
          STA $B9
          LDA $72
          STA L00B2
          .BYTE $EF    ;%11101111
          LDX $00A2
          LDA $AB
          .BYTE $3A    ;%00111010 ':'
          STA $F9
          LDA #$00
L1CC6     CLC
          ADC $AA,X
          INX
          DEC $F9
          BNE L1CC6
          STA $BA
          LDA $AB
          .BYTE $3A    ;%00111010 ':'
          .BYTE $3A    ;%00111010 ':'
          STA $BB
          .BYTE $3C    ;%00111100 '<'
          BRK
          LDY $3C7F,X
          .BYTE $6F    ;%01101111 'o'
          ROL $B820,X
          .BYTE $E2    ;%11100010
          PLP
          NOP
          RTS
          .BYTE $57    ;%01010111 'W'
          STA $03,X
          JSR $DDC1
          LDX #$00
          JSR $E283
          BEQ L1CF3
          JSR $DD74
L1CF3     RTS
          LDX #$00
          CMP #$20
          BCC L1D3D
          CMP #$80
          BCS L1D3D
          STA $F7
          .BYTE $3C    ;%00111100 '<'
          .BYTE $0F    ;%00001111
          SBC $89BD,Y
          .BYTE $DC    ;%11011100
          CMP $F7
          BEQ L1D14
          INX
          INX
          INX
          INX
          DEC $F9
          BNE L1D03
          .BYTE $80    ;%10000000
          AND #$BD
          TXA
          .BYTE $DC    ;%11011100
          STA $FA
          JSR $E297
          CMP $FA
          BCC L1D40
          LDA $DC8B,X
          STA $F5
          LDA $DC8C,X
          STA $F6
          DEC $FA
          LDX $FA
          BEQ L1D3B
          JSR $E283
          CMP #$20
          BCC L1D3D
          CMP #$80
          BCS L1D3D
L1D3B     .BYTE $B2    ;%10110010
          SBC $20,X
          ADC ($E2),Y
L1D40     RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          TXS
          .BYTE $5F    ;%01011111 '_'
          STA $9F,X
          .BYTE $BF    ;%10111111
          RTS
          JSR $E271
          .BYTE $FF    ;%11111111
          .BYTE $BF    ;%10111111
          JSR $DDC1
          RTS
          JSR $E271
          .BYTE $EF    ;%11101111
          .BYTE $BF    ;%10111111
          JSR $DDC1
          RTS
          JSR $D052
          STA $F7
          JSR $E271
          JSR $E271
          CMP #$73
          BEQ L1D6E
          CMP #$70
          BNE L1D8A
L1D6E     STA $C7
          JSR $D075
          STA $F8
          BEQ L1DA5
          LDA $6C
          AND #$F0
          ORA $F8
          STA $6C
          AND #$0F
          CMP $F7
          BEQ L1DA5
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ROR $1B80
L1D8A     CMP #$30
          BCC L1DA8
          CMP #$37
          BCS L1DA8
          SEC
          SBC #$30
          CMP $C8
          BEQ L1DA5
          STA $C8
          LDA #$00
          STA $0109
          STA $0107
          BEQ L1DA5
L1DA5     JSR $DDC1
L1DA8     RTS
          JSR $E271
          .BYTE $BF    ;%10111111
          .BYTE $BF    ;%10111111
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9F    ;%10011111
          .BYTE $3C    ;%00111100 '<'
          ASL A
          .BYTE $F7    ;%11110111
          JSR $E271
          JSR $E241
          BCS L1E19
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          STA $9D
          PLA
          JSR $E271
          JSR $E241
          BCS L1E19
          CLC
          ADC $9D
          CMP #$18
          BCS L1E19
          STA $9D
          JSR $E271
          JSR $E241
          BCS L1E19
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          STA $9E
          PLA
          JSR $E271
          JSR $E241
          BCS L1E19
          CLC
          ADC $9E
          CMP #$3C
          BCS L1E19
          STA $9E
          JSR $E271
          JSR $E241
          BCS L1E19
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          STA $F8
          PLA
          JSR $E271
          JSR $E241
          BCS L1E19
          CLC
          ADC $F8
          CMP #$3C
          BCS L1E19
          STA $9F
          .BYTE $AF    ;%10101111
          .BYTE $BF    ;%10111111
          JSR $DDC1
L1E19     RTS
          JSR $E271
          .BYTE $3F    ;%00111111 '?'
          .BYTE $BF    ;%10111111
          .BYTE $1F    ;%00011111
          .BYTE $BF    ;%10111111
          LDA #$00
          STA $0116
          STA $0117
          STA $0118
          STA $0119
          STA $F9
          STA $FA
          .BYTE $3C    ;%00111100 '<'
          .BYTE $64    ;%01100100 'd'
          .BYTE $F7    ;%11110111
          JSR $E271
          JSR $E255
          BCC L1E41
          JMP $DF5E
L1E41     STA $F7
          CMP #$00
          BEQ L1E58
L1E47     LDA #$10
          LDY #$F9
          JSR $E669
          LDA $FA
          ADC #$05
          STA $FA
          DEC $F7
          BNE L1E47
L1E58     .BYTE $3C    ;%00111100 '<'
          BIT $F7
          JSR $E271
          JSR $E255
          BCS L1EDE
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          LDY #$F9
          JSR $E669
          PLA
          ADC $FA
          STA $FA
          JSR $E271
          JSR $E255
          BCS L1EDE
          LDY #$F9
          JSR $E669
          LDA $FA
          STA $0117
          LDA $F9
          STA $0116
          CMP #$3F
          BNE L1E94
          LDA $FA
          CMP #$B6
          BNE L1E94
          .BYTE $0F    ;%00001111
          .BYTE $BF    ;%10111111
L1E94     .BYTE $3C    ;%00111100 '<'
          ASL A
          .BYTE $F7    ;%11110111
          JSR $E271
          JSR $E241
          BCS L1EDE
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          STA $F9
          PLA
          JSR $E271
          JSR $E241
          BCS L1EDE
          CLC
          ADC $F9
          CMP #$18
          BCS L1EDE
          STA $0118
          JSR $E271
          JSR $E241
          BCS L1EDE
          LDX #$00
          .BYTE $62    ;%01100010 'b'
          .BYTE $F7    ;%11110111
          STA $F9
          PLA
          JSR $E271
          JSR $E241
          BCS L1EDE
          CLC
          ADC $F9
          CMP #$3C
          BCS L1EDE
          STA $0119
          .BYTE $2F    ;%00101111 '/'
          .BYTE $BF    ;%10111111
          JSR $DDC1
L1EDE     RTS
          JSR $E271
          .BYTE $3C    ;%00111100 '<'
          ASL A
          .BYTE $F7    ;%11110111
          JSR $E271
          JSR $E239
          BCS L1F11
          STA $CB
          JSR $E271
          JSR $E239
          BCS L1F11
          ASL A
          ASL A
          ASL A
          ASL A
          STA $CA
          JSR $E271
          JSR $E239
          BCS L1F11
          ORA $CA
          STA $CA
          .BYTE $F7    ;%11110111
          .BYTE $BF    ;%10111111
          .BYTE $02    ;%00000010
          .BYTE $4F    ;%01001111 'O'
          .BYTE $BF    ;%10111111
          JSR $DDC1
L1F11     RTS
          JSR $E271
          JSR $E271
          JSR $E241
          BCS L1F26
          CMP #$05
          BCS L1F26
          STA $C6
          JSR $DDC1
L1F26     RTS
          JSR $E271
          JSR $E271
          JSR $E241
          BCS L1F4D
          CMP #$00
          BEQ L1F44
          CMP #$09
          BCS L1F44
          PHP
          SEI
          .BYTE $6F    ;%01101111 'o'
          .BYTE $BF    ;%10111111
          STA L00CD
          PLP
          NOP
          .BYTE $80    ;%10000000
          ASL $7F
          .BYTE $BF    ;%10111111
          LDA #$00
          STA L00CD
          JSR $DDC1
L1F4D     RTS
          .BYTE $3C    ;%00111100 '<'
          ASL A
L1F50     TXS
          .BYTE $5F    ;%01011111 '_'
          STA $8F,X
          .BYTE $BF    ;%10111111
          JSR $E271
          JSR $E271
          LSR A
          BCS L1F62
          .BYTE $9F    ;%10011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F62     .BYTE $8F    ;%10001111
          .BYTE $44    ;%01000100 'D'
          LSR A
          BCS L1F6B
          .BYTE $BF    ;%10111111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F6B     .BYTE $AF    ;%10101111
          .BYTE $44    ;%01000100 'D'
          LSR A
          BCS L1F74
          .BYTE $DF    ;%11011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F74     .BYTE $CF    ;%11001111
          .BYTE $44    ;%01000100 'D'
          JSR $E271
          LSR A
          BCS L1F80
          .BYTE $1F    ;%00011111
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F80     .BYTE $0F    ;%00001111
          .BYTE $44    ;%01000100 'D'
          LSR A
          BCS L1F89
          .BYTE $3F    ;%00111111 '?'
          .BYTE $44    ;%01000100 'D'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F89     .BYTE $2F    ;%00101111 '/'
          .BYTE $44    ;%01000100 'D'
          JSR $E271
          LSR A
          BCS L1F95
          .BYTE $7F    ;%01111111
          .BYTE $43    ;%01000011 'C'
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1F95     .BYTE $6F    ;%01101111 'o'
          .BYTE $43    ;%01000011 'C'
          LSR A
          BCS L1F9E
          .BYTE $7F    ;%01111111
          EOR ($80,X)
          .BYTE $02    ;%00000010
L1F9E     .BYTE $6F    ;%01101111 'o'
          EOR ($60,X)
          .BYTE $3C    ;%00111100 '<'
          ASL A
          TXS
          .BYTE $5F    ;%01011111 '_'
          STA $8F,X
          .BYTE $BF    ;%10111111
          JSR $E271
          JSR $E271
          JSR $D441
          STA L0040
          JSR $E271
          JSR $D441
          .BYTE $77    ;%01110111 'w'
          EOR ($01,X)
          .BYTE $6B    ;%01101011 'k'
          STA $41
          JSR $E271
          JSR $D441
          STA $42
          JSR $E271
          JSR $D441
          .BYTE $77    ;%01110111 'w'
          .BYTE $43    ;%01000011 'C'
          ORA (L006B,X)
          STA $43
          RTS
          JSR $E271
          .BYTE $EF    ;%11101111
          CPY $99A5
          BEQ L1FE5
          LDA $D8
          BNE L1FD9
          LDA $D9
          BNE L1FD9
L1FE5     PHP
          SEI
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2F    ;%00101111 '/'
          ROL $028F,X
          .BYTE $3C    ;%00111100 '<'
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ORA ($3C,X)
          EOR $D5,X
          .BYTE $3C    ;%00111100 '<'
          TAX
          DEC $3C,X
          .BYTE $FF    ;%11111111
          .BYTE $D7    ;%11010111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $03    ;%00000011
          CLD
          .BYTE $3C    ;%00111100 '<'
          BRK
          CMP L033C,Y
          STA $957F,Y
          JSR $DC6F
          CLI
L200B     .BYTE $67    ;%01100111 'g'
          STA $08,X
L200E     LDA $D8
          BNE L200B
          LDA $D9
          BNE L200B
          SEI
          .BYTE $9F    ;%10011111
          .BYTE $02    ;%00000010
          .BYTE $3C    ;%00111100 '<'
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          BRK
          ORA ($3C,X)
          BRK
          .BYTE $D3    ;%11010011
          .BYTE $3C    ;%00111100 '<'
          BRK
          CLD
          .BYTE $3F    ;%00111111 '?'
          ROL $EA28,X
          .BYTE $FF    ;%11111111
          CPY $C120
          CMP $2060,X
          ADC ($E2),Y
          JSR $E271
          CMP #$61
          BEQ L203F
          CMP #$62
          BEQ L2064
          .BYTE $80    ;%10000000
          .BYTE $64    ;%01100100 'd'
L203F     JSR $E190
          BCS L2056
          STA $ED
          JSR $E190
          BCS L2056
          STA $EE
          JSR $E190
          BCS L2056
          STA $EF
          .BYTE $80    ;%10000000
          LSR A
L2056     LDA #$B6
          STA $ED
          LDA #$9F
          STA $EE
          LDA #$A3
          STA $EF
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
L2064     JSR $E190
          BCS L207B
          STA $F0
          JSR $E190
          BCS L207B
          STA $F1
          JSR $E190
          BCS L207B
          STA $F2
          .BYTE $80    ;%10000000
          AND $A9
          .BYTE $53    ;%01010011 'S'
          STA $F0
          LDA #$BA
          STA $F1
          LDA #$42
          STA $F2
          .BYTE $80    ;%10000000
          .BYTE $17    ;%00010111
L2089     JSR $E190
          BCS L209A
          CMP #$02
          BCC L209A
          CMP #$1F
          BCS L209A
          STA $F3
          .BYTE $80    ;%10000000
          ASL $A9
          .BYTE $02    ;%00000010
          STA $F3
          .BYTE $80    ;%10000000
          BRK
          JSR $DDC1
          RTS
          JSR $E271
          JSR $E271
          CMP #$74
          BEQ L2089
          CMP #$6D
          BEQ L20C8
          CMP #$6E
          BEQ L20D1
          CMP #$61
          BEQ L20DA
          CMP #$62
          BEQ L20E3
          CMP #$63
          BEQ L20EE
          CMP #$64
          BEQ L20F9
          .BYTE $80    ;%10000000
L20C7     .BYTE $47    ;%01000111 'G'
L20C8     JSR $E190
          BCS L210F
          STA $C0
          .BYTE $80    ;%10000000
          .BYTE $3B    ;%00111011 ';'
L20D1     JSR $E190
          BCS L210F
          STA $C1
          .BYTE $80    ;%10000000
          .BYTE $32    ;%00110010 '2'
L20DA     JSR $E190
          BCS L210F
          STA $C2
          .BYTE $80    ;%10000000
          AND #$20
          BCC L20C7
          BCS L210F
          AND #$03
          STA $C3
          .BYTE $80    ;%10000000
          ASL $9020,X
          SBC ($B0,X)
          .BYTE $1C    ;%00011100
          AND #$FE
          STA $C4
          .BYTE $80    ;%10000000
          .BYTE $13    ;%00010011
L20F9     JSR $E190
          BCS L210F
          CMP #$00
          BEQ L2108
          CMP #$F8
          BCS L2108
          BEQ L210C
L2108     STA $C5
          .BYTE $80    ;%10000000
          BRK
L210C     JSR $DDC1
L210F     RTS
          JSR $E271
          JSR $E239
          BCS L2128
          ASL A
          ASL A
          ASL A
          ASL A
          STA $F7
          JSR $E271
          JSR $E239
          BCS L2128
          ORA $F7
L2128     RTS
          JSR $E271
          JSR $E271
          CMP #$73
          BNE L2176
          JSR $E271
          JSR $E239
          BCS L2176
          STA $F8
          JSR $E271
          JSR $E239
          BCS L2176
          ASL A
          ASL A
          ASL A
          ASL A
          STA $F7
          JSR $E271
          JSR $E239
          BCS L2176
          ORA $F7
          STA $F7
          JSR $E271
          JSR $E239
          BCS L2176
          ASL A
          ASL A
          ASL A
          ASL A
          STA $F9
          JSR $E271
          JSR $E239
          BCS L2176
          ORA $F9
          LDY #$00
          STA ($F7),Y
          JSR $DDC1
L2176     RTS
          JSR $E271
          .BYTE $CF    ;%11001111
          .BYTE $BF    ;%10111111
          .BYTE $3C    ;%00111100 '<'
          BRK
          CMP #$60
          NOP
          .BYTE $F7    ;%11110111
          STA $FC,X
          LDX #$00
          .BYTE $FF    ;%11111111
          STA $BD,X
          AND ($E2),Y
          CMP #$FF
          BEQ L21AE
          .BYTE $03    ;%00000011
          .BYTE $04    ;%00000100
          .BYTE $AF    ;%10101111
          .BYTE $04    ;%00000100
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $BF    ;%10111111
          .BYTE $04    ;%00000100
          .BYTE $23    ;%00100011 '#'
          .BYTE $04    ;%00000100
          .BYTE $8F    ;%10001111
          .BYTE $04    ;%00000100
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $9F    ;%10011111
          .BYTE $04    ;%00000100
          .BYTE $43    ;%01000011 'C'
          .BYTE $04    ;%00000100
          .BYTE $CF    ;%11001111
          ASL A
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $DF    ;%11011111
          ASL A
          INX
          NOP
          .BYTE $F7    ;%11110111
          STA $FC,X
          .BYTE $80    ;%10000000
          CLD
L21AE     .BYTE $DF    ;%11011111
          .BYTE $BF    ;%10111111
          .BYTE $64    ;%01100100 'd'
          BRK
          ORA ($03,X)
          .BYTE $02    ;%00000010
          BRK
          .BYTE $02    ;%00000010
          BRK
          .BYTE $FF    ;%11111111
          CMP #$67
          BCS L21D3
          CMP #$61
          BCS L21CE
          CMP #$30
          BCC L21D3
          CMP #$3A
          BCS L21D3
          SEC
          SBC #$30
          CLC
          RTS
L21CE     SEC
          SBC #$57
          CLC
          RTS
L21D3     SEC
          RTS
          CMP #$7B
          BCS L21EF
          CMP #$61
          BCS L21EA
          CMP #$30
          BCC L21EF
          CMP #$3A
          BCS L21EF
          SEC
          SBC #$30
          CLC
          RTS
L21EA     SEC
          SBC #$57
          CLC
          RTS
L21EF     SEC
          RTS
          LDY $BE
          CPY $BD
          BEQ L2202
          PHP
          SEI
          LDA $011B,Y
          INC $BE
          .BYTE $BF    ;%10111111
          LDX $EA28,Y
L2202     RTS
          LDY $BE
          CPY $BD
          BEQ L2216
          PHP
          TXA
          CLC
          ADC $BE
          AND #$1F
          TAY
          LDA $011B,Y
          PLP
          NOP
L2216     RTS
          LDY $BD
          TYA
          CPY $BE
          BEQ L2229
          PHP
          SEI
          BCS L2224
          ADC #$20
L2224     SEC
          SBC $BE
          PLP
          NOP
L2229     RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          JSR $E2B8
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          LDA #$00
          CMP $BB
          BEQ L224A
          LDX $BC
          LDA $AA,X
          STA $18
          INC $BC
          DEC $BB
          BNE L224E
L224A     .BYTE $7F    ;%01111111
          ROL $3C7F,X
L224E     RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          LDX $BD
          LDA $18
          STA $011B,X
          TXA
          .BYTE $3A    ;%00111010 ':'
          AND #$1F
          CMP $BE
          BEQ L2265
          STA $BD
L2265     PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          PHA
          TXA
          PHA
          TYA
          PHA
          .BYTE $07    ;%00000111
          PHP
          ASL $083C
          .BYTE $DC    ;%11011100
          .BYTE $7F    ;%01111111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $53    ;%01010011 'S'
          AND $EA
          NOP
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $CF    ;%11001111
          ROL $A868,X
          PLA
          TAX
          PLA
          RTI
          PHA
          TXA
          PHA
          TYA
          PHA
          DEC $DC
          BNE L22A0
          .BYTE $7F    ;%01111111
          AND $3F6F,X
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $DF    ;%11011111
          ROL $DEA5,X
          STA $DD
          .BYTE $0F    ;%00001111
          .BYTE $DB    ;%11011011
          .BYTE $80    ;%10000000
          ASL A
L22A0     .BYTE $3C    ;%00111100 '<'
          .BYTE $3F    ;%00111111 '?'
          AND $38
          .BYTE $07    ;%00000111
          PHP
          ORA ($18,X)
          ROR $DE
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          JSR $E35F
          PHP
          SEI
          STX $E2
          STY $E3
          .BYTE $3C    ;%00111100 '<'
          BRK
          SBC ($FF,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $EF    ;%11101111
          ROL $EA28,X
          RTS
          PHA
          JSR $E35F
          PLA
          PHP
          SEI
          STA $E4
          .BYTE $3C    ;%00111100 '<'
          BIT $E5
          .BYTE $3C    ;%00111100 '<'
          CPX $E2
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $E3    ;%11100011
          .BYTE $3C    ;%00111100 '<'
          BRK
          SBC ($FF,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $EF    ;%11101111
          ROL $EA28,X
          RTS
          NOP
          .BYTE $E7    ;%11100111
          ROL $A5FC,X
          SBC ($60,X)
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $DF
          BNE L2306
          LDY $E1
          LDA ($E2),Y
          INC $E1
          CMP #$24
          BNE L22FD
          .BYTE $FF    ;%11111111
          ROL $1B80,X
L22FD     STA $E0
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $3C    ;%00111100 '<'
          ORA #$DF
          .BYTE $80    ;%10000000
          .BYTE $12    ;%00010010
L2306     DEC $DF
          BNE L230E
          .BYTE $CF    ;%11001111
          PHP
          .BYTE $80    ;%10000000
          ASL A
L230E     ROR $E0
          BCS L2316
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L2316     .BYTE $CF    ;%11001111
          PHP
          PLA
          TAY
          PLA
          TAX
          PLA
          RTI
          LDA #$00
          STA $F8
          STA $F7
          LDA $0114
          STA $0115
          LDY #$F7
          JSR $E669
          LDA $0113
          STA $0114
          LDY #$F7
          JSR $E669
          LDA $0112
          STA $0113
          LDY #$F7
          JSR $E669
          LDA $72
          STA $0112
          LDY #$F7
          JSR $E669
          LSR $F8
          ROR $F7
          LSR $F8
          ROR $F7
          LDA $F7
          STA $0111
          JSR $E419
          STA $0110
          RTS
          .BYTE $B7    ;%10110111
          STA $19,X
          LDA $6C
          AND #$0F
          BEQ L237F
          .BYTE $BF    ;%10111111
          STA $A5,X
          .BYTE $93    ;%10010011
          STA $92
          LDA $94
          STA $93
          LDA $72
          STA $94
          SEC
          SBC $92
          SEC
          RTS
L237F     CLC
          RTS
          JSR $D052
          BEQ L2396
          LDA $92
          JSR $E419
          STA $FA
          LDA $94
          JSR $E419
          SEC
          SBC $F9
          RTS
L2396     LDA #$00
          RTS
          CLC
          ADC #$00
          TAX
          LDA $E421,X
          RTS
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          EOR (L0040,X)
          RTI
          .BYTE $3F    ;%00111111 '?'
          ROL $3D3E,X
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3B    ;%00111011 ';'
          .BYTE $3B    ;%00111011 ';'
          .BYTE $3A    ;%00111010 ':'
          AND $3839,Y
          .BYTE $37    ;%00110111 '7'
          .BYTE $37    ;%00110111 '7'
          ROL $35,X
          AND $34,X
          .BYTE $34    ;%00110100 '4'
          .BYTE $33    ;%00110011 '3'
          .BYTE $33    ;%00110011 '3'
          .BYTE $32    ;%00110010 '2'
          .BYTE $32    ;%00110010 '2'
          AND ($31),Y
          BMI L2422
          .BYTE $2F    ;%00101111 '/'
          .BYTE $2F    ;%00101111 '/'
          ROL $2D2E
          AND $2C2C
          .BYTE $2B    ;%00101011 '+'
          .BYTE $2B    ;%00101011 '+'
          ROL A
          ROL A
          AND #$29
          PLP
          PLP
          .BYTE $27    ;%00100111 '''
          .BYTE $27    ;%00100111 '''
          ROL $26
          AND $25
          BIT $24
          .BYTE $23    ;%00100011 '#'
          .BYTE $23    ;%00100011 '#'
          .BYTE $22    ;%00100010 '"'
          .BYTE $22    ;%00100010 '"'
          AND ($21,X)
          JSR L1F20
          .BYTE $1F    ;%00011111
          ASL $1E1E,X
          ORA $1C1D,X
          .BYTE $1C    ;%00011100
          .BYTE $1B    ;%00011011
          .BYTE $1B    ;%00011011
          .BYTE $1A    ;%00011010
          .BYTE $1A    ;%00011010
          .BYTE $1A    ;%00011010
          ORA $1919,Y
          CLC
          CLC
          CLC
          .BYTE $17    ;%00010111
          .BYTE $17    ;%00010111
          ASL $16,X
          ORA $15,X
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $14    ;%00010100
          .BYTE $13    ;%00010011
          .BYTE $13    ;%00010011
          .BYTE $12    ;%00010010
          .BYTE $12    ;%00010010
          .BYTE $12    ;%00010010
          ORA ($11),Y
          BPL L2448
          .BYTE $0F    ;%00001111
          .BYTE $0F    ;%00001111
          ASL $0E0E
          ORA $0C0D
          .BYTE $0C    ;%00001100
          .BYTE $0C    ;%00001100
          .BYTE $0B    ;%00001011
          .BYTE $0B    ;%00001011
          ASL A
          ASL A
          ASL A
          ORA #$09
          ORA #$08
          PHP
          .BYTE $07    ;%00000111
          .BYTE $07    ;%00000111
          .BYTE $07    ;%00000111
          ASL $06
          ORA $05
          .BYTE $04    ;%00000100
          .BYTE $04    ;%00000100
          .BYTE $03    ;%00000011
          .BYTE $03    ;%00000011
          .BYTE $02    ;%00000010
          .BYTE $02    ;%00000010
          ORA ($01,X)
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          RTS
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          .BYTE $87    ;%10000111
          .BYTE $C2    ;%11000010
          .BYTE $12    ;%00010010
          LDA $72
          CMP #$D2
          BCS L24B6
          JSR $E419
          CMP #$FF
          BEQ L24BE
          TAX
          LDA $E539,X
          RTS
L24B6     LDA #$00
          RTS
          .BYTE $FC    ;%11111100
          .BYTE $FC    ;%11111100
          .BYTE $FC    ;%11111100
          .BYTE $FC    ;%11111100
          .BYTE $FC    ;%11111100
L24BE     SBC $FDFD,X
          SBC $FEFD,X
          INC $FEFE,X
          INC $FFFF,X
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA ($01,X)
          ORA (L0000,X)
          BRK
          BRK
          BRK
          BRK
          BRK
          JSR $E521
          BEQ L254D
          BMI L2526
          STA $FC
          LDA $70
          LSR A
          LSR A
          TAX
          LDA $E5D0,X
          BEQ L254A
          STA $FB
          LDA $FC
L2520     LSR A
          DEC $FB
          BNE L2520
          RTS
L2526     STA $FC
          LDA $70
          LSR A
          LSR A
          TAX
          LDA $E5D0,X
          BEQ L254A
          STA $FB
          .BYTE $44    ;%01000100 'D'
          .BYTE $FC    ;%11111100
          LDA $FC
          .BYTE $3A    ;%00111010 ':'
L2539     LSR A
          DEC $FB
          BNE L2539
          CMP #$00
          BEQ L254D
          .BYTE $1A    ;%00011010
          STA $FC
          .BYTE $44    ;%01000100 'D'
          .BYTE $FC    ;%11111100
          LDA $FC
          RTS
L254A     LDA $FC
          RTS
L254D     LDA #$00
          RTS
          .BYTE $03    ;%00000011
          .BYTE $02    ;%00000010
          ORA ($01,X)
          ORA (L0000,X)
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          LDA L0000+$0000,Y
          BNE L259C
          LDA $0001,Y
          BNE L259C
          RTS
L259C     RTS
          PHA
          LDA L0000+$0000,Y
          SEC
          SBC #$01
          STA L0000+$0000,Y
          LDA $0001,Y
          SBC #$00
          STA $0001,Y
          PLA
          ADC ($18,X)
          ADC L0000+$0000,Y
          STA L0000+$0000,Y
          LDA #$00
          ADC $0001,Y
          STA $0001,Y
          LDA #$00
          ADC $0002,Y
          STA $0002,Y
          LDA #$00
          ADC $0003,Y
          STA $0003,Y
          RTS
          CLC
          ADC L0000+$0000,Y
          STA L0000+$0000,Y
          LDA #$00
          ADC $0001,Y
          STA $0001,Y
          LDA #$00
          ADC $0002,Y
          STA $0002,Y
          RTS
          CLC
          ADC L0000+$0000,Y
          STA L0000+$0000,Y
          LDA #$00
          ADC $0001,Y
          STA $0001,Y
          RTS
          STA $F7
          SEC
          LDA L0000+$0000,Y
          SBC $F7
          STA L0000+$0000,Y
          LDA $0001,Y
          SBC #$00
          STA $0001,Y
          LDA $0002,Y
          SBC #$00
          STA $0002,Y
          LDA $0003,Y
          SBC #$00
          STA $0003,Y
          RTS
          STA $F7
          SEC
          LDA L0000+$0000,Y
          SBC $F7
          STA L0000+$0000,Y
          LDA $0001,Y
          SBC #$00
          STA $0001,Y
          RTS
          SEI
          CLD
          .BYTE $12    ;%00010010
          CLV
          JMP $E6CC
          JSR $E7E9
          LDY #$55
          LDA #$00
          JSR $CD77
          BCC L2647
          JMP $CD17
L2647     LDA #$01
          JMP $CD17
          LDX #$00
          LDY $E71D,X
          CPY #$40
          BEQ L265F
          INX
          LDA $E71D,X
          STA L0000+$0000,Y
          INX
          .BYTE $80    ;%10000000
          .BYTE $EF    ;%11101111
L265F     LDA #$00
          LDX #$40
L2663     STA L0000,X
          INX
          CPX #$00
          BNE L2663
          TAX
L266B     STA $0100,X
          INX
          CPX #$C0
          BNE L266B
          LDX #$BE
          TXS
          JMP $E6B8
          LDY #$00
          LDA ($F5),Y
          BEQ L268B
          CMP #$40
          BEQ L269C
          INY
          LDA ($F5),Y
          TAX
          LDA L0000,X
          .BYTE $80    ;%10000000
          ASL $C8
          LDA ($F5),Y
          TAX
          LDA #$00
          INY
          AND ($F5),Y
          INY
          ORA ($F5),Y
          STA L0000,X
          INY
          .BYTE $80    ;%10000000
          .BYTE $DF    ;%11011111
L269C     RTS
          BRK
          BRK
          ORA (L0000,X)
          .BYTE $02    ;%00000010
          LDY #$03
          .BYTE $FF    ;%11111111
          .BYTE $04    ;%00000100
          LDY $FF05,X
          PHP
          RTI
          ORA #$A4
          ASL A
          CPY #$0B
          .BYTE $FC    ;%11111100
          .BYTE $0C    ;%00001100
          BRK
          ORA $0E00
          BRK
          .BYTE $0F    ;%00001111
          BRK
          ASL $01,X
          .BYTE $17    ;%00010111
          BRK
          .BYTE $1A    ;%00011010
          ORA ($1B,X)
          BRK
          .BYTE $1C    ;%00011100
          .BYTE $1F    ;%00011111
          .BYTE $27    ;%00100111 '''
          BNE L26EE
          BRK
          .BYTE $22    ;%00100010 '"'
          .BYTE $FF    ;%11111111
          .BYTE $23    ;%00100011 '#'
          STA $29,X
          CLC
          AND $7F
          ROL $7F
          ROL A
          BRK
          .BYTE $34    ;%00110100 '4'
          PHP
          SEC
          BRK
          AND $3A83,Y
          ORA #$3B
          .BYTE $0C    ;%00001100
          ROL $3F20,X
          RTI
          .BYTE $3C    ;%00111100 '<'
          BRK
          AND $4000,X
          ORA ($3E,X)
          BIT $0100
          .BYTE $3F    ;%00111111 '?'
          CPY #$00
L26EE     BRK
          ORA (L0000,X)
          BRK
          ORA ($02,X)
          BRK
          LDY #$01
          .BYTE $27    ;%00100111 '''
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          BRK
          .BYTE $22    ;%00100010 '"'
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          BRK
          .BYTE $23    ;%00100011 '#'
          STA $95,X
          ORA ($3B,X)
          .BYTE $4F    ;%01001111 'O'
          JMP L0140
          ROL $0020,X
          ORA ($3F,X)
          CPY #$00
L270F     ORA ($1A,X)
          .BYTE $4B    ;%01001011 'K'
          BRK
          BRK
          ORA (L0000,X)
          BRK
          ORA ($02,X)
          BRK
          .BYTE $80    ;%10000000
          ORA ($04,X)
          .BYTE $F3    ;%11110011
          BRK
          ORA ($08,X)
          CPY #$00
          ORA ($27,X)
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          BRK
          .BYTE $22    ;%00100010 '"'
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          BRK
          .BYTE $23    ;%00100011 '#'
          STA $95,X
          ORA ($3B,X)
          .BYTE $4F    ;%01001111 'O'
          JMP L0040
          ORA (L0000,X)
          BRK
          ORA ($02,X)
          BRK
          LDY #$00
          .BYTE $1A    ;%00011010
          ORA ($01,X)
          BRK
          .BYTE $1C    ;%00011100
          .BYTE $1F    ;%00011111
          .BYTE $1F    ;%00011111
          BRK
          .BYTE $1B    ;%00011011
          BRK
          BRK
          BRK
          ORA $0505,Y
          BRK
          .BYTE $1A    ;%00011010
          LDA ($B1),Y
          ORA ($27,X)
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          BRK
          .BYTE $22    ;%00100010 '"'
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          BRK
          .BYTE $23    ;%00100011 '#'
          ASL $010E
          .BYTE $3B    ;%00111011 ';'
          .BYTE $0F    ;%00001111
          .BYTE $0C    ;%00001100
          ORA ($3E,X)
          .BYTE $FF    ;%11111111
          BIT $01
          .BYTE $3F    ;%00111111 '?'
          CPY #$00
          RTI
          LDX #$00
          LDY $E830,X
          CPY #$00
          BEQ L277C
          INX
          LDA $E830,X
          STA L0000+$0000,Y
          INX
          .BYTE $80    ;%10000000
          .BYTE $EF    ;%11101111
L277C     JSR $D09A
          TXA
          BEQ L278A
          .BYTE $07    ;%00000111
          PHP
          .BYTE $03    ;%00000011
          .BYTE $37    ;%00110111 '7'
          ASL $0F02
          ADC $0A20
          .BYTE $CF    ;%11001111
          JSR $CF1D
          .BYTE $3C    ;%00111100 '<'
          INC $A9C5,X
          LDX $85,Y
          SBC $9FA9
          STA $EE
          LDA #$A3
          STA $EF
          LDA #$53
          STA $F0
          LDA #$BA
          STA $F1
          LDA #$42
          STA $F2
          LDA #$02
          STA $F3
          RTS
          BVC L27D2
          STX $28,Y
          LDA ($0A,X)
          LDX #$04
          .BYTE $A3    ;%10100011
          .BYTE $3C    ;%00111100 '<'
          TAX
          .BYTE $FF    ;%11111111
          .BYTE $AB    ;%10101011
          .BYTE $0F    ;%00001111
          LDY $6D38
          BMI L27C3
L27C3     .BYTE $3C    ;%00111100 '<'
          RTI
          BVC L27E6
          .BYTE $82    ;%10000010
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $8F    ;%10001111
          .BYTE $FF    ;%11111111
          .BYTE $D3    ;%11010011
          .BYTE $DF    ;%11011111
          .BYTE $80    ;%10000000
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          .BYTE $1F    ;%00011111
L27D2     .BYTE $80    ;%10000000
          .BYTE $BF    ;%10111111
          .BYTE $80    ;%10000000
          .BYTE $9F    ;%10011111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
          BRK
          STA ($07,X)
          CMP ($04,X)
          .BYTE $7F    ;%01111111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          JSR $CF0A
L27E6     JSR $CF1D
          .BYTE $DF    ;%11011111
          .BYTE $BF    ;%10111111
          .BYTE $9F    ;%10011111
          .BYTE $BF    ;%10111111
          .BYTE $7F    ;%01111111
          .BYTE $BF    ;%10111111
          LDA #$00
          STA L00CD
          JSR $D1C3
          RTS
          .BYTE $3C    ;%00111100 '<'
          JSR L1F50
          .BYTE $82    ;%10000010
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $8F    ;%10001111
          .BYTE $FF    ;%11111111
          .BYTE $DF    ;%11011111
          .BYTE $DF    ;%11011111
          .BYTE $80    ;%10000000
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          .BYTE $1F    ;%00011111
          .BYTE $80    ;%10000000
          .BYTE $BF    ;%10111111
          .BYTE $80    ;%10000000
          .BYTE $9F    ;%10011111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
          BRK
          STA ($7F,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          JSR $CF0A
          JSR $CF1D
          .BYTE $DF    ;%11011111
          .BYTE $BF    ;%10111111
          .BYTE $9F    ;%10011111
          .BYTE $BF    ;%10111111
          .BYTE $7F    ;%01111111
          .BYTE $BF    ;%10111111
          LDA #$00
          STA L00CD
          JSR $D1C3
          RTS
          .BYTE $FF    ;%11111111
          .BYTE $BF    ;%10111111
          .BYTE $3C    ;%00111100 '<'
          PHP
          LDY $20
          STX $D5,Y
          .BYTE $3C    ;%00111100 '<'
          .BYTE $80    ;%10000000
          BVC L2870
          BRK
          .BYTE $8F    ;%10001111
          .BYTE $DF    ;%11011111
          STA $3C,X
          .BYTE $03    ;%00000011
          STX $3C,Y
          BRK
          .BYTE $BB    ;%10111011
          .BYTE $3C    ;%00111100 '<'
          BRK
          LDA $003C,X
          LDX $BF7F,Y
          LDA #$00
          STA L00CD
          .BYTE $DF    ;%11011111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
          BRK
          DEC $003C
          .BYTE $CF    ;%11001111
          .BYTE $3C    ;%00111100 '<'
          BRK
          BNE L2892
          RTI
          .BYTE $D3    ;%11010011
          .BYTE $3C    ;%00111100 '<'
          .BYTE $80    ;%10000000
          CMP $3C,X
          BRK
          DEC $3C,X
          BRK
          .BYTE $D7    ;%11010111
          .BYTE $3C    ;%00111100 '<'
          BRK
          CLD
          .BYTE $3C    ;%00111100 '<'
          BRK
          CMP $80FF,Y
          .BYTE $1F    ;%00011111
          .BYTE $80    ;%10000000
          .BYTE $BF    ;%10111111
          .BYTE $80    ;%10000000
          .BYTE $9F    ;%10011111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
L2870     BRK
          STA ($7F,X)
          .BYTE $3C    ;%00111100 '<'
          .BYTE $5F    ;%01011111 '_'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          JSR $D1C3
          RTS
          RTI
          RTS
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L2892     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3231     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3F04     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3F35     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FC    ;%11111100
          INX
          .BYTE $12    ;%00010010
          DEC $FC,X
          INX
          BCC L3F35
          .BYTE $77    ;%01110111 'w'
          CMP ($FC),Y
          INX
          .BYTE $FC    ;%11111100
          INX
          .BYTE $FC    ;%11111100
          INX
          .BYTE $07    ;%00000111
          .BYTE $E3    ;%11100011
          ROR $E3
          .BYTE $D4    ;%11010100
          CLD
          .BYTE $FC    ;%11111100
          INX
          TAX
          .BYTE $E2    ;%11100010
          .BYTE $CF    ;%11001111
          .BYTE $E2    ;%11100010
          ADC ($DC,X)
          .BYTE $AF    ;%10101111
          CMP ($B1),Y
          INC L0000
          .END

;auto-generated symbols and labels
 L1050      $1050
 L1053      $1053
 L1078      $1078
 L1086      $1086
 L1089      $1089
 L1095      $1095
 L1098      $1098
 L1117      $1117
 L1160      $1160
 L1197      $1197
 L1207      $1207
 L1243      $1243
 L1270      $1270
 L1282      $1282
 L1304      $1304
 L1314      $1314
 L1324      $1324
 L1328      $1328
 L1359      $1359
 L1376      $1376
 L1379      $1379
 L1426      $1426
 L1438      $1438
 L1446      $1446
 L1452      $1452
 L1456      $1456
 L1460      $1460
 L1475      $1475
 L1486      $1486
 L1497      $1497
 L1510      $1510
 L1527      $1527
 L1658      $1658
 L1659      $1659
 L1675      $1675
 L1708      $1708
 L1732      $1732
 L1774      $1774
 L1781      $1781
 L1783      $1783
 L1797      $1797
 L1802      $1802
 L1805      $1805
 L1822      $1822
 L1834      $1834
 L1851      $1851
 L1889      $1889
 L1930      $1930
 L1945      $1945
 L1955      $1955
 L1961      $1961
 L1967      $1967
 L1970      $1970
 L1986      $1986
 L1990      $1990
 L2038      $2038
 L2056      $2056
 L2064      $2064
 L2073      $2073
 L2089      $2089
 L2108      $2108
 L2128      $2128
 L2176      $2176
 L2202      $2202
 L2216      $2216
 L2224      $2224
 L2229      $2229
 L2265      $2265
 L2306      $2306
 L2316      $2316
 L2396      $2396
 L2422      $2422
 L2448      $2448
 L2520      $2520
 L2526      $2526
 L2539      $2539
 L2647      $2647
 L2663      $2663
 L2703      $2703
 L2709      $2709
 L2870      $2870
 L2892      $2892
 L3231      $3231
 L0074        $74
 L006B        $6B
 L00B2        $B2
 L00D6        $D6
 L00CD        $CD
 L200E      $200E
 L20CA      $20CA
 L0135      $0135
 L0169      $0169
 L017D      $017D
 L01F5      $01F5
 L0211      $0211
 L0221      $0221
 L021F      $021F
 L0218      $0218
 L022A      $022A
 L0266      $0266
 L01FE      $01FE
 L0248      $0248
 L01EF      $01EF
 L0258      $0258
 L0280      $0280
 L02EE      $02EE
 L02D8      $02D8
 L02E1      $02E1
 L02A8      $02A8
 L02EF      $02EF
 L0312      $0312
 L0308      $0308
 L0326      $0326
 L033C      $033C
 L0382      $0382
 L03BC      $03BC
 L02FC      $02FC
 L0393      $0393
 L03ED      $03ED
 L03BF      $03BF
 L03E5      $03E5
 L03DD      $03DD
 L0402      $0402
 L0430      $0430
 L0438      $0438
 L0420      $0420
 L047F      $047F
 L0471      $0471
 L043A      $043A
 L044A      $044A
 L0456      $0456
 L0484      $0484
 L0468      $0468
 L0486      $0486
 L0434      $0434
 L04A8      $04A8
 L0445      $0445
 L0464      $0464
 L04FF      $04FF
 L0579      $0579
 L05EE      $05EE
 L066E      $066E
 L061F      $061F
 L0611      $0611
 L0666      $0666
 L065C      $065C
 L0647      $0647
 L065A      $065A
 L06DD      $06DD
 L068E      $068E
 L0680      $0680
 L06D5      $06D5
 L06CB      $06CB
 L06B6      $06B6
 L06C9      $06C9
 L0705      $0705
 L0717      $0717
 L0720      $0720
 L071C      $071C
 L075F      $075F
 L073B      $073B
 L0742      $0742
 L0749      $0749
 L0750      $0750
 L0757      $0757
 L077D      $077D
 L07E6      $07E6
 L07F2      $07F2
 L0826      $0826
 L086F      $086F
 L0888      $0888
 L088B      $088B
 L0882      $0882
 L0885      $0885
 L08BA      $08BA
 L0890      $0890
 L0891      $0891
 L0894      $0894
 L0897      $0897
 L089A      $089A
 L08BC      $08BC
 L0220      $0220
 L091E      $091E
 L0924      $0924
 L08F0      $08F0
 L08F3      $08F3
 L08F6      $08F6
 L08F9      $08F9
 L08FC      $08FC
 L08FF      $08FF
 L0902      $0902
 L0905      $0905
 L0908      $0908
 L090B      $090B
 L090E      $090E
 L0911      $0911
 L0914      $0914
 L0917      $0917
 L08EB      $08EB
 L092A      $092A
 L0918      $0918
 L0929      $0929
 L0949      $0949
 L0971      $0971
 L0985      $0985
 L0944      $0944
 L096D      $096D
 L099F      $099F
 L0993      $0993
 L098A      $098A
 L0998      $0998
 L0996      $0996
 L09B5      $09B5
 L0A0C      $0A0C
 L09D7      $09D7
 L09E3      $09E3
 L09FD      $09FD
 L0A04      $0A04
 L09F1      $09F1
 L0A29      $0A29
 L0A5D      $0A5D
 L0A44      $0A44
 L0A47      $0A47
 L0A90      $0A90
 L0A8B      $0A8B
 L0A9B      $0A9B
 L0AA4      $0AA4
 L0AB4      $0AB4
 L0B25      $0B25
 L0AE9      $0AE9
 L0ACF      $0ACF
 L0B16      $0B16
 L0AFC      $0AFC
 L0B06      $0B06
 L0AF6      $0AF6
 L0B32      $0B32
 L0B56      $0B56
 L0B1D      $0B1D
 L0B55      $0B55
 L0B24      $0B24
 L0BAB      $0BAB
 L0BAD      $0BAD
 L0BA1      $0BA1
 L073C      $073C
 L0BC9      $0BC9
 L0BDD      $0BDD
 L0C10      $0C10
 L0C23      $0C23
 L0C3E      $0C3E
 L0C7A      $0C7A
 L0C65      $0C65
 L0C4B      $0C4B
 L0C59      $0C59
 L0C63      $0C63
 L0CC3      $0CC3
 L0D03      $0D03
 L0D0F      $0D0F
 L0D1B      $0D1B
 L0CBE      $0CBE
 L0CD1      $0CD1
 L0D5B      $0D5B
 L0D4A      $0D4A
 L0DC8      $0DC8
 L0DEE      $0DEE
 L080F      $080F
 L0E24      $0E24
 L0E34      $0E34
 L0DBD      $0DBD
 L0E44      $0E44
 L0ECC      $0ECC
 L0ED2      $0ED2
 L0000        $00
 L0EDA      $0EDA
 L0F3D      $0F3D
 L0F72      $0F72
 L0F8B      $0F8B
 L0FC9      $0FC9
 L0FB1      $0FB1
 L0FB9      $0FB9
 L0FEE      $0FEE
 L0FFE      $0FFE
 L0FFF      $0FFF
 L103A      $103A
 L10AF      $10AF
 L10BE      $10BE
 L10BF      $10BF
 L10BC      $10BC
 L113A      $113A
 L116B      $116B
 L11A7      $11A7
 L270F      $270F
 L3F04      $3F04
 L11EF      $11EF
 L11EE      $11EE
 L11F7      $11F7
 L11FF      $11FF
 L120F      $120F
 L122C      $122C
 L125F      $125F
 L128D      $128D
 L12BE      $12BE
 L129C      $129C
 L12BB      $12BB
 L12E2      $12E2
 L12ED      $12ED
 L12FB      $12FB
 L132C      $132C
 L134A      $134A
 L136A      $136A
 L138B      $138B
 L139A      $139A
 L13C9      $13C9
 L13CF      $13CF
 L143C      $143C
 L14A2      $14A2
 L14A8      $14A8
 L14C3      $14C3
 L14CF      $14CF
 L15C8      $15C8
 L15CA      $15CA
 L15CC      $15CC
 L15CE      $15CE
 L15D0      $15D0
 L15B6      $15B6
 L160D      $160D
 L161F      $161F
 L163F      $163F
 L16A0      $16A0
 L16B7      $16B7
 L16C9      $16C9
 L16D7      $16D7
 L171A      $171A
 L175E      $175E
 L176E      $176E
 L176B      $176B
 L178A      $178A
 L179A      $179A
 L17A0      $17A0
 L17AF      $17AF
 L17AD      $17AD
 L17B7      $17B7
 L17BD      $17BD
 L17C9      $17C9
 L183F      $183F
 L184B      $184B
 L18CF      $18CF
 L18A9      $18A9
 L18F7      $18F7
 L191F      $191F
 L193D      $193D
 L195B      $195B
 L197B      $197B
 L19CC      $19CC
 L19CA      $19CA
 L19C7      $19C7
 L1A3B      $1A3B
 L19E3      $19E3
 L19F2      $19F2
 L1A01      $1A01
 L1A12      $1A12
 L1A37      $1A37
 L1A44      $1A44
 L1A4F      $1A4F
 L1A5A      $1A5A
 L1A60      $1A60
 L1AAE      $1AAE
 L1A83      $1A83
 L1A90      $1A90
 L1A97      $1A97
 L1AD3      $1AD3
 L1ACA      $1ACA
 L1AF3      $1AF3
 L1AEA      $1AEA
 L1B13      $1B13
 L1B0A      $1B0A
 L1B29      $1B29
 L1B2C      $1B2C
 L1ADE      $1ADE
 L1B48      $1B48
 L1B56      $1B56
 L1B1D      $1B1D
 L1BBE      $1BBE
 L1BD9      $1BD9
 L1BCF      $1BCF
 L1BB2      $1BB2
 L1BAE      $1BAE
 L1BC5      $1BC5
 L1BC1      $1BC1
 L1C02      $1C02
 L1C4D      $1C4D
 L1C7B      $1C7B
 L1C76      $1C76
 L1C71      $1C71
 L1CC6      $1CC6
 L1CF3      $1CF3
 L1D3D      $1D3D
 L1D14      $1D14
 L1D03      $1D03
 L1D40      $1D40
 L1D3B      $1D3B
 L1D6E      $1D6E
 L1D8A      $1D8A
 L1DA5      $1DA5
 L1DA8      $1DA8
 L1E19      $1E19
 L1E41      $1E41
 L1E58      $1E58
 L1E47      $1E47
 L1EDE      $1EDE
 L1E94      $1E94
 L1F11      $1F11
 L1F26      $1F26
 L1F4D      $1F4D
 L1F44      $1F44
 L1F62      $1F62
 L1F6B      $1F6B
 L1F74      $1F74
 L1F80      $1F80
 L1F89      $1F89
 L1F95      $1F95
 L1F9E      $1F9E
 L1FE5      $1FE5
 L1FD9      $1FD9
 L200B      $200B
 L203F      $203F
 L207B      $207B
 L209A      $209A
 L20C8      $20C8
 L20D1      $20D1
 L20DA      $20DA
 L20E3      $20E3
 L20EE      $20EE
 L20F9      $20F9
 L210F      $210F
 L20C7      $20C7
 L210C      $210C
 L21AE      $21AE
 L21D3      $21D3
 L21CE      $21CE
 L21EF      $21EF
 L21EA      $21EA
 L224A      $224A
 L224E      $224E
 L22A0      $22A0
 L22FD      $22FD
 L230E      $230E
 L237F      $237F
 L1F20      $1F20
 L24B6      $24B6
 L24BE      $24BE
 L254D      $254D
 L254A      $254A
 L259C      $259C
 L265F      $265F
 L266B      $266B
 L268B      $268B
 L269C      $269C
 L26EE      $26EE
 L0140      $0140
 L0040        $40
 L277C      $277C
 L278A      $278A
 L27D2      $27D2
 L27C3      $27C3
 L27E6      $27E6
 L1F50      $1F50
 L3F35      $3F35
