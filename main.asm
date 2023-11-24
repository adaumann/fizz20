
 processor 6502
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
MainProgram
	; LineNumber: 226
	jmp block1
	; LineNumber: 75
ticks = $35
	; LineNumber: 76
oldticks = $3d
	; LineNumber: 113
	; LineNumber: 114
	; LineNumber: 139
	; Ending memory block at $1210
	; LineNumber: 140
	; Ending memory block at $1210
	; NodeProcedureDecl 0
	; Ending memory block at $1210
EndBlock1210:
	org $2000
StartBlock2000:
	; Starting new memory block at $2000
strTitle	
	dc.b	$08, $05, $0c, $0c, $0f, $20, $17, $0f, $12
	dc.b	$0c, $04, 0
	; Resuming memory block at $2000
strDesc	
	dc.b	$15, $0e, $0c, $05, $01, $13, $08, $20, $19
	dc.b	$0f, $15, $12, $20, $16, $09, $03, $20, $32
	dc.b	$30, $20, $03, $12, $05, $01, $14, $09, $16
	dc.b	$09, $14, $19, $21, 0
	; Resuming memory block at $2000
	; ***********  Defining procedure : initVbm
	;    Procedure type : User-defined procedure
	; Initialise the core VBM (Vic20 Bitmap Mode) library
	; Created by Andy H - Hewco.uk for use in Turbo Rascal
	; See help to get started, all commmands begin with 'vbm'
; Screen address table Low byte / high byte
vbmScrL = $0d ; 20 bytes
;    dc.b 0,0,0,0,0,0,0,0,0,0
;    dc.b 0,0,0,0,0,0,0,0,0,0
vbmScrH = $21 ; 20 bytes
;    dc.b 0,0,0,0,0,0,0,0,0,0
;    dc.b 0,0,0,0,0,0,0,0,0,0
; ends at $35
vbm9000     = $00 ; store $9000 address value
vbm9001     = $01 ; store $9001 address value
vbm9005     = $02 ; store $9005 address value
vbmX        = $03 ; x position
vbmY        = $04 ; y position
vbmI        = $05 ; index
vbmJ        = $06 ; index
vbmT        = $07 ; index
vbmScroll   = $08    ; 16 - character scroll start
vbmNumColumns = $09  ; 20 - number of columns
vbmScrLstart = $0a   ; $00 - start address for bitmap L
vbmScrHstart = $0b   ; $11 - start address for bitmap H
vbmScrHeight = $0c   ; 192 - default height of bitmap modes 0 and 1
; vbmJ = temporarily set to number of dbl height characters per row - 12, 10 or 9
vbmSetDisplayMode
    ; initialise
    lda #16 ; start char
    sta vbmScroll
    lda #$00 ; address L
    sta vbmScrLstart
    lda #$11 ; address H
    sta vbmScrHstart
    lda $9000
    sta vbm9000
    cmp #$c;keep
    beq vbmIsPal
    lda $9000	; Adjust horizontal position for NTSC
    clc
    adc #1
    sta $9000
    jmp vbmIsNtsc
	
vbmIsPal
    lda $9000	; Adjust horizontal position for PAL
    clc
    adc #2
    sta $9000
vbmIsNtsc
    lda vbmNumColumns ;#20
    sta $9002	; set screen width to 20, 19, 18 or 17 characters
    cmp #20
    beq vbmSDM_noadjust
    cmp #19
    beq vbmSDM_19Cols
    cmp #18
    beq vbmSDM_18Cols
vbmSDM_17Cols
    lda $9000	; 17 column mode, move horiz position another 4 pixels right to centre
    clc
    adc #3      ; move 12 pixels across
    sta $9000
    jmp vbmSDM_noadjust
vbmSDM_18Cols
    lda $9000	; 18 column mode, move horiz position another 4 pixels right to centre
    clc
    adc #2      ; move 8 pixels across
    sta $9000
    jmp vbmSDM_noadjust
vbmSDM_19Cols
    lda $9000	; 19 column mode, move horiz position another 4 pixels right to centre
    clc
    adc #1      ; move 4 pixels across
    sta $9000
vbmSDM_noadjust
    lda $9001
    sta vbm9001
    ldy vbmScrHeight
    cpy #192
    beq vbmSDM_192Rows
    cpy #176
    beq vbmSDM_176Rows
    cpy #160
    beq vbmSDM_160Rows
vbmSDM_144Rows
    clc
    adc #12      ; move down
    sta $9001	; adjust vertical position
    lda #19		; (9x2) + 1
    sta $9003	; set screen height to 12 double height chars
    jmp vbmSDM_RowsDone
vbmSDM_160Rows
    clc
    adc #8      ; move down
    sta $9001	; adjust vertical position
    lda #21		; (10x2) + 1
    sta $9003	; set screen height to 12 double height chars
    jmp vbmSDM_RowsDone
vbmSDM_176Rows
    clc
    adc #4      ; move down
    sta $9001	; adjust vertical position
    lda #23		; (11x2) + 1
    sta $9003	; set screen height to 12 double height chars
    jmp vbmSDM_RowsDone
vbmSDM_192Rows
    sec
    sbc #1      ; move up
    sta $9001	; adjust vertical position
    lda #25		; (12x2) + 1
    sta $9003	; set screen height to 12 double height chars
vbmSDM_RowsDone
    lda $9005
    sta vbm9005
    lda #%11001100	; 204 - set screen and character to $1000
    sta $9005
    jsr vbmLayoutCharacters
    jsr vbmCreateColumnAddresses
    ; if using hidden column, set the logical width
    lda vbmNumColumns
    cmp #20
    beq vbmSDM_Completed
    cmp #18
    beq vbmSDM_Completed
    inc vbmNumColumns ; 1 hidden column
vbmSDM_Completed
    rts
;; Write column start addresses
vbmCreateColumnAddresses
    ; address table for logical character memory
    ; (bitmap x start addresses)
    ldx #0
    lda vbmScrLstart    ; L start address of bitmap
    sta vbmScrL,x
    ldy vbmScrHstart    ; H start address of bitmap - Y reg to retain high byte
    tya
    sta vbmScrH,x
vbmAddrTable2
    lda vbmScrL,x
    inx
    clc
    adc vbmScrHeight    ; #192 ; height of screen in pixels
    bcc vbmNoOverflow2
    iny
vbmNoOverflow2
    sta vbmScrL,x
    tya
    sta vbmScrH,x
    ; Test high byte in Y reg
    cpy #$20             ; address needs to wrap back around?
    bne vbmAddrTable3
    ; reset address to start of memory VIC bitmap
    lda #$00
    sta vbmScrL,x
    ldy #$11
    tya
    sta vbmScrH,x
vbmAddrTable3
    cpx #19		; width in characters-1 ** note for smaller widths these are still calculated
    bcc vbmAddrTable2
    rts
;; Draw character map to screen to form bitmap layout
vbmLayoutCharacters
    ; Layout characters on screen
    lda vbmScroll 	; character to start drawing with (16)
    sta vbmI            ; character
    lda #0
    sta vbmX
vbmXDrawForLoop
    lda #0
    sta vbmY
    ; screen start
    lda #$00
    ldy #$10
    sta screenmemory
    sty screenmemory+1
vbmYDrawForLoop
    lda vbmI
    ldy vbmX
    sta (screenmemory),y
    ; add 20 for next row (or 19)
    lda screenmemory
    clc
    adc vbmNumColumns ; 20 (19, 18 or 17)
    sta screenmemory
    bcc vbmYDrawForLoopOverflow
    inc screenmemory+1
vbmYDrawForLoopOverflow
    inc vbmY
    inc vbmI    ; character
    bne vbmDrawForLoopResetChar
    lda #16     ; reset character back to #16
    sta vbmI
vbmDrawForLoopResetChar
    lda vbmJ ; #12	; comapare 12 rows
    cmp vbmY ;keep
    bne vbmYDrawForLoop ; loop rows
    inc vbmX
    lda vbmNumColumns	; compare 20 columns
    cmp vbmX ;keep
    bne vbmXDrawForLoop	; loop columns
	rts
end_procedure_initVbm
	; NodeProcedureDecl 0
	; ***********  Defining procedure : initVbmClear
	;    Procedure type : User-defined procedure
	; VBM Clear bitmap routine
vbmClear
	; Address of bitmap $1100
        lda #$00 ; 0
        ldx #$11 ; 17
	sta screenmemory
	stx screenmemory+1
	sta vbmX
vbmClearForX
	lda #0
	sta vbmY
vbmClearForY
	lda vbmI ; vbmI contains byte to clear bitmap with
	ldy vbmY
	sta (screenmemory),y
	inc vbmY
        lda vbmScrHeight ; #192    ; reached end of row?
	cmp vbmY ;keep
	bne vbmClearForY
	lda screenmemory
	clc
        adc vbmScrHeight ; #192
	bcc vbmClearXOverflow
	inc screenmemory+1
vbmClearXOverflow
	sta screenmemory
	inc vbmX
        lda vbmNumColumns ; #20 ; reched end of column?
	cmp vbmX ;keep
	bne vbmClearForX
    ; bitmap has been cleared
	rts
end_procedure_initVbmClear
	; NodeProcedureDecl 0
	; ***********  Defining procedure : initVbmDrawSmallTextO
	;    Procedure type : User-defined procedure
	; Draw text characters to the bitmap using a zero terminated CSTRING with OR operation
	; CSTRING    = $80
	; Font chars = $82
	; Temp addr  = $84 - used to calculate char address
vbmDrawSmallTextO
vbmDSTXO_Xloop
	; calculate next screen memory position
	lda vbmX
	lsr ; divde x by 2 (2 chars per character cell)
	tax
	; Work out from LSR if odd or even pattern
	bcs vbmDSTXO_Odd
	lda #$f0 ; even, use left side of font
	bcc vbmDSTXO_Even ; we know carry will be clear
vbmDSTXO_Odd
	lda #$0f ; odd, use right side of font
vbmDSTXO_Even
	sta vbmT ; store mask to use for later
	lda vbmScrL,x   ; Address of table lo
	ldy vbmScrH,x   ; Address of table hi
	clc
	adc vbmY		; Add Y offset
	bcc vbmDSTXO_NSP_NoOverflow
	iny
vbmDSTXO_NSP_NoOverflow
	sta screenmemory
	sty screenmemory+1
vbmDSTXO_GetCharNum
	; convert text number (0-255) * 8 = memory offset
	ldy #0
	lda ($80),y		; get char from current position in CSTRING
	bne vbmDSTXO_NotEnd
	rts ; if =0, we are end of the cstring
vbmDSTXO_NotEnd
	sta $84
	sty $84+1
	asl $84
	rol $84+1 ;x2
	asl $84
	rol $84+1 ;x4
	asl $84
	rol $84+1 ;x8
	lda $84
	clc
	adc $82  ; add tile low address
	sta $84
	lda $84+1
	adc $82+1 ; add tile high address
	sta $84+1
vbmDSTXO_DrawChar
	; y reg is ZERO from ldy #0 in GetTileNum
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
	iny
	lda ($84),y
	and vbmT
	ora (screenmemory),y
	sta (screenmemory),y
vbmDSTXO_NextChar
	clc
	inc $80  ; low byte
	bne vbmDSTXO_NTM_NoOverflow
	inc $80+1  ; high byte
vbmDSTXO_NTM_NoOverflow
	; next x pos on screen
	inc vbmX
	lda vbmNumColumns   ; 0-39 columns, 40 means exceeded right of screen
	asl ; x2
	cmp vbmX  ; has x pos exceeded?
	beq vbmDSTXO_NextLine  ;
	jmp vbmDSTXO_Xloop  ; no, draw next char
vbmDSTXO_NextLine
	; yes, set x back to 0 and inc vbmY by line height (pixels)
	lda #0
	sta vbmX
	lda vbmY
	clc
	adc vbmI
	sta vbmY
	jmp vbmDSTXO_Xloop
	rts
end_procedure_initVbmDrawSmallTextO
	; NodeProcedureDecl 0
	; ***********  Defining procedure : initVbmDrawText
	;    Procedure type : User-defined procedure
	; Draw text characters to the bitmap using a zero terminated CSTRING
	; CSTRING    = $80
	; Font chars = $82
	; Temp addr  = $84 - used to calculate char address
vbmDrawText
vbmDTX_Xloop
	; calculate next screen memory position
	ldx vbmX
	lda vbmScrL,x   ; Address of table lo
	ldy vbmScrH,x   ; Address of table hi
	clc
	adc vbmY		; Add Y offset
	bcc vbmDTX_NSP_NoOverflow
	iny
vbmDTX_NSP_NoOverflow
	sta screenmemory
	sty screenmemory+1
vbmDTX_GetCharNum
	; convert text number (0-255) * 8 = memory offset
	ldy #0
	lda ($80),y		; get char from current position in CSTRING
	bne vbmDTX_NotEnd
	rts ; if =0, we are end of the cstring
vbmDTX_NotEnd
	sta $84
	sty $84+1
	asl $84
	rol $84+1 ;x2
	asl $84
	rol $84+1 ;x4
	asl $84
	rol $84+1 ;x8
	lda $84
	clc
	adc $82  ; add tile low address
	sta $84
	lda $84+1
	adc $82+1 ; add tile high address
	sta $84+1
vbmDTX_DrawChar
	; y reg is ZERO from ldy #0 in GetTileNum
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
	iny
	lda ($84),y
	sta (screenmemory),y
vbmDTX_NextChar
	clc
	inc $80  ; low byte
	bne vbmDTX_NTM_NoOverflow
	inc $80+1  ; high byte
vbmDTX_NTM_NoOverflow
	; next x pos on screen
	inc vbmX
	lda vbmNumColumns   ; 0-19 columns, 20 means exceeded right of screen
	cmp vbmX  ; has x pos exceeded?
	bne vbmDTX_Xloop  ; no, draw next char
	; yes, set x back to 0 and inc vbmY by line height (pixels)
	lda #0
	sta vbmX
	lda vbmY
	clc
	adc vbmI
	sta vbmY
	jmp vbmDTX_Xloop
	rts
end_procedure_initVbmDrawText
	; NodeProcedureDecl 0
	; ***********  Defining procedure : init_viairq
	;    Procedure type : User-defined procedure
init_via_irq:
  ldx #0       ; wait for this raster line (times 2)
A0_vic_raster:
  cpx $9004
  bne A0_vic_raster        ; at this stage, the inaccuracy is 7 clock cycles
                ; the processor is in this place 2 to 9 cycles
                ; after $9004 has changed
  ldy #9
  bit $24
A1_vic_raster:
  ldx $9004
  txa
  bit $24
  ldx #24
  dex
  bne *-1       ; first spend some time (so that the whole
  cmp $9004     ; loop will be 2 raster lines)
  bcs *+2       ; save one cycle if $9004 changed too late
  dey
  bne A1_vic_raster
                ; now it is fully synchronized
                ; 6 cycles have passed since last $9004 change
                ; and we are on line 2(28+9)=74
;initialize the timers
  lda #$40      ; enable Timer A free run of both VIAs
  sta $911b
  sta $912b
        ; 312*71-2 = $568
timers_vic_raster:
;  lda #$56
;  ldx #$86
  lda $64
  ldx $65
  sta $9116     ; load the timer low byte latches
  sta $9126
  ldy #7        ; make a little delay to get the raster effect to the
  dey           ; right place
  bne *-1
  nop
  nop
  stx $9125     ; start the IRQ timer A
                ; 6560-101: 65 cycles from $9004 change
                ; 6561-101: 77 cycles from $9004 change
  ldy #10       ; spend some time (1+5*9+4=55 cycles)
  dey           ; before starting the reference timer
  bne *-1
  stx $9115     ; start the reference timer
pointers_vic_raster:
;  lda #00     ; set the raster IRQ routine pointer
   lda $66
  sta $314
;  lda #00
  lda $67
  sta $315
  lda #$c0
  sta $912e     ; enable Timer A underflow interrupts
	rts
end_procedure_init_viairq
	
; //
; //	Vic 20 8K Vic Bitmap Mode template
; //	- can utilize up to 35K RAM under project settings
; //
; //	-------------------
; //	
; //	Dev Note:	Zero Page addresses have been defined in project settings
; //				for the Vic 20 build.
; //				
; //				_memoryzp 	- all zero page variables and resources
; //				_constants	- game constants & parameters
; //				_memory		- all main RAM variables
; //				_lookup		- read only look up tables
; //
; //@define DEBUG		1				
; // uncomment to show debugging timings
; // -------------------------------------------------------------------------------
; // Remove if using multiplcation or division
; // deprecated commands - ensure not included
; // -------------------------------------------------------------------------------
; // These constants can be used for 8x8 sprites.
; // Same method can be used for sprites of other sizes
; // pre-shift sprite address offsets for 8x8 sprites
; // an 8x8 sprite needs 2 characters to move smoothly between them
; // side a (left)						side b (right)	
; // GAME PARAMETERS and CONSTANTS
; // -------------------------------------------------------------------------------
; // Variables:	(for assignable/changing data, use these addresses)
; // Address of bitmap (screen and characters)
; // Declare variables
; // ------------------------------
; // Zero Page: 			$35 - $5d
; // game tick counter + 1 per FPS
; // incremented 1 per frame
; // ------------------------------
; // Cassette buffer:		$033C-$03FB (828-1019)
; // ------------------------------	
; // Working Zero Page pointers
; // general pointer
; // -------------------------------------------------------------------------------
; // Data
; // export data
; // 64 characters using 8 bytes each
; // S E  H M 
; // S E  H M 
; // memory - load addresses
; // address of binary data
; //	const aNext: 	address = aFont4 + fontSize; 
; // where next data can start
; // incbin data
; // variables in Zero Page and binary data
; // -------------------------------------------------------------------------------
; // -------------------------------------------------------------------------------
; // look up data
; // -------------------------------------------------------------------------------
; // Variables:	(for assignable/changing data, use these addresses)
; // Not suitable for Cartridge projects - use _memoryzp instead
; // Declare variables
; // ------------------------------
; //	myvar : byte = 0;	
; // example variable in main RAM
; // -------------------------------------------------------------------------------
; // CString
; // variables in main RAM
; // -------------------------------------------------------------------------------
; // Colour memory look up addresses 
; // -------------------------------------------------------------------------------
; // Music
; // read only lookup tables
; // -------------------------------------------------------------------------------
; // source files						
; // add your include files here
; // Vertical Blank Interrupt
	; NodeProcedureDecl 0
	; ***********  Defining procedure : vbl_Interrupt
	;    Procedure type : User-defined procedure
	; LineNumber: 170
vbl_Interrupt
	; LineNumber: 171
	; StartIRQ
	pha
	txa
	pha
	tya
	pha
	; LineNumber: 177
	; 8 bit binop
	; Add/sub where right value is constant number
	; 8 bit binop
	; Add/sub where right value is constant number
	lda ticks
	clc
	adc #$1
	 ; end add / sub var with constant
	and #$3f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta ticks
	; LineNumber: 186
	
; // use interrupts for playing music / sound fx etc
; // Music_Play();
	; CloseIRQ
	pla
	tay
	pla
	tax
	pla
	 jmp $eabf     ; return to normal IRQ	
	; LineNumber: 187
	rti
end_procedure_vbl_Interrupt
	
; // Set up VBL interrupt to occur at start of vertical blanking phase
; // compatible for PAL and NTSC
	; NodeProcedureDecl 0
	; ***********  Defining procedure : Vbl_Init
	;    Procedure type : User-defined procedure
	; LineNumber: 193
Vbl_Init
	; LineNumber: 195
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 198
	; Binary clause Simplified: EQUALS
	lda $9000
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne Vbl_Init_elseblock6
Vbl_Init_ConditionalTrueBlock5: ;Main true block ;keep 
	; LineNumber: 199
	; LineNumber: 204
	
; // check if PAL or NTSC
; // Time the interrupt directly with the raster (PAL);
; // 312 scanlines * 71 cycles -2 = $5686
; //VIAIRQ(vbl(), $86, $56);
	lda #<vbl_Interrupt
	sta $66
	lda #>vbl_Interrupt
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne Vbl_Init_viarasterirq_ntsc_timing15
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp Vbl_Init_viarasterirq_end16
Vbl_Init_viarasterirq_ntsc_timing15
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
Vbl_Init_viarasterirq_end16
	; LineNumber: 207
	jmp Vbl_Init_elsedoneblock7
Vbl_Init_elseblock6
	; LineNumber: 208
	; LineNumber: 212
	
; // Time the interrupt directly with the raster (NTSC);
; //VIAIRQ(vbl(), $43, $42);
	lda #<vbl_Interrupt
	sta $66
	lda #>vbl_Interrupt
	sta $67
	ldx #$6b ; optimized, look out for bugs
	lda #$1
	bne Vbl_Init_viarasterirq_ntsc_timing18
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp Vbl_Init_viarasterirq_end19
Vbl_Init_viarasterirq_ntsc_timing18
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
Vbl_Init_viarasterirq_end19
	; LineNumber: 214
Vbl_Init_elsedoneblock7
	; LineNumber: 216
	rts
end_procedure_Vbl_Init
block1
main_block_begin_
	; LineNumber: 228
	
; // vertical blank interrupt
; // -------------------------------------------------------------------------------
; // **** MAIN PROGRAM ****
	jsr Vbl_Init
	; LineNumber: 230
	
; // call before set display mode
screenmemory =  $fe
colormemory =  $fb
	; Set special display mode for VBM bitmap graphics
	lda #20 ; screen width in chars
	sta vbmNumColumns
	lda #192 ; screen height in pixels
	sta vbmScrHeight
	lda #12 ; screen height in chars
	sta vbmJ
	jsr vbmSetDisplayMode
	; LineNumber: 231
	; Clear VBM bitmap
	lda #0
	sta vbmI ; byte to clear bitmap with
	jsr vbmClear
	; LineNumber: 231
	lda #$93
	sta screenmemory+1
	lda #$ff
	sta screenmemory
	lda #5
	ldy #241 ; colour mem to clear (stops at zero so +1)
MainProgram_vbmCC_loop20
	sta (screenmemory),y
	dey
	bne MainProgram_vbmCC_loop20
	; LineNumber: 234
	; Assigning memory location
	lda #$2
	; Calling storevariable on generic assign expression
	sta $900e
	; LineNumber: 235
	; Assigning memory location
	lda #$8
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 237
	; Draw 8x8 text to the bitmap
	; Text to use:
	lda #<strTitle
	sta $80
	lda #>strTitle
	sta $80+1
	; Font characters to use:
	lda #<font8
	sta $82
	lda #>font8
	sta $82+1
	lda #2
	sta vbmX ; x position
	lda #40
	sta vbmY ; y position in pixels
	lda #8
	sta vbmI ; line height in pixels
	jsr vbmDrawText
	; LineNumber: 238
	; Draw 4x8 text to the bitmap with OR operation
	; Text to use:
	lda #<strDesc
	sta $80
	lda #>strDesc
	sta $80+1
	; Font characters to use:
	lda #<font4
	sta $82
	lda #>font4
	sta $82+1
	lda #4
	sta vbmX ; x position
	lda #50
	sta vbmY ; y position in pixels
	lda #6
	sta vbmI ; line height in pixels
	jsr vbmDrawSmallTextO
	; LineNumber: 241
	
; // for testing speed
MainProgram_while21
MainProgram_loopstart25
	; Binary clause Simplified: NOTEQUALS
	clc
	lda #$1
	; cmp #$00 ignored
	beq MainProgram_localfailed36
	jmp MainProgram_ConditionalTrueBlock22
MainProgram_localfailed36
	jmp MainProgram_elsedoneblock24
MainProgram_ConditionalTrueBlock22: ;Main true block ;keep 
	; LineNumber: 242
	; LineNumber: 249
	
; // main game loop
; // for testing speed
; // wait for vertical blank
MainProgram_while38
MainProgram_loopstart42
	; Binary clause Simplified: EQUALS
	lda ticks
	; Compare with pure num / var optimization
	cmp oldticks;keep
	bne MainProgram_elsedoneblock41
MainProgram_ConditionalTrueBlock39: ;Main true block ;keep 
	; LineNumber: 248
	; LineNumber: 249
	jmp MainProgram_while38
MainProgram_elsedoneblock41
MainProgram_loopend43
	; LineNumber: 250
	lda ticks
	; Calling storevariable on generic assign expression
	sta oldticks
	; LineNumber: 256
	jmp MainProgram_while21
MainProgram_elsedoneblock24
MainProgram_loopend26
	; LineNumber: 258
main_block_end_
	; End of program
	; Ending memory block at $2000
EndBlock2000:
	org $3a00
StartBlock3a00:
	org $3a00
font8:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/font8x8.bin"
end_incbin_font8:
EndBlock3a00:
	org $3c00
StartBlock3c00:
	org $3c00
font4:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/font4x8.bin"
end_incbin_font4:
EndBlock3c00:

