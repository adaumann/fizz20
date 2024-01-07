
 processor 6502
	org $400
StartBlock400:
	; Starting new memory block at $400
	; ***********  Defining procedure : Boot
	;    Procedure type : User-defined procedure
	; LineNumber: 44
	; LineNumber: 41
localVariable_Boot_fn		dc.b	"BOOT"
	dc.b	0
	; LineNumber: 42
localVariable_Boot_fileNameb	=  $68
Boot_block5
Boot
	; LineNumber: 45
	lda #<localVariable_Boot_fn
	ldx #>localVariable_Boot_fn
	sta localVariable_Boot_fileNameb
	stx localVariable_Boot_fileNameb+1
	; LineNumber: 46
	; ****** Inline assembler section
; KERNEL/BASIC ROM Routines
LOADB       = $FFD5
SETLFSB     = $FFBA
SETNAMB     = $FFBD
RUNB			= $1210
			JMP mainb
bootb	dc.b $01, $12
mainb       LDA  #$08            ; Logical file number
            LDX  #$08            ; Device number
            LDY  #$00            ; Secondary address
                                 ; $00 Load using specifed address
                                 ; $01 Load using original address from file
            JSR  SETLFSB          ; Set above parameters
            LDA  #$04            ; Length of file name
            LDX  localVariable_Boot_fileNameb      ; Low byte of file name location
            LDY  localVariable_Boot_fileNameb+1      ; High byte of file name location
            JSR  SETNAMB          ; Set the name
            LDA  #$00            ; Load = 0, Verify = 1
            LDX  bootb         ; Low byte of start address
            LDY  bootb+1         ; High byte of start address
            JSR  LOADB            ; Perform load
            BCS  mainb          ; Jump to error handler if error
            JMP RUNB
 
	
	; LineNumber: 77
	rts
end_procedure_Boot
	; NodeProcedureDecl 1
	; Ending memory block at $400
EndBlock400:
	org $1201
StartBlock1201:
	; Starting new memory block at $1201
	.byte $b ; lo byte of next line
	.byte $12 ; hi byte of next line
	.byte $0a, $00 ; line 10 (lo, hi)
	.byte $9e, $20 ; SYS token and a space
	.byte   $34,$36,$32,$34
	.byte $00, $00, $00 ; end of program
	; Ending memory block at $1201
EndBlock1201:
	org $1210
StartBlock1210:
	; Starting new memory block at $1210
intro
	; LineNumber: 215
	jmp block1
	; LineNumber: 18
loader		dc.b	"VAI"
	dc.b	0
	; LineNumber: 19
fileName	= $64
	; LineNumber: 20
pressed	dc.b	0
	; LineNumber: 30
i	dc.b	0
	; LineNumber: 30
j	dc.b	0
	; LineNumber: 30
k	dc.b	0
	; LineNumber: 31
zp	=  $66
	; LineNumber: 32
	; LineNumber: 33
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initeightbitmul
	;    Procedure type : Built-in function
	;    Requires initialization : no
multiplier = $80
multiplier_a = $82
multiply_eightbit
	cpx #$00
	beq mul_end
	dex
	stx $82
	lsr
	sta multiplier
	lda #$00
	ldx #$08
mul_loop
	bcc mul_skip
mul_mod
	adc multiplier_a
mul_skip
	ror
	ror multiplier
	dex
	bne mul_loop
	ldx multiplier
	rts
mul_end
	txa
	rts
initeightbitmul_multiply_eightbit2
	rts
end_procedure_initeightbitmul
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initjoy1
	;    Procedure type : Built-in function
	;    Requires initialization : no
	; ----------
	; ReadJoy1 and ReadJoy2 (on supported platforms)
	; populates joy1 and joy1pressed which can be tested by AND-ing with the following constants:
;JOY_DOWN  = %00000100
;JOY_UP    = %00000010
;JOY_LEFT  = %00001000
;JOY_RIGHT = %00000001
;JOY_FIRE  = %00010000
VIC20_PORTACASS = $911F
VIC20_PORTBVIA2 = $9120  ; Port B 6522 2 value (joystick)
VIC20_PORTBVIA2d = $9122 ; Port B 6522 2 direction (joystick)
joy1 = $5e
joy1last =  $5f
joy1pressed =  $60
callReadJoy1
	LDA VIC20_PORTACASS
	EOR #$FF
	AND #$3C
	LDX #$7F
	SEI
	STX VIC20_PORTBVIA2d
	LDY VIC20_PORTBVIA2
	BMI initjoy1_JoySkip3
	ORA #$02
initjoy1_JoySkip3
	LDX #$FF
	STX VIC20_PORTBVIA2d
	CLI
	LSR
	STA joy1
	eor joy1last
	and joy1
	sta joy1pressed
	lda joy1
	sta joy1last
	rts
end_procedure_initjoy1
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initmoveto
	;    Procedure type : Built-in function
	;    Requires initialization : no
	jmp initmoveto_moveto4
screenmemory =  $fd
colormemory =  $fb
screen_x = $80
screen_y = $82
SetScreenPosition
	sta screenmemory+1
	lda #0
	sta screenmemory
	ldy screen_y
	beq sydone
syloop
	clc
	adc #22
	bcc sskip
	inc screenmemory+1
sskip
	dey
	bne syloop
sydone
	ldx screen_x
	beq sxdone
	clc
	adc screen_x
	bcc sxdone
	inc screenmemory+1
sxdone
	sta screenmemory
	rts
initmoveto_moveto4
	rts
end_procedure_initmoveto
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initprintstring
	;    Procedure type : User-defined procedure
print_text = $80
print_number_text: .dc "    ",0
printstring
	ldy #0
printstringloop
	lda (print_text),y
	cmp #0 ;keep
	beq printstring_done
	cmp #64
	bcc printstring_skip
	sec
	sbc #64
printstring_skip
	sta (screenmemory),y
	iny
	dex
	cpx #0
	beq printstring_done
	jmp printstringloop
printstring_done
	rts
end_procedure_initprintstring
	
; // Put all code at $2400
	; NodeProcedureDecl 0
	; Ending memory block at $1210
block1
main_block_begin_
	; LineNumber: 216
	jsr Main
	; LineNumber: 217
main_block_end_
	; End of program
	; Ending memory block at $1210
Main_printstring_text82	dc.b	"LOADING..."
	dc.b	0
EndBlock1210:
	org $1400
StartBlock1400:
	org $1400
charset:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/title.bin"
end_incbin_charset:
EndBlock1400:
	org $2080
StartBlock2080:
	org $2080
charset_c:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/title_color.bin"
end_incbin_charset_c:
EndBlock2080:
	org $2600
StartBlock2600:
	; Starting new memory block at $2600
	; ***********  Defining procedure : LoadFile
	;    Procedure type : User-defined procedure
	; LineNumber: 88
	; LineNumber: 86
localVariable_LoadFile_len	dc.b	0
	; LineNumber: 87
localVariable_LoadFile_fn	dc.w	0
	; LineNumber: 84
localVariable_LoadFile_addr	dc.w	0
LoadFile_block6
LoadFile
	; LineNumber: 89
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_len
	; LineNumber: 91
	; ****** Inline assembler section
; KERNEL/BASIC ROM Routines
LOAD        = $FFD5
SETLFS      = $FFBA
SETNAM      = $FFBD
main        LDA  #$08            ; Logical file number
            LDX  #$08            ; Device number
            LDY  #$00            ; Secondary address
                                 ; $00 Load using specifed address
                                 ; $01 Load using original address from file
            JSR  SETLFS          ; Set above parameters
            LDA  localVariable_LoadFile_len            ; Length of file name
            LDX  fileName      ; Low byte of file name location
            LDY  fileName+1      ; High byte of file name location
            JSR  SETNAM          ; Set the name
            LDA  #$00            ; Load = 0, Verify = 1
            LDX  localVariable_LoadFile_addr         ; Low byte of start address
            LDY  localVariable_LoadFile_addr+1         ; High byte of start address
            JSR  LOAD            ; Perform load
            BCS  main           ; Jump to error handler if error
	
	; LineNumber: 116
	rts
end_procedure_LoadFile
	
; // Copy color data from bitmap data
	; NodeProcedureDecl 1
	; ***********  Defining procedure : CopyImageColor
	;    Procedure type : User-defined procedure
	; LineNumber: 121
CopyImageColor
	; LineNumber: 128
	
; //	zp:=#charset_c;
; //	moveto(0,0,$94);
; //	for i:=0 to 0 do  
; //		screenmemory[i]:=zp[i];
; //	
	lda #<charset_c
	ldx #>charset_c
	sta zp
	stx zp+1
	; LineNumber: 130
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$94
	sta screenmemory+1
	; LineNumber: 139
	lda #$0
	; Calling storevariable on generic assign expression
	sta j
CopyImageColor_forloop8
	; LineNumber: 131
	; LineNumber: 136
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
CopyImageColor_forloop21
	; LineNumber: 132
	; LineNumber: 133
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy i
	lda (zp),y
	; Load pointer array
	pha
	; 8 bit binop
	; Add/sub where right value is constant number
	lda i
	clc
	adc #$14
	 ; end add / sub var with constant
	tay
	pla
	ora (zp),y
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta k
	; LineNumber: 134
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
	; LineNumber: 135
CopyImageColor_loopstart22
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$14
	cmp i ;keep
	bne CopyImageColor_forloop21
CopyImageColor_loopdone26: ;keep
CopyImageColor_loopend23
	; LineNumber: 136
	lda screenmemory
	clc
	adc #$14
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyImageColor_WordAdd27
	inc screenmemory+1
CopyImageColor_WordAdd27
	; LineNumber: 137
	lda zp
	clc
	adc #$14
	sta zp+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyImageColor_WordAdd28
	inc zp+1
CopyImageColor_WordAdd28
	; LineNumber: 138
CopyImageColor_loopstart9
	; Compare is onpage
	; Test Inc dec D
	inc j
	lda #$14
	cmp j ;keep
	bne CopyImageColor_forloop8
CopyImageColor_loopdone29: ;keep
CopyImageColor_loopend10
	; LineNumber: 139
	rts
end_procedure_CopyImageColor
	; NodeProcedureDecl 1
	; ***********  Defining procedure : Main
	;    Procedure type : User-defined procedure
	; LineNumber: 142
Main
	; LineNumber: 143
	lda #<loader
	ldx #>loader
	sta fileName
	stx fileName+1
	; LineNumber: 144
	; Integer constant assigning
	; Load16bitvariable : #$400
	ldy #$04
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 146
	
; // Turn off interrupts so we won't be distrubed
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 148
	
; // Background is PURPLE and BLACK		
	; Assigning memory location
	lda #$0
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 150
	
; // Auxilliary color is cyan
	; Assigning memory location
	lda #$10
	; Calling storevariable on generic assign expression
	sta $900e
	; LineNumber: 152
	
; // Screen to $1000
	lda $9005
	and #%00001111
	ora #%11000000
	sta $9005
	; LineNumber: 154
	
; // Set charset location to where bitmap data is
	and #%11110000
	ora #%00001101
	sta $9005
	; LineNumber: 156
	
; // Set height of columns (-1, needs to be odd)
	; Assigning memory location
	lda #$13
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 158
	
; // Width of screen same as bitmap
	; Assigning memory location
	lda #$14
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 161
	
; // Copy color data
	jsr CopyImageColor
	; LineNumber: 162
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 165
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop31
	; LineNumber: 163
	lda i
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart32
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$0
	cmp i ;keep
	bne Main_forloop31
Main_loopdone36: ;keep
Main_loopend33
	; LineNumber: 166
	lda #$0
	; Calling storevariable on generic assign expression
	sta pressed
	; LineNumber: 168
Main_while37
Main_loopstart41
	; Binary clause Simplified: EQUALS
	clc
	lda pressed
	; cmp #$00 ignored
	bne Main_elsedoneblock40
Main_ConditionalTrueBlock38: ;Main true block ;keep 
	; LineNumber: 168
	; LineNumber: 169
	jsr callReadJoy1
	; LineNumber: 170
	lda 197
	; Calling storevariable on generic assign expression
	sta i
	; LineNumber: 171
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne Main_elsedoneblock60
Main_ConditionalTrueBlock58: ;Main true block ;keep 
	; LineNumber: 171
	lda #$1
	; Calling storevariable on generic assign expression
	sta pressed
Main_elsedoneblock60
	; LineNumber: 174
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne Main_elsedoneblock66
Main_ConditionalTrueBlock64: ;Main true block ;keep 
	; LineNumber: 174
	lda #$1
	; Calling storevariable on generic assign expression
	sta pressed
Main_elsedoneblock66
	; LineNumber: 176
	jmp Main_while37
Main_elsedoneblock40
Main_loopend42
	; LineNumber: 179
	lda $9005
	and #%11110000
	ora #%00000000
	sta $9005
	; LineNumber: 180
	; Assigning memory location
	lda #$c0
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 181
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 182
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9003
	and #$fe
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 184
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 187
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop69
	; LineNumber: 185
	lda #$20
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart70
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$0
	cmp i ;keep
	bne Main_forloop69
Main_loopdone74: ;keep
Main_loopend71
	; LineNumber: 187
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$94
	sta screenmemory+1
	; LineNumber: 190
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop75
	; LineNumber: 188
	lda #$91
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart76
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$13
	cmp i ;keep
	bne Main_forloop75
Main_loopdone80: ;keep
Main_loopend77
	; LineNumber: 190
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 190
Main_printstring_call81
	clc
	lda #<Main_printstring_text82
	adc #$0
	ldy #>Main_printstring_text82
	sta print_text+0
	sty print_text+1
	ldx #$a ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 192
	jsr Boot
	; LineNumber: 210
	
; //	
; // After this, some random raster effect
; //	while (true) do begin
; //		time:=time+4;
; //		t:=sine[time]/4+32;
; //		
; //		waitforraster(t);
; //		aux_color_and_volume:=black*16;
; //		for i:=0 to 24 do begin
; //			screen_bg_color:=blue;
; //			waitnoraster(1);
; //						
; //		end;
; //		aux_color_and_volume:=purple*16;
; //		screen_bg_color:=blue*16;
; //	end;
; //	
	jmp * ; loop like (�/%
	; LineNumber: 211
	rts
end_procedure_Main
	; Ending memory block at $2600
EndBlock2600:

