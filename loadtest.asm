
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
LoadTest
	; LineNumber: 6
	jmp block1
	; LineNumber: 4
filename		dc.b	"FLASH"
	dc.b	0
block1
main_block_begin_
	; LineNumber: 7
trse_breakpoint_0
	; LineNumber: 8
	; ****** Inline assembler section
block       = $A000              ; Load address
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
            LDA  #$05            ; Length of file name
            LDX  #<filename      ; Low byte of file name location
            LDY  #>filename      ; High byte of file name location
            JSR  SETNAM          ; Set the name
            LDA  #$00            ; Load = 0, Verify = 1
            LDX  #<block         ; Low byte of start address
            LDY  #>block         ; High byte of start address
            JSR  LOAD            ; Perform load
            BCS  error           ; Jump to error handler if error
error       ; Handle error in A
	
	; LineNumber: 36
	jmp * ; loop like (�/%
	; LineNumber: 37
main_block_end_
	; End of program
	; Ending memory block at $1210
EndBlock1210:

