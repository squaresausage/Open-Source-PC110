          * = $0000
          CPX #$4D
          EOR $4C
          BVC L0059
          JSR L3437
          BMI L002B
          .BYTE $53    ;%01010011 'S'
          ADC $72
          ADC #$65
          .BYTE $73    ;%01110011 's'
          JSR $654B
          ADC $6F62,Y
          ADC ($72,X)
          .BYTE $64    ;%01100100 'd'
          JSR $6946
          .BYTE $72    ;%01110010 'r'
          ADC $6177
          .BYTE $72    ;%01110010 'r'
          ADC $20
          LSR $65,X
          .BYTE $72    ;%01110010 'r'
          .BYTE $73    ;%01110011 's'
          ADC #$6F
          ROR $3120
          ROL $2831
          .BYTE $43    ;%01000011 'C'
          AND #$20
          .BYTE $43    ;%01000011 'C'
          .BYTE $6F    ;%01101111 'o'
          BVS L00B0
          .BYTE $72    ;%01110010 'r'
          ADC #$67
          PLA
          .BYTE $74    ;%01110100 't'
          JSR L3931
          AND $2D32,Y
          AND ($39),Y
          AND $2035,Y
          .BYTE $52    ;%01010010 'R'
          EOR #$4F
          .BYTE $53    ;%01010011 'S'
          JSR $7953
          .BYTE $73    ;%01110011 's'
          .BYTE $74    ;%01110100 't'
          ADC $6D
          .BYTE $73    ;%01110011 's'
          JSR $6F43
          ROL $4C2C
L0059     .BYTE $74    ;%01110100 't'
          .BYTE $64    ;%01100100 'd'
          ROL $69F7
          ORA ($40,X)
          .BYTE $EF    ;%11101111
          ADC #$58
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
L006B     LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          JSR $D008
          .BYTE $07    ;%00000111
          .BYTE $64    ;%01100100 'd'
          ASL $27
          .BYTE $64    ;%01100100 'd'
          .BYTE $03    ;%00000011
          JSR $C4A1
          LDX #$00
L0082     LDA $013A,X
          BNE L008E
          INX
          CPX #$05
          BCC L0082
          .BYTE $80    ;%10000000
          .BYTE $34    ;%00110100 '4'
L008E     TXA
          ASL A
          TAY
          BRK
          ADC $60,X
          .BYTE $3C    ;%00111100 '<'
          CMP ($61,X)
          JSR $E472
          LDY L013F,X
          DEC $013A,X
          BNE L00AF
          INY
          INY
          LDA ($60),Y
          BEQ L00C2
          STA $013A,X
          TYA
          STA L013F,X
L00AF     INY
L00B0     LDA ($60),Y
          BEQ L00C2
          CMP $0139
          BEQ L00C6
          STA $25
          .BYTE $7F    ;%01111111
          .BYTE $23    ;%00100011 '#'
          .BYTE $3C    ;%00111100 '<'
          EOR $21
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L00C2     .BYTE $6F    ;%01101111 'o'
          .BYTE $23    ;%00100011 '#'
          STA $25
L00C6     STA $0139
          JSR $D0E2
          PLA
          STA $63
          PLA
          STA $62
          PLA
          STA $61
          PLA
          STA $60
          PLA
          TAY
          PLA
          TAX
          PLA
          SEI
          .BYTE $FF    ;%11111111
          ADC #$40
          PHA
          LDA #$FE
          STA L013F,X
          LDA #$01
          STA $013A,X
          PLA
          RTS
          PHA
          LDA #$00
          STA $013A,X
          PLA
          RTS
          .BYTE $7F    ;%01111111
          CMP (L0082,X)
          CMP ($87,X)
          CMP (L008E,X)
          CMP (L00A9,X)
          CMP ($01,X)
          ADC $1E00
          ORA $111E
          BRK
          ASL $1E13,X
          BRK
          ASL $0013,X
          .BYTE $77    ;%01110111 'w'
          .BYTE $13    ;%00010011
          .BYTE $77    ;%01110111 'w'
          LSR $1377
          .BYTE $77    ;%01110111 'w'
          LSR $1377
          .BYTE $77    ;%01110111 'w'
          LSR $003C
          .BYTE $77    ;%01110111 'w'
          .BYTE $13    ;%00010011
          .BYTE $77    ;%01110111 'w'
          LSR $1377
          .BYTE $77    ;%01110111 'w'
          LSR $1377
          .BYTE $77    ;%01110111 'w'
          LSR $7700
          AND $4800,X
          TYA
          PHA
          TYA
L0131     LDY #$0A
          JSR $C1BC
          .BYTE $1A    ;%00011010
          BNE L0131
          PLA
          TAY
          PLA
          RTS
          PHA
          TYA
L013F     PHA
          LDA #$C8
L0142     NOP
          NOP
          .BYTE $1A    ;%00011010
          BNE L0142
          PLA
          .BYTE $1A    ;%00011010
          BNE L013F
          PLA
          RTS
          PHA
L014E     .BYTE $1A    ;%00011010
          BNE L014E
          PLA
          RTS
L0153     CLI
          LDY #$01
          JSR $C1BC
          .BYTE $67    ;%01100111 'g'
          .BYTE $64    ;%01100100 'd'
          .BYTE $F7    ;%11110111
          SEI
          LDA $4A
L015F     .BYTE $07    ;%00000111
          AND #$F1
          .BYTE $07    ;%00000111
          .BYTE $3C    ;%00111100 '<'
          INC $EAEA
          .BYTE $1A    ;%00011010
          BNE L015F
          JSR $C9F7
          BCC L017A
          JSR $CB68
          BCS L0153
          .BYTE $A7    ;%10100111
          PLA
          PHP
          .BYTE $A7    ;%10100111
          .BYTE $67    ;%01100111 'g'
          ASL A
L017A     JSR $C37D
          .BYTE $80    ;%10000000
          .BYTE $D4    ;%11010100
          JSR L00B6
          .BYTE $80    ;%10000000
          .BYTE $CF    ;%11001111
          JSR $CAE3
          .BYTE $80    ;%10000000
          DEX
          .BYTE $47    ;%01000111 'G'
          .BYTE $64    ;%01100100 'd'
          .BYTE $03    ;%00000011
          JSR $C20F
          RTI
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          .BYTE $37    ;%00110111 '7'
          AND #$77
          .BYTE $97    ;%10010111
          AND #$74
          .BYTE $07    ;%00000111
          .BYTE $64    ;%01100100 'd'
          ADC ($0F),Y
          .BYTE $64    ;%01100100 'd'
          TSX
          STX $0146
          .BYTE $77    ;%01110111 'w'
          AND #$36
          LDA $28
          LDX #$C3
          TXS
          .BYTE $8F    ;%10001111
          .BYTE $64    ;%01100100 'd'
          CMP #$D4
          BEQ L01C5
          JSR $D136
          .BYTE $9F    ;%10011111
          .BYTE $64    ;%01100100 'd'
          .BYTE $80    ;%10000000
          JMP $F920
          .BYTE $C2    ;%11000010
          .BYTE $9F    ;%10011111
          .BYTE $64    ;%01100100 'd'
          .BYTE $BF    ;%10111111
          RTI
          CMP #$FE
          BEQ L01D4
          CMP #$E1
          BCS L01DD
L01D4     .BYTE $D7    ;%11010111
          .BYTE $64    ;%01100100 'd'
          ASL $AE
          LSR A
          ORA ($4C,X)
          EOR $A2C3,X
          ADC $CF9A,X
          .BYTE $64    ;%01100100 'd'
          JSR $D867
          .BYTE $DF    ;%11011111
          .BYTE $64    ;%01100100 'd'
          .BYTE $80    ;%10000000
          PLP
          LDA $28
          .BYTE $97    ;%10010111
          .BYTE $64    ;%01100100 'd'
          ASL $AE
          PHA
          ORA ($4C,X)
          EOR $9FC3,X
          RTI
          CMP #$FE
          BEQ L01FE
          CMP #$EC
          BCS L0207
L01FE     .BYTE $B7    ;%10110111
          .BYTE $64    ;%01100100 'd'
          ASL $AE
          EOR #$01
          JMP $C35D
L0207     LDX #$A0
          TXS
          .BYTE $AF    ;%10101111
          .BYTE $64    ;%01100100 'd'
          JSR $D4A5
          .BYTE $BF    ;%10111111
          .BYTE $64    ;%01100100 'd'
          SEI
          LDX $0146
          TXS
          .BYTE $1F    ;%00011111
          .BYTE $64    ;%01100100 'd'
          JMP $C220
          .BYTE $37    ;%00110111 '7'
          BIT $272F
          .BYTE $64    ;%01100100 'd'
          BIT $642F
          TSX
          STX $0147
          .BYTE $77    ;%01110111 'w'
          BIT $A50E
          .BYTE $2B    ;%00101011 '+'
          LDX #$6E
          TXS
          .BYTE $EF    ;%11101111
          .BYTE $64    ;%01100100 'd'
          JSR $D874
          .BYTE $FF    ;%11111111
          .BYTE $64    ;%01100100 'd'
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
          LDA L002B
          .BYTE $F7    ;%11110111
          .BYTE $64    ;%01100100 'd'
          ASL $AE
          .BYTE $4B    ;%01001011 'K'
          ORA ($4C,X)
          EOR $78C3,X
          LDX $0147
          TXS
          .BYTE $3F    ;%00111111 '?'
          .BYTE $64    ;%01100100 'd'
          JMP $C220
          .BYTE $07    ;%00000111
          .BYTE $64    ;%01100100 'd'
          CLC
          .BYTE $27    ;%00100111 '''
          .BYTE $64    ;%01100100 'd'
          ORA $A5,X
          .BYTE $64    ;%01100100 'd'
          AND #$F0
          BEQ L0268
          .BYTE $4F    ;%01001111 'O'
          .BYTE $64    ;%01100100 'd'
          CLI
          .BYTE $27    ;%00100111 '''
          AND #$03
          .BYTE $37    ;%00110111 '7'
          BIT $78FA
          .BYTE $5F    ;%01011111 '_'
          .BYTE $64    ;%01100100 'd'
          JMP $C220
L0268     PLA
          STA $63
          PLA
          STA $62
          PLA
          STA $61
          PLA
          STA $60
          PLA
          TAY
          PLA
          TAX
          PLA
          RTS
          PHP
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          TSX
          STX $0148
          JMP $C290
          PHP
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          TSX
          STX $0149
          JMP $C290
          PHP
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          TSX
          STX $014A
          JMP $C290
          PHP
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          LDA $62
          PHA
          LDA $63
          PHA
          TSX
          STX $014B
          JMP $C2C2
          STA $0107,X
          TXS
          PLA
          STA $63
          PLA
          STA $62
          PLA
          STA $61
          PLA
          STA $60
          PLA
          TAY
          PLA
          TAX
          PLA
          PLP
          NOP
          RTS
          PHA
          LDA #$00
          JSR $C386
          PLA
          RTS
          JSR $C3DB
          BCS L0306
          JSR $C386
L0306     RTS
          .BYTE $9F    ;%10011111
          ROL A
          .BYTE $F7    ;%11110111
          .BYTE $FF    ;%11111111
          PHP
          .BYTE $67    ;%01100111 'g'
          .BYTE $64    ;%01100100 'd'
          ORA $17
          RTI
          .BYTE $02    ;%00000010
          .BYTE $8F    ;%10001111
          ROL A
          .BYTE $1F    ;%00011111
          ROL A
          .BYTE $FF    ;%11111111
          AND #$F3
          .BYTE $02    ;%00000010
          .BYTE $EF    ;%11101111
          AND #$DF
          AND #$D3
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          AND #$BF
          AND #$8F
          AND #$84
          PLP
          .BYTE $E7    ;%11100111
          .BYTE $FF    ;%11111111
          .BYTE $0B    ;%00001011
          .BYTE $67    ;%01100111 'g'
          .BYTE $64    ;%01100100 'd'
          PHP
          .BYTE $17    ;%00010111
          RTI
          ORA $4F
          BIT $7020
          BNE L0397
          .BYTE $07    ;%00000111
          ADC $1E
          .BYTE $27    ;%00100111 '''
          ADC $1B
          .BYTE $7F    ;%01111111
          ROL A
          .BYTE $37    ;%00110111 '7'
          RTI
          .BYTE $02    ;%00000010
          .BYTE $6F    ;%01101111 'o'
          ROL A
          .BYTE $0F    ;%00001111
          ROL A
          .BYTE $FF    ;%11111111
          AND #$F3
          .BYTE $02    ;%00000010
          .BYTE $EF    ;%11101111
          AND #$DF
          AND #$D3
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          AND #$AF
          AND #$8F
          AND #$84
          PLP
          RTS
          STX L002B
          RTS
          PHA
          .BYTE $07    ;%00000111
          ADC $14
          .BYTE $27    ;%00100111 '''
          ADC $11
          .BYTE $D7    ;%11010111
          RTI
          AND $C0,X
          .BYTE $83    ;%10000011
          BNE L036E
          LDY #$02
          .BYTE $80    ;%10000000
          ASL $C0
          STY $D0
          .BYTE $02    ;%00000010
          LDY #$7F
          CPY #$F0
          BEQ L0395
          CPY #$80
          BCS L0385
          LDA $C41D,Y
          ORA $4D
          LDX #$3C
          BRK
          EOR $6517
          ORA $20
          EOR $DB
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
          .BYTE $37    ;%00110111 '7'
          ADC $0B
          JSR $D229
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
L0395     .BYTE $3C    ;%00111100 '<'
          .BYTE $80    ;%10000000
L0397     EOR $8038
          ORA ($18,X)
          PLA
          RTS
          .BYTE $FF    ;%11111111
          .BYTE $43    ;%01000011 'C'
          EOR ($3F,X)
          AND $3C3B,X
          CLI
          .BYTE $64    ;%01100100 'd'
          .BYTE $44    ;%01000100 'D'
          .BYTE $42    ;%01000010 'B'
          RTI
          ROL $290F,X
          EOR $3865,Y
          ROL A
          BVS L03D0
          BPL L03B7
          .BYTE $5A    ;%01011010 'Z'
          ROR $71
          BIT $1E1F
          ORA ($03),Y
          .BYTE $5B    ;%01011011 '['
          .BYTE $67    ;%01100111 'g'
          ROL $202D
          .BYTE $12    ;%00010010
          ORA $04
          .BYTE $5C    ;%01011100 '\'
          PLA
          AND $212F,Y
          .BYTE $14    ;%00010100
          .BYTE $13    ;%00010011
          ASL $5D
          ADC #$31
L03D0     BMI L03F5
          .BYTE $22    ;%00100010 '"'
          ORA $07,X
          LSR $726A,X
          .BYTE $32    ;%00110010 '2'
          BIT $16
          PHP
          ORA #$5F
          .BYTE $6B    ;%01101011 'k'
          .BYTE $33    ;%00110011 '3'
          AND $17
          CLC
          .BYTE $0B    ;%00001011
          ASL A
          RTS
          JMP (L3534)
          ROL $27
          ORA $610C,Y
          ADC $2873
          .BYTE $74    ;%01110100 't'
          .BYTE $1A    ;%00011010
          ORA $6E62
          .BYTE $3A    ;%00111010 ':'
          ROL $1C,X
          .BYTE $1B    ;%00011011
          ADC L002B,X
          .BYTE $63    ;%01100011 'c'
          ROR $55,X
          LSR $77,X
          SEI
          ADC $0E7A,Y
          .BYTE $7B    ;%01111011 '{'
          .BYTE $7C    ;%01111100 '|'
          .BYTE $4F    ;%01001111 'O'
          ADC $474B,X
          ROR $6F7F,X
          .BYTE $52    ;%01010010 'R'
          .BYTE $53    ;%01010011 'S'
          BVC L045E
          EOR $0148
          EOR $57
          LSR $4A51
          .BYTE $37    ;%00110111 '7'
          EOR #$46
          .BYTE $54    ;%01010100 'T'
          JSR $C960
          RTS
          .BYTE $64    ;%01100100 'd'
          .BYTE $9C    ;%10011100
          BEQ L0466
          .BYTE $64    ;%01100100 'd'
          TYA
          BEQ L0430
          DEC $98
          BNE L0466
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L0430     DEC $99
          BNE L0466
          LDA $9A
          STA $99
          .BYTE $F7    ;%11110111
          ROR A
          .BYTE $1F    ;%00011111
          .BYTE $64    ;%01100100 'd'
          .BYTE $87    ;%10000111
          BNE L0466
          LDX $9C
          .BYTE $87    ;%10000111
          CMP ($11),Y
          CPX #$6F
          BEQ L044C
          CPX #$6D
          BNE L0455
L044C     TXA
          PHA
          LDX #$04
          JSR $C160
          PLA
          TAX
L0455     JSR $CA9B
          .BYTE $80    ;%10000000
          .BYTE $0C    ;%00001100
          .BYTE $64    ;%01100100 'd'
          .BYTE $73    ;%01110011 's'
          BNE L0466
L045E     .BYTE $87    ;%10000111
          RTI
          ORA $A0
          .BYTE $9C    ;%10011100
          JSR $C9C9
L0466     LDA $95
          .BYTE $03    ;%00000011
          LSR $A0
          BRK
          .BYTE $23    ;%00100011 '#'
          BPL L048F
          .BYTE $1B    ;%00011011
          .BYTE $CB    ;%11001011
          EOR $00BC,Y
          STA L00A9+$0000,Y
          INY
          CPY #$10
          BCC L046E
          .BYTE $80    ;%10000000
          .BYTE $32    ;%00110010 '2'
L047E     JSR $CB1B
          EOR $00BC,Y
          AND L00A9+$0000,Y
          EOR $00BC,Y
          STA L00A9+$0000,Y
          LDX #$02
L048F     CMP #$00
          BEQ L04BE
          LSR A
          BCC L048F
          DEX
          BNE L048F
          TYA
          TAX
L049B     CPX #$00
          BEQ L04BE
          DEX
          LDA L00A9+$0000,Y
          AND L00A9,X
          BEQ L049B
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          LDA $95
          CMP #$B4
          BCS L04B3
          INC $95
          RTS
L04B3     .BYTE $97    ;%10010111
          ROR $3D
          .BYTE $37    ;%00110111 '7'
          ADC #$3A
          JSR $C9F1
          .BYTE $80    ;%10000000
          AND $C8,X
          CPY #$10
          BCC L047E
          LDX #$00
L04C5     LDA L00A9,X
          STA $60
          EOR $BC,X
          STA $61
          BEQ L04EE
          TXA
          ASL A
          ASL A
          ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
L04D7     LSR $60
          .BYTE $17    ;%00010111
          ADC ($0B,X)
          JSR $C576
          BCS L04E7
          LDA $BC,X
          EOR $62
          STA $BC,X
L04E7     INY
          ASL $62
          LSR $61
          BNE L04D7
L04EE     INX
          CPX #$13
          BCC L04C5
          .BYTE $3C    ;%00111100 '<'
          BRK
          STA $60,X
          TXA
          PHA
          TYA
          PHA
          LDA $60
          PHA
          LDA $61
          PHA
          ROL $63
          JSR $C5FE
          BCC L0573
          .BYTE $97    ;%10010111
          ROR $69
          .BYTE $37    ;%00110111 '7'
          ADC #$66
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9F    ;%10011111
          LDA $93
          CMP #$03
          BNE L0537
          JSR $E487
          .BYTE $3C    ;%00111100 '<'
          BRK
          TAY
          PHA
          AND $0126,X
          BEQ L0525
          .BYTE $0F    ;%00001111
          TAY
L0525     PLA
          AND $0113,X
          BEQ L052D
          .BYTE $2F    ;%00101111 '/'
          TAY
L052D     LDA #$D4
          STA $60
          LDA #$E2
          STA $61
          .BYTE $80    ;%10000000
          .BYTE $22    ;%00100010 '"'
L0537     JSR $C693
          LDA $E36C,Y
          STA $A8
          LDA $93
          CMP #$01
          BNE L0551
          .BYTE $4F    ;%01001111 'O'
          TAY
          LDA #$A4
          STA $60
          LDA #$E1
          STA $61
          .BYTE $80    ;%10000000
          PHP
L0551     LDA #$3C
          STA $60
          LDA #$E2
          STA $61
          LDA ($60),Y
          BEQ L0573
          .BYTE $07    ;%00000111
          .BYTE $63    ;%01100011 'c'
          ORA $E7
          TAY
          .BYTE $0B    ;%00001011
          .BYTE $80    ;%10000000
          ASL $20
          LSR $F7C7
          TAY
          .BYTE $03    ;%00000011
          JSR $C841
          LDY #$9F
          JSR $C9C9
L0573     CLC
          PLA
          STA $61
          PLA
          STA $60
          PLA
          TAY
          PLA
          TAX
          RTS
          CPY #$5F
          BNE L05C3
          .BYTE $17    ;%00010111
          ADC #$0A
          LDX #$FF
          .BYTE $07    ;%00000111
          .BYTE $63    ;%01100011 'c'
          .BYTE $02    ;%00000010
          LDX #$FE
          JSR $CA9B
          .BYTE $07    ;%00000111
          .BYTE $63    ;%01100011 'c'
          .BYTE $07    ;%00000111
          .BYTE $F7    ;%11110111
          ROR A
          .BYTE $7A    ;%01111010 'z'
          .BYTE $FF    ;%11111111
          ROR A
          .BYTE $80    ;%10000000
          BIT $A2
          BRK
L059C     LDA L00A9,X
          BNE L060D
          INX
          CPX #$0B
          BCC L059C
          LDA L00A9,X
          AND #$7F
          BNE L060D
          INX
          CPX #$13
          BCS L05B6
          LDA L00A9,X
          BNE L060D
          .BYTE $80    ;%10000000
          SBC $EF,X
          ROR A
          .BYTE $80    ;%10000000
          .BYTE $53    ;%01010011 'S'
          CPY $9B
          BNE L0610
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          .BYTE $80    ;%10000000
          EOR $6AF7
          JMP $6317
          SBC ($BE),Y
          .BYTE $D4    ;%11010100
          .BYTE $E2    ;%11100010
          BEQ L0610
          .BYTE $87    ;%10000111
          CMP ($11),Y
          CPX #$6F
          BEQ L05D9
          CPX #$6D
          BNE L05E2
L05D9     TXA
          PHA
          LDX #$04
          JSR $C160
          PLA
          TAX
L05E2     JSR $CA9B
          JSR $E487
          AND $0100,X
          BNE L060D
          LDA $96
          AND #$60
          LSR A
          LSR A
          LSR A
          LSR A
          LSR A
          TAX
          LDA $C81D,X
          STA $98
          LDA $97
          AND #$1F
          TAX
          LDA $C821,X
          STA $9A
          STY $9B
          LDX $E2D4,Y
          STX $9C
L060D     JSR $CB59
L0610     CLC
          RTS
          SEC
          RTS
          LDX #$33
          .BYTE $77    ;%01110111 'w'
          .BYTE $FF    ;%11111111
          LSR $A7
          .BYTE $67    ;%01100111 'g'
          .BYTE $43    ;%01000011 'C'
          LDX #$00
          .BYTE $57    ;%01010111 'W'
          .BYTE $FF    ;%11111111
          PHP
          .BYTE $37    ;%00110111 '7'
          .BYTE $FF    ;%11111111
          .BYTE $23    ;%00100011 '#'
          .BYTE $17    ;%00010111
          .BYTE $FF    ;%11111111
          JSR L3680
L0629     TYA
          CMP $C6F7,X
          BNE L063A
          LDA $C6F8,X
          AND $6A
          BEQ L063A
          LDY $C6F9,X
          RTS
L063A     INX
          INX
          INX
          CPX #$0C
          BCC L0629
          .BYTE $37    ;%00110111 '7'
          .BYTE $FF    ;%11111111
          .BYTE $03    ;%00000011
          .BYTE $07    ;%00000111
          .BYTE $FF    ;%11111111
          CLC
L0647     TYA
          CMP $C703,X
          BNE L0658
          LDA $C704,X
          AND $6A
          BEQ L0658
          LDY $C705,X
          RTS
L0658     INX
          INX
          INX
          CPX #$0F
          BCC L0647
L065F     TYA
          CMP $C712,X
          BNE L0670
          LDA $C713,X
          AND $6A
          BEQ L0670
          LDY $C714,X
          RTS
L0670     INX
          INX
          INX
          CPX #$3C
          BCC L065F
          RTS
          .BYTE $3A    ;%00111010 ':'
          RTI
          .BYTE $8B    ;%10001011
          .BYTE $3F    ;%00111111 '?'
          RTI
          STA ($3C),Y
          RTI
          BCC L06BB
          RTI
          STX $3C
          RTI
          .BYTE $8B    ;%10001011
          PLP
          RTI
          STA ($38),Y
          RTI
          BCC L06CD
          RTI
          STX $46
          RTI
          .BYTE $93    ;%10010011
          AND $8B40,X
          .BYTE $3C    ;%00111100 '<'
          RTI
          STA ($38),Y
          RTI
          BCC L06DC
          RTI
          STX $3B
          RTI
          .BYTE $93    ;%10010011
          ROL $40,X
          .BYTE $8F    ;%10001111
          AND ($40),Y
          STY $4029
          .BYTE $87    ;%10000111
          AND ($40,X)
          .BYTE $82    ;%10000010
          .BYTE $32    ;%00110010 '2'
          RTI
          STA $402A
          DEY
          .BYTE $22    ;%00100010 '"'
          RTI
          .BYTE $83    ;%10000011
          .BYTE $34    ;%00110100 '4'
          RTI
          STX $402C
          .BYTE $89    ;%10001001
          BIT $40
          STY $26
          RTI
          TXA
          ROR A
          .BYTE $03    ;%00000011
          STA ($69,X)
          BMI L072C
          ADC #$0C
          .BYTE $62    ;%01100010 'b'
          ROR $0C
          .BYTE $64    ;%01100100 'd'
          TXA
          PHA
          TYA
          PHA
          JSR $CB59
          LDX #$9F
          .BYTE $F7    ;%11110111
          TAY
          .BYTE $12    ;%00010010
          .BYTE $47    ;%01000111 'G'
L06DC     ROR A
          .BYTE $0F    ;%00001111
          .BYTE $67    ;%01100111 'g'
          ROR A
          .BYTE $0C    ;%00001100
          .BYTE $47    ;%01000111 'G'
          .BYTE $6B    ;%01101011 'k'
          .BYTE $13    ;%00010011
          .BYTE $4F    ;%01001111 'O'
          .BYTE $6B    ;%01101011 'k'
          LDY #$95
          JSR $C8D8
          .BYTE $80    ;%10000000
          ASL A
          .BYTE $57    ;%01010111 'W'
          .BYTE $6B    ;%01101011 'k'
          .BYTE $07    ;%00000111
          .BYTE $5F    ;%01011111 '_'
          .BYTE $6B    ;%01101011 'k'
          LDY #$95
          JSR $C911
          .BYTE $D7    ;%11010111
          TAY
          .BYTE $1B    ;%00011011
          .BYTE $B7    ;%10110111
          TAY
          .BYTE $03    ;%00000011
          .BYTE $D7    ;%11010111
          ROR A
          CLC
          .BYTE $07    ;%00000111
          ROR A
          ROL $27,X
          ROR A
          .BYTE $33    ;%00110011 '3'
          .BYTE $07    ;%00000111
          .BYTE $6B    ;%01101011 'k'
          .BYTE $54    ;%01010100 'T'
          .BYTE $27    ;%00100111 '''
          .BYTE $6B    ;%01101011 'k'
          EOR ($0F),Y
          .BYTE $6B    ;%01101011 'k'
          LDY #$97
          JSR $C8D8
          .BYTE $80    ;%10000000
          PHA
          .BYTE $B7    ;%10110111
          TAY
          AND ($07,X)
          ROR A
          ORA $37
          ROR A
          .BYTE $1B    ;%00011011
          .BYTE $80    ;%10000000
          ORA $6B07
          .BYTE $07    ;%00000111
          .BYTE $0F    ;%00001111
          .BYTE $6B    ;%01101011 'k'
          LDY #$97
          JSR $C911
          .BYTE $37    ;%00110111 '7'
          ROR A
L072C     BMI L0755
          .BYTE $6B    ;%01101011 'k'
          AND $6B2F
          LDY #$96
          JSR $C911
          .BYTE $80    ;%10000000
          BIT $37
          .BYTE $6B    ;%01101011 'k'
          .BYTE $0F    ;%00001111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $6B    ;%01101011 'k'
          LDY #$96
          .BYTE $37    ;%00110111 '7'
          ROR A
          ORA $20
          CLD
          INY
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $C911
          .BYTE $17    ;%00010111
          .BYTE $6B    ;%01101011 'k'
          .BYTE $0F    ;%00001111
          .BYTE $1F    ;%00011111
          .BYTE $6B    ;%01101011 'k'
          LDY #$97
          .BYTE $17    ;%00010111
          ROR A
          ORA $20
          CLD
          INY
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $C911
          PLA
          TAY
          JSR $C8D8
          .BYTE $07    ;%00000111
          TAY
          .BYTE $23    ;%00100011 '#'
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          LDX #$9C
          JSR $C8D8
          STY $9B
          LDA $97
          AND #$60
          LSR A
          LSR A
          LSR A
          LSR A
          LSR A
          TAX
          LDA $C81D,X
          STA $98
          LDA $97
          AND #$1F
          TAX
          LDA $C821,X
          STA $9A
          JSR $C8B6
          BCS L079B
          PHA
          AND #$3F
          EOR #$FF
          AND $6A
          STA $6A
          PLA
          EOR $6A
          STA $6A
L079B     PLA
          TAX
          RTS
          .BYTE $3C    ;%00111100 '<'
          SEI
          LDY $F0,X
          PHP
          ORA #$0A
          .BYTE $0B    ;%00001011
          .BYTE $0C    ;%00001100
          ORA $0F0E
          BPL L07BE
          .BYTE $14    ;%00010100
          ASL $18,X
          .BYTE $1A    ;%00011010
          .BYTE $1C    ;%00011100
          ASL $2420,X
          PLP
          BIT $3430
          SEC
          .BYTE $3C    ;%00111100 '<'
          RTI
          PHA
          BVC L0816
L07BE     RTS
          PLA
          BVS L083A
          TXA
          PHA
          TYA
          PHA
          JSR $C8B6
          LDX #$9F
          BCS L07F3
          PHA
          AND #$3F
          EOR #$FF
          AND $6A
          STA $6A
          PLA
          LSR A
          BCC L07E6
          .BYTE $17    ;%00010111
          .BYTE $6B    ;%01101011 'k'
          ASL $1F,X
          .BYTE $6B    ;%01101011 'k'
          LDY #$97
          JSR $C8D8
          .BYTE $80    ;%10000000
          ORA $904A
          ASL A
          .BYTE $37    ;%00110111 '7'
          .BYTE $6B    ;%01101011 'k'
          .BYTE $07    ;%00000111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $6B    ;%01101011 'k'
          LDY #$96
          JSR $C8D8
L07F3     .BYTE $57    ;%01010111 'W'
          .BYTE $6B    ;%01101011 'k'
          .BYTE $07    ;%00000111
          .BYTE $5F    ;%01011111 '_'
          .BYTE $6B    ;%01101011 'k'
          LDY #$95
          JSR $C911
          PLA
          TAY
          .BYTE $27    ;%00100111 '''
          TAY
          .BYTE $03    ;%00000011
          JSR $C911
          TYA
          PHA
          CPY $9B
          BNE L0832
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          .BYTE $37    ;%00110111 '7'
          .BYTE $6B    ;%01101011 'k'
          .BYTE $0F    ;%00001111
          .BYTE $3F    ;%00111111 '?'
          .BYTE $6B    ;%01101011 'k'
          LDY #$96
          .BYTE $37    ;%00110111 '7'
L0816     ROR A
          ORA $20
          CLD
          INY
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $C911
          .BYTE $17    ;%00010111
          .BYTE $6B    ;%01101011 'k'
          .BYTE $0F    ;%00001111
          .BYTE $1F    ;%00011111
          .BYTE $6B    ;%01101011 'k'
          LDY #$97
          .BYTE $17    ;%00010111
          ROR A
          ORA $20
          CLD
          INY
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $C911
L0832     PLA
          TAY
          PLA
          TAX
          RTS
          TYA
          LDX #$00
L083A     CMP $C8CA,X
          BNE L0844
          LDA $C8CB,X
          CLC
          RTS
L0844     INX
          INX
          CPX #$0E
          BCC L083A
          RTS
          .BYTE $73    ;%01110011 's'
          ORA ($76,X)
          .BYTE $02    ;%00000010
          SEI
          .BYTE $04    ;%00000100
          ROR $6D08,X
          BPL L08C5
          JSR $4081
          LDA $A8
          PHA
          LDA ($60),Y
          BEQ L088E
          LDA $E36C,Y
          STA $A8
          LDA $93
          CMP #$03
          BNE L086E
          .BYTE $3C    ;%00111100 '<'
          BRK
          TAY
L086E     LDA $00,X
          BEQ L0875
          INX
          .BYTE $80    ;%10000000
          SBC $A897,Y
          ORA L00A9
          SBC ($95,X)
          BRK
          INX
          .BYTE $77    ;%01110111 'w'
          TAY
          ORA L00A9
          CPX #$95
          BRK
          INX
          LDA ($60),Y
          STA $00,X
          INX
          LDA #$00
          STA $00,X
L088E     PLA
          STA $A8
          RTS
          LDA $A8
          PHA
          LDA ($60),Y
          BEQ L08DD
          LDA $E36C,Y
          STA $A8
          LDA $93
          CMP #$03
          BNE L08A9
          .BYTE $3C    ;%00111100 '<'
          BRK
          TAY
          .BYTE $80    ;%10000000
          ASL $C9
          ORA ($D0,X)
          .BYTE $02    ;%00000010
          .BYTE $4F    ;%01001111 'O'
          TAY
          LDA $00,X
          BEQ L08B6
          INX
          .BYTE $80    ;%10000000
          SBC $A897,Y
          ORA L00A9
          SBC ($95,X)
          BRK
          INX
          .BYTE $77    ;%01110111 'w'
          TAY
          ORA L00A9
          CPX #$95
          BRK
L08C5     INX
          .BYTE $57    ;%01010111 'W'
          TAY
          ASL $B1
          RTS
          ORA #$80
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
          LDA #$F0
          STA $00,X
          INX
          LDA ($60),Y
          STA $00,X
          INX
          LDA #$00
          STA $00,X
L08DD     PLA
          STA $A8
          RTS
          LDY #$00
          JSR $C976
          LDA #$00
          JSR $C998
          JSR $CA1C
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2B    ;%00101011 '+'
          .BYTE $97    ;%10010111
          .BYTE $2F    ;%00101111 '/'
          ADC #$20
          .BYTE $B2    ;%10110010
          CMP #$60
          PHA
          TYA
          PHA
          TYA
          AND #$7F
          CMP #$01
          BEQ L090F
          CMP #$02
          BEQ L090B
          CMP #$03
          BEQ L090B
          LDY #$02
L090B     LDA #$00
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L090F     LDA #$FF
          STY $93
          STA $94
          PLA
          TAY
          PLA
          RTS
          EOR $69
          AND #$70
          EOR $69
          STA $69
          .BYTE $DF    ;%11011111
          ROR A
          .BYTE $B7    ;%10110111
          ADC #$02
          .BYTE $CF    ;%11001111
          ROR A
          EOR #$70
          EOR $04
          AND #$70
          EOR $04
          STA $04
          RTS
          LDX #$00
L0935     LDA $E404,X
          STA $0113,X
          LDA $E417,X
          STA $0126,X
          INX
          CPX #$13
          BCC L0935
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $92    ;%10010010
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          JSR $E457
          CLC
          ADC $73
          CMP #$11
          BCC L095F
          JSR $C9F1
          SEC
          .BYTE $80    ;%10000000
          ORA $AA98
          LDY $00,X
          BEQ L096B
          JSR $CA36
          INX
          .BYTE $80    ;%10000000
          INC $18,X
          PLA
          TAY
          PLA
          TAX
          PLA
          RTS
          LDY $94
          JSR $CA36
          RTS
          LDA #$40
          SEC
          .BYTE $27    ;%00100111 '''
          ADC $06
          .BYTE $07    ;%00000111
          ADC $03
          .BYTE $87    ;%10000111
          RTI
          ORA ($97),Y
          ROR $0E
          JSR $CA64
          BCC L0991
          JSR $CA6D
          BCS L0995
L0991     STY $6C
          LDA #$00
L0995     RTS
          PHA
          TXA
          PHA
          LDX #$6D
          .BYTE $80    ;%10000000
          ORA $48
          TXA
          PHA
          LDX #$73
          LDA #$00
          STA $00,X
          STA $01,X
          STA $02,X
          PLA
          TAX
          PLA
          RTS
          PHA
          TXA
          PHA
          LDX #$6D
          LDA #$03
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
          PHA
          TXA
          PHA
          LDX #$73
          LDA #$11
          CMP $00,X
          BNE L09C5
          SEC
          .BYTE $80    ;%10000000
          .BYTE $1C    ;%00011100
L09C5     PHA
          TXA
          PHA
          INC $00,X
          INC $02,X
          TXA
          .BYTE $3A    ;%00111010 ':'
          .BYTE $3A    ;%00111010 ':'
          CLC
          ADC $02,X
          TAX
          STY $00,X
          PLA
          TAX
          PLA
          CMP $02,X
          BNE L09E0
          LDA #$00
          STA $02,X
L09E0     CLC
          PLA
          TAX
          PLA
          RTS
          PHA
          TXA
          PHA
          LDX #$6D
          LDA #$03
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
          PHA
          TXA
          PHA
          LDX #$73
          LDA #$11
          DEC $00,X
          BPL L09FE
          INC $00,X
          SEC
          .BYTE $80    ;%10000000
          .BYTE $1A    ;%00011010
L09FE     PHA
          TXA
          PHA
          INC $01,X
          TXA
          .BYTE $3A    ;%00111010 ':'
          .BYTE $3A    ;%00111010 ':'
          CLC
          ADC $01,X
          TAX
          LDY $00,X
          PLA
          TAX
          PLA
          CMP $01,X
          BNE L0A17
          LDA #$00
          STA $01,X
L0A17     CLC
          PLA
          TAX
          PLA
          RTS
          PHA
          TYA
          PHA
          LDA $87
          CMP #$08
          BCS L0A41
          INC $87
          INC $89
          LDA $89
          CMP #$08
          BCC L0A32
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $89    ;%10001001
L0A32     CLC
          ADC #$89
          TAY
          STX $00,Y
          .BYTE $A7    ;%10100111
          BIT $AF05
          BIT $7020
          BNE L0A59
L0A41     PLA
          TAY
          PLA
          RTS
          PHA
          TYA
          PHA
          SEC
          LDA $87
          BEQ L0A60
          DEC $87
          INC $88
          LDA $88
          CMP #$08
          BCC L0A5A
          .BYTE $3C    ;%00111100 '<'
          BRK
L0A59     DEY
L0A5A     CLC
          ADC #$89
          TAY
          LDX $00,Y
L0A60     PLA
          TAY
          PLA
          RTS
          TYA
          PHA
          AND #$7F
          BEQ L0A86
          CMP #$15
          BPL L0A86
          ORA #$80
          TAY
          JSR $E487
          TAY
          PLA
          .BYTE $F3    ;%11110011
          .BYTE $07    ;%00000111
          TYA
          EOR #$FF
          AND L00A9,X
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          TYA
          ORA L00A9,X
          STA L00A9,X
          CLC
          RTS
L0A86     PLA
          SEC
          RTS
          LDX #$04
L0A8B     LDY #$05
          JSR $C1BC
          LDY #$0B
          JSR $CB1B
          ASL A
          BCC L0A9B
          DEX
          BNE L0A8B
L0A9B     RTS
          .BYTE $C7    ;%11000111
          .BYTE $FF    ;%11111111
          .BYTE $27    ;%00100111 '''
          CPY #$08
          BCC L0AAA
          CPY #$10
          BCC L0AB3
          LDA #$00
          RTS
L0AAA     LDA $E496,Y
          EOR #$FF
          STA $00
          .BYTE $80    ;%10000000
          .BYTE $07    ;%00000111
L0AB3     LDA $E48E,Y
          EOR #$FF
          STA $02
          NOP
          LDA $06
          EOR #$FF
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          .BYTE $02    ;%00000010
          RTS
          CPY #$10
          BCC L0ACD
          LDA #$00
          RTS
L0ACD     TYA
          .BYTE $EB    ;%11101011
          STA $00
          NOP
          LDA $06
          EOR #$FF
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          BRK
          RTS
          .BYTE $07    ;%00000111
          CMP ($0B),Y
          PHA
          TXA
          PHA
          LDX #$00
          JSR $C160
          PLA
          TAX
          PLA
          RTS
          .BYTE $1F    ;%00011111
          PLA
          .BYTE $3F    ;%00111111 '?'
          PLA
          .BYTE $5F    ;%01011111 '_'
          PLA
          .BYTE $A7    ;%10100111
          .BYTE $67    ;%01100111 'g'
          BRK
          .BYTE $27    ;%00100111 '''
          ADC $06
          .BYTE $07    ;%00000111
          ADC $03
          .BYTE $87    ;%10000111
          RTI
          .BYTE $0C    ;%00001100
          .BYTE $B7    ;%10110111
          ROR $09
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          .BYTE $04    ;%00000100
          .BYTE $0F    ;%00001111
          PLA
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $2F    ;%00101111 '/'
          PLA
          .BYTE $27    ;%00100111 '''
          ADC $19
          .BYTE $07    ;%00000111
          ADC $16
          .BYTE $A7    ;%10100111
          RTI
          .BYTE $13    ;%00010011
          .BYTE $D7    ;%11010111
          ROR $04
          .BYTE $4F    ;%01001111 'O'
          PLA
          .BYTE $80    ;%10000000
          .BYTE $0C    ;%00001100
          .BYTE $F7    ;%11110111
          ROR $09
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          .BYTE $04    ;%00000100
          .BYTE $2F    ;%00101111 '/'
          PLA
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          .BYTE $0F    ;%00001111
          PLA
          .BYTE $EF    ;%11101111
          PHP
          .BYTE $4F    ;%01001111 'O'
          PHP
          .BYTE $0F    ;%00001111
          PHP
          SEC
          .BYTE $17    ;%00010111
          PLA
          .BYTE $03    ;%00000011
          .BYTE $CF    ;%11001111
          PHP
          CLC
          .BYTE $37    ;%00110111 '7'
          PLA
          .BYTE $03    ;%00000011
          .BYTE $6F    ;%01101111 'o'
          PHP
          CLC
          .BYTE $57    ;%01010111 'W'
          PLA
          .BYTE $03    ;%00000011
          .BYTE $2F    ;%00101111 '/'
          PHP
          CLC
          BCS L0B7A
L0B3E     .BYTE $17    ;%00010111
          PLA
          BPL L0B09
          .BYTE $14    ;%00010100
          ORA $087F
          .BYTE $3F    ;%00111111 '?'
          PHP
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $7F    ;%01111111
          PLA
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          .BYTE $3A    ;%00111010 ':'
          .BYTE $80    ;%10000000
          AND ($37),Y
          PLA
          BPL L0BBC
          .BYTE $14    ;%00010100
          ORA $08DF
          .BYTE $3F    ;%00111111 '?'
          PHP
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          JSR L2580
          .BYTE $57    ;%01010111 'W'
          PLA
          ORA $1427
          ASL A
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $8F    ;%10001111
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          .BYTE $80    ;%10000000
          ORA $A5,X
          .BYTE $3C    ;%00111100 '<'
          AND #$49
          BEQ L0B3E
L0B7A     .BYTE $DF    ;%11011111
          PHP
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $3F    ;%00111111 '?'
          PHP
          SEC
          RTS
          .BYTE $BF    ;%10111111
          PLA
          JSR $CC43
          CLC
          RTS
          .BYTE $AF    ;%10101111
          PLA
          JSR $CC43
          CLC
          RTS
          .BYTE $87    ;%10000111
          PLA
          ORA $6867
          ORA $20
          STA $CC,X
          .BYTE $80    ;%10000000
          PHP
          JSR $CCF5
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $CD55
          CMP #$01
          BCS L0BBE
          LDX #$50
          .BYTE $A7    ;%10100111
          PLA
          .BYTE $02    ;%00000010
          LDX #$42
          SEC
          LDA $00,X
          BEQ L0BC3
          JSR $CDB5
          CMP #$01
          BCC L0BC2
          LDA #$C0
L0BBC     .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0BBE     LDA #$40
          LDY #$FE
L0BC2     CLC
L0BC3     RTS
          JSR $CDD0
          CMP #$01
          BCC L0C15
          BNE L0C11
          LDA $41
          BEQ L0C0D
          STA $62
L0BD3     LDX #$51
          .BYTE $A7    ;%10100111
          PLA
          .BYTE $02    ;%00000010
          LDX #$43
          LDA $00,X
          .BYTE $3A    ;%00111010 ':'
          BEQ L0BE1
          STA $00,X
L0BE1     LDY #$FE
          .BYTE $87    ;%10000111
          PLA
          ORA $6867
          ORA $20
          STA $CC,X
          .BYTE $80    ;%10000000
          PHP
          JSR $CCF5
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          JSR $CD55
          CMP #$01
          BCS L0C0D
          LDA $49
          JSR $CDB5
          CMP #$01
          BEQ L0C09
          BCS L0C0D
          CPY #$FE
          BNE L0C15
L0C09     DEC $62
          BNE L0BD3
L0C0D     LDA #$80
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0C11     LDA #$40
          LDY #$00
L0C15     RTS
          .BYTE $EF    ;%11101111
          BIT $08DF
          .BYTE $FF    ;%11111111
          PHP
          LDA $46
          EOR #$FF
          STA $22
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $CF    ;%11001111
          PHP
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          LSR $C7
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDX #$01
          TYA
          SEC
L0C30     ROR A
          BNE L0C37
          TXA
          AND #$01
          LSR A
L0C37     BCC L0C3E
          INX
          .BYTE $EF    ;%11101111
          PHP
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0C3E     .BYTE $FF    ;%11111111
          PHP
          TAY
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          AND $D7
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $1F    ;%00011111
          .BYTE $C7    ;%11000111
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          CLC
          TYA
          BNE L0C30
          .BYTE $EF    ;%11101111
          PHP
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          ORA $14E7
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $07    ;%00000111
          .BYTE $F7    ;%11110111
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDA #$00
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          LDA #$02
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $FF    ;%11111111
          BIT $EF60
          BIT $087F
          .BYTE $5F    ;%01011111 '_'
          PHP
          LDA $46
          EOR #$FF
          STA $22
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $6F    ;%01101111 'o'
          PHP
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          LSR $67
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDX #$01
          TYA
          SEC
L0C90     ROR A
          BNE L0C97
          TXA
          AND #$01
          LSR A
L0C97     BCC L0C9E
          INX
          .BYTE $4F    ;%01001111 'O'
          PHP
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0C9E     .BYTE $5F    ;%01011111 '_'
          PHP
          TAY
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          AND $77
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $1F    ;%00011111
          .BYTE $67    ;%01100111 'g'
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          CLC
          TYA
          BNE L0C90
          .BYTE $4F    ;%01001111 'O'
          PHP
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          ORA L1447
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $07    ;%00000111
          .BYTE $57    ;%01010111 'W'
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDA #$00
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          LDA #$02
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $FF    ;%11111111
          BIT $EF60
          BIT $083F
          .BYTE $1F    ;%00011111
          PHP
          LDA $46
          EOR #$FF
          STA $22
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2F    ;%00101111 '/'
          PHP
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          LSR $27
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDX #$01
          TYA
          SEC
L0CF0     ROR A
          BNE L0CF7
          TXA
          AND #$01
          LSR A
L0CF7     BCC L0CFE
          INX
          .BYTE $0F    ;%00001111
          PHP
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L0CFE     .BYTE $1F    ;%00011111
          PHP
          TAY
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          AND $37
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $1F    ;%00011111
          .BYTE $27    ;%00100111 '''
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          CLC
          TYA
          BNE L0CF0
          .BYTE $0F    ;%00001111
          PHP
          LDA $47
          EOR #$FF
          STA $22
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          ORA $1407
          .BYTE $FA    ;%11111010
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $07    ;%00000111
          .BYTE $17    ;%00010111
          .BYTE $14    ;%00010100
          .BYTE $FA    ;%11111010
          LDA #$00
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          LDA #$02
          .BYTE $3F    ;%00111111 '?'
          PHP
          .BYTE $FF    ;%11111111
          BIT $EF60
          BIT $2038
          AND $CE,X
          JSR $CE17
L0D3F     .BYTE $3C    ;%00111100 '<'
          .BYTE $47    ;%01000111 'G'
          .BYTE $22    ;%00100010 '"'
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          JSR $CE53
          BCC L0D51
          .BYTE $F7    ;%11110111
          .BYTE $3C    ;%00111100 '<'
          SED
          .BYTE $1A    ;%00011010
          BNE L0D3F
          .BYTE $80    ;%10000000
          ROL $2CEF,X
          LDA $48
          EOR #$FF
          STA $22
          .BYTE $FF    ;%11111111
          .BYTE $3C    ;%00111100 '<'
          LDX #$01
          LDY #$09
L0D5F     ROR A
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          BIT $5320
          DEC $F890
          .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          BIT $20
          .BYTE $53    ;%01010011 'S'
          DEC $F8B0
          JSR $CE6A
          BCC L0D76
          INX
L0D76     DEY
          BNE L0D5F
L0D79     .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $13    ;%00010011
          JSR $CE53
          BCC L0D79
L0D81     .BYTE $E7    ;%11100111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $0B    ;%00001011
          JSR $CE53
          BCS L0D81
          TAY
          TXA
          AND #$01
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
          LDA #$02
          CLC
          JSR $CE17
          .BYTE $FF    ;%11111111
          BIT $8760
          PLA
          .BYTE $13    ;%00010011
          .BYTE $67    ;%01100111 'g'
          PLA
          PHP
          BCS L0DA3
          .BYTE $DF    ;%11011111
          PHP
          RTS
L0DA3     .BYTE $CF    ;%11001111
          PHP
          RTS
          BCS L0DAB
          .BYTE $7F    ;%01111111
          PHP
          RTS
L0DAB     .BYTE $6F    ;%01101111 'o'
          PHP
          RTS
          BCS L0DB3
          .BYTE $3F    ;%00111111 '?'
          PHP
          RTS
L0DB3     .BYTE $2F    ;%00101111 '/'
          PHP
          RTS
          .BYTE $87    ;%10000111
          PLA
          .BYTE $13    ;%00010011
          .BYTE $67    ;%01100111 'g'
          PLA
          PHP
          BCS L0DC1
          .BYTE $FF    ;%11111111
          PHP
          RTS
L0DC1     .BYTE $EF    ;%11101111
          PHP
          RTS
          BCS L0DC9
          .BYTE $5F    ;%01011111 '_'
          PHP
          RTS
L0DC9     .BYTE $4F    ;%01001111 'O'
          PHP
          RTS
          BCS L0DD1
          .BYTE $1F    ;%00011111
          PHP
          RTS
L0DD1     .BYTE $0F    ;%00001111
          PHP
          RTS
          .BYTE $87    ;%10000111
          PLA
          ORA $6867
          ORA $C7
          .BYTE $14    ;%00010100
          .BYTE $0C    ;%00001100
          CLC
          RTS
          .BYTE $67    ;%01100111 'g'
          .BYTE $14    ;%00010100
          .BYTE $07    ;%00000111
          CLC
          RTS
          .BYTE $27    ;%00100111 '''
          .BYTE $14    ;%00010100
          .BYTE $02    ;%00000010
          CLC
          RTS
          SEC
          RTS
          .BYTE $87    ;%10000111
          PLA
          ORA $6867
          ORA $E7
          .BYTE $14    ;%00010100
          .BYTE $0C    ;%00001100
          CLC
          RTS
          .BYTE $47    ;%01000111 'G'
          .BYTE $14    ;%00010100
          .BYTE $07    ;%00000111
          CLC
          RTS
          .BYTE $07    ;%00000111
          .BYTE $14    ;%00010100
          .BYTE $02    ;%00000010
          CLC
          RTS
          SEC
          RTS
          .BYTE $BF    ;%10111111
          PLA
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $7F    ;%01111111
          PLA
          .BYTE $77    ;%01110111 'w'
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          .BYTE $6F    ;%01101111 'o'
          PLA
          RTS
          .BYTE $AF    ;%10101111
          PLA
          .BYTE $D7    ;%11010111
          ROR $06
          .BYTE $8F    ;%10001111
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          .BYTE $80    ;%10000000
          ORA #$9F
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          .BYTE $77    ;%01110111 'w'
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          .BYTE $7F    ;%01111111
          PLA
          RTS
          .BYTE $1F    ;%00011111
          PLA
          .BYTE $3F    ;%00111111 '?'
          PLA
          .BYTE $97    ;%10010111
          .BYTE $FF    ;%11111111
          ASL $0F
          PLA
          .BYTE $2F    ;%00101111 '/'
          PLA
          .BYTE $7F    ;%01111111
          ASL A
          .BYTE $4F    ;%01001111 'O'
          PLA
          .BYTE $5F    ;%01011111 '_'
          ASL A
          LDY #$19
          JSR $C1AC
          LDA #$00
          STA $023A
          STA $023B
          LDA $67
          AND #$07
          STA $67
          .BYTE $3A    ;%00111010 ':'
          .BYTE $3A    ;%00111010 ':'
          ASL A
          ASL A
          STA $62
          ASL A
          ASL A
          ADC $62
          STA $62
          .BYTE $EF    ;%11101111
          PHP
          .BYTE $4F    ;%01001111 'O'
          PHP
          .BYTE $0F    ;%00001111
          PHP
L0E59     SEC
          .BYTE $17    ;%00010111
          PLA
          .BYTE $03    ;%00000011
          .BYTE $CF    ;%11001111
          PHP
          CLC
          .BYTE $37    ;%00110111 '7'
          PLA
          .BYTE $03    ;%00000011
          .BYTE $6F    ;%01101111 'o'
          PHP
          CLC
          .BYTE $57    ;%01010111 'W'
          PLA
          .BYTE $03    ;%00000011
          .BYTE $2F    ;%00101111 '/'
          PHP
          CLC
          BCS L0EE4
L0E6E     .BYTE $3C    ;%00111100 '<'
          BNE L0E92
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          NOP
          .BYTE $17    ;%00010111
          PLA
          ASL $14C7,X
          .BYTE $1B    ;%00011011
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $3F    ;%00111111 '?'
          PHP
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $7F    ;%01111111
          PLA
          JSR $CDD0
          CMP #$01
          BCS L0E59
          CPY #$AA
          BEQ L0E59
          CPY #$06
          BCS L0E59
          .BYTE $1F    ;%00011111
L0E92     PLA
          .BYTE $80    ;%10000000
          CPY $37
          PLA
          ASL $1467,X
          .BYTE $1B    ;%00011011
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $3F    ;%00111111 '?'
          PHP
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          JSR $CDD0
          CMP #$01
          BCS L0E59
          CPY #$AA
          BEQ L0E59
          CPY #$06
          BCS L0E59
          .BYTE $3F    ;%00111111 '?'
          PLA
          .BYTE $80    ;%10000000
          .BYTE $A3    ;%10100011
          .BYTE $57    ;%01010111 'W'
          PLA
          ASL $1427,X
          .BYTE $1B    ;%00011011
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $8F    ;%10001111
          PLA
          .BYTE $6F    ;%01101111 'o'
          PLA
          JSR $CDD0
          CMP #$01
          BCS L0E59
          CPY #$AA
          BEQ L0E59
          CPY #$06
          BCS L0E59
          .BYTE $5F    ;%01011111 '_'
          PLA
          .BYTE $80    ;%10000000
          .BYTE $82    ;%10000010
          .BYTE $D7    ;%11010111
          .BYTE $3C    ;%00111100 '<'
          TXS
          DEC $62
          BNE L0E6E
          .BYTE $7F    ;%01111111
          PHP
          .BYTE $DF    ;%11011111
          PHP
          .BYTE $3F    ;%00111111 '?'
          PHP
L0EE4     .BYTE $3C    ;%00111100 '<'
          EOR $21
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $9F    ;%10011111
          PLA
          .BYTE $7F    ;%01111111
          PLA
          JSR $CF78
          .BYTE $6F    ;%01101111 'o'
          PLA
          JSR $CF78
          JSR $D9A9
          RTS
          LDY #$F2
          JSR $CC0F
          BCS L0F04
          CMP #$01
          BCC L0F07
L0F04     LDA #$00
          RTS
L0F07     CPY #$FA
          BNE L0F35
          LDA #$0B
          JSR $CDB5
          CMP #$01
          BCS L0F35
          STY $63
          CPY #$06
          BCS L0F2C
          LDA #$02
          STY $023B
          .BYTE $7F    ;%01111111
          .BYTE $67    ;%01100111 'g'
          .BYTE $E7    ;%11100111
          .BYTE $67    ;%01100111 'g'
          .BYTE $3B    ;%00111011 ';'
          .BYTE $EF    ;%11101111
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          PLA
          ROL $6F,X
          .BYTE $67    ;%01100111 'g'
          RTS
L0F2C     LDA #$0B
          JSR $CDB5
          CMP #$01
          BCC L0F38
L0F35     LDA #$04
          RTS
L0F38     LDX $63
          CPY #$20
          BNE L0F42
          CPX #$AB
          BEQ L0F50
L0F42     LDA #$01
          .BYTE $C7    ;%11000111
          .BYTE $67    ;%01100111 'g'
          CLC
          .BYTE $CF    ;%11001111
          .BYTE $67    ;%01100111 'g'
          .BYTE $BF    ;%10111111
          .BYTE $67    ;%01100111 'g'
          STY $023A
          .BYTE $80    ;%10000000
          ASL A
L0F50     LDA #$03
          .BYTE $C7    ;%11000111
          .BYTE $67    ;%01100111 'g'
          ASL A
          .BYTE $A7    ;%10100111
          .BYTE $67    ;%01100111 'g'
          .BYTE $07    ;%00000111
          .BYTE $AF    ;%10101111
          .BYTE $67    ;%01100111 'g'
          .BYTE $77    ;%01110111 'w'
          PLA
          .BYTE $02    ;%00000010
          .BYTE $6F    ;%01101111 'o'
          .BYTE $67    ;%01100111 'g'
          RTS
          .BYTE $9F    ;%10011111
          BIT L00A9+$0000
          STA $CF
          TAX
L0F67     LDA $04
          AND #$0F
          CMP $CF
          BEQ L0F7D
          STA $CF
          LDY #$01
          JSR $C1AC
          INX
          CPX #$0A
          BCC L0F67
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
L0F7D     ASL A
          ASL A
          ASL A
          ASL A
          ORA $CF
          STA $CF
          .BYTE $FF    ;%11111111
          BNE L0FA0
          RTS
          LDA $04
          ASL A
          ASL A
          ASL A
          ASL A
          EOR $CF
          AND #$F0
          BEQ L0F9B
          EOR $CF
          STA $CF
          .BYTE $80    ;%10000000
          EOR $A5,X
          .BYTE $CF    ;%11001111
          .BYTE $E7    ;%11100111
          BNE L0FAA
L0FA0     .BYTE $EF    ;%11101111
          BNE L0FAC
          .BYTE $03    ;%00000011
          STA $CF
          LDA #$0F
          .BYTE $80    ;%10000000
          .BYTE $14    ;%00010100
L0FAA     LSR A
          LSR A
L0FAC     LSR A
          LSR A
          EOR $CF
          AND #$0F
          BEQ L0FF0
          .BYTE $73    ;%01110011 's'
          PHP
          .BYTE $27    ;%00100111 '''
          CMP ($05),Y
          LDX #$01
          JSR $C160
          PHA
          AND #$03
          BEQ L0FDC
          LDA $CF
          .BYTE $F3    ;%11110011
          ORA $A3,X
          .BYTE $13    ;%00010011
          .BYTE $93    ;%10010011
          ORA #$33
          .BYTE $0F    ;%00001111
          .BYTE $47    ;%01000111 'G'
          CMP ($0C),Y
          LDX #$02
          .BYTE $80    ;%10000000
          ORA $67
          CMP ($05),Y
          LDX #$03
          JSR $C160
L0FDC     PLA
          LSR $CF
          LSR $CF
          LSR $CF
          LSR $CF
          AND $D0
          AND #$0F
          BEQ L0FF0
          .BYTE $8F    ;%10001111
          BIT $7020
          BNE L1051
          PHA
          .BYTE $FF    ;%11111111
          .BYTE $04    ;%00000100
          LDA #$02
          JSR $C1CC
          .BYTE $EF    ;%11101111
          .BYTE $04    ;%00000100
          PLA
          RTS
          PHA
          .BYTE $FF    ;%11111111
          .BYTE $04    ;%00000100
          LDA #$21
          JSR $C1CC
          .BYTE $EF    ;%11101111
          .BYTE $04    ;%00000100
          PLA
          RTS
          PHA
          TXA
          PHA
          LDA $19
          AND #$78
          BEQ L1017
          JSR $E109
          .BYTE $80    ;%10000000
          .BYTE $3F    ;%00111111 '?'
L1017     LDX #$FF
          LDA $0145
          BEQ L1020
          LDX $DD
L1020     LDA $18
          CPX #$FF
          BNE L102C
          CMP #$FF
          BNE L1056
          .BYTE $80    ;%10000000
          BPL L100D
          BRK
          BNE L1036
          CMP #$11
          BCS L1056
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L1036     CPX $DE
          BCS L103F
          STA $DE,X
          INX
          .BYTE $80    ;%10000000
          ORA $30CA,Y
          ORA $38
          SBC $DE,X
          .BYTE $80    ;%10000000
          SED
          CMP #$FF
          BNE L1056
L104B     INX
          LDA $DE,X
          STA $EE,X
          CPX $DE
          BCC L104B
          .BYTE $CF    ;%11001111
          BIT $FFA2
          STX $DD
          LDA #$05
          STA $0145
          PLA
          TAX
          PLA
          RTI
          LDA $0145
          BEQ L106C
          .BYTE $1A    ;%00011010
          STA $0145
L106C     .BYTE $17    ;%00010111
          ORA $2007,Y
          .BYTE $17    ;%00010111
          CMP (L00B0),Y
          .BYTE $02    ;%00000010
          STX $18
          RTS
          PHA
          TYA
          PHA
          LDA $D2
          CMP #$08
          BCS L1094
          INC $D2
          INC $D4
          LDA $D4
          CMP #$08
          BCC L108D
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $D4    ;%11010100
L108D     CLC
          ADC #$D4
          TAY
          STX $00,Y
          CLC
L1094     PLA
          TAY
          PLA
          RTS
          PHA
          TYA
          PHA
          SEC
          LDA $D2
          BEQ L10B3
          DEC $D2
          INC $D3
          LDA $D3
          CMP #$08
          BCC L10AD
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $D3    ;%11010011
L10AD     CLC
          ADC #$D4
          TAY
          LDX $00,Y
L10B3     PLA
          TAY
          PLA
          RTS
          PHA
          AND #$F0
          LSR A
          LSR A
          LSR A
          TAY
          .BYTE $3C    ;%00111100 '<'
          EOR $3C60
          CMP ($61),Y
          JSR $E472
          PLA
          AND #$0F
          CLC
          .BYTE $B2    ;%10110010
          RTS
          RTS
          ADC $D1,X
          .BYTE $73    ;%01110011 's'
          CMP ($6F),Y
          CMP ($6D),Y
          CMP ($94),Y
          CMP ($92),Y
          CMP (L008E),Y
          CMP ($8C),Y
          CMP ($4C),Y
          CMP ($4C),Y
          CMP ($B8),Y
          CMP ($4C),Y
          CMP ($D3),Y
          .BYTE $D2    ;%11010010
          ORA $8BD3,Y
          .BYTE $D3    ;%11010011
          LSR $D4,X
          ADC #$10
          ADC #$20
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
          ADC #$10
          ADC $4B
          ADC #$20
          CMP #$60
          BCC L1100
          LDA #$5E
L1100     CMP #$60
          BCS L1106
          ADC #$60
L1106     TAX
          LDY $00,X
          JSR $C375
          RTS
          ADC #$10
          ADC #$20
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
          ADC #$10
          ADC $4B
          ADC #$20
          CMP #$60
          BCC L111F
          LDA #$5E
L111F     CMP #$40
          BCS L1125
          ADC #$60
L1125     TAX
          JSR $C2F9
          STA $00,X
          CPX #$40
L112D     BEQ L1130
          RTS
L1130     .BYTE $47    ;%01000111 'G'
          RTI
          .BYTE $03    ;%00000011
          .BYTE $5F    ;%01011111 '_'
          AND #$60
          .BYTE $4F    ;%01001111 'O'
          AND #$60
          SBC #$03
          BCS L1140
          JMP $D14C
L1140     ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          CPY $3C60
          CMP ($61),Y
          JSR $E472
          .BYTE $B2    ;%10110010
          RTS
          CPX $D1
          SBC ($D1),Y
          .BYTE $0F    ;%00001111
          .BYTE $D2    ;%11010010
          .BYTE $5B    ;%01011011 '['
          .BYTE $D2    ;%11010010
          LSR $67D2,X
          .BYTE $D2    ;%11010010
          BNE L112D
          ADC ($D2),Y
          JMP $61D1
          .BYTE $D2    ;%11010010
          .BYTE $64    ;%01100100 'd'
          .BYTE $D2    ;%11010010
          JMP $A0D1
          SBC ($AD),Y
          ASL A
          .BYTE $02    ;%00000010
          BEQ L116E
          LDY #$FA
L116E     JSR $C375
          RTS
          CLI
          LDX #$00
L1175     .BYTE $37    ;%00110111 '7'
          AND #$FD
          .BYTE $67    ;%01100111 'g'
          AND #$0F
          JSR $C2F9
          STA $020A,X
          CMP #$00
          BEQ L118F
          INX
          CPX #$2F
          BCC L1175
          LDA #$00
          STA $020A
L118F     RTS
          LDA $020A
          BEQ L11A9
          LDA #$00
          STA $0200
          .BYTE $2F    ;%00101111 '/'
          ADC $A5
          AND #$29
          .BYTE $0F    ;%00001111
          STA $29
          LDY $53
          BEQ L11A9
          JSR $C375
L11A9     RTS
          TYA
          CMP #$80
          BCS L11DB
          CMP $56
          BEQ L11DB
          CMP $57
          BEQ L11DB
          LDY $0200
          CMP $020A,Y
          BNE L11D6
          INY
          STY $0200
          LDA $020A,Y
          BNE L11DB
          LDY $54
          BEQ L11CF
          JSR $C375
L11CF     .BYTE $3F    ;%00111111 '?'
          ADC $00
          AND #$20
          .BYTE $0F    ;%00001111
          .BYTE $C2    ;%11000010
L11D6     LDA #$00
          STA $0200
L11DB     RTS
          .BYTE $AF    ;%10101111
          RTI
          RTS
          .BYTE $BF    ;%10111111
          RTI
          RTS
          .BYTE $8F    ;%10001111
          RTI
          RTS
          .BYTE $9F    ;%10011111
          RTI
          RTS
          JSR $CE8D
          JSR $D280
          JSR $C375
          RTS
          LDY #$00
          .BYTE $D7    ;%11010111
          .BYTE $67    ;%01100111 'g'
          ASL $20
          STA ($CE,X)
          JSR $D280
          JSR $C375
          RTS
          LDY #$00
          SEC
          JSR $CE17
          JSR $CE35
          LDX #$00
L120C     JSR $CE53
          BCS L1218
          DEX
          BNE L120C
          LDY #$01
          .BYTE $80    ;%10000000
          BMI L1231
          JSR $CE17
          NOP
          NOP
          NOP
          NOP
          NOP
          JSR $CE53
          BCC L122A
          LDY #$02
          .BYTE $80    ;%10000000
          ASL $00A2,X
L122C     JSR $CE6A
          BCS L1238
L1231     DEX
          BNE L122C
          LDY #$03
          .BYTE $80    ;%10000000
          BPL L1251
          JSR $CE35
          NOP
          NOP
          NOP
          NOP
          NOP
          JSR $CE6A
          BCC L1248
          LDY #$04
L1248     CLC
          JSR $CE17
          SEC
          JSR $CE35
          RTS
L1251     JMP $E4F0
          CMP #$03
          BCC L125B
          JMP $D14C
L125B     ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          .BYTE $E7    ;%11100111
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D2    ;%11010010
          ADC ($20,X)
          .BYTE $72    ;%01110010 'r'
          CPX $B2
          RTS
          SBC $F5D2
          .BYTE $D2    ;%11010010
          ORA #$D3
          JSR $D478
          TAY
          JSR $C375
          RTS
          CLI
          JSR $D478
          ASL A
          ASL A
          ASL A
          ASL A
          EOR $29
          AND #$F0
          EOR $29
          STA $29
          .BYTE $37    ;%00110111 '7'
          AND #$EE
          RTS
          CLI
          JSR $D478
          EOR $29
          AND #$F0
          EOR $29
          STA $29
          .BYTE $37    ;%00110111 '7'
          AND #$F2
          RTS
          CMP #$04
          BCC L12A1
          JMP $D14C
L12A1     ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          AND $3C60
          .BYTE $D3    ;%11010011
          ADC ($20,X)
          .BYTE $72    ;%01110010 'r'
          CPX $B2
          RTS
          AND $D3,X
          .BYTE $3F    ;%00111111 '?'
          .BYTE $D3    ;%11010011
          ADC $81D3,Y
          .BYTE $D3    ;%11010011
          JSR $D48D
          EOR #$CC
          TAY
          JSR $C375
          RTS
          JSR $C2F9
          EOR #$CC
          AND $58
          STA $61
          JSR $D48D
          ORA $58
          EOR $58
          ORA $61
          STA L0059
          LDA $08
          .BYTE $D7    ;%11010111
          ROR $14
          AND #$0C
          STA $61
          LDA L0059
          PHA
          LSR A
          LSR A
          AND #$03
          STA $60
          PLA
          AND #$F0
          ORA $60
          .BYTE $80    ;%10000000
          PHP
          AND #$03
          STA $61
          LDA L0059
          AND #$FC
          ORA $61
          STA $08
          RTS
          JSR $C2F9
          TAY
          JSR $C375
          RTS
          JSR $C2F9
          TAY
          LDA #$00
          JSR $C3B6
          RTS
          CMP #$02
          BCC L1313
          JMP $D14C
L1313     CMP #$00
          BNE L131A
          JMP $D3BE
L131A     JSR $C2F9
          CMP #$07
          BCC L1324
          JMP $D14C
L1324     ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          BCS L1389
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D3    ;%11010011
          ADC ($20,X)
          .BYTE $72    ;%01110010 'r'
          CPX $B2
          RTS
          .BYTE $D7    ;%11010111
          .BYTE $D3    ;%11010011
          CMP $E7D3,X
          .BYTE $D3    ;%11010011
          .BYTE $F7    ;%11110111
          .BYTE $D3    ;%11010011
          SBC $33D3,X
          .BYTE $D4    ;%11010100
          AND $A9D4,Y
          BRK
          JSR $CE81
          JSR $CE53
          BCC L134A
          .BYTE $0B    ;%00001011
L134A     JSR $CE8D
          JSR $CE53
          BCC L1353
          .BYTE $2B    ;%00101011 '+'
L1353     TAY
          JSR $C375
          RTS
          LDY #$11
          JSR $C375
          RTS
          JSR $C2F9
          .BYTE $0F    ;%00001111
          CMP ($13),Y
          .BYTE $02    ;%00000010
          .BYTE $1F    ;%00011111
          CMP ($60),Y
          JSR $C2F9
          .BYTE $DF    ;%11011111
          PLA
          .BYTE $FF    ;%11111111
          PLA
          .BYTE $13    ;%00010011
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          PLA
          .BYTE $33    ;%00110011 '3'
          .BYTE $02    ;%00000010
          .BYTE $EF    ;%11101111
          PLA
          RTS
          LDY $66
          JSR $C375
          RTS
          JSR $C2F9
          EOR $66
          AND #$0F
          BEQ L13B3
          PHA
          JSR $DCCC
          JSR $DD71
          LDA #$00
          JSR $C998
          .BYTE $B7    ;%10110111
          ROR $0F
          JSR $CE81
          LDY #$ED
          JSR $E034
          BCS L13A5
          LDY #$00
          JSR $E034
L13A5     PLA
          EOR $66
          STA $66
          JSR $D9A9
          JSR $DD14
          JSR $DD87
L13B3     RTS
          LDY #$21
          JSR $C375
          RTS
          LDX #$00
L13BC     .BYTE $37    ;%00110111 '7'
          AND #$FD
          .BYTE $67    ;%01100111 'g'
          AND #$0F
          JSR $C2F9
          STA $0201,X
          CMP #$00
          BEQ L13D6
          INX
          CPX #$09
          BCC L13BC
          LDA #$00
          STA $0201
L13D6     RTS
          PHA
          EOR #$FF
          AND #$03
          ORA L0059
          STA L0059
          PLA
          ORA #$F3
          STA $60
          EOR #$FF
          STA $61
          LDA $08
          AND $60
          STA $08
          NOP
          NOP
          NOP
          .BYTE $44    ;%01000100 'D'
          RTS
          ORA $60
          STA $08
          RTS
          LDA #$FF
          JSR $CE81
          JSR $CE6A
          BCS L1404
          .BYTE $1B    ;%00011011
L1404     JSR $CE8D
          JSR $CE6A
          BCS L140D
          .BYTE $3B    ;%00111011 ';'
L140D     RTS
          LDA $08
          .BYTE $D7    ;%11010111
          ROR $0C
          PHA
          AND #$03
          ASL A
          ASL A
          STA $60
          PLA
          AND #$F3
          ORA $60
          EOR L0059
          AND #$FC
          EOR L0059
          RTS
          .BYTE $87    ;%10000111
          ROR $12
          PHA
          TAY
          JSR $CE81
          JSR $CC0F
          BCS L1436
          JSR $C37D
L1436     PLA
          JSR $D797
          RTS
          SEC
          SBC #$EC
          BCC L1454
          CMP #$12
          BEQ L1447
          JSR $CA15
L1447     ASL A
          TAY
          .BYTE $3C    ;%00111100 '<'
          SBC ($60),Y
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D4    ;%11010100
          ADC ($20,X)
          .BYTE $72    ;%01110010 'r'
          CPX $B2
          RTS
L1454     PHA
          TYA
          PHA
          LDY #$FE
          LDA #$00
          JSR $C37D
          PLA
          TAY
          PLA
          RTS
          PHA
          TYA
          PHA
          LDY #$FA
          STY $6C
          LDA #$00
          JSR $C37D
          PLA
          TAY
          PLA
          RTS
          ORA $2CD5,Y
          CMP $63,X
          CMP $D3,X
          .BYTE $D4    ;%11010100
          ADC $D3D5
          .BYTE $D4    ;%11010100
          TSX
          CMP $CF,X
          CMP $FA,X
          CMP $11,X
          DEC $34,X
          DEC $55,X
          DEC $6D,X
          DEC $85,X
          DEC $9D,X
          DEC $CA,X
          DEC $E5,X
          DEC $00,X
          .BYTE $D7    ;%11010111
          EOR $65D7,X
          .BYTE $D7    ;%11010111
          JSR $D4E1
          LDA $FF
          AND #$03
          TAY
          JSR $CA2D
          LDY #$01
          JSR $CA2D
          .BYTE $2F    ;%00101111 '/'
          ADC #$60
L14AD     JSR $D4E1
          JSR $C312
          CMP #$FE
          BEQ L14AD
          CMP #$08
          BCC L14C0
          JSR $D4D3
          .BYTE $80    ;%10000000
          BEQ L14E1
          SBC ($D4,X)
          ASL A
          ASL A
          ASL A
          ASL A
          JSR $C998
          .BYTE $B7    ;%10110111
          ROR $16
          JSR $CE81
          LDY #$ED
          JSR $E034
          BCS L14E3
          LDA $69
          AND #$70
          LSR A
          LSR A
          LSR A
          LSR A
          TAY
          JSR $E034
L14E3     RTS
          LDY #$EE
          STY $6C
          LDA #$00
          JSR $C37D
          RTS
L14EE     JSR $D4E1
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
          JSR $C312
          CMP #$FE
          BEQ L14EE
          CMP #$04
          BCC L1507
          JSR $D4D3
          .BYTE $80    ;%10000000
          BEQ L1528
          SBC ($D4,X)
          TAY
          BEQ L1535
          JSR $C976
          .BYTE $B7    ;%10110111
          ROR $21
          JSR $CE81
          LDY #$F0
          JSR $E034
          BCS L1534
          LDA $93
          CMP #$03
          BEQ L1530
          LDY $023A
          CPY #$90
L1528     BCC L1530
          CPY #$93
          BCS L1530
          ORA #$80
L1530     TAY
          JSR $E034
L1534     RTS
L1535     LDY $93
          JSR $CA2D
          RTS
          JSR $D4E1
          LDY #$AB
          JSR $CA2D
          LDY #$83
          .BYTE $A7    ;%10100111
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          LDY #$84
          JSR $CA2D
          .BYTE $2F    ;%00101111 '/'
          ADC #$60
L1550     JSR $D4E1
          JSR $C312
          CMP #$FE
          BEQ L1550
          CMP #$80
          BCC L1563
          JSR $D4D3
          .BYTE $80    ;%10000000
          BEQ L1584
          SBC ($D4,X)
          STA $97
          .BYTE $B7    ;%10110111
          ROR $0F
          JSR $CE81
          LDY #$F3
          JSR $E034
          BCS L157A
          LDY $97
          JSR $E034
L157A     RTS
          JSR $D4E1
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
L1584     .BYTE $2F    ;%00101111 '/'
          ADC #$B7
          ROR $08
          JSR $CE81
          LDY #$F4
          JSR $E034
          RTS
          JSR $D4E1
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2B    ;%00101011 '+'
          .BYTE $97    ;%10010111
          LDA $93
          CMP #$03
          BNE L15A1
          JSR $C9B2
L15A1     .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
          .BYTE $3F    ;%00111111 '?'
          ADC #$B7
          ROR $08
          JSR $CE81
          LDY #$F5
          JSR $E034
          RTS
          JSR $D4E1
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2B    ;%00101011 '+'
          .BYTE $97    ;%10010111
          LDA $93
          CMP #$03
          BNE L15C4
          JSR $C9B2
L15C4     .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
          .BYTE $B7    ;%10110111
          ROR $08
          JSR $CE81
L15D0     LDY #$F6
          JSR $E034
          RTS
          JSR $D4E1
          LDY #$00
          LDA #$FF
          JSR $D6B5
          LDY #$F7
          STY $92
          .BYTE $B7    ;%10110111
          ROR $06
          JSR $CE81
          JSR $E034
          RTS
          JSR $D4E1
          LDY #$FF
          LDA #$00
          JSR $D6B5
          LDY #$F8
          STY $92
          .BYTE $B7    ;%10110111
          ROR $06
          JSR $CE81
          JSR $E034
          RTS
          JSR $D4E1
          LDY #$FF
          LDA #$FF
          JSR $D6B5
          LDY #$F9
          STY $92
          .BYTE $B7    ;%10110111
          ROR $06
          JSR $CE81
          JSR $E034
          RTS
          JSR $D4E1
          LDY #$00
          LDA #$00
          JSR $D6B5
          LDY #$FA
          STY $92
          .BYTE $B7    ;%10110111
          ROR $06
          JSR $CE81
          JSR $E034
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
          .BYTE $3C    ;%00111100 '<'
          .BYTE $13    ;%00010011
          .BYTE $62    ;%01100010 'b'
          LDX #$26
          JSR $E440
          TAY
          LDX #$13
          JSR $E440
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D4    ;%11010100
          RTS
          .BYTE $3C    ;%00111100 '<'
          DEC $61,X
          LDY #$FB
          .BYTE $80    ;%10000000
          EOR $48
          EOR #$FF
          AND $0126,X
          STA $0126,X
          PLA
          ORA $0113,X
          STA $0113,X
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $EF    ;%11101111
          RTS
          .BYTE $3C    ;%00111100 '<'
          DEC $61,X
          LDY #$FC
          .BYTE $80    ;%10000000
          ROL A
          PHA
          ORA $0126,X
          STA $0126,X
          PLA
          EOR #$FF
          AND $0113,X
          STA $0113,X
          RTS
          SEC
          ASL A
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D7    ;%11010111
          ADC ($A0,X)
          SBC $0F80,X
          PHA
          ORA $0126,X
          STA $0126,X
          PLA
          ORA $0113,X
          STA $0113,X
          RTS
          .BYTE $3F    ;%00111111 '?'
          ADC #$3C
          BRK
          .BYTE $9C    ;%10011100
          JSR $CA1C
          .BYTE $B7    ;%10110111
          ROR $06
          JSR $CE81
          JSR $E034
L16AB     JSR $D4E1
          JSR $C312
          CMP #$FE
          BEQ L16AB
          .BYTE $B7    ;%10110111
          ROR $06
          PHA
          TAY
          JSR $E034
          PLA
          CMP #$00
          BEQ L16CE
          LDY #$00
L16C4     CMP $E2D4,Y
          BEQ L16D7
          INY
          CPY #$98
          BCC L16C4
L16CE     CMP #$80
          BCC L16AB
          JSR $D4D3
          .BYTE $80    ;%10000000
          .BYTE $D7    ;%11010111
L16D7     JSR $E487
          .BYTE $02    ;%00000010
          RTS
          .BYTE $80    ;%10000000
          CMP $6CA4
          LDA #$00
          JSR $C37D
          RTS
          JSR $D4E1
          LDA #$FF
          JSR $C998
          .BYTE $B7    ;%10110111
          ROR $18
          BRK
          STA ($CE,X)
          LDY #$FF
          JSR $E034
          BCS L1709
          .BYTE $3C    ;%00111100 '<'
          .BYTE $0C    ;%00001100
          .BYTE $62    ;%01100010 'b'
L16FE     JSR $E045
          BCC L170F
          DEC $62
          BNE L16FE
          .BYTE $80    ;%10000000
          ASL $58
          LDY #$28
          JSR $C1AC
L170F     JSR $C960
          LDY #$AA
          JSR $CA2D
          RTS
          CPY #$FA
          BNE L175D
          CMP #$EC
          BCC L1743
          STA $FE
          CMP #$F4
          BEQ L175E
          CMP #$F5
          BEQ L1761
          CMP #$F6
          BEQ L1763
          CMP #$F7
          BEQ L179C
          CMP #$F8
          BEQ L17A2
          CMP #$F9
          BEQ L17A8
          CMP #$FA
          BEQ L17AE
          CMP #$FF
          BEQ L177A
          RTS
L1743     LDY $FE
          CPY #$ED
          BEQ L1789
          CPY #$F0
          BEQ L1771
          CPY #$F3
          BEQ L176E
          CPY #$FB
          BEQ L17B9
          CPY #$FC
          BEQ L17C1
          CPY #$FD
          BEQ L17C9
L175D     RTS
L175E     .BYTE $2F    ;%00101111 '/'
          ADC #$60
L1761     .BYTE $3F    ;%00111111 '?'
          ADC #$A5
          .BYTE $93    ;%10010011
          CMP #$03
          BNE L176C
          JSR $C9B2
L176C     LDA #$2B
L176E     STA $97
          RTS
L1771     CMP #$00
          BEQ L175D
          TAY
          JSR $C976
          RTS
L177A     .BYTE $2F    ;%00101111 '/'
          ADC #$20
          .BYTE $B2    ;%10110010
          CMP #$A0
          BRK
          JSR $C976
          .BYTE $3C    ;%00111100 '<'
          .BYTE $2B    ;%00101011 '+'
          .BYTE $97    ;%10010111
          LDA #$00
L1789     .BYTE $DF    ;%11011111
          ROR A
          .BYTE $33    ;%00110011 '3'
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          ROR A
          ASL A
          ASL A
          ASL A
          ASL A
          EOR $69
          AND #$70
          EOR $69
          STA $69
          RTS
L179C     LDY #$00
          LDX #$FF
          .BYTE $80    ;%10000000
          BPL L1743
          .BYTE $FF    ;%11111111
          LDX #$00
          .BYTE $80    ;%10000000
          ASL A
L17A8     LDY #$FF
          LDX #$FF
          .BYTE $80    ;%10000000
          .BYTE $04    ;%00000100
L17AE     LDY #$00
          LDX #$00
          STA $92
          TXA
          JSR $D6B5
          RTS
L17B9     .BYTE $3C    ;%00111100 '<'
          .BYTE $D4    ;%11010100
          RTS
          .BYTE $3C    ;%00111100 '<'
          DEC $61,X
          .BYTE $80    ;%10000000
          ASL $EF00
          RTS
          .BYTE $3C    ;%00111100 '<'
          DEC $61,X
          .BYTE $80    ;%10000000
          ASL $3C
          ASL A
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $D7    ;%11010111
          ADC ($3F,X)
          ADC #$C9
          BRK
          BEQ L175D
          LDY #$00
L17D7     CMP $E2D4,Y
          BEQ L17E2
          INY
          CPY #$98
          BCC L17D7
          RTS
L17E2     JSR $E487
          .BYTE $02    ;%00000010
          RTS
          RTS
          TAY
          JSR $CE8D
          JSR $CC0F
          BCS L17F4
          JSR $C3B6
L17F4     RTS
          PHA
          AND #$F0
          LSR A
          LSR A
          LSR A
          TAY
          .BYTE $3C    ;%00111100 '<'
          TYA
          RTS
          .BYTE $3C    ;%00111100 '<'
          CLD
          ADC ($20,X)
          .BYTE $72    ;%01110010 'r'
          CPX $68
          AND #$0F
          LDY #$00
          CMP ($60),Y
          BCS L1818
          PHA
          ASL A
          .BYTE $3A    ;%00111010 ':'
          TAY
          JSR $E472
          PLA
          .BYTE $B2    ;%10110010
          RTS
L1818     RTS
          CLV
          CLD
          .BYTE $CF    ;%11001111
          CLD
          CLD
          CLD
          .BYTE $EF    ;%11101111
          CLD
          SED
          CLD
          ORA $19D9,Y
          CMP $D919,Y
          ORA $19D9,Y
          CMP $D919,Y
          ORA $19D9,Y
          CMP $D91A,Y
          .BYTE $2B    ;%00101011 '+'
          CMP $D92C,Y
          .BYTE $0B    ;%00001011
          EOR $53D9
          CMP $D95D,Y
          ADC $73D9
          CMP $D9D2,Y
L1846     CLD
          CMP $D9F5,Y
          ORA $29DA,X
          .BYTE $DA    ;%11011010
          .BYTE $3C    ;%00111100 '<'
          .BYTE $DA    ;%11011010
          .BYTE $04    ;%00000100
          JMP $97DA
          CLD
          ADC $0CDB
          .BYTE $DC    ;%11011100
          .BYTE $0B    ;%00001011
          EOR $61E0
          CPX #$6C
          CPX #$7A
          CPX #$89
          CPX #$93
          CPX #$9B
          CPX #$A1
          CPX #$AF
          CPX #$BD
          CPX #$E1
          CPX #$04
          .BYTE $03    ;%00000011
          SBC ($43,X)
          SBC ($40,X)
          SBC ($35,X)
          SBC ($10,X)
          .BYTE $4B    ;%01001011 'K'
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($4B,X)
          SBC ($00,X)
          PHP
          .BYTE $52    ;%01010010 'R'
          SBC ($57,X)
          SBC ($5C,X)
          SBC ($97,X)
          CLD
          ADC $72E1
          SBC ($77,X)
          SBC ($97,X)
          CLD
          BRK
          BPL L1846
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $97    ;%10010111
          CLD
          .BYTE $87    ;%10000111
          SBC ($8A,X)
          SBC ($90,X)
          SBC ($9E,X)
          SBC ($A1,X)
          SBC ($A2,X)
          ORA ($20),Y
          CLD
          .BYTE $C3    ;%11000011
          RTS
          JSR $C344
          .BYTE $0F    ;%00001111
          CMP ($13),Y
          .BYTE $02    ;%00000010
          .BYTE $1F    ;%00011111
          CMP ($60),Y
          JSR $C344
          .BYTE $DF    ;%11011111
          PLA
          .BYTE $FF    ;%11111111
          PLA
          .BYTE $13    ;%00010011
          .BYTE $02    ;%00000010
          .BYTE $CF    ;%11001111
          PLA
          .BYTE $33    ;%00110011 '3'
          .BYTE $02    ;%00000010
          .BYTE $EF    ;%11101111
          PLA
          RTS
          LDX $66
          JSR $C3D8
          RTS
          JSR $C344
          EOR $66
          AND #$0F
          BEQ L1929
          PHA
          JSR $DCCC
          JSR $DD71
          LDA #$00
          JSR $C998
          .BYTE $B7    ;%10110111
          ROR $0F
          JSR $CE81
          LDY #$ED
          JSR $E034
          BCS L191B
          LDY #$00
          JSR $E034
L191B     PLA
          EOR $66
          STA $66
          JSR $D9A9
          JSR $DD14
          JSR $DD87
L1929     RTS
          PHA
          LDA $66
          ASL A
          ASL A
          ASL A
          ASL A
          .BYTE $47    ;%01000111 'G'
          ROR $09
          .BYTE $67    ;%01100111 'g'
          ROR $06
          .BYTE $EB    ;%11101011
          .BYTE $E7    ;%11100111
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          .BYTE $FB    ;%11111011
          .BYTE $CB    ;%11001011
          .BYTE $07    ;%00000111
          ROR $09
          .BYTE $27    ;%00100111 '''
          ROR $06
          .BYTE $AB    ;%10101011
          .BYTE $C7    ;%11000111
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          .BYTE $BB    ;%10111011
          .BYTE $8B    ;%10001011
          EOR $66
          AND #$F0
          EOR $66
          STA $66
          PLA
          RTS
          LDX #$21
          JSR $C3D8
          RTS
          LDX #$00
L195B     .BYTE $37    ;%00110111 '7'
          BIT $67FD
          BIT $200F
          .BYTE $44    ;%01000100 'D'
          .BYTE $C3    ;%11000011
          STA $0201,X
          CMP #$00
          BEQ L1975
          INX
          CPX #$09
          BCC L195B
          LDA #$00
          STA $0201
L1975     RTS
          LDA $67
          AND #$07
          .BYTE $67    ;%01100111 'g'
          .BYTE $67    ;%01100111 'g'
          .BYTE $0F    ;%00001111
          .BYTE $F7    ;%11110111
          .BYTE $67    ;%01100111 'g'
          ORA ($EB,X)
          BRK
          .BYTE $67    ;%01100111 'g'
          ORA ($8B,X)
          .BYTE $B7    ;%10110111
          .BYTE $67    ;%01100111 'g'
          ORA ($8B),Y
          .BYTE $AB    ;%10101011
          .BYTE $80    ;%10000000
          ORA $67F7
          ORA ($AB,X)
          .BYTE $D7    ;%11010111
          .BYTE $67    ;%01100111 'g'
          ORA ($CB,X)
          .BYTE $B7    ;%10110111
          .BYTE $67    ;%01100111 'g'
          .BYTE $02    ;%00000010
          .BYTE $CB    ;%11001011
          .BYTE $EB    ;%11101011
          TAX
          JSR $C3D8
          RTS
          JSR $C344
          EOR $67
          AND #$07
          EOR $67
          STA $67
          RTS
          JSR $C344
          PHA
          .BYTE $3A    ;%00111010 ':'
          AND #$7F
          TAX
          PLA
          BPL L19B9
          JSR $C160
          RTS
L19B9     JSR $C16D
          RTS
          JSR $C344
          STA $FF
          .BYTE $C7    ;%11000111
          .BYTE $FF    ;%11111111
          .BYTE $04    ;%00000100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $0F    ;%00001111
          .BYTE $12    ;%00010010
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $12    ;%00010010
          RTS
          LDX #$00
L19CF     JSR $C16D
          INX
          CPX #$05
          BCC L19CF
          .BYTE $6F    ;%01101111 'o'
          .BYTE $23    ;%00100011 '#'
          .BYTE $3C    ;%00111100 '<'
          BRK
          AND $20
          CPY $20DC
          ADC ($DD),Y
          LDY #$00
          JSR $C976
          LDA #$00
          JSR $C998
          .BYTE $B7    ;%10110111
          ROR $2A
          JSR $CE81
          LDY #$F0
          JSR $E034
          BCS L1A19
          LDA $023A
          LDY #$02
          CMP #$90
          BCC L1A08
          CMP #$93
          BCS L1A08
          LDY #$82
L1A08     JSR $E034
          BCS L1A19
          LDY #$ED
          JSR $E034
          BCS L1A19
          LDY #$00
          JSR $E034
L1A19     LDA $67
          AND $68
          AND #$C0
          BNE L1A23
          .BYTE $6F    ;%01101111 'o'
          ASL A
L1A23     .BYTE $4F    ;%01001111 'O'
          ASL A
          .BYTE $4F    ;%01001111 'O'
          .BYTE $64    ;%01100100 'd'
          LDX #$AA
          JSR $C3D8
L1A2C     .BYTE $A7    ;%10100111
          .BYTE $FF    ;%11111111
          .BYTE $0C    ;%00001100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $7F    ;%01111111
          BRK
          .BYTE $C7    ;%11000111
          .BYTE $FF    ;%11111111
          ASL $3C
          BRK
          BRK
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $02    ;%00000010
          .BYTE $3C    ;%00111100 '<'
          ORA ($3E,X)
          .BYTE $3C    ;%00111100 '<'
          RTI
          .BYTE $3F    ;%00111111 '?'
          BRK
          .BYTE $42    ;%01000010 'B'
          NOP
          NOP
          SEI
          .BYTE $3C    ;%00111100 '<'
          ASL $3C20
          EOR $21
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          EOR #$3E
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $3F    ;%00111111 '?'
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          BRK
          .BYTE $C7    ;%11000111
          .BYTE $FF    ;%11111111
          .BYTE $03    ;%00000011
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          .BYTE $02    ;%00000010
          .BYTE $37    ;%00110111 '7'
          BIT $6713
          BIT $A504
          .BYTE $2B    ;%00101011 '+'
          .BYTE $80    ;%10000000
          INC $A5,X
          .BYTE $2B    ;%00101011 '+'
          CMP #$11
          BEQ L1A9C
          CMP #$0A
          BEQ L1A8F
          .BYTE $80    ;%10000000
          NOP
          JSR $CB08
          BCC L1A2C
          JSR $D07C
L1A7B     .BYTE $37    ;%00110111 '7'
          BIT $67FD
          BIT $A504
          .BYTE $2B    ;%00101011 '+'
          .BYTE $80    ;%10000000
          INC $A5,X
          .BYTE $2B    ;%00101011 '+'
          CMP #$11
          BEQ L1A9C
          CMP #$0A
          BNE L1A7B
L1A8F     .BYTE $37    ;%00110111 '7'
          BIT $67FD
          BIT $A5F0
          .BYTE $2B    ;%00101011 '+'
          JSR $DA3F
          .BYTE $80    ;%10000000
          .BYTE $DF    ;%11011111
L1A9C     JSR $CEA2
          .BYTE $FF    ;%11111111
          BNE L1ADE
          BRK
          .BYTE $87    ;%10000111
          .BYTE $BF    ;%10111111
          BIT $1420
          CMP $01AD,X
          .BYTE $02    ;%00000010
          BEQ L1ABB
          LDA #$00
          STA $0200
          .BYTE $0F    ;%00001111
          ADC $9F
          AND #$2F
          ADC #$80
          .BYTE $03    ;%00000011
L1ABB     JSR $DD87
          LDX #$AA
          JSR $C3C0
          .BYTE $5F    ;%01011111 '_'
          .BYTE $64    ;%01100100 'd'
          RTS
          TYA
          CMP #$80
          BCS L1AED
          LDY $0200
          CMP $0201,Y
          BEQ L1ADA
          LDA #$00
          STA $0200
          .BYTE $80    ;%10000000
          .BYTE $13    ;%00010011
L1ADA     INY
          STY $0200
L1ADE     LDA $0201,Y
          BNE L1AED
          .BYTE $1F    ;%00011111
          ADC $20
          .BYTE $87    ;%10000111
          CMP $298F,X
          JSR $C20F
L1AED     RTS
          LDX #$00
L1AF0     JSR $C16D
          INX
          CPX #$05
          BCC L1AF0
          .BYTE $6F    ;%01101111 'o'
          .BYTE $23    ;%00100011 '#'
          .BYTE $3C    ;%00111100 '<'
          BRK
          AND $20
          CPY $20DC
          ADC ($DD),Y
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $63    ;%01100011 'c'
          LDA #$B3
          TAX
          CLC
          ADC $63
          STA $63
          JSR $C3D8
          LDA #$00
          TAX
          CLC
          ADC $63
          STA $63
          JSR $C3D8
          LDX #$00
          LDY $DC93,X
          INX
          LDA $DC93,X
          BEQ L1B57
          INX
          STA $60
          AND #$0F
          STA $61
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $B7    ;%10110111
          RTS
          ASL $BD
          .BYTE $93    ;%10010011
          .BYTE $DC    ;%11011100
          INX
          STA $62
          .BYTE $D7    ;%11010111
          RTS
          ORA ($E8,X)
L1B3E     TXA
          PHA
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          LDA ($60),Y
          TAX
          CLC
          ADC $63
          STA $63
          JSR $C3D8
          PLA
          TAX
          INY
          BRK
          .BYTE $62    ;%01100010 'b'
          BNE L1B3E
          .BYTE $80    ;%10000000
          .BYTE $C7    ;%11000111
L1B57     LDX $63
          JSR $C3D8
          .BYTE $6F    ;%01101111 'o'
          ASL A
          .BYTE $4F    ;%01001111 'O'
          ASL A
          .BYTE $4F    ;%01001111 'O'
          .BYTE $64    ;%01100100 'd'
          LDX #$AA
          JSR $C3D8
          .BYTE $3C    ;%00111100 '<'
          ORA ($3E,X)
          CLI
          .BYTE $42    ;%01000010 'B'
          NOP
          NOP
          SEI
          .BYTE $3C    ;%00111100 '<'
          ASL $3C20
          EOR $21
          .BYTE $DF    ;%11011111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $3C    ;%00111100 '<'
          EOR #$3E
L1B7A     .BYTE $37    ;%00110111 '7'
          BIT $67EA
          BIT $A504
          .BYTE $2F    ;%00101111 '/'
          .BYTE $80    ;%10000000
          INC $A5,X
          .BYTE $2B    ;%00101011 '+'
          CMP #$13
          BNE L1B7A
          JSR $CEA2
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $63    ;%01100011 'c'
          JSR $C344
          CMP #$B3
          BNE L1C0C
          CLC
          ADC $63
          STA $63
          JSR $C344
          CMP #$00
          BNE L1C0C
          CLC
          ADC $63
          STA $63
          LDX #$00
          LDY $DC93,X
          INX
          LDA $DC93,X
L1BB1     BEQ L1BF3
          INX
          STA $60
          AND #$0F
          STA $61
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $B7    ;%10110111
          RTS
          ASL $BD
          .BYTE $93    ;%10010011
          .BYTE $DC    ;%11011100
          INX
          STA $62
L1BC6     LDA $60
          PHA
          JSR $C344
          PHA
          .BYTE $D7    ;%11010111
          RTS
          ASL A
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          EOR ($60),Y
          AND $DC93,X
          EOR ($60),Y
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          STA ($60),Y
          PLA
          CLC
          ADC $63
          STA $63
          PLA
          STA $60
          INY
          DEC $62
          BNE L1BC6
          .BYTE $D7    ;%11010111
          RTS
          TSX
          INX
          .BYTE $80    ;%10000000
          .BYTE $B7    ;%10110111
L1BF3     JSR $C344
          CMP $63
          BNE L1C0C
          JSR $D9A9
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $87    ;%10000111
          .BYTE $BF    ;%10111111
          BIT $1420
          CMP $8720,X
          CMP $AAA2,X
          .BYTE $80    ;%10000000
          .BYTE $02    ;%00000010
L1C0C     LDX #$FC
          JSR $C3D8
          .BYTE $5F    ;%01011111 '_'
          .BYTE $64    ;%01100100 'd'
          RTS
          RTI
          LDY #$20
          ROR $80
          .BYTE $67    ;%01100111 'g'
          CPY #$07
          PLA
          .BYTE $80    ;%10000000
          ADC #$C0
          .BYTE $7F    ;%01111111
          JMP ($6D80)
          LDY #$06
          .BYTE $73    ;%01110011 's'
          LDY #$14
          .BYTE $92    ;%10010010
          .BYTE $80    ;%10000000
          STX $80,Y
          .BYTE $97    ;%10010111
          .BYTE $80    ;%10000000
          BNE L1BB1
          CMP ($80),Y
          .BYTE $FF    ;%11111111
          .BYTE $80    ;%10000000
          BRK
          LDA ($13,X)
          .BYTE $13    ;%00010011
          LDA ($13,X)
          ROL $A1
          .BYTE $13    ;%00010011
          .BYTE $44    ;%01000100 'D'
          STA ($0A,X)
          LDX #$30
          .BYTE $3C    ;%00111100 '<'
          .BYTE $82    ;%10000010
          AND $3E82,X
          .BYTE $82    ;%10000010
          .BYTE $3F    ;%00111111 '?'
          .BYTE $82    ;%10000010
          BRK
          BRK
          JSR $CE8D
          LDY #$F2
          JSR $E034
          BCS L1C94
          JSR $E045
          BCS L1C94
          LDA $023C
          .BYTE $FB    ;%11111011
          CPY #$02
          BNE L1C65
          .BYTE $EB    ;%11101011
L1C65     STA $023C
          LDY #$E9
          JSR $E034
          BCS L1C94
          JSR $E045
          BCS L1C94
          TYA
          LSR A
          LSR A
          LSR A
          LSR A
          EOR $023C
          AND #$0F
          EOR $023C
          STA $023C
          JSR $E045
          BCS L1C94
          STY $023D
          JSR $E045
          BCS L1C94
          STY $023E
L1C94     RTS
          JSR $CE8D
          LDY #$E7
          LDA $023C
          .BYTE $03    ;%00000011
          .BYTE $02    ;%00000010
          LDY #$E6
          JSR $E034
          BCS L1CF1
          LDY #$F0
          LDA $023C
          .BYTE $43    ;%01000011 'C'
          .BYTE $02    ;%00000010
          LDY #$EA
          JSR $E034
          BCS L1CF1
          LDY #$E8
          JSR $E034
          BCS L1CF1
          LDY $023D
          JSR $E034
          BCS L1CF1
          LDA $023C
          .BYTE $F3    ;%11110011
          ASL $F3A0
          JSR $E034
          BCS L1CF1
          LDY #$0A
          JSR $E034
          BCS L1CF1
          LDY #$F3
          JSR $E034
          BCS L1CF1
          LDY $023E
          JSR $E034
          BCS L1CF1
          LDY #$F4
          LDA $023C
          .BYTE $23    ;%00100011 '#'
          .BYTE $02    ;%00000010
          LDY #$F5
          JSR $E034
L1CF1     RTS
          LDA $93
          AND #$7F
          STA $023F
          LDA $69
          EOR $023C
          AND #$70
          EOR $023C
          STA $023C
          CLC
          RTS
          LDY $023F
          JSR $C976
          LDA $023C
          EOR $69
          AND #$70
          EOR $69
          STA $69
          .BYTE $97    ;%10010111
          ROR $03
          JSR $C998
          CLC
          .BYTE $B7    ;%10110111
          ROR $5A
          JSR $CE81
          LDY #$F0
          JSR $E034
          BCS L1D7D
          LDA $93
          CMP #$03
          BEQ L1D40
          LDY $023A
          CPY #$90
          BCC L1D40
          CPY #$93
          BCS L1D40
          ORA #$80
L1D40     TAY
          JSR $E034
          BCS L1D7D
          LDY #$ED
          JSR $E034
          BCS L1D7D
          LDA $69
          AND #$70
          LSR A
          LSR A
          LSR A
          LSR A
          TAY
          JSR $E034
          BCS L1D7D
          LDY #$F3
          JSR $E034
          BCS L1D7D
          LDY $97
          JSR $E034
          BCS L1D7D
          LDY $92
          BEQ L1D72
          JSR $DDFD
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
L1D72     JSR $DF2D
          .BYTE $37    ;%00110111 '7'
          ADC #$05
          LDY #$F4
          JSR $E034
L1D7D     RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ADC ($C0,X)
          .BYTE $F7    ;%11110111
          BEQ L1DA8
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC ($C0,X)
          SED
          BEQ L1DA8
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          RTS
          .BYTE $3C    ;%00111100 '<'
          .BYTE $FF    ;%11111111
          ADC ($C0,X)
          SBC L0CF0,Y
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC ($C0,X)
          .BYTE $FA    ;%11111010
          BEQ L1DA8
          SEC
L1DA7     RTS
L1DA8     JSR $E034
          BCS L1DA7
          LDY #$FB
          JSR $E034
          BCS L1DF7
          LDY #$00
L1DB6     LDA $0126,Y
          EOR $60
          STA $63
          LDA $0113,Y
          EOR $61
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1DFD
          LSR $63
          BCC L1DF8
          LDA $0126,Y
          AND $62
          BNE L1DF8
          LDA $0113,Y
          AND $62
          BEQ L1DF8
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1DF3
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1DF3     PLA
          TAY
          BCC L1DF8
L1DF7     RTS
L1DF8     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1DB6
          LDY #$FC
          JSR $E034
          BCS L1E4C
          LDY #$00
L1E0B     LDA $0126,Y
          EOR $60
          STA $63
          LDA $0113,Y
          EOR $61
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1E52
          LSR $63
          BCC L1E4D
          LDA $0126,Y
          AND $62
          BEQ L1E4D
          LDA $0113,Y
          AND $62
          BNE L1E4D
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1E48
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1E48     PLA
          TAY
          BCC L1E4D
L1E4C     RTS
L1E4D     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1E0B
          LDY #$FD
          JSR $E034
          BCS L1EA1
          LDY #$00
L1E60     LDA $0126,Y
          EOR $60
          STA $63
          LDA $0113,Y
          EOR $61
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1EA7
          LSR $63
          BCC L1EA2
          LDA $0126,Y
          AND $62
          BEQ L1EA2
          LDA $0113,Y
          AND $62
          BEQ L1EA2
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1E9D
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1E9D     PLA
          TAY
          BCC L1EA2
L1EA1     RTS
L1EA2     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1E60
          CLC
          RTS
          LDY #$FB
          JSR $E034
          BCS L1EFA
          LDY #$00
L1EB7     LDA $0126,Y
          EOR $E417,Y
          STA $63
          LDA $0113,Y
          EOR $E404,Y
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1F00
          LSR $63
          BCC L1EFB
          LDA $0126,Y
          AND $62
          BNE L1EFB
          LDA $0113,Y
          AND $62
          BEQ L1EFB
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1EF6
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1EF6     PLA
          TAY
          BCC L1EFB
L1EFA     RTS
L1EFB     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1EB7
          LDY #$FC
          JSR $E034
          BCS L1F51
          LDY #$00
L1F0E     LDA $0126,Y
          EOR $E417,Y
          STA $63
          LDA $0113,Y
          EOR $E404,Y
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1F57
          LSR $63
          BCC L1F52
          LDA $0126,Y
          AND $62
          BEQ L1F52
          LDA $0113,Y
          AND $62
          BNE L1F52
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1F4D
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1F4D     PLA
          TAY
          BCC L1F52
L1F51     RTS
L1F52     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1F0E
          LDY #$FD
          JSR $E034
          BCS L1FA8
          LDY #$00
L1F65     LDA $0126,Y
          EOR $E417,Y
          STA $63
          LDA $0113,Y
          EOR $E404,Y
          ORA $63
          STA $63
          TYA
          ASL A
          ASL A
          ASL A
          TAX
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $64    ;%01100100 'd'
          .BYTE $63    ;%01100011 'c'
          BEQ L1FAE
          LSR $63
          BCC L1FA9
          LDA $0126,Y
          AND $62
          BEQ L1FA9
          LDA $0113,Y
          AND $62
          BEQ L1FA9
          TYA
          PHA
          CLC
          LDY $E2D4,X
          BEQ L1FA4
          TXA
          PHA
          JSR $E034
          PLA
          TAX
L1FA4     PLA
          TAY
          BCC L1FA9
L1FA8     RTS
L1FA9     ASL $62
          INX
          .BYTE $80    ;%10000000
          CMP ($C8),Y
          CPY #$13
          BCC L1F65
          CLC
          RTS
          JSR $CC0F
          BCS L1FC4
          CMP #$00
          BNE L1FC4
          CPY #$FA
          BNE L1FC4
          CLC
          RTS
L1FC4     SEC
          RTS
          LDA #$0B
          JSR $CDB5
          CMP #$01
          RTS
          JSR $CAC4
          .BYTE $B2    ;%10110010
          ASL $D820
          .BYTE $C3    ;%11000011
          .BYTE $64    ;%01100100 'd'
          .BYTE $87    ;%10000111
          BNE L1FDE
          .BYTE $BF    ;%10111111
          BIT $0380
L1FDE     JSR $D070
          RTS
          LDA $CF
          ORA #$F0
          TAX
          JSR $C3D8
          .BYTE $9F    ;%10011111
          BIT $2060
          .BYTE $44    ;%01000100 'D'
          .BYTE $C3    ;%11000011
          EOR #$FF
          EOR $D0
          AND #$0F
          EOR $D0
          STA $D0
          RTS
          JSR $C344
          EOR #$FF
          ASL A
          EOR $D1
          AND #$FE
          EOR $D1
          STA $D1
          RTS
          JSR $C344
          .BYTE $1F    ;%00011111
          ADC #$13
          .BYTE $02    ;%00000010
          .BYTE $0F    ;%00001111
          ADC #$60
          JSR $C344
          TAX
          JSR $CA9B
          RTS
          JSR $C344
          STA $96
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $13    ;%00010011
          .BYTE $62    ;%01100010 'b'
          LDX #$00
          LDY #$00
          JSR $E440
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          .BYTE $3C    ;%00111100 '<'
          .BYTE $13    ;%00010011
          .BYTE $62    ;%01100010 'b'
          LDX #$00
          LDY #$FF
          JSR $E440
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          BRK
          .BYTE $44    ;%01000100 'D'
          .BYTE $C3    ;%11000011
          CMP #$00
          BEQ L2061
          LDY #$00
L204A     CMP $E2D4,Y
          BEQ L2056
          INY
          CPY #$98
          BCC L204A
          .BYTE $80    ;%10000000
          .BYTE $0B    ;%00001011
L2056     JSR $E487
          EOR #$FF
          AND $0100,X
          STA $0100,X
L2061     RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $9C    ;%10011100
          JSR $C344
          CMP #$00
          BEQ L2083
          LDY #$00
L206E     CMP $E2D4,Y
          BEQ L207A
          INY
          CPY #$98
          BCC L206E
          .BYTE $80    ;%10000000
          ORA #$20
          .BYTE $87    ;%10000111
          CPX $1D
          BRK
          ORA ($9D,X)
          BRK
          ORA ($60,X)
          JSR $C344
          STA $0144
          LDA $0144
          .BYTE $3C    ;%00111100 '<'
          BRK
          .BYTE $1A    ;%00011010
          NOP
          BRK
          BRK
          ORA $B13C,Y
          .BYTE $1A    ;%00011010
          TAX
          EOR $1B
          AND #$0F
          EOR $1B
          STA $1B
          TXA
          LSR A
          LSR A
          LSR A
          LSR A
          TAX
          LDA #$68
          DEX
          BMI L20AE
          LSR A
          .BYTE $80    ;%10000000
          .BYTE $FA    ;%11111010
L20AE     .BYTE $1A    ;%00011010
          STA $1C
          NOP
          .BYTE $7F    ;%01111111
          .BYTE $3C    ;%00111100 '<'
          .BYTE $6F    ;%01101111 'o'
          ROL $00A2,X
          LDA #$00
L20BA     STA $EE,X
          INX
          CPX #$10
          BCC L20BA
          .BYTE $DF    ;%11011111
          BIT $2060
          .BYTE $44    ;%01000100 'D'
          .BYTE $C3    ;%11000011
          TAX
          JSR $D0F6
          RTS
          TAY
          LDX $EE,Y
          JSR $C3D8
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC ($80,X)
          PHP
          .BYTE $3C    ;%00111100 '<'
          ORA ($61,X)
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          ADC ($3C,X)
          BRK
          RTS
          JSR $C344
          TAY
          LDA ($60),Y
          TAX
          JSR $C3D8
          RTS
          .BYTE $3C    ;%00111100 '<'
          BRK
          ADC ($00,X)
          PHP
          .BYTE $3C    ;%00111100 '<'
          ORA ($61,X)
          .BYTE $80    ;%10000000
          .BYTE $03    ;%00000011
          .BYTE $3C    ;%00111100 '<'
          .BYTE $02    ;%00000010
          ADC ($3C,X)
          BRK
          RTS
          JSR $C344
          TAY
          JSR $C344
          STA ($60),Y
          RTS
          .BYTE $5F    ;%01011111 '_'
          BIT $A660
          RTI
          JSR $C3D8
          RTS
          JSR $C344
          STA $40
          .BYTE $47    ;%01000111 'G'
          RTI
          .BYTE $03    ;%00000011
          .BYTE $5F    ;%01011111 '_'
          AND #$60
          .BYTE $4F    ;%01001111 'O'
          AND #$60
          .BYTE $6F    ;%01101111 'o'
          .BYTE $64    ;%01100100 'd'
          RTS
          .BYTE $7F    ;%01111111
          .BYTE $64    ;%01100100 'd'
          RTS
          AND #$02
          BPL L2138
          ASL $2C01,X
          .BYTE $7B    ;%01111011 '{'
          .BYTE $3B    ;%00111011 ';'
          .BYTE $03    ;%00000011
          ORA ($3A),Y
          .BYTE $1F    ;%00011111
          LSR $2D,X
          BRK
          .BYTE $3C    ;%00111100 '<'
          .BYTE $04    ;%00000100
          .BYTE $12    ;%00010010
L2138     AND $3E20,X
          ROL $0600
          ORA $13
          .BYTE $14    ;%00010100
          AND ($22,X)
          .BYTE $2F    ;%00101111 '/'
          BMI L214D
          PHP
          ASL $15,X
          BIT $23
          .BYTE $32    ;%00110010 '2'
          AND ($0D),Y
          ORA #$17
          .BYTE $1B    ;%00011011
          AND $40
          .BYTE $33    ;%00110011 '3'
          .BYTE $73    ;%01110011 's'
          .BYTE $42    ;%01000010 'B'
          ASL A
          CLC
          EOR ($26,X)
          ADC $7034,Y
          .BYTE $0C    ;%00001100
          .BYTE $0B    ;%00001011
          ORA $271A,Y
          PLP
          .BYTE $2B    ;%00101011 '+'
          AND $43,X
          .BYTE $44    ;%01000100 'D'
          ADC $2B0E,X
          .BYTE $3F    ;%00111111 '?'
          .BYTE $1C    ;%00011100
          AND $5852,Y
          BRK
          BRK
          BRK
          BRK
          BRK
          EOR $5753
          BRK
          BRK
          BRK
          BRK
          BRK
          BVC L21C7
          EOR ($00),Y
          BRK
          BRK
          BRK
          BRK
          BRK
          .BYTE $47    ;%01000111 'G'
          .BYTE $4F    ;%01001111 'O'
          .BYTE $37    ;%00110111 '7'
          .BYTE $54    ;%01010100 'T'
          LSR $48
          EOR $4B
          BRK
          .BYTE $37    ;%00110111 '7'
          LSR $00
          BRK
          SEC
          BRK
          SEC
          BRK
          BRK
          BRK
          ROL A
          BRK
          BRK
          ROL $00,X
          ORA $0000,X
          BRK
          BRK
          BRK
          ORA $0000,X
          EOR $47
          .BYTE $4B    ;%01001011 'K'
          .BYTE $4F    ;%01001111 'O'
          BRK
          AND $48,X
          JMP $5250
          .BYTE $37    ;%00110111 '7'
          BRK
          EOR $5351
          LSR A
          LSR $1C00
          BRK
          ORA $2A36,X
          ASL $1516
          ORA $761C
          .BYTE $1A    ;%00011010
          .BYTE $67    ;%01100111 'g'
          ORA $1E
L21C7     ORA $1B58,X
          ADC ($22,X)
          BRK
          ASL $26
          BIT $04
          .BYTE $23    ;%00100011 '#'
          .BYTE $0C    ;%00001100
          AND ($00,X)
          ROL $2D25
          BIT $342B
          ROL A
          .BYTE $32    ;%00110010 '2'
          ROL $3D,X
          .BYTE $3C    ;%00111100 '<'
          AND $3B,X
          .BYTE $33    ;%00110011 '3'
          .BYTE $3A    ;%00111010 ':'
          AND ($55),Y
          ROL $5B43,X
          .BYTE $42    ;%01000010 'B'
          .BYTE $0B    ;%00001011
          EOR ($51,X)
          ASL A
          LSR $44
          .BYTE $83    ;%10000011
          .BYTE $4B    ;%01001011 'K'
          .BYTE $64    ;%01100100 'd'
          EOR #$13
          LSR $4D45
          .BYTE $54    ;%01010100 'T'
          JMP $5D52
          LSR A
          ORA ($09,X)
          ROR A
          ROR $5D
          .BYTE $03    ;%00000011
          .BYTE $5A    ;%01011010 'Z'
          AND #$70
          .BYTE $07    ;%00000111
          BRK
          BRK
          BRK
          BRK
          BRK
          .BYTE $74    ;%01110100 't'
          ADC ($78),Y
          BRK
          BRK
          BRK
          BRK
          BRK
          .BYTE $72    ;%01110010 'r'
          ADC $007A,X
          BRK
          BRK
          BRK
          BRK
          BRK
          JMP ($7C69)
          STY $7E
          ADC $77,X
          .BYTE $6B    ;%01101011 'k'
          BRK
          .BYTE $7C    ;%01111100 '|'
          ROR $0000,X
          ORA ($00),Y
          ORA ($00),Y
          BRK
          BRK
          .BYTE $12    ;%00010010
          BRK
          BRK
          EOR $1400,Y
          BRK
          BRK
          BRK
          BRK
          BRK
          .BYTE $14    ;%00010100
          BRK
          BRK
          .BYTE $77    ;%01110111 'w'
          JMP (L006B)
          BRK
          LSR A
          ADC $73,X
          .BYTE $72    ;%01110010 'r'
          BVS L22C5
          ADC $7A74,X
          ADC ($7B),Y
          ADC $5A00,Y
          BRK
          .BYTE $14    ;%00010100
          EOR $0E12,Y
          ASL $15,X
          ORA $081C
          .BYTE $1A    ;%00011010
          STA $07
          ASL $141D,X
          .BYTE $1B    ;%00011011
          .BYTE $13    ;%00010011
          .BYTE $22    ;%00100010 '"'
          BRK
          .BYTE $0F    ;%00001111
          ROL $24
          .BYTE $17    ;%00010111
          .BYTE $23    ;%00100011 '#'
          .BYTE $1F    ;%00011111
          AND ($00,X)
          ROL $2D25
          BIT $342B
          ROL A
          .BYTE $32    ;%00110010 '2'
          ROL $3D,X
          .BYTE $3C    ;%00111100 '<'
          AND $3B,X
          .BYTE $33    ;%00110011 '3'
          .BYTE $3A    ;%00111010 ':'
          AND ($55),Y
          ROL $5B43,X
          BRK
          .BYTE $2F    ;%00101111 '/'
          EOR ($51,X)
          .BYTE $3F    ;%00111111 '?'
          LSR $44
          .BYTE $37    ;%00110111 '7'
          .BYTE $4B    ;%01001011 'K'
          STX $49
          .BYTE $87    ;%10000111
          LSR $4D45
          .BYTE $54    ;%01010100 'T'
          JMP $5352
          LSR A
          .BYTE $47    ;%01000111 'G'
          .BYTE $4F    ;%01001111 'O'
          EOR $5C66,X
          .BYTE $27    ;%00100111 '''
          .BYTE $5A    ;%01011010 'Z'
          AND #$67
          LSR $0000,X
          BRK
          BRK
          BRK
          ROR A
          .BYTE $64    ;%01100100 'd'
          LSR $00,X
          BRK
          BRK
          BRK
          BRK
          RTS
          .BYTE $6F    ;%01101111 'o'
          ADC $0000
          BRK
          BRK
          BRK
          BRK
          ROR $0065
          BRK
          BRK
          .BYTE $63    ;%01100011 'c'
          .BYTE $62    ;%01100010 'b'
          ADC ($00,X)
          .BYTE $57    ;%01010111 'W'
          .BYTE $5F    ;%01011111 '_'
          BRK
          BRK
          ORA $3900,Y
L22C5     BRK
          BRK
          BRK
          .BYTE $12    ;%00010010
          BRK
          BRK
          EOR L1100,Y
          BRK
          BRK
          BRK
          BRK
          BRK
          CLI
          BRK
          BRK
          ROR $6C,X
          .BYTE $6B    ;%01101011 'k'
          ADC #$00
          .BYTE $77    ;%01110111 'w'
          ADC $73,X
          .BYTE $72    ;%01110010 'r'
          BVS L235F
          BRK
          .BYTE $74    ;%01110100 't'
          .BYTE $7A    ;%01111010 'z'
          ADC ($84),Y
          .BYTE $7C    ;%01111100 '|'
          BRK
          ADC $0000,Y
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
          PLA
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          PLA
          PLA
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          PLA
          PLA
          PLA
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          PLA
          PLA
          PHP
          BRK
          DEY
          PLA
          .BYTE $80    ;%10000000
          PLA
          BRK
          PHA
          BRK
          BRK
          BRK
          BRK
          BRK
          PHP
          BRK
          BRK
L235F     BRK
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
          PHP
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          BRK
          PLP
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
          PHP
          BRK
          ORA ($09),Y
          ORA #$FF
          .BYTE $77    ;%01110111 'w'
          .BYTE $7F    ;%01111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $83    ;%10000011
          .BYTE $83    ;%10000011
          .BYTE $03    ;%00000011
          BRK
          STX $00
          RTI
          DEC $0BFF,X
          LDY #$09
          AND #$00
          BRK
          JSR L00A9
          .BYTE $23    ;%00100011 '#'
          .BYTE $03    ;%00000011
          .BYTE $02    ;%00000010
          .BYTE $03    ;%00000011
          .BYTE $43    ;%01000011 'C'
          LDX $48
          EOR ($DE,X)
          .BYTE $FF    ;%11111111
          ORA #$48
          TXA
          PHA
          TYA
          PHA
          TYA
          LDY $62
          BEQ L23BB
          STA $00,X
          INX
          DEY
          .BYTE $80    ;%10000000
          SED
L23BB     PLA
          TAY
          PLA
          TAX
          PLA
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          TYA
          LDY $62
          BEQ L23D2
          STA $0100,X
          INX
          DEY
          .BYTE $80    ;%10000000
          .BYTE $F7    ;%11110111
L23D2     PLA
          TAY
          PLA
          TAX
          PLA
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          LDX #$00
          LDA $0000,Y
          BEQ L23E8
          INX
          INY
          .BYTE $80    ;%10000000
          .BYTE $F7    ;%11110111
L23E8     TXA
          TSX
          STA $0103,X
          PLA
          TAY
          PLA
          TAX
          BRK
          RTS
          PHA
          TXA
          PHA
          TYA
          PHA
          LDA ($60),Y
          TAX
          INY
          LDA ($60),Y
          STX $60
          STA $61
          PLA
          TAY
          PLA
          TAX
          PLA
          RTS
          TYA
          AND #$07
          TAX
          LDA $E496,X
          PHA
          TYA
          LSR A
          LSR A
          LSR A
          TAX
          PLA
          RTS
          ORA ($02,X)
          .BYTE $04    ;%00000100
          PHP
          BPL L243D
          RTI
          .BYTE $80    ;%10000000
          SEI
          CLD
          .BYTE $12    ;%00010010
          CLV
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          LDX #$00
          LDY $E566,X
          INX
          LDA $E566,X
          BEQ L2459
          INX
          STA $63
          AND #$0F
          STA $61
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $B7    ;%10110111
          .BYTE $63    ;%01100011 'c'
L243D     ASL $BD
          ROR $E5
          INX
          STA $62
          LDA #$00
          .BYTE $97    ;%10010111
          .BYTE $63    ;%01100011 'c'
          .BYTE $04    ;%00000100
          LDA $E566,X
          INX
          .BYTE $F7    ;%11110111
          .BYTE $63    ;%01100011 'c'
          CLD
L2450     STA ($60),Y
          INY
          DEC $62
          BNE L2450
          .BYTE $80    ;%10000000
          .BYTE $CF    ;%11001111
L2459     LDX #$FF
          TXS
          .BYTE $17    ;%00010111
          .BYTE $3C    ;%00111100 '<'
          SBC $2937,X
          PHP
          LDA $29
          AND #$0F
          ORA #$10
          STA $29
          .BYTE $1F    ;%00011111
          .BYTE $3C    ;%00111100 '<'
          JSR $C20F
          .BYTE $80    ;%10000000
          .BYTE $EB    ;%11101011
          SEI
          LDA $29
          AND #$0F
          ORA #$20
          STA $29
          LDA $29
          AND #$0F
          ORA #$30
          STA $00
          LDA $29
          AND #$0F
          ORA #$40
          STA $29
          LDA $29
          AND #$0F
          ORA #$50
          STA $29
          LDA $29
          AND #$0F
          ORA #$60
          STA $29
          .BYTE $3C    ;%00111100 '<'
          BRK
          RTS
          LDX #$00
          LDY $E566,X
          INX
          LDA $E566,X
          BEQ L24D0
          INX
          STA $63
          AND #$0F
          STA $61
          .BYTE $3C    ;%00111100 '<'
          ORA ($62,X)
          .BYTE $B7    ;%10110111
          .BYTE $63    ;%01100011 'c'
          ASL $BD
          ROR $E5
          INX
          STA $62
          LDA #$00
          .BYTE $97    ;%10010111
          .BYTE $63    ;%01100011 'c'
          .BYTE $04    ;%00000100
          LDA $E566,X
          INX
          .BYTE $D7    ;%11010111
          .BYTE $63    ;%01100011 'c'
          CLD
L24C7     STA ($60),Y
          INY
          DEC $62
          BNE L24C7
          .BYTE $80    ;%10000000
          .BYTE $CF    ;%11001111
L24D0     LDX #$FF
          TXS
          JSR $CEA2
          JSR $C49D
          JSR $CFDF
          JSR $E109
          LDY #$55
          JSR $C375
          JMP $C1D2
          BRK
          BNE L24E9
          ORA ($90,X)
          .BYTE $FF    ;%11111111
          .BYTE $02    ;%00000010
          BNE L24EF
          .BYTE $03    ;%00000011
          BCC L24F2
          .BYTE $04    ;%00000100
          BNE L24E6
          ORA $90
          BEQ L2501
          .BYTE $80    ;%10000000
          PHP
          BNE L2483
          ORA #$90
          .BYTE $FF    ;%11111111
L2501     ASL A
          BCC L2512
          .BYTE $0B    ;%00001011
          BCC L2515
          .BYTE $0C    ;%00001100
          BNE L250C
          ORA $0290
          .BYTE $12    ;%00010010
          .BYTE $80    ;%10000000
          .BYTE $13    ;%00010011
          BCC L2515
L2512     ORA $90,X
          .BYTE $2F    ;%00101111 '/'
L2515     ORA $1A80,Y
          BCC L24CB
          .BYTE $1B    ;%00011011
          .BYTE $80    ;%10000000
          .BYTE $1C    ;%00011100
          BCC L2552
          JSR L0E90
          AND ($90,X)
          EOR $22
          BCC L2559
          .BYTE $23    ;%00100011 '#'
          BNE L2538
          BIT $90
          .BYTE $04    ;%00000100
          AND $90
          ADC $9029
          BEQ L255F
          CPY #$2C
          CPY #$2D
          BCC L253C
          .BYTE $3A    ;%00111010 ':'
L253C     .BYTE $80    ;%10000000
          .BYTE $3B    ;%00111011 ';'
          BCC L2544
          .BYTE $3C    ;%00111100 '<'
          CPY #$3D
          CPY #$3E
          BNE L2590
          .BYTE $3F    ;%00111111 '?'
          CPY #$40
          CPX #$20
          RTI
          BNE L257F
          EOR ($D0,X)
          ORA ($42,X)
L2553     BNE L2560
          EOR $D0
          .BYTE $04    ;%00000100
          .BYTE $47    ;%01000111 'G'
L2559     BNE L2553
          PHA
          BNE L252C
          EOR #$D0
L2560     .BYTE $0B    ;%00001011
          LSR A
          BNE L2574
          .BYTE $4B    ;%01001011 'K'
          BNE L2587
          JMP L15D0
          BVC L253C
          .BYTE $0B    ;%00001011
          CLI
          BNE L2572
          EOR $87D0,Y
          .BYTE $64    ;%01100100 'd'
L2574     LDY #$9C
          .BYTE $64    ;%01100100 'd'
          RTI
          ROR $40
          .BYTE $67    ;%01100111 'g'
          BCC L257F
          PLA
L257E     RTI
L257F     ADC #$40
          ROR A
          RTI
          .BYTE $6B    ;%01101011 'k'
          RTI
          .BYTE $87    ;%10000111
          RTI
L2587     STX $90,Y
          .BYTE $2B    ;%00101011 '+'
          BNE L25CC
          CMP ($90),Y
          BPL L257E
L2590     RTS
          BPL L2592
          BCC L2594
          BRK
          LDA ($13),Y
          .BYTE $FF    ;%11111111
          .BYTE $13    ;%00010011
          LDA ($39,X)
          .BYTE $3F    ;%00111111 '?'
          LDA ($B4),Y
          NOP
          .BYTE $3A    ;%00111010 ':'
          ADC ($05,X)
          .BYTE $44    ;%01000100 'D'
          CMP ($14),Y
          BRK
          LDX #$40
          ASL A
          .BYTE $42    ;%01000010 'B'
          BRK
          BRK
          RTI
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L25CC     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3437     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3534     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3680     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
L3931     .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          .BYTE $FF    ;%11111111
          BIT $2CE6
          INC $2C
          INC $2C
          INC $2C
          INC $2C
          INC $2C
          INC $2C
          INC $2C
          INC $DB
          CPY #$2C
          INC $2C
          INC $88
          BNE $3FA4
          INC $2C
          INC $08
          .BYTE $C2    ;%11000010
          .BYTE $9E    ;%10011110
          .END

;auto-generated symbols and labels
 L1017      $1017
 L1020      $1020
 L1036      $1036
 L1051      $1051
 L1056      $1056
 L1094      $1094
 L1100      $1100
 L1106      $1106
 L1125      $1125
 L1130      $1130
 L1140      $1140
 L1175      $1175
 L1218      $1218
 L1231      $1231
 L1238      $1238
 L1248      $1248
 L1251      $1251
 L1313      $1313
 L1324      $1324
 L1353      $1353
 L1389      $1389
 L1404      $1404
 L1436      $1436
 L1447      $1447
 L1454      $1454
 L1507      $1507
 L1528      $1528
 L1530      $1530
 L1534      $1534
 L1535      $1535
 L1550      $1550
 L1563      $1563
 L1584      $1584
 L1709      $1709
 L1743      $1743
 L1761      $1761
 L1763      $1763
 L1771      $1771
 L1789      $1789
 L1818      $1818
 L1846      $1846
 L1929      $1929
 L1975      $1975
 L2056      $2056
 L2061      $2061
 L2083      $2083
 L2138      $2138
 L2450      $2450
 L2459      $2459
 L2483      $2483
 L2501      $2501
 L2512      $2512
 L2515      $2515
 L2538      $2538
 L2544      $2544
 L2552      $2552
 L2553      $2553
 L2559      $2559
 L2560      $2560
 L2572      $2572
 L2574      $2574
 L2580      $2580
 L2587      $2587
 L2590      $2590
 L2592      $2592
 L2594      $2594
 L3437      $3437
 L3534      $3534
 L3680      $3680
 L3931      $3931
 L0059        $59
 L002B        $2B
 L00B0        $B0
 L008E        $8E
 L0082        $82
 L00AF        $AF
 L00C2        $C2
 L00C6        $C6
 L0131      $0131
 L0142      $0142
 L013F      $013F
 L014E      $014E
 L015F      $015F
 L017A      $017A
 L0153      $0153
 L00B6        $B6
 L01C5      $01C5
 L01D4      $01D4
 L01DD      $01DD
 L01FE      $01FE
 L0207      $0207
 L0268      $0268
 L0306      $0306
 L0397      $0397
 L036E      $036E
 L0395      $0395
 L0385      $0385
 L03D0      $03D0
 L03B7      $03B7
 L03F5      $03F5
 L045E      $045E
 L0466      $0466
 L0430      $0430
 L044C      $044C
 L0455      $0455
 L048F      $048F
 L046E      $046E
 L04BE      $04BE
 L049B      $049B
 L04B3      $04B3
 L047E      $047E
 L04EE      $04EE
 L04E7      $04E7
 L04D7      $04D7
 L04C5      $04C5
 L0573      $0573
 L0537      $0537
 L0525      $0525
 L052D      $052D
 L0551      $0551
 L05C3      $05C3
 L060D      $060D
 L059C      $059C
 L05B6      $05B6
 L0610      $0610
 L05D9      $05D9
 L05E2      $05E2
 L063A      $063A
 L0629      $0629
 L0658      $0658
 L0647      $0647
 L0670      $0670
 L065F      $065F
 L06BB      $06BB
 L06CD      $06CD
 L06DC      $06DC
 L072C      $072C
 L0755      $0755
 L079B      $079B
 L07BE      $07BE
 L0816      $0816
 L083A      $083A
 L07F3      $07F3
 L07E6      $07E6
 L0832      $0832
 L0844      $0844
 L08C5      $08C5
 L088E      $088E
 L086E      $086E
 L0875      $0875
 L08DD      $08DD
 L08A9      $08A9
 L08B6      $08B6
 L090F      $090F
 L090B      $090B
 L0935      $0935
 L095F      $095F
 L096B      $096B
 L0991      $0991
 L0995      $0995
 L09C5      $09C5
 L09E0      $09E0
 L09FE      $09FE
 L0A17      $0A17
 L0A41      $0A41
 L0A32      $0A32
 L0A59      $0A59
 L0A60      $0A60
 L0A5A      $0A5A
 L0A86      $0A86
 L0A9B      $0A9B
 L0A8B      $0A8B
 L0AAA      $0AAA
 L0AB3      $0AB3
 L0ACD      $0ACD
 L0B7A      $0B7A
 L0B09      $0B09
 L0BBC      $0BBC
 L0B3E      $0B3E
 L0BBE      $0BBE
 L0BC3      $0BC3
 L0BC2      $0BC2
 L0C15      $0C15
 L0C11      $0C11
 L0C0D      $0C0D
 L0BE1      $0BE1
 L0C09      $0C09
 L0BD3      $0BD3
 L0C37      $0C37
 L0C3E      $0C3E
 L0C30      $0C30
 L0C97      $0C97
 L0C9E      $0C9E
 L0C90      $0C90
 L0CF7      $0CF7
 L0CFE      $0CFE
 L0CF0      $0CF0
 L0D51      $0D51
 L0D3F      $0D3F
 L0D76      $0D76
 L0D5F      $0D5F
 L0D79      $0D79
 L0D81      $0D81
 L0DA3      $0DA3
 L0DAB      $0DAB
 L0DB3      $0DB3
 L0DC1      $0DC1
 L0DC9      $0DC9
 L0DD1      $0DD1
 L0EE4      $0EE4
 L0E92      $0E92
 L0E59      $0E59
 L0E6E      $0E6E
 L0F04      $0F04
 L0F07      $0F07
 L0F35      $0F35
 L0F2C      $0F2C
 L0F38      $0F38
 L0F42      $0F42
 L0F50      $0F50
 L0F7D      $0F7D
 L0F67      $0F67
 L0FA0      $0FA0
 L0F9B      $0F9B
 L0FAA      $0FAA
 L0FAC      $0FAC
 L0FF0      $0FF0
 L0FDC      $0FDC
 L102C      $102C
 L100D      $100D
 L103F      $103F
 L104B      $104B
 L106C      $106C
 L108D      $108D
 L10B3      $10B3
 L10AD      $10AD
 L111F      $111F
 L112D      $112D
 L116E      $116E
 L118F      $118F
 L11A9      $11A9
 L11DB      $11DB
 L11D6      $11D6
 L11CF      $11CF
 L120C      $120C
 L122A      $122A
 L122C      $122C
 L125B      $125B
 L12A1      $12A1
 L131A      $131A
 L134A      $134A
 L13B3      $13B3
 L13A5      $13A5
 L13D6      $13D6
 L13BC      $13BC
 L140D      $140D
 L14AD      $14AD
 L14C0      $14C0
 L14E1      $14E1
 L14E3      $14E3
 L14EE      $14EE
 L157A      $157A
 L15A1      $15A1
 L15C4      $15C4
 L16AB      $16AB
 L16CE      $16CE
 L16D7      $16D7
 L16C4      $16C4
 L170F      $170F
 L16FE      $16FE
 L175D      $175D
 L175E      $175E
 L179C      $179C
 L17A2      $17A2
 L17A8      $17A8
 L17AE      $17AE
 L177A      $177A
 L176E      $176E
 L17B9      $17B9
 L17C1      $17C1
 L17C9      $17C9
 L176C      $176C
 L17E2      $17E2
 L17D7      $17D7
 L17F4      $17F4
 L191B      $191B
 L195B      $195B
 L19B9      $19B9
 L19CF      $19CF
 L1A19      $1A19
 L1A08      $1A08
 L1A23      $1A23
 L1A9C      $1A9C
 L1A8F      $1A8F
 L1A2C      $1A2C
 L1A7B      $1A7B
 L1ADE      $1ADE
 L1ABB      $1ABB
 L1AED      $1AED
 L1ADA      $1ADA
 L1AF0      $1AF0
 L1B57      $1B57
 L1B3E      $1B3E
 L1B7A      $1B7A
 L1C0C      $1C0C
 L1BF3      $1BF3
 L1BC6      $1BC6
 L1BB1      $1BB1
 L1C94      $1C94
 L1C65      $1C65
 L1CF1      $1CF1
 L1D7D      $1D7D
 L1D40      $1D40
 L1D72      $1D72
 L1DA8      $1DA8
 L1DA7      $1DA7
 L1DF7      $1DF7
 L1DFD      $1DFD
 L1DF8      $1DF8
 L1DF3      $1DF3
 L1DB6      $1DB6
 L1E4C      $1E4C
 L1E52      $1E52
 L1E4D      $1E4D
 L1E48      $1E48
 L1E0B      $1E0B
 L1EA1      $1EA1
 L1EA7      $1EA7
 L1EA2      $1EA2
 L1E9D      $1E9D
 L1E60      $1E60
 L1EFA      $1EFA
 L1F00      $1F00
 L1EFB      $1EFB
 L1EF6      $1EF6
 L1EB7      $1EB7
 L1F51      $1F51
 L1F57      $1F57
 L1F52      $1F52
 L1F4D      $1F4D
 L1F0E      $1F0E
 L1FA8      $1FA8
 L1FAE      $1FAE
 L1FA9      $1FA9
 L1FA4      $1FA4
 L1F65      $1F65
 L1FC4      $1FC4
 L1FDE      $1FDE
 L204A      $204A
 L207A      $207A
 L206E      $206E
 L20AE      $20AE
 L20BA      $20BA
 L214D      $214D
 L21C7      $21C7
 L006B        $6B
 L22C5      $22C5
 L235F      $235F
 L00A9        $A9
 L23BB      $23BB
 L23D2      $23D2
 L23E8      $23E8
 L243D      $243D
 L24D0      $24D0
 L24C7      $24C7
 L24E9      $24E9
 L24EF      $24EF
 L24F2      $24F2
 L24E6      $24E6
 L250C      $250C
 L24CB      $24CB
 L0E90      $0E90
 L255F      $255F
 L253C      $253C
 L257F      $257F
 L252C      $252C
 L15D0      $15D0
 L25CC      $25CC
 L257E      $257E
