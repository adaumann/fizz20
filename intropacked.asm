
 processor 6502
	org $1300
StartBlock1300:
	; Starting new memory block at $1300
intropacked
	; LineNumber: 162
	jmp block1
	; LineNumber: 15
pressed	dc.b	0
	; LineNumber: 25
i	dc.b	0
	; LineNumber: 25
j	dc.b	0
	; LineNumber: 25
k	dc.b	0
	; LineNumber: 26
zp	= $64
	; LineNumber: 27
	; LineNumber: 28
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
joy1last =     $5f
joy1pressed =     $60
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
	
; // Copy color data from bitmap data
	; NodeProcedureDecl 0
	; Ending memory block at $1300
	; ***********  Defining procedure : Transfer
	;    Procedure type : User-defined procedure
	; LineNumber: 127
Transfer
	; LineNumber: 129
trse_breakpoint_0
	; LineNumber: 130
	; ****** Inline assembler section
	
	;Copy relocator code to memory $0200
	ldx #$00
reloccodecopy:
	lda reloccode,x
	sta $0400,x
	inx
	bne reloccodecopy
	;lda #0
	;sta $0800
	;cli
	jmp $0400 ;Jump to self-modified relocator code
	
reloccode:
	sei
relocate1:  
	ldx #$00
relocate2: 
	lda $3000,x ;Target address to read from
	sta $1201,x ;Transfer to BASIC load address $1201 - ALWAYS!
	inx
	bne relocate2
	inc $0405 ;Self-mode changing in relocated transfer code
	inc $0408 ;
	lda $0405 ;Check if hi-byte of target address has expired $ffff
	cmp #$5E
	bcc relocate1
	cli
	jmp $120d ;Run Exomizer decruncher from BASIC load address
	cli
	; LineNumber: 160
	rts
end_procedure_Transfer
block1
main_block_begin_
	; LineNumber: 163
	jsr Main
	; LineNumber: 164
	jsr Transfer
	; LineNumber: 165
	jmp * ; loop like (�/%
	; LineNumber: 166
main_block_end_
	; End of program
	; Ending memory block at $1300
Main_printstring_text80	dc.b	"WAIT..."
	dc.b	0
EndBlock1300:
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
	; ***********  Defining procedure : CopyImageColor
	;    Procedure type : User-defined procedure
	; LineNumber: 36
CopyImageColor
	; LineNumber: 43
	
; //	zp:=#charset_c;
; //	moveto(0,0,$94);
; //	for i:=0 to 0 do  
; //		screenmemory[i]:=zp[i];
; //	
	lda #<charset_c
	ldx #>charset_c
	sta zp
	stx zp+1
	; LineNumber: 45
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$94
	sta screenmemory+1
	; LineNumber: 54
	lda #$0
	; Calling storevariable on generic assign expression
	sta j
CopyImageColor_forloop6
	; LineNumber: 46
	; LineNumber: 51
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
CopyImageColor_forloop19
	; LineNumber: 47
	; LineNumber: 48
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
	; LineNumber: 49
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
	; LineNumber: 50
CopyImageColor_loopstart20
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$14
	cmp i ;keep
	bne CopyImageColor_forloop19
CopyImageColor_loopdone24: ;keep
CopyImageColor_loopend21
	; LineNumber: 51
	lda screenmemory
	clc
	adc #$14
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyImageColor_WordAdd25
	inc screenmemory+1
CopyImageColor_WordAdd25
	; LineNumber: 52
	lda zp
	clc
	adc #$14
	sta zp+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc CopyImageColor_WordAdd26
	inc zp+1
CopyImageColor_WordAdd26
	; LineNumber: 53
CopyImageColor_loopstart7
	; Compare is onpage
	; Test Inc dec D
	inc j
	lda #$14
	cmp j ;keep
	bne CopyImageColor_forloop6
CopyImageColor_loopdone27: ;keep
CopyImageColor_loopend8
	; LineNumber: 54
	rts
end_procedure_CopyImageColor
	; NodeProcedureDecl 0
	; ***********  Defining procedure : Main
	;    Procedure type : User-defined procedure
	; LineNumber: 57
Main
	; LineNumber: 59
	
; // Turn off interrupts so we won't be distrubed
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 61
	
; // Background is PURPLE and BLACK		
	; Assigning memory location
	lda #$0
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 63
	
; // Auxilliary color is cyan
	; Assigning memory location
	lda #$10
	; Calling storevariable on generic assign expression
	sta $900e
	; LineNumber: 65
	
; // Screen to $1000
	lda $9005
	and #%00001111
	ora #%11000000
	sta $9005
	; LineNumber: 67
	
; // Set charset location to where bitmap data is
	and #%11110000
	ora #%00001101
	sta $9005
	; LineNumber: 69
	
; // Set height of columns (-1, needs to be odd)
	; Assigning memory location
	lda #$13
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 71
	
; // Width of screen same as bitmap
	; Assigning memory location
	lda #$14
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 74
	
; // Copy color data
	jsr CopyImageColor
	; LineNumber: 75
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 78
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop29
	; LineNumber: 76
	lda i
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart30
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$0
	cmp i ;keep
	bne Main_forloop29
Main_loopdone34: ;keep
Main_loopend31
	; LineNumber: 79
	lda #$0
	; Calling storevariable on generic assign expression
	sta pressed
	; LineNumber: 81
Main_while35
Main_loopstart39
	; Binary clause Simplified: EQUALS
	clc
	lda pressed
	; cmp #$00 ignored
	bne Main_elsedoneblock38
Main_ConditionalTrueBlock36: ;Main true block ;keep 
	; LineNumber: 81
	; LineNumber: 82
	jsr callReadJoy1
	; LineNumber: 83
	lda 197
	; Calling storevariable on generic assign expression
	sta i
	; LineNumber: 84
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne Main_elsedoneblock58
Main_ConditionalTrueBlock56: ;Main true block ;keep 
	; LineNumber: 84
	lda #$1
	; Calling storevariable on generic assign expression
	sta pressed
Main_elsedoneblock58
	; LineNumber: 87
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne Main_elsedoneblock64
Main_ConditionalTrueBlock62: ;Main true block ;keep 
	; LineNumber: 87
	lda #$1
	; Calling storevariable on generic assign expression
	sta pressed
Main_elsedoneblock64
	; LineNumber: 89
	jmp Main_while35
Main_elsedoneblock38
Main_loopend40
	; LineNumber: 92
	lda $9005
	and #%11110000
	ora #%00000000
	sta $9005
	; LineNumber: 93
	; Assigning memory location
	lda #$c0
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 94
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 95
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9003
	and #$fe
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 97
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 100
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop67
	; LineNumber: 98
	lda #$20
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart68
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$0
	cmp i ;keep
	bne Main_forloop67
Main_loopdone72: ;keep
Main_loopend69
	; LineNumber: 100
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$94
	sta screenmemory+1
	; LineNumber: 103
	lda #$0
	; Calling storevariable on generic assign expression
	sta i
Main_forloop73
	; LineNumber: 101
	lda #$91
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy i ; optimized, look out for bugs
	sta (screenmemory),y
Main_loopstart74
	; Compare is onpage
	; Test Inc dec D
	inc i
	lda #$13
	cmp i ;keep
	bne Main_forloop73
Main_loopdone78: ;keep
Main_loopend75
	; LineNumber: 103
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #$10
	sta screenmemory+1
	; LineNumber: 103
Main_printstring_call79
	clc
	lda #<Main_printstring_text80
	adc #$0
	ldy #>Main_printstring_text80
	sta print_text+0
	sty print_text+1
	ldx #$a ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 122
	
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
	; LineNumber: 123
	rts
end_procedure_Main
	; NodeProcedureDecl -1
	; Ending memory block at $2600
EndBlock2600:

