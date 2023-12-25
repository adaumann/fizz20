
 processor 6502
	org $400
StartBlock400:
	; Starting new memory block at $400
	; Resuming memory block at $400
	; Resuming memory block at $400
	; Resuming memory block at $400
scr1	dc.w	 
	org scr1+40
	; Resuming memory block at $400
scr2	dc.w	 
	org scr2+40
	; Resuming memory block at $400
col1	dc.w	 
	org col1+40
	; Resuming memory block at $400
col2	dc.w	 
	org col2+40
	; Resuming memory block at $400
fileName	= $6A
	; Resuming memory block at $400
currentBank	dc.b	$00
	; Resuming memory block at $400
time	dc.b	$00
	; Resuming memory block at $400
globaltime	dc.b	$00
	; Resuming memory block at $400
frameStatus	dc.b	0
	; Resuming memory block at $400
cycle	dc.b	0
	; Resuming memory block at $400
needExtraCycle	dc.b	0
	; Resuming memory block at $400
pos	dc.b	0
	; Resuming memory block at $400
statusCol	dc.b	0
	; Resuming memory block at $400
maxSingleLevels	dc.b	0
	; Resuming memory block at $400
maxMultiLevels	dc.b	0
	; Resuming memory block at $400
psnd	dc.w $0, $0, $0, $0
	; Resuming memory block at $400
vsnd	dc.b $0, $0, $0, $0
	; Resuming memory block at $400
vsndTime	dc.b $0, $0, $0, $0
	; Resuming memory block at $400
soundPointer	= $6C
	; Resuming memory block at $400
i	dc.b	0
	; Resuming memory block at $400
noSound	dc.b	$00
	; Resuming memory block at $400
sndJump	dc.b $81, $7, $20, $2, $43, $4, $0
	; Resuming memory block at $400
sndStep	dc.b $4f, $7, $0
	; Resuming memory block at $400
sndSceneStart	dc.b $41, $23, $42, $8, $41, $6, $20, $c
	dc.b $83, $19, $0
	; Resuming memory block at $400
sndTransport	dc.b $8f, $4, $42, $c, $41, $2, $0
	; Resuming memory block at $400
sndPortal	dc.b $41, $a, $10, $3, $41, $8, $10, $3
	dc.b $41, $6, $0
	; Resuming memory block at $400
sndPortalActivate	dc.b $42, $4, $10, $3, $8f, $4, $0
	; Resuming memory block at $400
sndShift	dc.b $20, $1, $10, $1, $20, $1, $0
	; Resuming memory block at $400
sndLaser	dc.b $20, $1, $10, $1, $41, $a, $0
	; Resuming memory block at $400
sndDamage	dc.b $10, $2, $20, $5, $44, $4, $0
	; Resuming memory block at $400
sndLadder	dc.b $44, $b, $85, $3, $20, $7, $0
	; Resuming memory block at $400
sndFall	dc.b $81, $3, $0
	; Resuming memory block at $400
sndExit	dc.b $10, $14, $42, $5, $10, $a, $20, $f
	dc.b $83, $1e, $0
	; Resuming memory block at $400
sndSwim	dc.b $8f, $5, $20, $f, $42, $3, $0
	; Resuming memory block at $400
sndGravActivate	dc.b $41, $c, $42, $4, $81, $7, $10, $2
	dc.b $8f, $5, $0
	; Resuming memory block at $400
sndPlayerChange	dc.b $81, $4, $20, $3, $42, $8, $0
	; Resuming memory block at $400
sndSwitchOn	dc.b $20, $2, $10, $2, $20, $2, $0
	; Resuming memory block at $400
sndSwitchOff	dc.b $20, $3, $10, $2, $41, $c, $0
	; Resuming memory block at $400
sndExitClose	dc.b $20, $f, $10, $7, $89, $2, $20, $c
	dc.b $10, $6, $89, $2, $20, $b, $0
	; Resuming memory block at $400
sndEnd	dc.b $41, $23, $42, $a, $41, $6, $20, $c
	dc.b $83, $19, $0
	; Resuming memory block at $400
collAreaUp	dc.b $8, $7, $6, $5, $4, $3, $2, $1
	dc.b $0
	; Resuming memory block at $400
collAreaLeft	dc.b $2, $5, $8, $1, $4, $7, $0, $3
	dc.b $6
	; Resuming memory block at $400
collAreaRight	dc.b $6, $3, $0, $7, $4, $1, $8, $5
	dc.b $2
	; Resuming memory block at $400
shiftAreaDownX	dc.b $ff, $0, $1, $ff, $0, $1, $ff, $0
	dc.b $1
	; Resuming memory block at $400
shiftAreaUpX	dc.b $1, $0, $ff, $1, $0, $ff, $1, $0
	dc.b $ff
	; Resuming memory block at $400
shiftAreaLeftX	dc.b $1, $1, $1, $0, $0, $0, $ff, $ff
	dc.b $ff
	; Resuming memory block at $400
shiftAreaRightX	dc.b $ff, $ff, $ff, $0, $0, $0, $1, $1
	dc.b $1
	; Resuming memory block at $400
shiftAreaDownY	dc.b $ff, $ff, $ff, $0, $0, $0, $1, $1
	dc.b $1
	; Resuming memory block at $400
shiftAreaUpY	dc.b $1, $1, $1, $0, $0, $0, $ff, $ff
	dc.b $ff
	; Resuming memory block at $400
shiftAreaLeftY	dc.b $ff, $0, $1, $ff, $0, $1, $ff, $0
	dc.b $1
	; Resuming memory block at $400
shiftAreaRightY	dc.b $1, $0, $ff, $1, $0, $ff, $1, $0
	dc.b $ff
	; Resuming memory block at $400
ystart	dc.b $0, $14, $28, $3c, $50, $64, $78, $8c
	dc.b $a0, $b4, $c8, $dc
	; Resuming memory block at $400
tempPointer	= $6E
	; Resuming memory block at $400
txtActiveSwitch		dc.b	"SWITCH ACTIVATED"
	dc.b	0
	; Resuming memory block at $400
txtDeactiveSwitch		dc.b	"SWITCH DEACTIVATED"
	dc.b	0
	; Resuming memory block at $400
txtExitClosed		dc.b	"EXIT CLOSED"
	dc.b	0
	; Resuming memory block at $400
txtCharSwapRed		dc.b	"ACTIVE: RED"
	dc.b	0
	; Resuming memory block at $400
txtCharSwapGreen		dc.b	"ACTIVE: GREEN"
	dc.b	0
	; Resuming memory block at $400
txtPlayerExit		dc.b	"PLAYER EXITED"
	dc.b	0
	; Resuming memory block at $400
txtSelectGameMode		dc.b	"SELECT GAME MODE"
	dc.b	0
	; Resuming memory block at $400
txtSinglePlayer		dc.b	"ONE PLAYER"
	dc.b	0
	; Resuming memory block at $400
txtSinglePlayer2Chars		dc.b	"ONE PLAYER TWO CHARS"
	dc.b	0
	; Resuming memory block at $400
txtCoop		dc.b	"TWO PLAYER CO-OP"
	dc.b	0
	; Resuming memory block at $400
txtSingleStart		dc.b	"1P START LEVEL:"
	dc.b	0
	; Resuming memory block at $400
txtCoopStart		dc.b	"2P START LEVEL:"
	dc.b	0
	; Resuming memory block at $400
txtLevel		dc.b	"LEVEL"
	dc.b	0
	; Resuming memory block at $400
txtStartLevel		dc.b	"START LEVEL"
	dc.b	0
	; Resuming memory block at $400
txtMainMenu		dc.b	"MAIN MENU"
	dc.b	0
	; Resuming memory block at $400
txtPressDel		dc.b	"'F7' TO RETRY"
	dc.b	0
	; Resuming memory block at $400
txtPressSpace		dc.b	"'SPACE' TO SWAP"
	dc.b	0
	; Resuming memory block at $400
txtBothMustComplete		dc.b	"BOTH MUST EXIT"
	dc.b	0
	; Resuming memory block at $400
txtOneMustComplete		dc.b	"ONLY ONE MUST EXIT"
	dc.b	0
	; Resuming memory block at $400
countObjects	dc.b	0
	; Resuming memory block at $400
deletedObjects	dc.b	 
	org deletedObjects+200
	; Resuming memory block at $400
dynObjectList	dc.b	 
	org dynObjectList+200
	; Resuming memory block at $400
animObjectList	dc.b	 
	org animObjectList+200
	; Resuming memory block at $400
countDyn	dc.b	0
	; Resuming memory block at $400
countAnim	dc.b	0
	; Resuming memory block at $400
countLasers	dc.b	0
	; Resuming memory block at $400
mapback2	dc.b	 
	org mapback2+240
	; Resuming memory block at $400
mapback1	dc.b	 
	org mapback1+240
	; Resuming memory block at $400
mapmain	dc.b	 
	org mapmain+240
	; Resuming memory block at $400
mapfront	dc.b	 
	org mapfront+240
	; Resuming memory block at $400
portals	dc.b	 
	org portals+2
	; Resuming memory block at $400
lastPortal	dc.b	0
	; Resuming memory block at $400
state	dc.b	0
	; Resuming memory block at $400
sp	= $70
	; Resuming memory block at $400
textTimer	dc.b	0
	; Resuming memory block at $400
levelSingle	dc.b	0
	; Resuming memory block at $400
levelCoop	dc.b	0
	; Resuming memory block at $400
nextLevel	dc.b	0
	; Resuming memory block at $400
gameMode	dc.b	0
	; Resuming memory block at $400
activeChar	dc.b	0
	; Resuming memory block at $400
retryPressed	dc.b	0
	; Resuming memory block at $400
menuItem	dc.b	$00
	; Resuming memory block at $400
animList
	org animList+112
	; Resuming memory block at $400
controlList_controlObject_controlObject_controlJumpStep	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_controlState	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_controlFollowKeyRight	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_controlFollowKeyLeft	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_controlPressLeft	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_controlPressRight	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_controlPressUp	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_controlPressDown	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_controlPressAction	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_firePressed	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_controlLastPortal	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_waitRelease	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_release	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_waypointId	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_lastWaypointId	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_controlCollideLaserTag	dc.b	0
	    dc.b 0
controlList_controlObject_controlObject_b_fallDown	dc.b	0
	    dc.b 0
	; Resuming memory block at $400
actorList_actorObject_actorObject_event	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_senderId	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_action	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_receiverId	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_param0	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_param1	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_param2	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
actorList_actorObject_actorObject_param3	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; Resuming memory block at $400
laserList_laserObject_laserObject_laserDir	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0
laserList_laserObject_laserObject_lastLaserDir	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0
laserList_laserObject_laserObject_laserLastTransportAble	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0
laserList_laserObject_laserObject_laserType	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0
laserList_laserObject_laserObject_currentLaser	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0
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
game
	; LineNumber: 4140
	jmp block1
	; LineNumber: 23
str_p1	= $64
	; LineNumber: 23
str_p2	= $66
	; LineNumber: 23
str_p3	= $68
	; LineNumber: 24
str_i	dc.b	0
	; LineNumber: 24
str_j	dc.b	0
	; LineNumber: 25
str_li	dc.b	0
	; LineNumber: 26
str_b	dc.b	0
	; LineNumber: 26
str_c	dc.b	0
	; LineNumber: 27
str_num	dc.w	0
	; LineNumber: 28
str_chars		dc.b	"0123456789ABCDEF"
	dc.b	0
	; LineNumber: 30
	; Ending memory block at $1210
	; LineNumber: 31
	; Ending memory block at $1210
	; LineNumber: 32
	; Ending memory block at $1210
	; LineNumber: 34
	; Ending memory block at $1210
	; LineNumber: 35
	; Ending memory block at $1210
	; LineNumber: 36
	; Ending memory block at $1210
	; LineNumber: 37
	; Ending memory block at $1210
	; LineNumber: 40
	; Ending memory block at $1210
	; LineNumber: 43
	; Ending memory block at $1210
	; LineNumber: 44
	; Ending memory block at $1210
	; LineNumber: 45
	; Ending memory block at $1210
	; LineNumber: 46
	; Ending memory block at $1210
	; LineNumber: 49
	; Ending memory block at $1210
	; LineNumber: 50
	; Ending memory block at $1210
	; LineNumber: 51
	; Ending memory block at $1210
	; LineNumber: 52
	; Ending memory block at $1210
	; LineNumber: 53
	; Ending memory block at $1210
	; LineNumber: 54
	; Ending memory block at $1210
	; LineNumber: 148
	; Ending memory block at $1210
	; LineNumber: 149
	; Ending memory block at $1210
	; LineNumber: 150
	; Ending memory block at $1210
	; LineNumber: 151
	; Ending memory block at $1210
	; LineNumber: 153
	; Ending memory block at $1210
	; LineNumber: 173
	; Ending memory block at $1210
	; LineNumber: 175
	; Ending memory block at $1210
	; LineNumber: 179
	; Ending memory block at $1210
	; LineNumber: 183
	; Ending memory block at $1210
	; LineNumber: 187
	; Ending memory block at $1210
	; LineNumber: 191
	; Ending memory block at $1210
	; LineNumber: 195
	; Ending memory block at $1210
	; LineNumber: 199
	; Ending memory block at $1210
	; LineNumber: 203
	; Ending memory block at $1210
	; LineNumber: 207
	; Ending memory block at $1210
	; LineNumber: 211
	; Ending memory block at $1210
	; LineNumber: 213
	; Ending memory block at $1210
	; LineNumber: 215
	; Ending memory block at $1210
	; LineNumber: 217
	; Ending memory block at $1210
	; LineNumber: 219
	; Ending memory block at $1210
	; LineNumber: 221
	; Ending memory block at $1210
	; LineNumber: 223
	; Ending memory block at $1210
	; LineNumber: 225
	; Ending memory block at $1210
	; LineNumber: 227
	; Ending memory block at $1210
	; LineNumber: 231
	; Ending memory block at $1210
	; LineNumber: 233
	; Ending memory block at $1210
	; LineNumber: 234
	; Ending memory block at $1210
	; LineNumber: 235
	; Ending memory block at $1210
	; LineNumber: 237
	; Ending memory block at $1210
	; LineNumber: 238
	; Ending memory block at $1210
	; LineNumber: 239
	; Ending memory block at $1210
	; LineNumber: 240
	; Ending memory block at $1210
	; LineNumber: 242
	; Ending memory block at $1210
	; LineNumber: 243
	; Ending memory block at $1210
	; LineNumber: 244
	; Ending memory block at $1210
	; LineNumber: 245
	; Ending memory block at $1210
	; LineNumber: 247
	; Ending memory block at $1210
	; LineNumber: 249
	; Ending memory block at $1210
	; LineNumber: 372
	; Ending memory block at $1210
	; LineNumber: 374
	; Ending memory block at $1210
	; LineNumber: 376
	; Ending memory block at $1210
	; LineNumber: 378
	; Ending memory block at $1210
	; LineNumber: 380
	; Ending memory block at $1210
	; LineNumber: 382
	; Ending memory block at $1210
	; LineNumber: 383
	; Ending memory block at $1210
	; LineNumber: 384
	; Ending memory block at $1210
	; LineNumber: 385
	; Ending memory block at $1210
	; LineNumber: 386
	; Ending memory block at $1210
	; LineNumber: 387
	; Ending memory block at $1210
	; LineNumber: 388
	; Ending memory block at $1210
	; LineNumber: 390
	; Ending memory block at $1210
	; LineNumber: 391
	; Ending memory block at $1210
	; LineNumber: 392
	; Ending memory block at $1210
	; LineNumber: 393
	; Ending memory block at $1210
	; LineNumber: 394
	; Ending memory block at $1210
	; LineNumber: 395
	; Ending memory block at $1210
	; LineNumber: 396
	; Ending memory block at $1210
	; LineNumber: 398
	; Ending memory block at $1210
	; LineNumber: 399
	; Ending memory block at $1210
	; LineNumber: 400
	; Ending memory block at $1210
	; LineNumber: 401
	; Ending memory block at $1210
	; LineNumber: 402
	; Ending memory block at $1210
	; LineNumber: 403
	; Ending memory block at $1210
	; LineNumber: 404
	; Ending memory block at $1210
	; LineNumber: 405
	; Ending memory block at $1210
	; LineNumber: 406
	; Ending memory block at $1210
	; LineNumber: 407
	; Ending memory block at $1210
	; LineNumber: 408
	; Ending memory block at $1210
	; LineNumber: 409
	; Ending memory block at $1210
	; LineNumber: 410
	; Ending memory block at $1210
	; LineNumber: 411
	; Ending memory block at $1210
	; LineNumber: 412
	; Ending memory block at $1210
	; LineNumber: 414
	; Ending memory block at $1210
	; LineNumber: 415
	; Ending memory block at $1210
	; LineNumber: 416
	; Ending memory block at $1210
	; LineNumber: 417
	; Ending memory block at $1210
	; LineNumber: 418
	; Ending memory block at $1210
	; LineNumber: 419
	; Ending memory block at $1210
	; LineNumber: 420
	; Ending memory block at $1210
	; LineNumber: 421
	; Ending memory block at $1210
	; LineNumber: 440
	; Ending memory block at $1210
	; LineNumber: 471
	; Ending memory block at $1210
	; LineNumber: 472
	; Ending memory block at $1210
	; LineNumber: 473
	; Ending memory block at $1210
	; LineNumber: 479
	; Ending memory block at $1210
	; LineNumber: 482
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 516
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 515
	; Ending memory block at $1210
	; LineNumber: 560
	; Ending memory block at $1210
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
initdiv16x8_divisor = $80     ;$59 used for hi-byte
initdiv16x8_dividend = $82	  ;$fc used for hi-byte
initdiv16x8_remainder = $84	  ;$fe used for hi-byte
initdiv16x8_result = $82 ;save memory by reusing divident to store the result
divide16x8
	lda #0	        ;preset remainder to 0
	sta initdiv16x8_remainder
	sta initdiv16x8_remainder+1
	ldx #16	        ;repeat for each bit: ...
divloop16:	asl initdiv16x8_dividend	;dividend lb & hb*2, msb -> Carry
	rol initdiv16x8_dividend+1
	rol initdiv16x8_remainder	;remainder lb & hb * 2 + msb from carry
	rol initdiv16x8_remainder+1
	lda initdiv16x8_remainder
	sec
	sbc initdiv16x8_divisor	;substract divisor to see if it fits in
	tay	        ;lb result -> Y, for we may need it later
	lda initdiv16x8_remainder+1
	sbc initdiv16x8_divisor+1
	bcc skip16	;if carry=0 then divisor didn't fit in yet
	sta initdiv16x8_remainder+1	;else save substraction result as new remainder,
	sty initdiv16x8_remainder
	inc initdiv16x8_result	;and INCrement result cause divisor fit in 1 times
skip16
	dex
	bne divloop16
	rts
end_procedure_init16x8div
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8mul
	;    Procedure type : Built-in function
	;    Requires initialization : no
mul16x8_num1Hi = $80
mul16x8_num1 = $82
mul16x8_num2 = $84
mul16x8_procedure
	lda #$00
	ldy #$00
	beq mul16x8_enterLoop
mul16x8_doAdd
	clc
	adc mul16x8_num1
	tax
	tya
	adc mul16x8_num1Hi
	tay
	txa
mul16x8_loop
	asl mul16x8_num1
	rol mul16x8_num1Hi
mul16x8_enterLoop
	lsr mul16x8_num2
	bcs mul16x8_doAdd
	bne mul16x8_loop
	rts
end_procedure_init16x8mul
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init8x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
div8x8_c = $80
div8x8_d = $82
div8x8_e = $84
	; Normal 8x8 bin div
div8x8_procedure
	lda #$00
	ldx #$07
	clc
div8x8_loop1
	rol div8x8_d
	rol
	cmp div8x8_c
	bcc div8x8_loop2
	sbc div8x8_c
div8x8_loop2
	dex
	bpl div8x8_loop1
	rol div8x8_d
	lda div8x8_d
div8x8_def_end
	rts
end_procedure_init8x8div
	; NodeProcedureDecl -1
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
joy1last = $5f
joy1pressed = $60
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
	;*
; //
; //	Returns the length of a string. Note that
; //	this will only work for strings <256 bytes. 
; //
; 

	; NodeProcedureDecl -1
	; ***********  Defining procedure : str_strlen
	;    Procedure type : User-defined procedure
	; LineNumber: 41
str_strlen_block5
str_strlen
	; LineNumber: 42
	lda #$0
	; Calling storevariable on generic assign expression
	sta str_li
	; LineNumber: 43
str_strlen_while6
str_strlen_loopstart10
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load pointer array
	ldy str_li
	lda (str_p3),y
	; cmp #$00 ignored
	beq str_strlen_elsedoneblock9
str_strlen_ConditionalTrueBlock7: ;Main true block ;keep 
	; LineNumber: 43
	; Test Inc dec D
	inc str_li
	jmp str_strlen_while6
str_strlen_elsedoneblock9
str_strlen_loopend11
	; LineNumber: 46
	; LineNumber: 47
	lda str_li
	rts
end_procedure_str_strlen
	;*
; // Reverses a string
; // 
; // *
	; NodeProcedureDecl -1
	; ***********  Defining procedure : str_reverse
	;    Procedure type : User-defined procedure
	; LineNumber: 55
str_reverse_block14
str_reverse
	; LineNumber: 56
	lda str_p2
	ldx str_p2+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta str_c
	; LineNumber: 57
	; 8 bit binop
	; Add/sub where right value is constant number
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta str_j
	; LineNumber: 58
	lda #$0
	; Calling storevariable on generic assign expression
	sta str_i
	; LineNumber: 59
str_reverse_while15
str_reverse_loopstart19
	; Binary clause Simplified: LESS
	lda str_i
	; Compare with pure num / var optimization
	cmp str_j;keep
	bcs str_reverse_elsedoneblock18
str_reverse_ConditionalTrueBlock16: ;Main true block ;keep 
	; LineNumber: 60
	; LineNumber: 61
	; Load pointer array
	ldy str_i
	lda (str_p2),y
	; Calling storevariable on generic assign expression
	sta str_b
	; LineNumber: 62
	; Load pointer array
	ldy str_j
	lda (str_p2),y
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_i ; optimized, look out for bugs
	sta (str_p2),y
	; LineNumber: 63
	lda str_b
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_j ; optimized, look out for bugs
	sta (str_p2),y
	; LineNumber: 64
	; Test Inc dec D
	dec str_j
	; LineNumber: 65
	; Test Inc dec D
	inc str_i
	; LineNumber: 66
	jmp str_reverse_while15
str_reverse_elsedoneblock18
str_reverse_loopend20
	; LineNumber: 67
	rts
end_procedure_str_reverse
	;*
; //	Converts a number to a string in base b
; //	example:
; //	<code>
; //itoa(1234, p1, 16); 
; // coverts "1234" to a hexadecimal string stored in p1
; //	</code>
; //
; 

	; NodeProcedureDecl -1
	; ***********  Defining procedure : str_itoa
	;    Procedure type : User-defined procedure
	; LineNumber: 80
str_itoa_block23
str_itoa
	; LineNumber: 81
	lda #$0
	; Calling storevariable on generic assign expression
	sta str_i
	; LineNumber: 83
	; Binary clause INTEGER: EQUALS
	lda str_num+1   ; compare high bytes
	cmp #$00 ;keep
	bne str_itoa_elsedoneblock27
	lda str_num
	cmp #$00 ;keep
	bne str_itoa_elsedoneblock27
	jmp str_itoa_ConditionalTrueBlock25
str_itoa_ConditionalTrueBlock25: ;Main true block ;keep 
	; LineNumber: 84
	; LineNumber: 85
	lda #$30
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (str_p1),y
	; LineNumber: 86
	
; // Simply 0
	lda #$0
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$1
	sta (str_p1),y
	; LineNumber: 87
	rts
	; LineNumber: 88
str_itoa_elsedoneblock27
	; LineNumber: 90
str_itoa_while30
str_itoa_loopstart34
	; Binary clause INTEGER: NOTEQUALS
	lda str_num+1   ; compare high bytes
	cmp #$00 ;keep
	beq str_itoa_pass139
	jmp str_itoa_ConditionalTrueBlock31
str_itoa_pass139
	lda str_num
	cmp #$00 ;keep
	beq str_itoa_elsedoneblock33
	jmp str_itoa_ConditionalTrueBlock31
str_itoa_ConditionalTrueBlock31: ;Main true block ;keep 
	; LineNumber: 91
	; LineNumber: 92
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	; Modulo
	lda str_b
str_itoa_val_var41 = $88
	sta str_itoa_val_var41
	ldy str_num+1 ;keep
	lda str_num
	sec
str_itoa_modulo42
	sbc str_itoa_val_var41
	bcs str_itoa_modulo42
	adc str_itoa_val_var41
	tax
	lda str_chars,x 
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_i ; optimized, look out for bugs
	sta (str_p1),y
	; LineNumber: 93
	; Test Inc dec D
	inc str_i
	; LineNumber: 94
	; 16x8 div
	ldy str_num+1 ;keep
	lda str_num
	sta initdiv16x8_dividend
	sty initdiv16x8_dividend+1
	ldy #0
	lda str_b
	sta initdiv16x8_divisor
	sty initdiv16x8_divisor+1
	jsr divide16x8
	lda initdiv16x8_dividend
	ldy initdiv16x8_dividend+1
	; Calling storevariable on generic assign expression
	sta str_num
	sty str_num+1
	; LineNumber: 95
	jmp str_itoa_while30
str_itoa_elsedoneblock33
str_itoa_loopend35
	; LineNumber: 96
	lda #$0
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_i ; optimized, look out for bugs
	sta (str_p1),y
	; LineNumber: 97
	
; // null-term string    
	lda str_p1
	ldx str_p1+1
	sta str_p2
	stx str_p2+1
	jsr str_reverse
	; LineNumber: 99
	rts
end_procedure_str_itoa
	; NodeProcedureDecl 3
	; Ending memory block at $1210
	; ***********  Defining procedure : vbl
	;    Procedure type : User-defined procedure
	; LineNumber: 4088
vbl
	; LineNumber: 4089
	; StartIRQ
	pha
	txa
	pha
	tya
	pha
	; LineNumber: 4090
	jsr UpdateSound
	; LineNumber: 4091
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175630
	jmp vbl_ConditionalTrueBlock175517
vbl_localfailed175630
	jmp vbl_elsedoneblock175519
vbl_ConditionalTrueBlock175517: ;Main true block ;keep 
	; LineNumber: 4091
	; LineNumber: 4092
	; Binary clause Simplified: EQUALS
	clc
	lda time
	; cmp #$00 ignored
	bne vbl_localfailed175688
	jmp vbl_ConditionalTrueBlock175633
vbl_localfailed175688
	jmp vbl_elseblock175634
vbl_ConditionalTrueBlock175633: ;Main true block ;keep 
	; LineNumber: 4092
	; LineNumber: 4093
	jsr SwitchBank
	; LineNumber: 4097
	jmp vbl_elsedoneblock175635
vbl_elseblock175634
	; LineNumber: 4096
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175717
vbl_localsuccess175718: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne vbl_localfailed175717
	jmp vbl_ConditionalTrueBlock175692
vbl_localfailed175717
	jmp vbl_elseblock175693
vbl_ConditionalTrueBlock175692: ;Main true block ;keep 
	; LineNumber: 4096
	; LineNumber: 4098
	
; // if(state = 8) then state := 2;
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175720
	lda $1000 + 0 -1 ,x
	sta $1e00 + 0 -1 ,x
	lda $1000 + 40 -1 ,x
	sta $1e00 + 40 -1 ,x
	lda $1000 + 80 -1 ,x
	sta $1e00 + 80 -1 ,x
	lda $1000 + 120 -1 ,x
	sta $1e00 + 120 -1 ,x
	lda $1000 + 160 -1 ,x
	sta $1e00 + 160 -1 ,x
	lda $1000 + 200 -1 ,x
	sta $1e00 + 200 -1 ,x
	lda $1000 + 240 -1 ,x
	sta $1e00 + 240 -1 ,x
	lda $1000 + 280 -1 ,x
	sta $1e00 + 280 -1 ,x
	lda $1000 + 320 -1 ,x
	sta $1e00 + 320 -1 ,x
	lda $1000 + 360 -1 ,x
	sta $1e00 + 360 -1 ,x
	inx
	cpx #40
	bne vbl_halfcopyloop175720
	; LineNumber: 4099
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175722
	lda $9400 + 0 -1 ,x
	sta $9600 + 0 -1 ,x
	lda $9400 + 40 -1 ,x
	sta $9600 + 40 -1 ,x
	lda $9400 + 80 -1 ,x
	sta $9600 + 80 -1 ,x
	lda $9400 + 120 -1 ,x
	sta $9600 + 120 -1 ,x
	lda $9400 + 160 -1 ,x
	sta $9600 + 160 -1 ,x
	lda $9400 + 200 -1 ,x
	sta $9600 + 200 -1 ,x
	lda $9400 + 240 -1 ,x
	sta $9600 + 240 -1 ,x
	lda $9400 + 280 -1 ,x
	sta $9600 + 280 -1 ,x
	lda $9400 + 320 -1 ,x
	sta $9600 + 320 -1 ,x
	lda $9400 + 360 -1 ,x
	sta $9600 + 360 -1 ,x
	inx
	cpx #40
	bne vbl_halfcopyloop175722
	; LineNumber: 4101
	jmp vbl_elsedoneblock175694
vbl_elseblock175693
	; LineNumber: 4100
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175734
vbl_localsuccess175735: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175734
	jmp vbl_ConditionalTrueBlock175726
vbl_localfailed175734
	jmp vbl_elsedoneblock175728
vbl_ConditionalTrueBlock175726: ;Main true block ;keep 
	; LineNumber: 4101
	; LineNumber: 4102
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175737
	lda $1e00 + 0 -1 ,x
	sta $1000 + 0 -1 ,x
	lda $1e00 + 40 -1 ,x
	sta $1000 + 40 -1 ,x
	lda $1e00 + 80 -1 ,x
	sta $1000 + 80 -1 ,x
	lda $1e00 + 120 -1 ,x
	sta $1000 + 120 -1 ,x
	lda $1e00 + 160 -1 ,x
	sta $1000 + 160 -1 ,x
	lda $1e00 + 200 -1 ,x
	sta $1000 + 200 -1 ,x
	lda $1e00 + 240 -1 ,x
	sta $1000 + 240 -1 ,x
	lda $1e00 + 280 -1 ,x
	sta $1000 + 280 -1 ,x
	lda $1e00 + 320 -1 ,x
	sta $1000 + 320 -1 ,x
	lda $1e00 + 360 -1 ,x
	sta $1000 + 360 -1 ,x
	inx
	cpx #40
	bne vbl_halfcopyloop175737
	; LineNumber: 4103
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175739
	lda $9600 + 0 -1 ,x
	sta $9400 + 0 -1 ,x
	lda $9600 + 40 -1 ,x
	sta $9400 + 40 -1 ,x
	lda $9600 + 80 -1 ,x
	sta $9400 + 80 -1 ,x
	lda $9600 + 120 -1 ,x
	sta $9400 + 120 -1 ,x
	lda $9600 + 160 -1 ,x
	sta $9400 + 160 -1 ,x
	lda $9600 + 200 -1 ,x
	sta $9400 + 200 -1 ,x
	lda $9600 + 240 -1 ,x
	sta $9400 + 240 -1 ,x
	lda $9600 + 280 -1 ,x
	sta $9400 + 280 -1 ,x
	lda $9600 + 320 -1 ,x
	sta $9400 + 320 -1 ,x
	lda $9600 + 360 -1 ,x
	sta $9400 + 360 -1 ,x
	inx
	cpx #40
	bne vbl_halfcopyloop175739
	; LineNumber: 4104
vbl_elsedoneblock175728
vbl_elsedoneblock175694
vbl_elsedoneblock175635
	; LineNumber: 4105
vbl_elsedoneblock175519
	; LineNumber: 4106
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne vbl_elsedoneblock175744
vbl_ConditionalTrueBlock175742: ;Main true block ;keep 
	; LineNumber: 4106
	; LineNumber: 4107
	lda #$0
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4108
vbl_elsedoneblock175744
	; LineNumber: 4109
	; Binary clause Simplified: LESS
	lda time
	; Compare with pure num / var optimization
	cmp #$4;keep
	bcs vbl_elseblock175749
vbl_ConditionalTrueBlock175748: ;Main true block ;keep 
	; LineNumber: 4108
	; Test Inc dec D
	inc time
	jmp vbl_elsedoneblock175750
vbl_elseblock175749
	; LineNumber: 4109
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_elsedoneblock175764
vbl_ConditionalTrueBlock175762: ;Main true block ;keep 
	; LineNumber: 4109
	; LineNumber: 4111
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4112
vbl_elsedoneblock175764
vbl_elsedoneblock175750
	; LineNumber: 4113
	; CloseIRQ
	pla
	tay
	pla
	tax
	pla
	 jmp $eabf     ; return to normal IRQ	
	; LineNumber: 4114
	rti
end_procedure_vbl
	; NodeProcedureDecl -1
	; ***********  Defining procedure : InitScene
	;    Procedure type : User-defined procedure
	; LineNumber: 4118
InitScene
	; LineNumber: 4120
	jsr InitMap
	; LineNumber: 4121
	jsr InitActors
	; LineNumber: 4121
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4123
	jsr ClearFullScreen
	; LineNumber: 4124
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4125
	jsr ClearText
	; LineNumber: 4126
	jsr SwitchBank
	; LineNumber: 4127
	jsr ClearFullScreen
	; LineNumber: 4128
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4129
	jsr ClearText
	; LineNumber: 4131
	jsr InitAnimations
	; LineNumber: 4132
	lda #$3
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4134
	lda #<sndSceneStart
	ldy #>sndSceneStart
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 4134
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 4134
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 4136
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne InitScene_viarasterirq_ntsc_timing175768
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp InitScene_viarasterirq_end175769
InitScene_viarasterirq_ntsc_timing175768
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
InitScene_viarasterirq_end175769
	; LineNumber: 4137
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 4138
	rts
end_procedure_InitScene
block1
main_block_begin_
	; LineNumber: 4141
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175771
	ldy #>MainProgram_stringassignstr175771
	sta fileName
	sty fileName+1
	; LineNumber: 4142
	; Integer constant assigning
	; Load16bitvariable : #$400
	ldy #$04
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4143
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175773
	ldy #>MainProgram_stringassignstr175773
	sta fileName
	sty fileName+1
	; LineNumber: 4144
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4145
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4146
	jsr InitScreen
	; LineNumber: 4147
	jsr SetupSound
	; LineNumber: 4149
	jsr ClearFullScreen
	; LineNumber: 4151
	
; // clear screen
	lda #$28
	; Calling storevariable on generic assign expression
	sta maxSingleLevels
	; LineNumber: 4152
	lda #$1e
	; Calling storevariable on generic assign expression
	sta maxMultiLevels
	; LineNumber: 4153
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
	; LineNumber: 4154
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4156
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne MainProgram_viarasterirq_ntsc_timing175774
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp MainProgram_viarasterirq_end175775
MainProgram_viarasterirq_ntsc_timing175774
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
MainProgram_viarasterirq_end175775
	; LineNumber: 4224
	
; //	@define SOUND_TRANSPORT 18 
; //x	 
; // ->19
; //	@define SOUND_DAMAGE 7 
; //x
; //	@define SOUND_LASER 11 
; //x
; //	@define SOUND_JUMP 3 
; //xe
; //	@define SOUND_STEP 8 
; //x
; //	@define SOUND_SWIM 9 
; // x ->1
; //	@define SOUND_GRAV_ACTIVATE 10 
; // x->15
; //	@define SOUND_SWITCH_ON 4 
; //x ->16
; //	@define SOUND_SWITCH_OFF 5 
; //x
; //	@define SOUND_FALL_CRASH 17 
; // x
; //	@define SOUND_FALL 2 
; //x
; //	@define SOUND_SHIFT 13 
; //x 
; //	@define SOUND_LADDER 0 
; //x
; //	@define SOUND_SCENE_START 6 
; //x
; //	@define SOUND_END 16
; //	@define SOUND_PLAYER_CHANGE 12 
; //x
; //	@define SOUND_PORTAL_ACTIVATE 20 
; //x 
; //	@define SOUND_PORTAL 21 
; // x
; //	@define SOUND_EXIT 22 
; //x
; //	@define SOUND_EXIT_CLOSE 23 
; //x 
; //
; //	
; //	while(true) do begin
; //		waitforraster(0);
; //		frameStatus := 1;
; //		inc(globaltime);
; //		i := getkey();
; //		if (i = KEY_F1) then begin 
; //			@PLAY_SOUND("0","sndLadder","240")
; //		end; 
; //		if (i = KEY_F3) then begin
; //			@PLAY_SOUND("0","sndFall","240")
; //		end; 
; //		if (i = KEY_F5) then begin
; //			@PLAY_SOUND("0","sndFall","240")
; //		end; 
; //		if (i = KEY_F7) then begin
; //			@PLAY_SOUND("0","sndExit","240")
; // 		end; 
; //		if (i = KEY_A) then begin
; //			@PLAY_SOUND("0","sndSwim","240")
; //		end; 
; //		if (i = KEY_B) then begin
; //			@PLAY_SOUND("0","sndGravActivate","240")
; //		end; 
; //		if (i = KEY_C) then begin
; //			@PLAY_SOUND("0","sndPlayerChange","240")
; // 		end; 
; //		if (i = KEY_D) then begin
; //			@PLAY_SOUND("0","sndSwitchOn","240")
; //		end; 
; //		if (i = KEY_E) then begin
; //			@PLAY_SOUND("0","sndSwitchOff","240")
; //		end;
; //		if(i = KEY_F) then begin
; //			@PLAY_SOUND("0","sndExitClose","240")
; //		end;
; //		if(i = KEY_G) then begin
; //			@PLAY_SOUND("0","sndEnd","240")
; //		end;
; //
; //
; //		
; //
; //	end;
; //	
	jsr GameLoop
	; LineNumber: 4225
	jmp * ; loop like (�/%
	; LineNumber: 4226
main_block_end_
	; End of program
	; Ending memory block at $1210
UpdateMain_stringassignstr174538		dc.b	"00"
	dc.b	0
UpdateMain_stringassignstr174540		dc.b	"00"
	dc.b	0
MainProgram_stringassignstr175771		dc.b	"VAR"
	dc.b	0
MainProgram_stringassignstr175773		dc.b	"COD"
	dc.b	0
EndBlock1210:
	org $1700
StartBlock1700:
	org $1700
tilesetColors:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/tileset_color_split2.bin"
end_incbin_tilesetColors:
EndBlock1700:
	org $1800
StartBlock1800:
	org $1800
tileset:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/tileset_split1.bin"
end_incbin_tileset:
EndBlock1800:
	org $1c00
StartBlock1c00:
	org $1c00
tilesetHero:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/hero_split3.bin"
end_incbin_tilesetHero:
EndBlock1c00:
	org $2000
StartBlock2000:
	; Starting new memory block at $2000
	; ***********  Defining procedure : PrintStringColor
	;    Procedure type : User-defined procedure
	; LineNumber: 572
	; LineNumber: 571
localVariable_PrintStringColor_len	dc.b	0
	; LineNumber: 569
localVariable_PrintStringColor_p1	= $72
	; LineNumber: 569
localVariable_PrintStringColor_x	dc.b	0
	; LineNumber: 569
localVariable_PrintStringColor_y	dc.b	0
	; LineNumber: 569
localVariable_PrintStringColor_varPrefixed_c	dc.b	0
PrintStringColor_block43
PrintStringColor
	; LineNumber: 577
	lda localVariable_PrintStringColor_p1
	ldx localVariable_PrintStringColor_p1+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_len
	; LineNumber: 578
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintStringColor_elseblock46
PrintStringColor_ConditionalTrueBlock45: ;Main true block ;keep 
	; LineNumber: 577
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintStringColor_elsedoneblock47
PrintStringColor_elseblock46
	; LineNumber: 577
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintStringColor_elsedoneblock47
	; LineNumber: 579
	lda screenmemory
	clc
	adc localVariable_PrintStringColor_x
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc PrintStringColor_WordAdd52
	inc screenmemory+1
PrintStringColor_WordAdd52
	; LineNumber: 580
	ldy localVariable_PrintStringColor_p1+1 ;keep
	lda localVariable_PrintStringColor_p1
	sta print_text+0
	sty print_text+1
	ldx localVariable_PrintStringColor_len ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 582
	rts
end_procedure_PrintStringColor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintCenterStringColor
	;    Procedure type : User-defined procedure
	; LineNumber: 587
	; LineNumber: 586
localVariable_PrintCenterStringColor_len	dc.b	0
	; LineNumber: 586
localVariable_PrintCenterStringColor_x	dc.b	0
	; LineNumber: 584
localVariable_PrintCenterStringColor_p1	= $72
	; LineNumber: 584
localVariable_PrintCenterStringColor_y	dc.b	0
	; LineNumber: 584
localVariable_PrintCenterStringColor_varPrefixed_c	dc.b	0
PrintCenterStringColor_block55
PrintCenterStringColor
	; LineNumber: 592
	lda localVariable_PrintCenterStringColor_p1
	ldx localVariable_PrintCenterStringColor_p1+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_len
	; LineNumber: 593
	; Binary clause Simplified: LESS
	; Compare with pure num / var optimization
	cmp #$14;keep
	bcs PrintCenterStringColor_elseblock58
PrintCenterStringColor_ConditionalTrueBlock57: ;Main true block ;keep 
	; LineNumber: 593
	; 8 bit binop
	; Add/sub right value is variable/expression
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	; Load16bitvariable : localVariable_PrintCenterStringColor_len
	lda localVariable_PrintCenterStringColor_len
	lsr
PrintCenterStringColor_rightvarAddSub_var64 = $88
	sta PrintCenterStringColor_rightvarAddSub_var64
	lda #$a
	sec
	sbc PrintCenterStringColor_rightvarAddSub_var64
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_x
	jmp PrintCenterStringColor_elsedoneblock59
PrintCenterStringColor_elseblock58
	; LineNumber: 594
	; LineNumber: 596
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_x
	; LineNumber: 597
	lda #$14
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_len
	; LineNumber: 598
PrintCenterStringColor_elsedoneblock59
	; LineNumber: 599
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintCenterStringColor_elseblock68
PrintCenterStringColor_ConditionalTrueBlock67: ;Main true block ;keep 
	; LineNumber: 598
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintCenterStringColor_y
	asl
	tax
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintCenterStringColor_elsedoneblock69
PrintCenterStringColor_elseblock68
	; LineNumber: 598
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintCenterStringColor_y
	asl
	tax
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintCenterStringColor_elsedoneblock69
	; LineNumber: 600
	lda screenmemory
	clc
	adc localVariable_PrintCenterStringColor_x
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc PrintCenterStringColor_WordAdd74
	inc screenmemory+1
PrintCenterStringColor_WordAdd74
	; LineNumber: 601
	ldy localVariable_PrintCenterStringColor_p1+1 ;keep
	lda localVariable_PrintCenterStringColor_p1
	sta print_text+0
	sty print_text+1
	ldx localVariable_PrintCenterStringColor_len ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 603
	rts
end_procedure_PrintCenterStringColor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintText
	;    Procedure type : User-defined procedure
	; LineNumber: 606
	; LineNumber: 605
localVariable_PrintText_x	dc.b	0
PrintText_block77
PrintText
	; LineNumber: 611
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintText_elseblock80
PrintText_ConditionalTrueBlock79: ;Main true block ;keep 
	; LineNumber: 610
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintText_elsedoneblock81
PrintText_elseblock80
	; LineNumber: 610
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintText_elsedoneblock81
	; LineNumber: 612
	ldy #$14 ; optimized, look out for bugs
	lda #$20
PrintText_fill86
	sta (screenmemory),y
	dey
	bpl PrintText_fill86
	; LineNumber: 613
	lda sp
	ldx sp+1
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 615
	rts
end_procedure_PrintText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearText
	;    Procedure type : User-defined procedure
	; LineNumber: 619
ClearText
	; LineNumber: 621
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ClearText_elseblock90
ClearText_ConditionalTrueBlock89: ;Main true block ;keep 
	; LineNumber: 620
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp ClearText_elsedoneblock91
ClearText_elseblock90
	; LineNumber: 620
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
ClearText_elsedoneblock91
	; LineNumber: 622
	ldy #$14 ; optimized, look out for bugs
	lda #$20
ClearText_fill96
	sta (screenmemory),y
	dey
	bpl ClearText_fill96
	; LineNumber: 624
	rts
end_procedure_ClearText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearFullScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 627
ClearFullScreen
	; LineNumber: 627
	; Clear screen with offset
	lda #$20
	ldx #$fe
ClearFullScreen_clearloop98
	dex
	sta $0000+$1000,x
	sta $00fd+$1000,x
	bne ClearFullScreen_clearloop98
	; LineNumber: 628
	
; // clear screen
	; Clear screen with offset
	lda #$20
	ldx #$fe
ClearFullScreen_clearloop99
	dex
	sta $0000+$1e00,x
	sta $00fd+$1e00,x
	bne ClearFullScreen_clearloop99
	; LineNumber: 629
	
; // clear screen
	; Clear screen with offset
	lda #$91
	ldx #$fe
ClearFullScreen_clearloop100
	dex
	sta $0000+$9400,x
	sta $00fd+$9400,x
	bne ClearFullScreen_clearloop100
	; LineNumber: 630
	
; // set character colour memory to white
	; Clear screen with offset
	lda #$91
	ldx #$fe
ClearFullScreen_clearloop101
	dex
	sta $0000+$9600,x
	sta $00fd+$9600,x
	bne ClearFullScreen_clearloop101
	; LineNumber: 632
	rts
end_procedure_ClearFullScreen
	
; // set character colour memory to white
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwapActiveChar
	;    Procedure type : User-defined procedure
	; LineNumber: 636
SwapActiveChar
	; LineNumber: 637
	lda #$14
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 638
	; Binary clause Simplified: EQUALS
	clc
	lda activeChar
	; cmp #$00 ignored
	bne SwapActiveChar_elseblock105
SwapActiveChar_localsuccess116: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq SwapActiveChar_elseblock105
SwapActiveChar_ConditionalTrueBlock104: ;Main true block ;keep 
	; LineNumber: 637
	; LineNumber: 639
	lda #$1
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 640
	lda #<txtCharSwapGreen
	ldx #>txtCharSwapGreen
	sta sp
	stx sp+1
	; LineNumber: 641
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 642
	jmp SwapActiveChar_elsedoneblock106
SwapActiveChar_elseblock105
	; LineNumber: 642
	; Binary clause Simplified: EQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne SwapActiveChar_elsedoneblock122
SwapActiveChar_localsuccess124: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq SwapActiveChar_elsedoneblock122
SwapActiveChar_ConditionalTrueBlock120: ;Main true block ;keep 
	; LineNumber: 642
	; LineNumber: 644
	lda #$0
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 645
	lda #<txtCharSwapRed
	ldx #>txtCharSwapRed
	sta sp
	stx sp+1
	; LineNumber: 646
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 647
SwapActiveChar_elsedoneblock122
SwapActiveChar_elsedoneblock106
	; LineNumber: 648
	rts
end_procedure_SwapActiveChar
	; NodeProcedureDecl 3
	; ***********  Defining procedure : LoadFile
	;    Procedure type : User-defined procedure
	; LineNumber: 654
	; LineNumber: 652
localVariable_LoadFile_len	dc.b	0
	; LineNumber: 653
localVariable_LoadFile_fn	dc.w	0
	; LineNumber: 650
localVariable_LoadFile_addr	dc.w	0
LoadFile_block126
LoadFile
	; LineNumber: 655
	lda fileName
	ldx fileName+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_len
	; LineNumber: 657
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
            BCS  error           ; Jump to error handler if error
error       ; Handle error in A
			NOP
	
	; LineNumber: 685
	rts
end_procedure_LoadFile
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 691
	; LineNumber: 689
localVariable_InitLevel_i	dc.w	0
	; LineNumber: 690
localVariable_InitLevel_levStr		dc.b	"XFF"
	dc.b	0
InitLevel_block127
InitLevel
	; LineNumber: 692
	lda #$0
	; Calling storevariable on generic assign expression
	sta countObjects
	; LineNumber: 693
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 694
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 695
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 696
	; Calling storevariable on generic assign expression
	sta countLasers
	; LineNumber: 697
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 698
	lda #$1
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 699
	lda #$6
	; Calling storevariable on generic assign expression
	sta statusCol
	; LineNumber: 701
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$2
	; LineNumber: 702
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 709
	; Integer constant assigning
	; Load16bitvariable : #$aecf
	ldy #$ae
	lda #$cf
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_i
	sty localVariable_InitLevel_i+1
InitLevel_forloop128
	; LineNumber: 705
	; LineNumber: 706
	
; // TODO: new mem pos
	ldy localVariable_InitLevel_i+1 ;keep
	lda localVariable_InitLevel_i
	sta sp
	sty sp+1
	; LineNumber: 707
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (sp),y
	; LineNumber: 708
InitLevel_loopstart129
	; Compare is onpage
	lda localVariable_InitLevel_i
	clc
	adc #$01
	sta localVariable_InitLevel_i+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc InitLevel_WordAdd134
	inc localVariable_InitLevel_i+1
InitLevel_WordAdd134
	; Executing integer comparison #$bff0
	; Binary clause INTEGER: NOTEQUALS
	lda localVariable_InitLevel_i+1   ; compare high bytes
	cmp #$bf ;keep
	beq InitLevel_pass1140
	jmp InitLevel_ConditionalTrueBlock136
InitLevel_pass1140
	lda localVariable_InitLevel_i
	cmp #$f0 ;keep
	beq InitLevel_elsedoneblock138
	jmp InitLevel_ConditionalTrueBlock136
InitLevel_ConditionalTrueBlock136: ;Main true block ;keep 
	; LineNumber: 704
	; LineNumber: 705
	; ****** Inline assembler section
  jmp InitLevel_forloop128
InitLevel_elsedoneblock138
InitLevel_loopdone133: ;keep
InitLevel_loopend130
	; LineNumber: 710
	
; // TODO: Load 
; //		end;
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne InitLevel_localfailed157
	jmp InitLevel_ConditionalTrueBlock143
InitLevel_localfailed157
	jmp InitLevel_elseblock144
InitLevel_ConditionalTrueBlock143: ;Main true block ;keep 
	; LineNumber: 710
	; LineNumber: 711
trse_breakpoint_1
	; LineNumber: 713
	
; //		if(nextLevel <> levelSingle) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 714
	lda #$53
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 715
	ldy #0 ; Fake 16 bit
	lda levelSingle
	; Calling storevariable on generic assign expression
	; Casting from byte to integer
	sta str_num
	sty str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_InitLevel_levStr
	clc
	adc #$01
	sta str_p1+0
	lda #>localVariable_InitLevel_levStr
	adc #$00
	sta str_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 716
	lda #<localVariable_InitLevel_levStr
	ldx #>localVariable_InitLevel_levStr
	sta fileName
	stx fileName+1
	; LineNumber: 717
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 720
	jmp InitLevel_elsedoneblock145
InitLevel_elseblock144
	; LineNumber: 720
	; LineNumber: 721
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitLevel_elsedoneblock164
InitLevel_ConditionalTrueBlock162: ;Main true block ;keep 
	; LineNumber: 720
	
; //		end;
	jsr SwapActiveChar
InitLevel_elsedoneblock164
	; LineNumber: 724
	
; //		if(nextLevel <> levelCoop) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 725
	lda #$4d
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 726
	ldy #0 ; Fake 16 bit
	lda levelCoop
	; Calling storevariable on generic assign expression
	; Casting from byte to integer
	sta str_num
	sty str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_InitLevel_levStr
	clc
	adc #$01
	sta str_p1+0
	lda #>localVariable_InitLevel_levStr
	adc #$00
	sta str_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 727
	; INTEGER optimization: a=b+c 
	lda #<localVariable_InitLevel_levStr
	clc
	adc #$00
	sta fileName+0
	lda #>localVariable_InitLevel_levStr
	adc #$00
	sta fileName+1
	; LineNumber: 728
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 731
InitLevel_elsedoneblock145
	; LineNumber: 732
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne InitLevel_viarasterirq_ntsc_timing169
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp InitLevel_viarasterirq_end170
InitLevel_viarasterirq_ntsc_timing169
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
InitLevel_viarasterirq_end170
	; LineNumber: 733
	rts
end_procedure_InitLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetNextLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 736
SetNextLevel
	; LineNumber: 738
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne SetNextLevel_elseblock174
SetNextLevel_ConditionalTrueBlock173: ;Main true block ;keep 
	; LineNumber: 738
	; LineNumber: 739
	; Binary clause Simplified: GREATEREQUAL
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelSingle
	clc
	adc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp maxSingleLevels;keep
	bcc SetNextLevel_elseblock197
SetNextLevel_ConditionalTrueBlock196: ;Main true block ;keep 
	; LineNumber: 738
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_elsedoneblock198
SetNextLevel_elseblock197
	; LineNumber: 740
	; LineNumber: 741
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelSingle
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 742
SetNextLevel_elsedoneblock198
	; LineNumber: 744
	jmp SetNextLevel_elsedoneblock175
SetNextLevel_elseblock174
	; LineNumber: 744
	; LineNumber: 745
	; Binary clause Simplified: GREATEREQUAL
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelCoop
	clc
	adc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp maxMultiLevels;keep
	bcc SetNextLevel_elseblock206
SetNextLevel_ConditionalTrueBlock205: ;Main true block ;keep 
	; LineNumber: 744
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_elsedoneblock207
SetNextLevel_elseblock206
	; LineNumber: 746
	; LineNumber: 747
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelCoop
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 748
SetNextLevel_elsedoneblock207
	; LineNumber: 749
SetNextLevel_elsedoneblock175
	; LineNumber: 750
	rts
end_procedure_SetNextLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 752
	; LineNumber: 752
localVariable_IncLevel_mode	dc.b	0
IncLevel_block212
IncLevel
	; LineNumber: 754
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_IncLevel_mode
	; cmp #$00 ignored
	bne IncLevel_elseblock215
IncLevel_ConditionalTrueBlock214: ;Main true block ;keep 
	; LineNumber: 754
	; LineNumber: 755
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda maxSingleLevels
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp levelSingle;keep
	bcc IncLevel_elsedoneblock235
	beq IncLevel_elsedoneblock235
IncLevel_ConditionalTrueBlock233: ;Main true block ;keep 
	; LineNumber: 754
	; Test Inc dec D
	inc levelSingle
IncLevel_elsedoneblock235
	; LineNumber: 757
	jmp IncLevel_elsedoneblock216
IncLevel_elseblock215
	; LineNumber: 757
	; LineNumber: 758
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda maxMultiLevels
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp levelCoop;keep
	bcc IncLevel_elsedoneblock242
	beq IncLevel_elsedoneblock242
IncLevel_ConditionalTrueBlock240: ;Main true block ;keep 
	; LineNumber: 757
	; Test Inc dec D
	inc levelCoop
IncLevel_elsedoneblock242
	; LineNumber: 759
IncLevel_elsedoneblock216
	; LineNumber: 760
	rts
end_procedure_IncLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 762
	; LineNumber: 762
localVariable_DecLevel_mode	dc.b	0
DecLevel_block245
DecLevel
	; LineNumber: 764
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DecLevel_mode
	; cmp #$00 ignored
	bne DecLevel_elseblock248
DecLevel_ConditionalTrueBlock247: ;Main true block ;keep 
	; LineNumber: 764
	; LineNumber: 765
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_elsedoneblock268
DecLevel_ConditionalTrueBlock266: ;Main true block ;keep 
	; LineNumber: 764
	; Test Inc dec D
	dec levelSingle
DecLevel_elsedoneblock268
	; LineNumber: 767
	jmp DecLevel_elsedoneblock249
DecLevel_elseblock248
	; LineNumber: 767
	; LineNumber: 768
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_elsedoneblock275
DecLevel_ConditionalTrueBlock273: ;Main true block ;keep 
	; LineNumber: 767
	; Test Inc dec D
	dec levelCoop
DecLevel_elsedoneblock275
	; LineNumber: 769
DecLevel_elsedoneblock249
	; LineNumber: 770
	rts
end_procedure_DecLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGame
	;    Procedure type : User-defined procedure
	; LineNumber: 774
	; LineNumber: 773
localVariable_InitGame_levSingle	dc.b	0
	; LineNumber: 773
localVariable_InitGame_levCoop	dc.b	0
	; LineNumber: 773
localVariable_InitGame_mode	dc.b	0
InitGame_block278
InitGame
	; LineNumber: 775
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 776
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 777
	lda localVariable_InitGame_mode
	; Calling storevariable on generic assign expression
	sta gameMode
	; LineNumber: 778
	; Binary clause Simplified: EQUALS
	clc
	; cmp #$00 ignored
	bne InitGame_elseblock281
InitGame_ConditionalTrueBlock280: ;Main true block ;keep 
	; LineNumber: 777
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp InitGame_elsedoneblock282
InitGame_elseblock281
	; LineNumber: 777
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta nextLevel
InitGame_elsedoneblock282
	; LineNumber: 779
	lda #$0
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 780
	; Calling storevariable on generic assign expression
	sta cycle
	; LineNumber: 781
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	; LineNumber: 782
	rts
end_procedure_InitGame
	; NodeProcedureDecl 3
	; ***********  Defining procedure : print2x2block
	;    Procedure type : User-defined procedure
	; LineNumber: 786
	; LineNumber: 785
localVariable_print2x2block_x	dc.b	0
	; LineNumber: 785
localVariable_print2x2block_y	dc.b	0
	; LineNumber: 785
localVariable_print2x2block_varPrefixed_c	dc.b	0
print2x2block_block287
print2x2block
	; LineNumber: 792
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_elseblock290
print2x2block_ConditionalTrueBlock289: ;Main true block ;keep 
	; LineNumber: 791
	; Load Integer array
	; CAST type INTEGER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_print2x2block_y
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	tax
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp print2x2block_elsedoneblock291
print2x2block_elseblock290
	; LineNumber: 791
	; Load Integer array
	; CAST type INTEGER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_print2x2block_y
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	tax
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
print2x2block_elsedoneblock291
	; LineNumber: 794
	lda localVariable_print2x2block_varPrefixed_c
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	; LineNumber: 795
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_elseblock298
print2x2block_ConditionalTrueBlock297: ;Main true block ;keep 
	; LineNumber: 794
	; Load Integer array
	; CAST type INTEGER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_print2x2block_y
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	tax
	lda col1,x 
	ldy col1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp print2x2block_elsedoneblock299
print2x2block_elseblock298
	; LineNumber: 794
	; Load Integer array
	; CAST type INTEGER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_print2x2block_y
	clc
	adc #$1
	 ; end add / sub var with constant
	asl
	tax
	lda col2,x 
	ldy col2+1,x 
	sta screenmemory
	sty screenmemory+1
print2x2block_elsedoneblock299
	; LineNumber: 796
	; Binary clause Simplified: GREATEREQUAL
	lda localVariable_print2x2block_varPrefixed_c
	; Compare with pure num / var optimization
	cmp #$80;keep
	bcc print2x2block_elseblock306
print2x2block_ConditionalTrueBlock305: ;Main true block ;keep 
	; LineNumber: 796
	lda #$91
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	jmp print2x2block_elsedoneblock307
print2x2block_elseblock306
	; LineNumber: 798
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_print2x2block_varPrefixed_c
	lda tilesetColors,x 
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
print2x2block_elsedoneblock307
	; LineNumber: 808
	rts
end_procedure_print2x2block
	
; //	moveto(x*2,y*2,hi(SCREEN_COL_LOC));
; //	screenmemory[0]:=tilesetColors[c]+8;
; //	screenmemory[1]:=tilesetColors[c+1]+8;
; //	screenmemory[40]:=tilesetColors[c+40]+8;;
; //	screenmemory[41]:=tilesetColors[c+41]+8;;
; //	
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CycleWater
	;    Procedure type : User-defined procedure
	; LineNumber: 810
CycleWater
	; LineNumber: 812
	; ****** Inline assembler section
	; scroll vertical body up
	ldy $1bd8+8
	ldx #0
Scroll1tA26758
	lda $1bd9+8,x
	sta $1bd8+8,x
	inx
	cpx #7
	bne Scroll1tA26758
	sty $1bdf+8
	
	
	; scroll vertical body down
	ldy $1be7+8
	ldx #7
Scroll2tA26758
	lda $1be0+7,x
	sta $1be1+7,x
	dex
	cpx #0
	bne Scroll2tA26758
	sty $1be0+8
	; scroll horizontal body right
	ldx #0
RightBitshiftA26758
	lda $1bf0+8,x
	lsr
	ror $1bf0+8,x
	inx
	cpx #8
	bne RightBitshiftA26758
	
	; scroll horizontal body left
	ldx #0
LeftBitshiftA16895
	lda $1be8+8,x
	asl
	rol $1be8+8,x
	inx
	cpx #8
	bne LeftBitshiftA16895
	
	; LineNumber: 857
	rts
end_procedure_CycleWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetZLayerPointer
	;    Procedure type : User-defined procedure
	; LineNumber: 860
	; LineNumber: 859
localVariable_GetZLayerPointer_z	dc.b	0
GetZLayerPointer_block313
GetZLayerPointer
	; LineNumber: 861
	lda #$3
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext315
	; LineNumber: 861
	lda #<mapback2
	ldx #>mapback2
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext315
	lda #$2
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext317
	; LineNumber: 862
	lda #<mapback1
	ldx #>mapback1
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext317
	lda #$1
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext319
	; LineNumber: 863
	lda #<mapmain
	ldx #>mapmain
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext319
	lda #$0
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext321
	; LineNumber: 864
	lda #<mapfront
	ldx #>mapfront
	sta tempPointer
	stx tempPointer+1
GetZLayerPointer_casenext321
GetZLayerPointer_caseend314
	; LineNumber: 867
	rts
end_procedure_GetZLayerPointer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPosAnim
	;    Procedure type : User-defined procedure
	; LineNumber: 879
	; LineNumber: 871
localVariable_PaintPosAnim_x	dc.b	0
	; LineNumber: 871
localVariable_PaintPosAnim_y	dc.b	0
	; LineNumber: 872
localVariable_PaintPosAnim_animId	dc.b	0
	; LineNumber: 873
localVariable_PaintPosAnim_hideSprite	dc.b	0
	; LineNumber: 874
localVariable_PaintPosAnim_pa	= $72
	; LineNumber: 875
localVariable_PaintPosAnim_currentTile	dc.b	0
	; LineNumber: 876
localVariable_PaintPosAnim_gravity	dc.b	0
	; LineNumber: 877
localVariable_PaintPosAnim_shiftAnim	dc.b	0
	; LineNumber: 869
localVariable_PaintPosAnim_t	dc.b	0
	; LineNumber: 869
localVariable_PaintPosAnim_considerAnimation	dc.b	0
PaintPosAnim_block323
PaintPosAnim
	; LineNumber: 880
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_animId
	; LineNumber: 881
	; Generic 16 bit op
	lda #<animList
	ldy #>animList
PaintPosAnim_rightvarInteger_var326 = $88
	sta PaintPosAnim_rightvarInteger_var326
	sty PaintPosAnim_rightvarInteger_var326+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$8
	sta mul16x8_num1
	sty mul16x8_num1Hi
	; Load16bitvariable : localVariable_PaintPosAnim_animId
	lda localVariable_PaintPosAnim_animId
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc PaintPosAnim_rightvarInteger_var326
PaintPosAnim_wordAdd324
	sta PaintPosAnim_rightvarInteger_var326
	; High-bit binop
	tya
	adc PaintPosAnim_rightvarInteger_var326+1
	tay
	lda PaintPosAnim_rightvarInteger_var326
	sta localVariable_PaintPosAnim_pa
	sty localVariable_PaintPosAnim_pa+1
	; LineNumber: 882
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_PaintPosAnim_considerAnimation
	; cmp #$00 ignored
	beq PaintPosAnim_localfailed1158
PaintPosAnim_localsuccess1159: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_component0,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne PaintPosAnim_localfailed1158
	jmp PaintPosAnim_ConditionalTrueBlock328
PaintPosAnim_localfailed1158
	jmp PaintPosAnim_elseblock329
PaintPosAnim_ConditionalTrueBlock328: ;Main true block ;keep 
	; LineNumber: 882
	; LineNumber: 883
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; cmp #$00 ignored
	bne PaintPosAnim_elseblock1163
PaintPosAnim_ConditionalTrueBlock1162: ;Main true block ;keep 
	; LineNumber: 882
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1164
PaintPosAnim_elseblock1163
	; LineNumber: 883
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_elsedoneblock1398
PaintPosAnim_ConditionalTrueBlock1396: ;Main true block ;keep 
	; LineNumber: 884
	; LineNumber: 885
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
	; LineNumber: 886
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_component0,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_elsedoneblock1514
PaintPosAnim_ConditionalTrueBlock1512: ;Main true block ;keep 
	; LineNumber: 885
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
PaintPosAnim_elsedoneblock1514
	; LineNumber: 887
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne PaintPosAnim_elseblock1519
PaintPosAnim_ConditionalTrueBlock1518: ;Main true block ;keep 
	; LineNumber: 886
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1520
PaintPosAnim_elseblock1519
	; LineNumber: 887
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_elseblock1575
PaintPosAnim_ConditionalTrueBlock1574: ;Main true block ;keep 
	; LineNumber: 887
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1576
PaintPosAnim_elseblock1575
	; LineNumber: 888
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne PaintPosAnim_elseblock1603
PaintPosAnim_ConditionalTrueBlock1602: ;Main true block ;keep 
	; LineNumber: 888
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1604
PaintPosAnim_elseblock1603
	; LineNumber: 889
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne PaintPosAnim_elsedoneblock1618
PaintPosAnim_ConditionalTrueBlock1616: ;Main true block ;keep 
	; LineNumber: 889
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
PaintPosAnim_elsedoneblock1618
PaintPosAnim_elsedoneblock1604
PaintPosAnim_elsedoneblock1576
PaintPosAnim_elsedoneblock1520
	; LineNumber: 891
PaintPosAnim_elsedoneblock1398
PaintPosAnim_elsedoneblock1164
	; LineNumber: 892
	; Load pointer array
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
	tay
	lda (localVariable_PaintPosAnim_pa),y
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 893
	; 8 bit binop
	; Add/sub where right value is constant number
	clc
	adc localVariable_PaintPosAnim_shiftAnim
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 895
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; cmp #$00 ignored
	bne PaintPosAnim_localfailed1805
	jmp PaintPosAnim_ConditionalTrueBlock1622
PaintPosAnim_localfailed1805
	jmp PaintPosAnim_elseblock1623
PaintPosAnim_ConditionalTrueBlock1622: ;Main true block ;keep 
	; LineNumber: 894
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	jmp PaintPosAnim_elsedoneblock1624
PaintPosAnim_elseblock1623
	; LineNumber: 895
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_localfailed1898
PaintPosAnim_localsuccess1899: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animFinish,x 
	; cmp #$00 ignored
	bne PaintPosAnim_localfailed1898
	jmp PaintPosAnim_ConditionalTrueBlock1809
PaintPosAnim_localfailed1898
	jmp PaintPosAnim_elseblock1810
PaintPosAnim_ConditionalTrueBlock1809: ;Main true block ;keep 
	; LineNumber: 896
	; LineNumber: 897
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
PaintPosAnim_binary_clause_temp_var1915 = $88
	sta PaintPosAnim_binary_clause_temp_var1915
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_PaintPosAnim_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
PaintPosAnim_binary_clause_temp_2_var1916 = $8A
	sta PaintPosAnim_binary_clause_temp_2_var1916
	lda PaintPosAnim_binary_clause_temp_var1915
	cmp PaintPosAnim_binary_clause_temp_2_var1916;keep
	bne PaintPosAnim_elseblock1903
PaintPosAnim_ConditionalTrueBlock1902: ;Main true block ;keep 
	; LineNumber: 897
	; LineNumber: 898
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_PaintPosAnim_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 899
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 901
	jmp PaintPosAnim_elsedoneblock1904
PaintPosAnim_elseblock1903
	; LineNumber: 900
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_PaintPosAnim_pa),y
PaintPosAnim_val_var1924 = $88
	sta PaintPosAnim_val_var1924
	lda globaltime
	sec
PaintPosAnim_modulo1925
	sbc PaintPosAnim_val_var1924
	bcs PaintPosAnim_modulo1925
	adc PaintPosAnim_val_var1924
	; cmp #$00 ignored
	bne PaintPosAnim_elsedoneblock1922
PaintPosAnim_ConditionalTrueBlock1920: ;Main true block ;keep 
	; LineNumber: 900
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_elsedoneblock1922
PaintPosAnim_elsedoneblock1904
	; LineNumber: 903
	jmp PaintPosAnim_elsedoneblock1811
PaintPosAnim_elseblock1810
	; LineNumber: 902
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne PaintPosAnim_elsedoneblock1931
PaintPosAnim_ConditionalTrueBlock1929: ;Main true block ;keep 
	; LineNumber: 903
	; LineNumber: 904
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
PaintPosAnim_binary_clause_temp_var1974 = $88
	sta PaintPosAnim_binary_clause_temp_var1974
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_PaintPosAnim_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
PaintPosAnim_binary_clause_temp_2_var1975 = $8A
	sta PaintPosAnim_binary_clause_temp_2_var1975
	lda PaintPosAnim_binary_clause_temp_var1974
	cmp PaintPosAnim_binary_clause_temp_2_var1975;keep
	bne PaintPosAnim_elseblock1962
PaintPosAnim_ConditionalTrueBlock1961: ;Main true block ;keep 
	; LineNumber: 904
	; LineNumber: 905
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 906
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 908
	jmp PaintPosAnim_elsedoneblock1963
PaintPosAnim_elseblock1962
	; LineNumber: 907
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_PaintPosAnim_pa),y
PaintPosAnim_val_var1983 = $88
	sta PaintPosAnim_val_var1983
	lda globaltime
	sec
PaintPosAnim_modulo1984
	sbc PaintPosAnim_val_var1983
	bcs PaintPosAnim_modulo1984
	adc PaintPosAnim_val_var1983
	; cmp #$00 ignored
	bne PaintPosAnim_elsedoneblock1981
PaintPosAnim_ConditionalTrueBlock1979: ;Main true block ;keep 
	; LineNumber: 907
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_elsedoneblock1981
PaintPosAnim_elsedoneblock1963
	; LineNumber: 909
PaintPosAnim_elsedoneblock1931
PaintPosAnim_elsedoneblock1811
PaintPosAnim_elsedoneblock1624
	; LineNumber: 911
	jmp PaintPosAnim_elsedoneblock330
PaintPosAnim_elseblock329
	; LineNumber: 910
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_rendTilePos,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
PaintPosAnim_elsedoneblock330
	; LineNumber: 913
	; LineNumber: 913
	lda localVariable_PaintPosAnim_currentTile
	rts
end_procedure_PaintPosAnim
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPos
	;    Procedure type : User-defined procedure
	; LineNumber: 925
	; LineNumber: 917
localVariable_PaintPos_x	dc.b	0
	; LineNumber: 917
localVariable_PaintPos_y	dc.b	0
	; LineNumber: 918
localVariable_PaintPos_t	dc.b	0
	; LineNumber: 918
localVariable_PaintPos_tHide	dc.b	0
	; LineNumber: 919
localVariable_PaintPos_animId	dc.b	0
	; LineNumber: 920
localVariable_PaintPos_hideSprite	dc.b	0
	; LineNumber: 921
localVariable_PaintPos_pa	= $72
	; LineNumber: 922
localVariable_PaintPos_currentTile	dc.b	0
	; LineNumber: 923
localVariable_PaintPos_gravity	dc.b	0
	; LineNumber: 924
localVariable_PaintPos_shiftAnim	dc.b	0
	; LineNumber: 915
localVariable_PaintPos_pos	dc.b	0
	; LineNumber: 915
localVariable_PaintPos_considerAnimation	dc.b	0
PaintPos_block1987
PaintPos
	; LineNumber: 930
	; Modulo
	lda #$14
PaintPos_val_var1988 = $88
	sta PaintPos_val_var1988
	lda localVariable_PaintPos_pos
	sec
PaintPos_modulo1989
	sbc PaintPos_val_var1988
	bcs PaintPos_modulo1989
	adc PaintPos_val_var1988
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_x
	; LineNumber: 931
	; Right is PURE NUMERIC : Is word =0
	; 8 bit div
	lda localVariable_PaintPos_pos
	sta div8x8_d
	; Load right hand side
	lda #$14
	sta div8x8_c
	jsr div8x8_procedure
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_y
	; LineNumber: 932
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 933
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 935
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_localfailed2046
	jmp PaintPos_ConditionalTrueBlock1993
PaintPos_localfailed2046
	jmp PaintPos_elseblock1994
PaintPos_ConditionalTrueBlock1993: ;Main true block ;keep 
	; LineNumber: 935
	; LineNumber: 936
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 937
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 939
	jmp PaintPos_elsedoneblock1995
PaintPos_elseblock1994
	; LineNumber: 938
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2051
PaintPos_ConditionalTrueBlock2050: ;Main true block ;keep 
	; LineNumber: 939
	; LineNumber: 940
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 941
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 943
	jmp PaintPos_elsedoneblock2052
PaintPos_elseblock2051
	; LineNumber: 942
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2079
PaintPos_ConditionalTrueBlock2078: ;Main true block ;keep 
	; LineNumber: 943
	; LineNumber: 944
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 945
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 947
	jmp PaintPos_elsedoneblock2080
PaintPos_elseblock2079
	; LineNumber: 946
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elsedoneblock2094
PaintPos_ConditionalTrueBlock2092: ;Main true block ;keep 
	; LineNumber: 947
	; LineNumber: 948
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 949
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 950
PaintPos_elsedoneblock2094
PaintPos_elsedoneblock2080
PaintPos_elsedoneblock2052
PaintPos_elsedoneblock1995
	; LineNumber: 952
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_PaintPos_t
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2099
PaintPos_ConditionalTrueBlock2098: ;Main true block ;keep 
	; LineNumber: 952
	; LineNumber: 953
	lda localVariable_PaintPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_x
	lda localVariable_PaintPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_y
	lda localVariable_PaintPos_currentTile
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_varPrefixed_c
	jsr print2x2block
	jmp PaintPos_elsedoneblock2100
PaintPos_elseblock2099
	; LineNumber: 954
	lda localVariable_PaintPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_x
	lda localVariable_PaintPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_y
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_varPrefixed_c
	jsr print2x2block
PaintPos_elsedoneblock2100
	; LineNumber: 956
	rts
end_procedure_PaintPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ConvertShift
	;    Procedure type : User-defined procedure
	; LineNumber: 961
	; LineNumber: 960
localVariable_ConvertShift_ret	dc.w	0
	; LineNumber: 958
localVariable_ConvertShift_gravity	dc.b	0
	; LineNumber: 958
localVariable_ConvertShift_pos	dc.b	0
ConvertShift_block2105
ConvertShift
	; LineNumber: 966
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ConvertShift_elseblock2108
ConvertShift_ConditionalTrueBlock2107: ;Main true block ;keep 
	; LineNumber: 965
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ConvertShift_pos
	lda shiftAreaDownX,x 
	tay
	; Load Byte array
	; CAST type NADA
	lda shiftAreaDownY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_ret
	sty localVariable_ConvertShift_ret+1
	jmp ConvertShift_elsedoneblock2109
ConvertShift_elseblock2108
	; LineNumber: 966
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ConvertShift_elseblock2164
ConvertShift_ConditionalTrueBlock2163: ;Main true block ;keep 
	; LineNumber: 966
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ConvertShift_pos
	lda shiftAreaUpX,x 
	tay
	; Load Byte array
	; CAST type NADA
	lda shiftAreaUpY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_ret
	sty localVariable_ConvertShift_ret+1
	jmp ConvertShift_elsedoneblock2165
ConvertShift_elseblock2164
	; LineNumber: 967
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne ConvertShift_elseblock2192
ConvertShift_ConditionalTrueBlock2191: ;Main true block ;keep 
	; LineNumber: 967
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ConvertShift_pos
	lda shiftAreaLeftX,x 
	tay
	; Load Byte array
	; CAST type NADA
	lda shiftAreaLeftY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_ret
	sty localVariable_ConvertShift_ret+1
	jmp ConvertShift_elsedoneblock2193
ConvertShift_elseblock2192
	; LineNumber: 968
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne ConvertShift_elsedoneblock2207
ConvertShift_ConditionalTrueBlock2205: ;Main true block ;keep 
	; LineNumber: 968
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ConvertShift_pos
	lda shiftAreaRightX,x 
	tay
	; Load Byte array
	; CAST type NADA
	lda shiftAreaRightY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_ret
	sty localVariable_ConvertShift_ret+1
ConvertShift_elsedoneblock2207
ConvertShift_elsedoneblock2193
ConvertShift_elsedoneblock2165
ConvertShift_elsedoneblock2109
	; LineNumber: 970
	; LineNumber: 971
	ldy localVariable_ConvertShift_ret+1 ;keep
	lda localVariable_ConvertShift_ret
	rts
end_procedure_ConvertShift
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPosition
	;    Procedure type : User-defined procedure
	; LineNumber: 977
	; LineNumber: 976
localVariable_CalcPosition_destx	dc.b	0
	; LineNumber: 976
localVariable_CalcPosition_desty	dc.b	0
	; LineNumber: 974
localVariable_CalcPosition_startx	dc.b	0
	; LineNumber: 974
localVariable_CalcPosition_starty	dc.b	0
	; LineNumber: 974
localVariable_CalcPosition_pos	dc.b	0
CalcPosition_block2210
CalcPosition
	; LineNumber: 978
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CalcPosition_pos
	lda shiftAreaDownX,x 
	clc
	adc localVariable_CalcPosition_startx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
	; LineNumber: 979
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	lda shiftAreaDownY,x 
	clc
	adc localVariable_CalcPosition_starty
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
	; LineNumber: 980
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_elseblock2213
CalcPosition_ConditionalTrueBlock2212: ;Main true block ;keep 
	; LineNumber: 979
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
	jmp CalcPosition_elsedoneblock2214
CalcPosition_elseblock2213
	; LineNumber: 980
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPosition_elsedoneblock2228
CalcPosition_ConditionalTrueBlock2226: ;Main true block ;keep 
	; LineNumber: 980
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
CalcPosition_elsedoneblock2228
CalcPosition_elsedoneblock2214
	; LineNumber: 982
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_elseblock2233
CalcPosition_ConditionalTrueBlock2232: ;Main true block ;keep 
	; LineNumber: 981
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
	jmp CalcPosition_elsedoneblock2234
CalcPosition_elseblock2233
	; LineNumber: 982
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPosition_elsedoneblock2248
CalcPosition_ConditionalTrueBlock2246: ;Main true block ;keep 
	; LineNumber: 982
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
CalcPosition_elsedoneblock2248
CalcPosition_elsedoneblock2234
	; LineNumber: 984
	; LineNumber: 985
	ldy localVariable_CalcPosition_destx ; optimized, look out for bugs
	lda localVariable_CalcPosition_desty
	rts
end_procedure_CalcPosition
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionMapPos
	;    Procedure type : User-defined procedure
	; LineNumber: 991
	; LineNumber: 990
localVariable_CalcPositionMapPos_npos	dc.w	0
	; LineNumber: 988
localVariable_CalcPositionMapPos_startx	dc.b	0
	; LineNumber: 988
localVariable_CalcPositionMapPos_starty	dc.b	0
	; LineNumber: 988
localVariable_CalcPositionMapPos_pos	dc.b	0
CalcPositionMapPos_block2251
CalcPositionMapPos
	; LineNumber: 992
	lda localVariable_CalcPositionMapPos_startx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_startx
	lda localVariable_CalcPositionMapPos_starty
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_starty
	lda localVariable_CalcPositionMapPos_pos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_pos
	jsr CalcPosition
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionMapPos_npos
	sty localVariable_CalcPositionMapPos_npos+1
	; LineNumber: 994
	; LineNumber: 994
	; 8 bit binop
	; Add/sub right value is variable/expression
	lda localVariable_CalcPositionMapPos_npos+1
CalcPositionMapPos_rightvarAddSub_var2252 = $88
	sta CalcPositionMapPos_rightvarAddSub_var2252
	; Load Byte array
	; CAST type BYTE
	ldx localVariable_CalcPositionMapPos_npos ; optimized, look out for bugs
	lda ystart,x 
	clc
	adc CalcPositionMapPos_rightvarAddSub_var2252
	rts
end_procedure_CalcPositionMapPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetObjectByPosFilterComp
	;    Procedure type : User-defined procedure
	; LineNumber: 999
	; LineNumber: 998
localVariable_GetObjectByPosFilterComp_mapPos	dc.b	0
	; LineNumber: 998
localVariable_GetObjectByPosFilterComp_colId	dc.b	0
	; LineNumber: 998
localVariable_GetObjectByPosFilterComp_ret	dc.b	0
	; LineNumber: 998
localVariable_GetObjectByPosFilterComp_val	dc.b	0
	; LineNumber: 996
localVariable_GetObjectByPosFilterComp_x	dc.b	0
	; LineNumber: 996
localVariable_GetObjectByPosFilterComp_y	dc.b	0
	; LineNumber: 996
localVariable_GetObjectByPosFilterComp_z	dc.b	0
	; LineNumber: 996
localVariable_GetObjectByPosFilterComp_comp	dc.b	0
	; LineNumber: 996
localVariable_GetObjectByPosFilterComp_compIdx	dc.b	0
GetObjectByPosFilterComp_block2253
GetObjectByPosFilterComp
	; LineNumber: 1000
	lda localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1001
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
	; LineNumber: 1002
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjectByPosFilterComp_y
	lda ystart,x 
	clc
	adc localVariable_GetObjectByPosFilterComp_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_mapPos
	; LineNumber: 1007
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjectByPosFilterComp_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_colId
	; LineNumber: 1008
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjectByPosFilterComp_elsedoneblock2257
GetObjectByPosFilterComp_ConditionalTrueBlock2255: ;Main true block ;keep 
	; LineNumber: 1008
	; LineNumber: 1009
	lda #$0
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2276
	; LineNumber: 1009
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjectByPosFilterComp_colId
	lda objectList_gobject_gobject_component0,x 
	and localVariable_GetObjectByPosFilterComp_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_val
	jmp GetObjectByPosFilterComp_caseend2275
GetObjectByPosFilterComp_casenext2276
	lda #$1
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2278
	; LineNumber: 1010
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjectByPosFilterComp_colId
	lda objectList_gobject_gobject_component1,x 
	and localVariable_GetObjectByPosFilterComp_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_val
	jmp GetObjectByPosFilterComp_caseend2275
GetObjectByPosFilterComp_casenext2278
	lda #$2
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2280
	; LineNumber: 1011
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjectByPosFilterComp_colId
	lda objectList_gobject_gobject_component2,x 
	and localVariable_GetObjectByPosFilterComp_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_val
	jmp GetObjectByPosFilterComp_caseend2275
GetObjectByPosFilterComp_casenext2280
	lda #$3
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2282
	; LineNumber: 1012
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjectByPosFilterComp_colId
	lda objectList_gobject_gobject_component3,x 
	and localVariable_GetObjectByPosFilterComp_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_val
GetObjectByPosFilterComp_casenext2282
GetObjectByPosFilterComp_caseend2275
	; LineNumber: 1015
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjectByPosFilterComp_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjectByPosFilterComp_comp;keep
	bne GetObjectByPosFilterComp_elsedoneblock2287
GetObjectByPosFilterComp_ConditionalTrueBlock2285: ;Main true block ;keep 
	; LineNumber: 1014
	lda localVariable_GetObjectByPosFilterComp_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
GetObjectByPosFilterComp_elsedoneblock2287
	; LineNumber: 1016
GetObjectByPosFilterComp_elsedoneblock2257
	; LineNumber: 1019
	; LineNumber: 1019
	lda localVariable_GetObjectByPosFilterComp_ret
	rts
end_procedure_GetObjectByPosFilterComp
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetObjArea
	;    Procedure type : User-defined procedure
	; LineNumber: 1025
	; LineNumber: 1023
localVariable_GetObjArea_gravity	dc.b	0
	; LineNumber: 1024
localVariable_GetObjArea_mapPos	dc.b	0
	; LineNumber: 1024
localVariable_GetObjArea_colId	dc.b	0
	; LineNumber: 1024
localVariable_GetObjArea_ret	dc.b	0
	; LineNumber: 1024
localVariable_GetObjArea_val	dc.b	0
	; LineNumber: 1024
localVariable_GetObjArea_gpos	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_id	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_z	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_pos	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_comp	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_compIdx	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_b_norm	dc.b	0
GetObjArea_block2290
GetObjArea
	; LineNumber: 1029
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
	; LineNumber: 1030
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_GetObjArea_b_norm
	; cmp #$00 ignored
	bne GetObjArea_elseblock2293
GetObjArea_ConditionalTrueBlock2292: ;Main true block ;keep 
	; LineNumber: 1030
	; LineNumber: 1031
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_component0,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne GetObjArea_elsedoneblock2411
GetObjArea_ConditionalTrueBlock2409: ;Main true block ;keep 
	; LineNumber: 1030
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
GetObjArea_elsedoneblock2411
	; LineNumber: 1033
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne GetObjArea_elseblock2416
GetObjArea_ConditionalTrueBlock2415: ;Main true block ;keep 
	; LineNumber: 1032
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2417
GetObjArea_elseblock2416
	; LineNumber: 1033
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne GetObjArea_elseblock2472
GetObjArea_ConditionalTrueBlock2471: ;Main true block ;keep 
	; LineNumber: 1033
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaUp,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2473
GetObjArea_elseblock2472
	; LineNumber: 1034
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GetObjArea_elseblock2500
GetObjArea_ConditionalTrueBlock2499: ;Main true block ;keep 
	; LineNumber: 1034
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaLeft,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2501
GetObjArea_elseblock2500
	; LineNumber: 1035
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne GetObjArea_elsedoneblock2515
GetObjArea_ConditionalTrueBlock2513: ;Main true block ;keep 
	; LineNumber: 1035
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaRight,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
GetObjArea_elsedoneblock2515
GetObjArea_elsedoneblock2501
GetObjArea_elsedoneblock2473
GetObjArea_elsedoneblock2417
	jmp GetObjArea_elsedoneblock2294
GetObjArea_elseblock2293
	; LineNumber: 1037
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
GetObjArea_elsedoneblock2294
	; LineNumber: 1040
	lda localVariable_GetObjArea_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1042
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionMapPos_startx
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionMapPos_starty
	lda localVariable_GetObjArea_gpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionMapPos_pos
	jsr CalcPositionMapPos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_mapPos
	; LineNumber: 1043
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjArea_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_colId
	; LineNumber: 1044
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
	; LineNumber: 1045
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_GetObjArea_colId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjArea_elsedoneblock2522
GetObjArea_ConditionalTrueBlock2520: ;Main true block ;keep 
	; LineNumber: 1045
	; LineNumber: 1046
	lda #$0
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2541
	; LineNumber: 1046
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_colId
	lda objectList_gobject_gobject_component0,x 
	and localVariable_GetObjArea_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_val
	jmp GetObjArea_caseend2540
GetObjArea_casenext2541
	lda #$1
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2543
	; LineNumber: 1047
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_colId
	lda objectList_gobject_gobject_component1,x 
	and localVariable_GetObjArea_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_val
	jmp GetObjArea_caseend2540
GetObjArea_casenext2543
	lda #$2
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2545
	; LineNumber: 1048
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_colId
	lda objectList_gobject_gobject_component2,x 
	and localVariable_GetObjArea_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_val
	jmp GetObjArea_caseend2540
GetObjArea_casenext2545
	lda #$3
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2547
	; LineNumber: 1049
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_colId
	lda objectList_gobject_gobject_component3,x 
	and localVariable_GetObjArea_comp
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_val
GetObjArea_casenext2547
GetObjArea_caseend2540
	; LineNumber: 1052
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjArea_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjArea_comp;keep
	bne GetObjArea_elsedoneblock2552
GetObjArea_ConditionalTrueBlock2550: ;Main true block ;keep 
	; LineNumber: 1051
	lda localVariable_GetObjArea_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
GetObjArea_elsedoneblock2552
	; LineNumber: 1053
GetObjArea_elsedoneblock2522
	; LineNumber: 1055
	; LineNumber: 1055
	lda localVariable_GetObjArea_ret
	rts
end_procedure_GetObjArea
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionX
	;    Procedure type : User-defined procedure
	; LineNumber: 1060
	; LineNumber: 1059
localVariable_CalcPositionX_destx	dc.b	0
	; LineNumber: 1057
localVariable_CalcPositionX_startx	dc.b	0
	; LineNumber: 1057
localVariable_CalcPositionX_offsetx	dc.b	0
CalcPositionX_block2555
CalcPositionX
	; LineNumber: 1061
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionX_startx
	clc
	adc localVariable_CalcPositionX_offsetx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	; LineNumber: 1062
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionX_elseblock2558
CalcPositionX_ConditionalTrueBlock2557: ;Main true block ;keep 
	; LineNumber: 1061
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	jmp CalcPositionX_elsedoneblock2559
CalcPositionX_elseblock2558
	; LineNumber: 1062
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionX_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPositionX_elsedoneblock2573
CalcPositionX_ConditionalTrueBlock2571: ;Main true block ;keep 
	; LineNumber: 1062
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
CalcPositionX_elsedoneblock2573
CalcPositionX_elsedoneblock2559
	; LineNumber: 1065
	; LineNumber: 1065
	lda localVariable_CalcPositionX_destx
	rts
end_procedure_CalcPositionX
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionY
	;    Procedure type : User-defined procedure
	; LineNumber: 1070
	; LineNumber: 1069
localVariable_CalcPositionY_desty	dc.b	0
	; LineNumber: 1067
localVariable_CalcPositionY_starty	dc.b	0
	; LineNumber: 1067
localVariable_CalcPositionY_offsety	dc.b	0
CalcPositionY_block2576
CalcPositionY
	; LineNumber: 1071
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionY_starty
	clc
	adc localVariable_CalcPositionY_offsety
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	; LineNumber: 1072
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionY_elseblock2579
CalcPositionY_ConditionalTrueBlock2578: ;Main true block ;keep 
	; LineNumber: 1071
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	jmp CalcPositionY_elsedoneblock2580
CalcPositionY_elseblock2579
	; LineNumber: 1072
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionY_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPositionY_elsedoneblock2594
CalcPositionY_ConditionalTrueBlock2592: ;Main true block ;keep 
	; LineNumber: 1072
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
CalcPositionY_elsedoneblock2594
CalcPositionY_elsedoneblock2580
	; LineNumber: 1075
	; LineNumber: 1075
	lda localVariable_CalcPositionY_desty
	rts
end_procedure_CalcPositionY
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ChangeMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1081
	; LineNumber: 1079
localVariable_ChangeMapItem_oldpos	dc.b	0
	; LineNumber: 1080
localVariable_ChangeMapItem_pos	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_id	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_oldx	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_oldy	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_x	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_y	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_z	dc.b	0
ChangeMapItem_block2597
ChangeMapItem
	; LineNumber: 1082
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ChangeMapItem_oldy
	lda ystart,x 
	clc
	adc localVariable_ChangeMapItem_oldx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_oldpos
	; LineNumber: 1083
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ChangeMapItem_y
	lda ystart,x 
	clc
	adc localVariable_ChangeMapItem_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_pos
	; LineNumber: 1084
	lda localVariable_ChangeMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1089
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_oldpos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1090
	lda localVariable_ChangeMapItem_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1092
	
; // ##
	lda localVariable_ChangeMapItem_oldpos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1093
	lda localVariable_ChangeMapItem_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1094
	rts
end_procedure_ChangeMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1100
	; LineNumber: 1098
localVariable_UpdateMapItem_oldpos	dc.b	0
	; LineNumber: 1099
localVariable_UpdateMapItem_pos	dc.b	0
	; LineNumber: 1096
localVariable_UpdateMapItem_id	dc.b	0
	; LineNumber: 1096
localVariable_UpdateMapItem_x	dc.b	0
	; LineNumber: 1096
localVariable_UpdateMapItem_y	dc.b	0
UpdateMapItem_block2598
UpdateMapItem
	; LineNumber: 1101
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateMapItem_y
	lda ystart,x 
	clc
	adc localVariable_UpdateMapItem_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_pos
	; LineNumber: 1105
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1106
	rts
end_procedure_UpdateMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetPos
	;    Procedure type : User-defined procedure
	; LineNumber: 1112
	; LineNumber: 1110
localVariable_SetPos_pos	dc.b	0
	; LineNumber: 1111
localVariable_SetPos_waypointId	dc.b	0
	; LineNumber: 1111
localVariable_SetPos_lastWaypointId	dc.b	0
	; LineNumber: 1111
localVariable_SetPos_controlId	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_i	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_oldx	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_oldy	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_x	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_y	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_z	dc.b	0
SetPos_block2599
SetPos
	; LineNumber: 1116
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SetPos_y
	lda ystart,x 
	clc
	adc localVariable_SetPos_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_pos
	; LineNumber: 1120
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SetPos_i
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_controlId
	; LineNumber: 1120
	; Test Inc dec D
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1123
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq SetPos_localfailed2617
	jmp SetPos_ConditionalTrueBlock2601
SetPos_localfailed2617
	jmp SetPos_elsedoneblock2603
SetPos_ConditionalTrueBlock2601: ;Main true block ;keep 
	; LineNumber: 1123
	; LineNumber: 1124
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_waypointId
	; LineNumber: 1125
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_elsedoneblock2622
SetPos_ConditionalTrueBlock2620: ;Main true block ;keep 
	; LineNumber: 1125
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_waypointId
SetPos_elsedoneblock2622
	; LineNumber: 1127
	lda localVariable_SetPos_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_SetPos_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_lastWaypointId
	; LineNumber: 1128
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_elsedoneblock2628
SetPos_ConditionalTrueBlock2626: ;Main true block ;keep 
	; LineNumber: 1128
	lda localVariable_SetPos_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_SetPos_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_lastWaypointId
SetPos_elsedoneblock2628
	; LineNumber: 1130
	lda localVariable_SetPos_waypointId
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_waypointId,x
	; LineNumber: 1131
	lda localVariable_SetPos_lastWaypointId
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1132
SetPos_elsedoneblock2603
	; LineNumber: 1134
	lda localVariable_SetPos_i
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_id
	lda localVariable_SetPos_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_oldx
	lda localVariable_SetPos_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_oldy
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_x
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_y
	lda localVariable_SetPos_z
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_z
	jsr ChangeMapItem
	; LineNumber: 1135
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_i ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1136
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1137
	rts
end_procedure_SetPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetZLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 1142
	; LineNumber: 1141
localVariable_SetZLayer_pos	dc.b	0
	; LineNumber: 1139
localVariable_SetZLayer_id	dc.b	0
	; LineNumber: 1139
localVariable_SetZLayer_oldz	dc.b	0
	; LineNumber: 1139
localVariable_SetZLayer_newz	dc.b	0
SetZLayer_block2631
SetZLayer
	; LineNumber: 1143
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SetZLayer_id
	lda objectList_gobject_gobject_transX,x 
	clc
	; Load Byte array
	; CAST type NADA
	pha
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	tax
	pla
	adc ystart,x 
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_pos
	; LineNumber: 1146
	; Test Inc dec D
	ldx localVariable_SetZLayer_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1148
	lda localVariable_SetZLayer_oldz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1149
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1150
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1151
	lda localVariable_SetZLayer_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1152
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	ldx localVariable_SetZLayer_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1153
	lda localVariable_SetZLayer_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1154
	rts
end_procedure_SetZLayer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1159
	; LineNumber: 1158
localVariable_AddMapItem_pos	dc.b	0
	; LineNumber: 1156
localVariable_AddMapItem_Id	dc.b	0
	; LineNumber: 1156
localVariable_AddMapItem_x	dc.b	0
	; LineNumber: 1156
localVariable_AddMapItem_y	dc.b	0
	; LineNumber: 1156
localVariable_AddMapItem_z	dc.b	0
AddMapItem_block2632
AddMapItem
	; LineNumber: 1160
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_AddMapItem_y
	lda ystart,x 
	clc
	adc localVariable_AddMapItem_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_pos
	; LineNumber: 1161
	lda localVariable_AddMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1166
	lda localVariable_AddMapItem_Id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_AddMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1167
	rts
end_procedure_AddMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearMap
	;    Procedure type : User-defined procedure
	; LineNumber: 1172
	; LineNumber: 1171
localVariable_ClearMap_m	dc.b	0
ClearMap_block2633
ClearMap
	; LineNumber: 1180
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearMap_m
ClearMap_forloop2634
	; LineNumber: 1174
	; LineNumber: 1175
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ClearMap_m ; optimized, look out for bugs
	sta mapback2,x
	; LineNumber: 1176
	; Calling storevariable on generic assign expression
	sta mapback1,x
	; LineNumber: 1177
	; Calling storevariable on generic assign expression
	sta mapmain,x
	; LineNumber: 1178
	; Calling storevariable on generic assign expression
	sta mapfront,x
	; LineNumber: 1179
ClearMap_loopstart2635
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearMap_m
	lda #$f0
	cmp localVariable_ClearMap_m ;keep
	bne ClearMap_forloop2634
ClearMap_loopdone2639: ;keep
ClearMap_loopend2636
	; LineNumber: 1180
	lda #$ff
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 1181
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 1182
	rts
end_procedure_ClearMap
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddDynItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1185
	; LineNumber: 1184
localVariable_AddDynItem_i	dc.b	0
AddDynItem_block2640
AddDynItem
	; LineNumber: 1186
	lda localVariable_AddDynItem_i
	; Calling storevariable on generic assign expression
	ldx countDyn ; optimized, look out for bugs
	sta dynObjectList,x
	; LineNumber: 1187
	; Test Inc dec D
	inc countDyn
	; LineNumber: 1188
	rts
end_procedure_AddDynItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddAnimItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1191
	; LineNumber: 1190
localVariable_AddAnimItem_i	dc.b	0
AddAnimItem_block2641
AddAnimItem
	; LineNumber: 1192
	lda localVariable_AddAnimItem_i
	; Calling storevariable on generic assign expression
	ldx countAnim ; optimized, look out for bugs
	sta animObjectList,x
	; LineNumber: 1193
	; Test Inc dec D
	inc countAnim
	; LineNumber: 1194
	rts
end_procedure_AddAnimItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetId
	;    Procedure type : User-defined procedure
	; LineNumber: 1198
	; LineNumber: 1197
localVariable_GetId_ret	dc.b	0
GetId_block2642
GetId
	; LineNumber: 1199
	; Binary clause Simplified: EQUALS
	lda countObjects
	; Compare with pure num / var optimization
	cmp #$c8;keep
	bne GetId_elseblock2645
GetId_ConditionalTrueBlock2644: ;Main true block ;keep 
	; LineNumber: 1198
	; LineNumber: 1200
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetId_ret
	; LineNumber: 1202
	jmp GetId_elsedoneblock2646
GetId_elseblock2645
	; LineNumber: 1201
	; LineNumber: 1203
	; Test Inc dec D
	inc countObjects
	; LineNumber: 1204
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #199
	sec
	sbc countObjects
	 ; end add / sub var with constant
	tax
	lda deletedObjects,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetId_ret
	; LineNumber: 1205
GetId_elsedoneblock2646
	; LineNumber: 1208
	; LineNumber: 1208
	lda localVariable_GetId_ret
	rts
end_procedure_GetId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetLaserEmitId
	;    Procedure type : User-defined procedure
	; LineNumber: 1213
	; LineNumber: 1212
localVariable_GetLaserEmitId_ret	dc.b	0
GetLaserEmitId_block2651
GetLaserEmitId
	; LineNumber: 1214
	; Binary clause Simplified: EQUALS
	lda countLasers
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne GetLaserEmitId_elseblock2654
GetLaserEmitId_ConditionalTrueBlock2653: ;Main true block ;keep 
	; LineNumber: 1213
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	jmp GetLaserEmitId_elsedoneblock2655
GetLaserEmitId_elseblock2654
	; LineNumber: 1214
	; LineNumber: 1216
	; Test Inc dec D
	inc countLasers
	; LineNumber: 1217
	lda countLasers
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	; LineNumber: 1218
GetLaserEmitId_elsedoneblock2655
	; LineNumber: 1221
	; LineNumber: 1221
	lda localVariable_GetLaserEmitId_ret
	rts
end_procedure_GetLaserEmitId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintFull
	;    Procedure type : User-defined procedure
	; LineNumber: 1226
	; LineNumber: 1225
localVariable_PaintFull_i	dc.b	0
PaintFull_block2660
PaintFull
	; LineNumber: 1231
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintFull_i
PaintFull_forloop2661
	; LineNumber: 1228
	; LineNumber: 1229
	lda localVariable_PaintFull_i
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1230
PaintFull_loopstart2662
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_PaintFull_i
	lda #$f0
	cmp localVariable_PaintFull_i ;keep
	bne PaintFull_forloop2661
PaintFull_loopdone2666: ;keep
PaintFull_loopend2663
	; LineNumber: 1231
	rts
end_procedure_PaintFull
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1236
	; LineNumber: 1235
localVariable_DeleteMapItem_pos	dc.b	0
	; LineNumber: 1233
localVariable_DeleteMapItem_id	dc.b	0
	; LineNumber: 1233
localVariable_DeleteMapItem_x	dc.b	0
	; LineNumber: 1233
localVariable_DeleteMapItem_y	dc.b	0
	; LineNumber: 1233
localVariable_DeleteMapItem_z	dc.b	0
DeleteMapItem_block2667
DeleteMapItem
	; LineNumber: 1237
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteMapItem_y
	lda ystart,x 
	clc
	adc localVariable_DeleteMapItem_x
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteMapItem_pos
	; LineNumber: 1238
	lda localVariable_DeleteMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1239
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_DeleteMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1240
	rts
end_procedure_DeleteMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteDynObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1246
	; LineNumber: 1244
localVariable_DeleteDynObject_i	dc.b	0
	; LineNumber: 1244
localVariable_DeleteDynObject_j	dc.b	0
	; LineNumber: 1245
localVariable_DeleteDynObject_found	dc.b	0
	; LineNumber: 1242
localVariable_DeleteDynObject_id	dc.b	0
DeleteDynObject_block2668
DeleteDynObject
	; LineNumber: 1247
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_i
	; LineNumber: 1248
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	; LineNumber: 1249
DeleteDynObject_while2669
DeleteDynObject_loopstart2673
	; Swapped comparison expressions
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda countDyn
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp localVariable_DeleteDynObject_i;keep
	bcc DeleteDynObject_elsedoneblock2672
	beq DeleteDynObject_elsedoneblock2672
DeleteDynObject_localsuccess2684: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DeleteDynObject_found
	; cmp #$00 ignored
	bne DeleteDynObject_elsedoneblock2672
DeleteDynObject_ConditionalTrueBlock2670: ;Main true block ;keep 
	; LineNumber: 1250
	; LineNumber: 1251
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteDynObject_i
	lda dynObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteDynObject_id;keep
	bne DeleteDynObject_elseblock2688
DeleteDynObject_ConditionalTrueBlock2687: ;Main true block ;keep 
	; LineNumber: 1251
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	jmp DeleteDynObject_elsedoneblock2689
DeleteDynObject_elseblock2688
	; LineNumber: 1253
	; Test Inc dec D
	inc localVariable_DeleteDynObject_i
DeleteDynObject_elsedoneblock2689
	; LineNumber: 1255
	jmp DeleteDynObject_while2669
DeleteDynObject_elsedoneblock2672
DeleteDynObject_loopend2674
	; LineNumber: 1256
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteDynObject_found
	; cmp #$00 ignored
	beq DeleteDynObject_elsedoneblock2697
DeleteDynObject_ConditionalTrueBlock2695: ;Main true block ;keep 
	; LineNumber: 1256
	; LineNumber: 1256
	; Test Inc dec D
	dec countDyn
	; LineNumber: 1261
	lda localVariable_DeleteDynObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_j
DeleteDynObject_forloop2706
	; LineNumber: 1258
	; LineNumber: 1259
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_DeleteDynObject_j
	clc
	adc #$1
	 ; end add / sub var with constant
	tax
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_DeleteDynObject_j ; optimized, look out for bugs
	sta dynObjectList,x
	; LineNumber: 1260
DeleteDynObject_loopstart2707
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteDynObject_j
	lda countDyn
	cmp localVariable_DeleteDynObject_j ;keep
	bne DeleteDynObject_forloop2706
DeleteDynObject_loopdone2711: ;keep
DeleteDynObject_loopend2708
	; LineNumber: 1261
DeleteDynObject_elsedoneblock2697
	; LineNumber: 1262
	rts
end_procedure_DeleteDynObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteAnimObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1268
	; LineNumber: 1266
localVariable_DeleteAnimObject_i	dc.b	0
	; LineNumber: 1266
localVariable_DeleteAnimObject_j	dc.b	0
	; LineNumber: 1267
localVariable_DeleteAnimObject_found	dc.b	0
	; LineNumber: 1264
localVariable_DeleteAnimObject_id	dc.b	0
DeleteAnimObject_block2712
DeleteAnimObject
	; LineNumber: 1269
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_i
	; LineNumber: 1270
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	; LineNumber: 1271
DeleteAnimObject_while2713
DeleteAnimObject_loopstart2717
	; Swapped comparison expressions
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda countAnim
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp localVariable_DeleteAnimObject_i;keep
	bcc DeleteAnimObject_elsedoneblock2716
	beq DeleteAnimObject_elsedoneblock2716
DeleteAnimObject_localsuccess2728: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DeleteAnimObject_found
	; cmp #$00 ignored
	bne DeleteAnimObject_elsedoneblock2716
DeleteAnimObject_ConditionalTrueBlock2714: ;Main true block ;keep 
	; LineNumber: 1272
	; LineNumber: 1273
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteAnimObject_i
	lda animObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteAnimObject_id;keep
	bne DeleteAnimObject_elseblock2732
DeleteAnimObject_ConditionalTrueBlock2731: ;Main true block ;keep 
	; LineNumber: 1273
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	jmp DeleteAnimObject_elsedoneblock2733
DeleteAnimObject_elseblock2732
	; LineNumber: 1275
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_i
DeleteAnimObject_elsedoneblock2733
	; LineNumber: 1277
	jmp DeleteAnimObject_while2713
DeleteAnimObject_elsedoneblock2716
DeleteAnimObject_loopend2718
	; LineNumber: 1278
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteAnimObject_found
	; cmp #$00 ignored
	beq DeleteAnimObject_elsedoneblock2741
DeleteAnimObject_ConditionalTrueBlock2739: ;Main true block ;keep 
	; LineNumber: 1278
	; LineNumber: 1278
	; Test Inc dec D
	dec countAnim
	; LineNumber: 1283
	lda localVariable_DeleteAnimObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_j
DeleteAnimObject_forloop2750
	; LineNumber: 1280
	; LineNumber: 1281
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_DeleteAnimObject_j
	clc
	adc #$1
	 ; end add / sub var with constant
	tax
	lda animObjectList,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_DeleteAnimObject_j ; optimized, look out for bugs
	sta animObjectList,x
	; LineNumber: 1282
DeleteAnimObject_loopstart2751
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_j
	lda countAnim
	cmp localVariable_DeleteAnimObject_j ;keep
	bne DeleteAnimObject_forloop2750
DeleteAnimObject_loopdone2755: ;keep
DeleteAnimObject_loopend2752
	; LineNumber: 1283
DeleteAnimObject_elsedoneblock2741
	; LineNumber: 1284
	rts
end_procedure_DeleteAnimObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeletePos
	;    Procedure type : User-defined procedure
	; LineNumber: 1289
	; LineNumber: 1288
localVariable_DeletePos_x	dc.b	0
	; LineNumber: 1288
localVariable_DeletePos_y	dc.b	0
	; LineNumber: 1286
localVariable_DeletePos_id	dc.b	0
	; LineNumber: 1286
localVariable_DeletePos_isDyn	dc.b	0
	; LineNumber: 1286
localVariable_DeletePos_isAnim	dc.b	0
DeletePos_block2756
DeletePos
	; LineNumber: 1290
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda countObjects
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DeletePos_localfailed2774
	jmp DeletePos_ConditionalTrueBlock2758
DeletePos_localfailed2774
	jmp DeletePos_elsedoneblock2760
DeletePos_ConditionalTrueBlock2758: ;Main true block ;keep 
	; LineNumber: 1290
	; LineNumber: 1291
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	pha
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #199
	sec
	sbc countObjects
	 ; end add / sub var with constant
	tax
	pla
	sta deletedObjects,x
	; LineNumber: 1292
	; Test Inc dec D
	dec countObjects
	; LineNumber: 1293
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteMapItem_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeletePos_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteMapItem_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteMapItem_y
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteMapItem_z
	jsr DeleteMapItem
	; LineNumber: 1294
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isDyn
	; cmp #$00 ignored
	beq DeletePos_elsedoneblock2779
DeletePos_ConditionalTrueBlock2777: ;Main true block ;keep 
	; LineNumber: 1294
	; LineNumber: 1295
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_id
	jsr DeleteDynObject
	; LineNumber: 1296
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeletePos_id
	lda objectList_gobject_gobject_transX,x 
	clc
	; Load Byte array
	; CAST type NADA
	pha
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	tax
	pla
	adc ystart,x 
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1297
DeletePos_elsedoneblock2779
	; LineNumber: 1299
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isAnim
	; cmp #$00 ignored
	beq DeletePos_elsedoneblock2785
DeletePos_ConditionalTrueBlock2783: ;Main true block ;keep 
	; LineNumber: 1298
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_id
	jsr DeleteAnimObject
DeletePos_elsedoneblock2785
	; LineNumber: 1300
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeletePos_id
	lda objectList_gobject_gobject_transX,x 
	clc
	; Load Byte array
	; CAST type NADA
	pha
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	tax
	pla
	adc ystart,x 
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1301
DeletePos_elsedoneblock2760
	; LineNumber: 1302
	rts
end_procedure_DeletePos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchBank
	;    Procedure type : User-defined procedure
	; LineNumber: 1305
SwitchBank
	; LineNumber: 1306
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne SwitchBank_elseblock2791
SwitchBank_ConditionalTrueBlock2790: ;Main true block ;keep 
	; LineNumber: 1307
	; LineNumber: 1308
	lda #$fe
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1309
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	ora #$80
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1310
	lda #$1
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1312
	jmp SwitchBank_elsedoneblock2792
SwitchBank_elseblock2791
	; LineNumber: 1313
	; LineNumber: 1314
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1315
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1316
	lda #$0
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1317
SwitchBank_elsedoneblock2792
	; LineNumber: 1318
	rts
end_procedure_SwitchBank
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CycleAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1325
	; LineNumber: 1322
localVariable_CycleAnimation_animId	dc.b	0
	; LineNumber: 1323
localVariable_CycleAnimation_pa	= $72
	; LineNumber: 1320
localVariable_CycleAnimation_id	dc.b	0
CycleAnimation_block2797
CycleAnimation
	; LineNumber: 1326
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CycleAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_animId
	; LineNumber: 1327
	; Generic 16 bit op
	lda #<animList
	ldy #>animList
CycleAnimation_rightvarInteger_var2800 = $88
	sta CycleAnimation_rightvarInteger_var2800
	sty CycleAnimation_rightvarInteger_var2800+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$8
	sta mul16x8_num1
	sty mul16x8_num1Hi
	; Load16bitvariable : localVariable_CycleAnimation_animId
	lda localVariable_CycleAnimation_animId
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc CycleAnimation_rightvarInteger_var2800
CycleAnimation_wordAdd2798
	sta CycleAnimation_rightvarInteger_var2800
	; High-bit binop
	tya
	adc CycleAnimation_rightvarInteger_var2800+1
	tay
	lda CycleAnimation_rightvarInteger_var2800
	sta localVariable_CycleAnimation_pa
	sty localVariable_CycleAnimation_pa+1
	; LineNumber: 1328
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CycleAnimation_id
	lda objectList_gobject_gobject_animPos,x 
CycleAnimation_binary_clause_temp_var2815 = $88
	sta CycleAnimation_binary_clause_temp_var2815
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_CycleAnimation_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
CycleAnimation_binary_clause_temp_2_var2816 = $8A
	sta CycleAnimation_binary_clause_temp_2_var2816
	lda CycleAnimation_binary_clause_temp_var2815
	cmp CycleAnimation_binary_clause_temp_2_var2816;keep
	bne CycleAnimation_elseblock2803
CycleAnimation_ConditionalTrueBlock2802: ;Main true block ;keep 
	; LineNumber: 1328
	; LineNumber: 1329
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_CycleAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1330
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1332
	jmp CycleAnimation_elsedoneblock2804
CycleAnimation_elseblock2803
	; LineNumber: 1331
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_CycleAnimation_pa),y
CycleAnimation_val_var2824 = $88
	sta CycleAnimation_val_var2824
	lda globaltime
	sec
CycleAnimation_modulo2825
	sbc CycleAnimation_val_var2824
	bcs CycleAnimation_modulo2825
	adc CycleAnimation_val_var2824
	; cmp #$00 ignored
	bne CycleAnimation_elsedoneblock2822
CycleAnimation_ConditionalTrueBlock2820: ;Main true block ;keep 
	; LineNumber: 1331
	; Test Inc dec D
	ldx localVariable_CycleAnimation_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
CycleAnimation_elsedoneblock2822
CycleAnimation_elsedoneblock2804
	; LineNumber: 1333
	rts
end_procedure_CycleAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1336
	; LineNumber: 1335
localVariable_SwitchAnimation_id	dc.b	0
	; LineNumber: 1335
localVariable_SwitchAnimation_anim	dc.b	0
SwitchAnimation_block2827
SwitchAnimation
	; LineNumber: 1337
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SwitchAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp localVariable_SwitchAnimation_anim;keep
	beq SwitchAnimation_elsedoneblock2831
SwitchAnimation_ConditionalTrueBlock2829: ;Main true block ;keep 
	; LineNumber: 1337
	; LineNumber: 1338
	lda localVariable_SwitchAnimation_anim
	; Calling storevariable on generic assign expression
	ldx localVariable_SwitchAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1339
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1340
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1341
SwitchAnimation_elsedoneblock2831
	; LineNumber: 1342
	rts
end_procedure_SwitchAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearLaserWithTag
	;    Procedure type : User-defined procedure
	; LineNumber: 1348
	; LineNumber: 1346
localVariable_ClearLaserWithTag_i	dc.b	0
	; LineNumber: 1346
localVariable_ClearLaserWithTag_varPrefixed_c	dc.b	0
	; LineNumber: 1347
localVariable_ClearLaserWithTag_varPrefixed_d	dc.b	0
	; LineNumber: 1344
localVariable_ClearLaserWithTag_tag	dc.b	0
ClearLaserWithTag_block2834
ClearLaserWithTag
	; LineNumber: 1363
	;		c := mapback2[i];
; //		if(c <> $FF and (objectList[c].component0 & 32 = 32 and objectList[c].laserTag <> $FF)) then begin 
; //			DeletePos(c, false, false);
; //		end;
; //		
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_i
ClearLaserWithTag_forloop2835
	; LineNumber: 1349
	; LineNumber: 1351
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_varPrefixed_c
	; LineNumber: 1352
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearLaserWithTag_elsedoneblock2862
ClearLaserWithTag_localsuccess2870: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp localVariable_ClearLaserWithTag_tag;keep
	bne ClearLaserWithTag_elsedoneblock2862
ClearLaserWithTag_ConditionalTrueBlock2860: ;Main true block ;keep 
	; LineNumber: 1352
	; LineNumber: 1353
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_varPrefixed_c
	lda objectList_gobject_gobject_component2,x 
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne ClearLaserWithTag_elsedoneblock2875
ClearLaserWithTag_ConditionalTrueBlock2873: ;Main true block ;keep 
	; LineNumber: 1352
	; LineNumber: 1354
	lda localVariable_ClearLaserWithTag_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1355
ClearLaserWithTag_elsedoneblock2875
	; LineNumber: 1356
ClearLaserWithTag_elsedoneblock2862
	; LineNumber: 1362
ClearLaserWithTag_loopstart2836
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearLaserWithTag_i
	lda #$f0
	cmp localVariable_ClearLaserWithTag_i ;keep
	bne ClearLaserWithTag_forloop2835
ClearLaserWithTag_loopdone2878: ;keep
ClearLaserWithTag_loopend2837
	; LineNumber: 1363
	rts
end_procedure_ClearLaserWithTag
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearAllLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 1370
	; LineNumber: 1368
localVariable_ClearAllLaser_i	dc.b	0
	; LineNumber: 1368
localVariable_ClearAllLaser_varPrefixed_c	dc.b	0
	; LineNumber: 1369
localVariable_ClearAllLaser_varPrefixed_d	dc.b	0
ClearAllLaser_block2879
ClearAllLaser
	; LineNumber: 1384
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_i
ClearAllLaser_forloop2880
	; LineNumber: 1371
	; LineNumber: 1373
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1374
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_elsedoneblock2917
ClearAllLaser_localsuccess2926: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_elsedoneblock2917
ClearAllLaser_ConditionalTrueBlock2915: ;Main true block ;keep 
	; LineNumber: 1374
	; LineNumber: 1375
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_component2,x 
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne ClearAllLaser_localfailed2933
	jmp ClearAllLaser_ConditionalTrueBlock2929
ClearAllLaser_localfailed2933: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_component0,x 
	and #$20
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne ClearAllLaser_elsedoneblock2931
ClearAllLaser_ConditionalTrueBlock2929: ;Main true block ;keep 
	; LineNumber: 1374
	; LineNumber: 1376
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1377
ClearAllLaser_elsedoneblock2931
	; LineNumber: 1378
ClearAllLaser_elsedoneblock2917
	; LineNumber: 1379
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1380
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_elsedoneblock2938
ClearAllLaser_localsuccess2940: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_component0,x 
	and #$20
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne ClearAllLaser_elsedoneblock2938
ClearAllLaser_localsuccess2941: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_elsedoneblock2938
ClearAllLaser_ConditionalTrueBlock2936: ;Main true block ;keep 
	; LineNumber: 1379
	; LineNumber: 1381
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1382
ClearAllLaser_elsedoneblock2938
	; LineNumber: 1383
ClearAllLaser_loopstart2881
	; Test Inc dec D
	inc localVariable_ClearAllLaser_i
	lda #$f0
	cmp localVariable_ClearAllLaser_i ;keep
	beq ClearAllLaser_loopdone2943
ClearAllLaser_loopnotdone2944
	jmp ClearAllLaser_forloop2880
ClearAllLaser_loopdone2943
ClearAllLaser_loopend2882
	; LineNumber: 1384
	rts
end_procedure_ClearAllLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DirectFire
	;    Procedure type : User-defined procedure
	; LineNumber: 1395
	; LineNumber: 1388
localVariable_DirectFire_laserEmitId	dc.b	0
	; LineNumber: 1389
localVariable_DirectFire_laserId	dc.b	0
	; LineNumber: 1390
localVariable_DirectFire_collideId	dc.b	0
	; LineNumber: 1390
localVariable_DirectFire_floaterId	dc.b	0
	; LineNumber: 1391
localVariable_DirectFire_collide	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_laserx	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_lasery	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_lastx	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_lasty	dc.b	0
	; LineNumber: 1393
localVariable_DirectFire_countLaser	dc.b	0
	; LineNumber: 1394
localVariable_DirectFire_dir	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_tileUp	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_tileDown	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_tileLeft	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_tileRight	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_z	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_comp0	dc.b	0
	; LineNumber: 1395
localVariable_DirectFire_comp2	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_id	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_xpos	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_ypos	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_xdir	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_ydir	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_bomb	dc.b	0
DirectFire_block2945
DirectFire
	; LineNumber: 1397
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_id
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_localfailed5012
	jmp DirectFire_ConditionalTrueBlock2947
DirectFire_localfailed5012
	jmp DirectFire_elsedoneblock2949
DirectFire_ConditionalTrueBlock2947: ;Main true block ;keep 
	; LineNumber: 1397
	; LineNumber: 1398
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserEmitId
	; LineNumber: 1399
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	beq DirectFire_elseblock5016
DirectFire_ConditionalTrueBlock5015: ;Main true block ;keep 
	; LineNumber: 1399
	; LineNumber: 1400
	lda #$58
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1401
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1402
	lda #$59
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1403
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1404
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1405
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1406
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1408
	jmp DirectFire_elsedoneblock5017
DirectFire_elseblock5016
	; LineNumber: 1408
	; LineNumber: 1409
	lda #$7e
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1410
	lda #$7f
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1411
	lda #$7c
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1412
	lda #$7d
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1413
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1414
	lda #$22
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1415
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1416
DirectFire_elsedoneblock5017
	; LineNumber: 1418
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1419
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1420
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1421
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1422
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1423
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_countLaser
	; LineNumber: 1424
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collideId
	; LineNumber: 1425
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_floaterId
	; LineNumber: 1426
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_DirectFire_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_elsedoneblock5025
DirectFire_localsuccess5027: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_floaterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_elsedoneblock5025
DirectFire_ConditionalTrueBlock5023: ;Main true block ;keep 
	; LineNumber: 1425
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
DirectFire_elsedoneblock5025
	; LineNumber: 1427
DirectFire_while5029
DirectFire_loopstart5033
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_collide
	; cmp #$00 ignored
	bne DirectFire_localfailed6054
DirectFire_localsuccess6055: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: GREATER
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp localVariable_DirectFire_countLaser;keep
	bcc DirectFire_localfailed6054
	beq DirectFire_localfailed6054
	jmp DirectFire_ConditionalTrueBlock5030
DirectFire_localfailed6054
	jmp DirectFire_elsedoneblock5032
DirectFire_ConditionalTrueBlock5030: ;Main true block ;keep 
	; LineNumber: 1427
	; LineNumber: 1428
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collideId
	; LineNumber: 1429
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_floaterId
	; LineNumber: 1430
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_DirectFire_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_localfailed6567
DirectFire_localsuccess6568: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_floaterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed6567
	jmp DirectFire_ConditionalTrueBlock6058
DirectFire_localfailed6567
	jmp DirectFire_elseblock6059
DirectFire_ConditionalTrueBlock6058: ;Main true block ;keep 
	; LineNumber: 1430
	; LineNumber: 1431
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1433
	jmp DirectFire_elsedoneblock6060
DirectFire_elseblock6059
	; LineNumber: 1433
	; LineNumber: 1435
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_lasery
	lda ystart,x 
	clc
	adc localVariable_DirectFire_laserx
	 ; end add / sub var with constant
	tax
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed6824
DirectFire_localsuccess6825: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	bne DirectFire_localfailed6824
	jmp DirectFire_ConditionalTrueBlock6572
DirectFire_localfailed6824: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_lasery
	lda ystart,x 
	clc
	adc localVariable_DirectFire_laserx
	 ; end add / sub var with constant
	tax
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed6823
DirectFire_localsuccess6826: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	beq DirectFire_localfailed6823
	jmp DirectFire_ConditionalTrueBlock6572
DirectFire_localfailed6823
	jmp DirectFire_elsedoneblock6574
DirectFire_ConditionalTrueBlock6572: ;Main true block ;keep 
	; LineNumber: 1435
	; LineNumber: 1436
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserId
	; LineNumber: 1437
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_localfailed6953
	jmp DirectFire_ConditionalTrueBlock6829
DirectFire_localfailed6953
	jmp DirectFire_elsedoneblock6831
DirectFire_ConditionalTrueBlock6829: ;Main true block ;keep 
	; LineNumber: 1436
	; LineNumber: 1438
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed7016
DirectFire_localsuccess7017: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_ydir
	; cmp #$00 ignored
	bne DirectFire_localfailed7016
	jmp DirectFire_ConditionalTrueBlock6956
DirectFire_localfailed7016
	jmp DirectFire_elseblock6957
DirectFire_ConditionalTrueBlock6956: ;Main true block ;keep 
	; LineNumber: 1437
	; LineNumber: 1439
	lda localVariable_DirectFire_tileLeft
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1440
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1442
	jmp DirectFire_elsedoneblock6958
DirectFire_elseblock6957
	; LineNumber: 1441
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_elseblock7022
DirectFire_localsuccess7049: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_ydir
	; cmp #$00 ignored
	bne DirectFire_elseblock7022
DirectFire_ConditionalTrueBlock7021: ;Main true block ;keep 
	; LineNumber: 1442
	; LineNumber: 1443
	lda localVariable_DirectFire_tileRight
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1444
	lda #$5
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1446
	jmp DirectFire_elsedoneblock7023
DirectFire_elseblock7022
	; LineNumber: 1445
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_xdir
	; cmp #$00 ignored
	bne DirectFire_elseblock7054
DirectFire_localsuccess7065: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_elseblock7054
DirectFire_ConditionalTrueBlock7053: ;Main true block ;keep 
	; LineNumber: 1446
	; LineNumber: 1447
	lda localVariable_DirectFire_tileUp
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1448
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1450
	jmp DirectFire_elsedoneblock7055
DirectFire_elseblock7054
	; LineNumber: 1449
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_xdir
	; cmp #$00 ignored
	bne DirectFire_elsedoneblock7071
DirectFire_localsuccess7073: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_elsedoneblock7071
DirectFire_ConditionalTrueBlock7069: ;Main true block ;keep 
	; LineNumber: 1450
	; LineNumber: 1451
	lda localVariable_DirectFire_tileDown
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1452
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1453
DirectFire_elsedoneblock7071
DirectFire_elsedoneblock7055
DirectFire_elsedoneblock7023
DirectFire_elsedoneblock6958
	; LineNumber: 1454
	lda localVariable_DirectFire_comp0
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1455
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1456
	lda localVariable_DirectFire_comp2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1457
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1458
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1459
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1460
	lda localVariable_DirectFire_z
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1461
	lda localVariable_DirectFire_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 1462
	lda localVariable_DirectFire_laserId
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda localVariable_DirectFire_z
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1463
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_lasery
	lda ystart,x 
	clc
	adc localVariable_DirectFire_laserx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1464
DirectFire_elsedoneblock6831
	; LineNumber: 1465
DirectFire_elsedoneblock6574
	; LineNumber: 1466
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1467
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1468
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1469
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1470
	; Test Inc dec D
	inc localVariable_DirectFire_countLaser
	; LineNumber: 1471
DirectFire_elsedoneblock6060
	; LineNumber: 1472
	jmp DirectFire_while5029
DirectFire_elsedoneblock5032
DirectFire_loopend5034
	; LineNumber: 1473
DirectFire_elsedoneblock2949
	; LineNumber: 1474
	rts
end_procedure_DirectFire
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Animate
	;    Procedure type : User-defined procedure
	; LineNumber: 1480
	; LineNumber: 1478
localVariable_Animate_i	dc.b	0
	; LineNumber: 1479
localVariable_Animate_id	dc.b	0
Animate_block7075
Animate
	; LineNumber: 1481
	; Binary clause Simplified: NOTEQUALS
	clc
	lda countAnim
	; cmp #$00 ignored
	beq Animate_elsedoneblock7079
Animate_ConditionalTrueBlock7077: ;Main true block ;keep 
	; LineNumber: 1481
	; LineNumber: 1486
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_i
Animate_forloop7088
	; LineNumber: 1482
	; LineNumber: 1483
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Animate_i
	lda animObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_id
	; LineNumber: 1484
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Animate_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_y
	jsr UpdateMapItem
	; LineNumber: 1485
Animate_loopstart7089
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Animate_i
	lda countAnim
	cmp localVariable_Animate_i ;keep
	bne Animate_forloop7088
Animate_loopdone7093: ;keep
Animate_loopend7090
	; LineNumber: 1486
Animate_elsedoneblock7079
	; LineNumber: 1487
	rts
end_procedure_Animate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetupSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1496
SetupSound
	; LineNumber: 1497
	jsr StopSounds
	; LineNumber: 1498
	; Poke
	; Optimization: shift is zero
	lda #$f
	sta $900e
	; LineNumber: 1500
	rts
end_procedure_SetupSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PlayNote
	;    Procedure type : User-defined procedure
	; LineNumber: 1503
	; LineNumber: 1502
localVariable_PlayNote_sindex	dc.b	0
	; LineNumber: 1502
localVariable_PlayNote_note	dc.b	0
PlayNote_block7095
PlayNote
	; LineNumber: 1504
	; ****** Inline assembler section
	; get sound channel to play on
	lda localVariable_PlayNote_sindex
	lsr
	tax ; put into x reg
	
	; get note
	lda localVariable_PlayNote_note
	; play sound
	sta SOUND1_REGISTER,x
		
	; LineNumber: 1519
	rts
end_procedure_PlayNote
	; NodeProcedureDecl 3
	; ***********  Defining procedure : StopSounds
	;    Procedure type : User-defined procedure
	; LineNumber: 1524
	; LineNumber: 1523
localVariable_StopSounds_i	dc.b	0
StopSounds_block7096
StopSounds
	; LineNumber: 1530
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_StopSounds_i
StopSounds_forloop7097
	; LineNumber: 1525
	; LineNumber: 1526
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_StopSounds_i ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1527
	; Calling storevariable on generic assign expression
	sta vsndTime,x
	; LineNumber: 1528
	lda #<noSound
	; Calling storevariable on generic assign expression
	; Casting from byte to integer
	ldy #0
	pha
	lda localVariable_StopSounds_i
	asl
	tax
	pla
	sta psnd,x
	tya
	sta psnd+1,x
	; LineNumber: 1529
StopSounds_loopstart7098
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_StopSounds_i
	lda #$4
	cmp localVariable_StopSounds_i ;keep
	bne StopSounds_forloop7097
StopSounds_loopdone7102: ;keep
StopSounds_loopend7099
	; LineNumber: 1531
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $900a
	; LineNumber: 1532
	; Poke
	; Optimization: shift is zero
	sta $900b
	; LineNumber: 1533
	; Poke
	; Optimization: shift is zero
	sta $900c
	; LineNumber: 1534
	; Poke
	; Optimization: shift is zero
	sta $900d
	; LineNumber: 1535
	rts
end_procedure_StopSounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SndTime
	;    Procedure type : User-defined procedure
	; LineNumber: 1538
	; LineNumber: 1537
localVariable_SndTime_s	dc.b	0
SndTime_block7103
SndTime
	; LineNumber: 1540
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SndTime_s
	lda vsndTime,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc SndTime_elsedoneblock7107
SndTime_ConditionalTrueBlock7105: ;Main true block ;keep 
	; LineNumber: 1539
	
; // decrease time
	; Test Inc dec D
	ldx localVariable_SndTime_s
	; Optimize byte array dec 
	dec vsndTime,x
SndTime_elsedoneblock7107
	; LineNumber: 1542
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SndTime_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne SndTime_elsedoneblock7113
SndTime_ConditionalTrueBlock7111: ;Main true block ;keep 
	; LineNumber: 1541
	
; // after decreasing time, if now = 0 then go to next command
	; HandleVarBinopB16bit
	; RHS is pure, optimization
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_SndTime_s
	asl
	tax
	lda psnd,x 
	ldy psnd+1,x 
	clc
	adc #$02
	; Testing for byte:  #$00
	; RHS is word, no optimization
	pha 
	tya 
	adc #$00
	tay 
	pla 
	; Calling storevariable on generic assign expression
	pha
	lda localVariable_SndTime_s
	asl
	tax
	pla
	sta psnd,x
	tya
	sta psnd+1,x
SndTime_elsedoneblock7113
	; LineNumber: 1543
	rts
end_procedure_SndTime
	
; // goto next command
; // Play active sounds on voice 1
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSoundInternal
	;    Procedure type : User-defined procedure
	; LineNumber: 1549
	; LineNumber: 1548
localVariable_UpdateSoundInternal_duration	dc.b	0
	; LineNumber: 1546
localVariable_UpdateSoundInternal_s	dc.b	0
UpdateSoundInternal_block7118
UpdateSoundInternal
	; LineNumber: 1550
	; Load Integer array
	; CAST type NADA
	lda localVariable_UpdateSoundInternal_s
	asl
	tax
	lda psnd,x 
	ldy psnd+1,x 
	sta soundPointer
	sty soundPointer+1
	; LineNumber: 1552
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7122
UpdateSoundInternal_ConditionalTrueBlock7120: ;Main true block ;keep 
	; LineNumber: 1553
	; LineNumber: 1555
	
; //poke(tempPointer[0], 0, 0);
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsnd,x 
	; cmp #$00 ignored
	beq UpdateSoundInternal_elsedoneblock7134
UpdateSoundInternal_ConditionalTrueBlock7132: ;Main true block ;keep 
	; LineNumber: 1556
	; LineNumber: 1557
	
; // idle
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1558
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1560
UpdateSoundInternal_elsedoneblock7134
	; LineNumber: 1561
	rts
	; LineNumber: 1563
UpdateSoundInternal_elsedoneblock7122
	; LineNumber: 1565
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateSoundInternal_localfailed7172
	jmp UpdateSoundInternal_ConditionalTrueBlock7138
UpdateSoundInternal_localfailed7172: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateSoundInternal_elsedoneblock7140
UpdateSoundInternal_ConditionalTrueBlock7138: ;Main true block ;keep 
	; LineNumber: 1566
	; LineNumber: 1570
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7177
UpdateSoundInternal_ConditionalTrueBlock7175: ;Main true block ;keep 
	; LineNumber: 1571
	; LineNumber: 1572
	
; // play note
; //addbreakpoint(); nop(3);
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
	; LineNumber: 1573
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateSoundInternal_elsedoneblock7195
UpdateSoundInternal_ConditionalTrueBlock7193: ;Main true block ;keep 
	; LineNumber: 1573
	; LineNumber: 1574
	
; // get duration
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1575
UpdateSoundInternal_elsedoneblock7195
	; LineNumber: 1576
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateSoundInternal_elsedoneblock7201
UpdateSoundInternal_ConditionalTrueBlock7199: ;Main true block ;keep 
	; LineNumber: 1576
	; LineNumber: 1577
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1578
UpdateSoundInternal_elsedoneblock7201
	; LineNumber: 1579
UpdateSoundInternal_elsedoneblock7177
	; LineNumber: 1580
UpdateSoundInternal_elsedoneblock7140
	; LineNumber: 1583
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne UpdateSoundInternal_elsedoneblock7207
UpdateSoundInternal_ConditionalTrueBlock7205: ;Main true block ;keep 
	; LineNumber: 1584
	; LineNumber: 1585
	
; // increment
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1586
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$80
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1588
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7219
UpdateSoundInternal_ConditionalTrueBlock7217: ;Main true block ;keep 
	; LineNumber: 1587
	
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_elsedoneblock7219
	; LineNumber: 1590
	
; // get duration
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsnd,x 
	clc
	adc localVariable_UpdateSoundInternal_duration
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta vsnd,x
	; LineNumber: 1591
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1593
UpdateSoundInternal_elsedoneblock7207
	; LineNumber: 1596
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne UpdateSoundInternal_elsedoneblock7225
UpdateSoundInternal_ConditionalTrueBlock7223: ;Main true block ;keep 
	; LineNumber: 1597
	; LineNumber: 1598
	
; // decrement
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1599
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$40
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1600
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7237
UpdateSoundInternal_ConditionalTrueBlock7235: ;Main true block ;keep 
	; LineNumber: 1599
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_elsedoneblock7237
	; LineNumber: 1601
	
; // get duration
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsnd,x 
	sec
	sbc localVariable_UpdateSoundInternal_duration
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta vsnd,x
	; LineNumber: 1602
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1604
UpdateSoundInternal_elsedoneblock7225
	; LineNumber: 1605
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_SndTime_s
	jsr SndTime
	; LineNumber: 1608
	rts
end_procedure_UpdateSoundInternal
	
; // ----------------------------------------------------------------------
; // Play active sounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1613
UpdateSound
	; LineNumber: 1614
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1615
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1616
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1617
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1619
	rts
end_procedure_UpdateSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecreaseTextTimer
	;    Procedure type : User-defined procedure
	; LineNumber: 1622
DecreaseTextTimer
	; LineNumber: 1623
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda textTimer
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecreaseTextTimer_elsedoneblock7245
DecreaseTextTimer_ConditionalTrueBlock7243: ;Main true block ;keep 
	; LineNumber: 1623
	; LineNumber: 1624
	; Test Inc dec D
	dec textTimer
	; LineNumber: 1625
	; Binary clause Simplified: EQUALS
	clc
	lda textTimer
	; cmp #$00 ignored
	bne DecreaseTextTimer_elsedoneblock7257
DecreaseTextTimer_ConditionalTrueBlock7255: ;Main true block ;keep 
	; LineNumber: 1624
	jsr ClearText
DecreaseTextTimer_elsedoneblock7257
	; LineNumber: 1626
DecreaseTextTimer_elsedoneblock7245
	; LineNumber: 1627
	rts
end_procedure_DecreaseTextTimer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Pos2ObjectId
	;    Procedure type : User-defined procedure
	; LineNumber: 1632
	; LineNumber: 1631
localVariable_Pos2ObjectId_varPrefixed_c	dc.b	0
	; LineNumber: 1629
localVariable_Pos2ObjectId_pos	dc.b	0
Pos2ObjectId_block7260
Pos2ObjectId
	; LineNumber: 1633
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	; LineNumber: 1634
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_Pos2ObjectId_pos
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elsedoneblock7264
Pos2ObjectId_ConditionalTrueBlock7262: ;Main true block ;keep 
	; LineNumber: 1634
	; LineNumber: 1635
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7373
Pos2ObjectId_ConditionalTrueBlock7372: ;Main true block ;keep 
	; LineNumber: 1634
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7374
Pos2ObjectId_elseblock7373
	; LineNumber: 1635
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7429
Pos2ObjectId_ConditionalTrueBlock7428: ;Main true block ;keep 
	; LineNumber: 1635
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7430
Pos2ObjectId_elseblock7429
	; LineNumber: 1636
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7457
Pos2ObjectId_ConditionalTrueBlock7456: ;Main true block ;keep 
	; LineNumber: 1636
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7458
Pos2ObjectId_elseblock7457
	; LineNumber: 1637
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elsedoneblock7472
Pos2ObjectId_ConditionalTrueBlock7470: ;Main true block ;keep 
	; LineNumber: 1637
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
Pos2ObjectId_elsedoneblock7472
Pos2ObjectId_elsedoneblock7458
Pos2ObjectId_elsedoneblock7430
Pos2ObjectId_elsedoneblock7374
	; LineNumber: 1639
Pos2ObjectId_elsedoneblock7264
	; LineNumber: 1641
	; LineNumber: 1641
	lda localVariable_Pos2ObjectId_varPrefixed_c
	rts
end_procedure_Pos2ObjectId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitActors
	;    Procedure type : User-defined procedure
	; LineNumber: 1647
	; LineNumber: 1646
localVariable_InitActors_i	dc.b	0
	; LineNumber: 1646
localVariable_InitActors_j	dc.b	0
	; LineNumber: 1646
localVariable_InitActors_x	dc.b	0
	; LineNumber: 1646
localVariable_InitActors_y	dc.b	0
	; LineNumber: 1646
localVariable_InitActors_varPrefixed_c	dc.b	0
InitActors_block7475
InitActors
	; LineNumber: 1648
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_j
	; LineNumber: 1661
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_i
InitActors_forloop7476
	; LineNumber: 1650
	; LineNumber: 1651
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InitActors_i
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_event,x
	; LineNumber: 1652
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$1
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_action,x
	; LineNumber: 1653
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$2
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_pos
	jsr Pos2ObjectId
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_senderId,x
	; LineNumber: 1654
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$3
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_pos
	jsr Pos2ObjectId
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_receiverId,x
	; LineNumber: 1655
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$4
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_param0,x
	; LineNumber: 1656
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$5
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_param1,x
	; LineNumber: 1657
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$6
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_param2,x
	; LineNumber: 1658
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InitActors_i
	clc
	adc #$7
	 ; end add / sub var with constant
	tax
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_param3,x
	; LineNumber: 1659
	; Test Inc dec D
	inc localVariable_InitActors_j
	; LineNumber: 1660
InitActors_loopstart7477
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_InitActors_i
	lda localVariable_InitActors_i
	clc
	adc #$8
	sta localVariable_InitActors_i
	; Integer constant assigning
	; Load16bitvariable : #$100
	ldy #$01
	lda #$00
	cmp localVariable_InitActors_i ;keep
	beq InitActors_loopdone7481
InitActors_loopnotdone7482
	jmp InitActors_forloop7476
InitActors_loopdone7481
InitActors_loopend7478
	; LineNumber: 1661
	rts
end_procedure_InitActors
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ColorLine
	;    Procedure type : User-defined procedure
	; LineNumber: 1666
	; LineNumber: 1665
localVariable_ColorLine_i	dc.b	0
	; LineNumber: 1663
localVariable_ColorLine_y	dc.b	0
	; LineNumber: 1663
localVariable_ColorLine_col	dc.b	0
ColorLine_block7483
ColorLine
	; LineNumber: 1667
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ColorLine_elseblock7486
ColorLine_ConditionalTrueBlock7485: ;Main true block ;keep 
	; LineNumber: 1666
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ColorLine_y
	asl
	tax
	lda col1,x 
	ldy col1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp ColorLine_elsedoneblock7487
ColorLine_elseblock7486
	; LineNumber: 1666
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ColorLine_y
	asl
	tax
	lda col2,x 
	ldy col2+1,x 
	sta screenmemory
	sty screenmemory+1
ColorLine_elsedoneblock7487
	; LineNumber: 1669
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_i
ColorLine_forloop7492
	; LineNumber: 1667
	lda localVariable_ColorLine_col
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ColorLine_i ; optimized, look out for bugs
	sta (screenmemory),y
ColorLine_loopstart7493
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ColorLine_i
	lda #$14
	cmp localVariable_ColorLine_i ;keep
	bne ColorLine_forloop7492
ColorLine_loopdone7497: ;keep
ColorLine_loopend7494
	; LineNumber: 1669
	rts
end_procedure_ColorLine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : MenuMove
	;    Procedure type : User-defined procedure
	; LineNumber: 1673
	; LineNumber: 1672
localVariable_MenuMove_len	dc.b	0
	; LineNumber: 1672
localVariable_MenuMove_oldMenuItem	dc.b	0
MenuMove_block7498
MenuMove
	; LineNumber: 1674
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
MenuMove_val_var7560 = $88
	sta MenuMove_val_var7560
	lda globaltime
	sec
MenuMove_modulo7561
	sbc MenuMove_val_var7560
	bcs MenuMove_modulo7561
	adc MenuMove_val_var7560
	; cmp #$00 ignored
	bne MenuMove_elsedoneblock7502
MenuMove_ConditionalTrueBlock7500: ;Main true block ;keep 
	; LineNumber: 1674
	; LineNumber: 1675
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne MenuMove_elseblock7565
MenuMove_ConditionalTrueBlock7564: ;Main true block ;keep 
	; LineNumber: 1675
	; LineNumber: 1676
	; Binary clause Simplified: GREATEREQUAL
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc MenuMove_elsedoneblock7597
MenuMove_ConditionalTrueBlock7595: ;Main true block ;keep 
	; LineNumber: 1675
	; Test Inc dec D
	dec menuItem
MenuMove_elsedoneblock7597
	; LineNumber: 1678
	jmp MenuMove_elsedoneblock7566
MenuMove_elseblock7565
	; LineNumber: 1677
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne MenuMove_elsedoneblock7604
MenuMove_ConditionalTrueBlock7602: ;Main true block ;keep 
	; LineNumber: 1678
	; LineNumber: 1679
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_MenuMove_len
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp menuItem;keep
	bcc MenuMove_elsedoneblock7616
	beq MenuMove_elsedoneblock7616
MenuMove_ConditionalTrueBlock7614: ;Main true block ;keep 
	; LineNumber: 1678
	; Test Inc dec D
	inc menuItem
MenuMove_elsedoneblock7616
	; LineNumber: 1680
MenuMove_elsedoneblock7604
MenuMove_elsedoneblock7566
	; LineNumber: 1681
MenuMove_elsedoneblock7502
	; LineNumber: 1682
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$c
	clc
	adc localVariable_MenuMove_oldMenuItem
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_col
	jsr ColorLine
	; LineNumber: 1683
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$c
	clc
	adc menuItem
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_y
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_col
	jsr ColorLine
	; LineNumber: 1684
	rts
end_procedure_MenuMove
	
; // @include "Sounds.ras"
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1689
	; LineNumber: 1689
localVariable_ActionOpenDoor_receiverId	dc.b	0
	; LineNumber: 1687
localVariable_ActionOpenDoor_actorId	dc.b	0
ActionOpenDoor_block7619
ActionOpenDoor
	; LineNumber: 1691
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_receiverId
	; LineNumber: 1692
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionOpenDoor_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne ActionOpenDoor_elsedoneblock7623
ActionOpenDoor_ConditionalTrueBlock7621: ;Main true block ;keep 
	; LineNumber: 1692
	; LineNumber: 1693
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenDoor_elsedoneblock7635
ActionOpenDoor_ConditionalTrueBlock7633: ;Main true block ;keep 
	; LineNumber: 1693
	; LineNumber: 1694
	lda localVariable_ActionOpenDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_oldz
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_newz
	jsr SetZLayer
	; LineNumber: 1695
	lda localVariable_ActionOpenDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$a
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1696
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1697
ActionOpenDoor_elsedoneblock7635
	; LineNumber: 1698
ActionOpenDoor_elsedoneblock7623
	; LineNumber: 1699
	rts
end_procedure_ActionOpenDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1703
	; LineNumber: 1703
localVariable_ActionCloseDoor_receiverId	dc.b	0
	; LineNumber: 1701
localVariable_ActionCloseDoor_actorId	dc.b	0
ActionCloseDoor_block7638
ActionCloseDoor
	; LineNumber: 1705
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_receiverId
	; LineNumber: 1706
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionCloseDoor_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne ActionCloseDoor_elsedoneblock7642
ActionCloseDoor_ConditionalTrueBlock7640: ;Main true block ;keep 
	; LineNumber: 1706
	; LineNumber: 1707
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseDoor_elsedoneblock7654
ActionCloseDoor_ConditionalTrueBlock7652: ;Main true block ;keep 
	; LineNumber: 1707
	; LineNumber: 1708
	lda localVariable_ActionCloseDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_oldz
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SetZLayer_newz
	jsr SetZLayer
	; LineNumber: 1709
	lda localVariable_ActionCloseDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1710
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1711
ActionCloseDoor_elsedoneblock7654
	; LineNumber: 1712
ActionCloseDoor_elsedoneblock7642
	; LineNumber: 1713
	rts
end_procedure_ActionCloseDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1717
	; LineNumber: 1717
localVariable_ActionOpenExit_receiverId	dc.b	0
	; LineNumber: 1715
localVariable_ActionOpenExit_actorId	dc.b	0
ActionOpenExit_block7657
ActionOpenExit
	; LineNumber: 1719
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_receiverId
	; LineNumber: 1720
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionOpenExit_receiverId
	lda objectList_gobject_gobject_component3,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionOpenExit_elsedoneblock7661
ActionOpenExit_ConditionalTrueBlock7659: ;Main true block ;keep 
	; LineNumber: 1720
	; LineNumber: 1721
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenExit_elsedoneblock7673
ActionOpenExit_ConditionalTrueBlock7671: ;Main true block ;keep 
	; LineNumber: 1721
	; LineNumber: 1722
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1723
	lda localVariable_ActionOpenExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1724
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1725
ActionOpenExit_elsedoneblock7673
	; LineNumber: 1726
ActionOpenExit_elsedoneblock7661
	; LineNumber: 1727
	rts
end_procedure_ActionOpenExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1731
	; LineNumber: 1731
localVariable_ActionCloseExit_receiverId	dc.b	0
	; LineNumber: 1729
localVariable_ActionCloseExit_actorId	dc.b	0
ActionCloseExit_block7676
ActionCloseExit
	; LineNumber: 1733
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_receiverId
	; LineNumber: 1734
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionCloseExit_receiverId
	lda objectList_gobject_gobject_component3,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseExit_elsedoneblock7680
ActionCloseExit_ConditionalTrueBlock7678: ;Main true block ;keep 
	; LineNumber: 1734
	; LineNumber: 1735
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseExit_elsedoneblock7692
ActionCloseExit_ConditionalTrueBlock7690: ;Main true block ;keep 
	; LineNumber: 1735
	; LineNumber: 1736
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1737
	lda localVariable_ActionCloseExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1738
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1739
ActionCloseExit_elsedoneblock7692
	; LineNumber: 1740
ActionCloseExit_elsedoneblock7680
	; LineNumber: 1741
	rts
end_procedure_ActionCloseExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1745
	; LineNumber: 1745
localVariable_ActionLaserCannonOn_receiverId	dc.b	0
	; LineNumber: 1743
localVariable_ActionLaserCannonOn_actorId	dc.b	0
ActionLaserCannonOn_block7695
ActionLaserCannonOn
	; LineNumber: 1747
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_receiverId
	; LineNumber: 1748
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionLaserCannonOn_receiverId
	lda objectList_gobject_gobject_component1,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne ActionLaserCannonOn_elsedoneblock7699
ActionLaserCannonOn_ConditionalTrueBlock7697: ;Main true block ;keep 
	; LineNumber: 1748
	; LineNumber: 1749
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1750
ActionLaserCannonOn_elsedoneblock7699
	; LineNumber: 1751
	rts
end_procedure_ActionLaserCannonOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1755
	; LineNumber: 1755
localVariable_ActionLaserCannonOff_receiverId	dc.b	0
	; LineNumber: 1753
localVariable_ActionLaserCannonOff_actorId	dc.b	0
ActionLaserCannonOff_block7702
ActionLaserCannonOff
	; LineNumber: 1757
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_receiverId
	; LineNumber: 1758
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionLaserCannonOff_receiverId
	lda objectList_gobject_gobject_component1,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne ActionLaserCannonOff_elsedoneblock7706
ActionLaserCannonOff_ConditionalTrueBlock7704: ;Main true block ;keep 
	; LineNumber: 1758
	; LineNumber: 1759
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1760
ActionLaserCannonOff_elsedoneblock7706
	; LineNumber: 1761
	rts
end_procedure_ActionLaserCannonOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1765
	; LineNumber: 1765
localVariable_ActionFontaineOn_receiverId	dc.b	0
	; LineNumber: 1763
localVariable_ActionFontaineOn_actorId	dc.b	0
ActionFontaineOn_block7709
ActionFontaineOn
	; LineNumber: 1767
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_receiverId
	; LineNumber: 1768
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionFontaineOn_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$20
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne ActionFontaineOn_elsedoneblock7713
ActionFontaineOn_ConditionalTrueBlock7711: ;Main true block ;keep 
	; LineNumber: 1768
	; LineNumber: 1769
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1770
ActionFontaineOn_elsedoneblock7713
	; LineNumber: 1771
	rts
end_procedure_ActionFontaineOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1775
	; LineNumber: 1775
localVariable_ActionFontaineOff_receiverId	dc.b	0
	; LineNumber: 1773
localVariable_ActionFontaineOff_actorId	dc.b	0
ActionFontaineOff_block7716
ActionFontaineOff
	; LineNumber: 1777
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_receiverId
	; LineNumber: 1778
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionFontaineOff_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$20
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne ActionFontaineOff_elsedoneblock7720
ActionFontaineOff_ConditionalTrueBlock7718: ;Main true block ;keep 
	; LineNumber: 1778
	; LineNumber: 1779
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1780
ActionFontaineOff_elsedoneblock7720
	; LineNumber: 1781
	rts
end_procedure_ActionFontaineOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionPrintText
	;    Procedure type : User-defined procedure
	; LineNumber: 1786
	; LineNumber: 1785
localVariable_ActionPrintText_textId	dc.b	0
	; LineNumber: 1785
localVariable_ActionPrintText_x	dc.b	0
	; LineNumber: 1783
localVariable_ActionPrintText_actorId	dc.b	0
ActionPrintText_block7723
ActionPrintText
	; LineNumber: 1787
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionPrintText_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_textId
	; LineNumber: 1788
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_x
	; LineNumber: 1789
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param2,x 
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 1790
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ActionPrintText_textId
	asl
	tax
	lda levStrings,x 
	ldy levStrings+1,x 
	sta sp
	sty sp+1
	; LineNumber: 1791
	lda localVariable_ActionPrintText_x
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 1792
	rts
end_procedure_ActionPrintText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSetGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1796
	; LineNumber: 1796
localVariable_ActionSetGrav_receiverId	dc.b	0
	; LineNumber: 1794
localVariable_ActionSetGrav_actorId	dc.b	0
ActionSetGrav_block7724
ActionSetGrav
	; LineNumber: 1798
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSetGrav_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_receiverId
	; LineNumber: 1799
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSetGrav_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1800
	rts
end_procedure_ActionSetGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1804
	; LineNumber: 1804
localVariable_ActionSwitchOn_receiverId	dc.b	0
	; LineNumber: 1802
localVariable_ActionSwitchOn_actorId	dc.b	0
ActionSwitchOn_block7725
ActionSwitchOn
	; LineNumber: 1806
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_receiverId
	; LineNumber: 1807
	
; //		DispatchEvent(1, receiverId, $FF, $FF);
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionSwitchOn_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne ActionSwitchOn_elsedoneblock7729
ActionSwitchOn_ConditionalTrueBlock7727: ;Main true block ;keep 
	; LineNumber: 1807
	; LineNumber: 1808
	lda localVariable_ActionSwitchOn_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1809
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1811
ActionSwitchOn_elsedoneblock7729
	; LineNumber: 1812
	rts
end_procedure_ActionSwitchOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1817
	; LineNumber: 1816
localVariable_ActionSwitchOff_receiverId	dc.b	0
	; LineNumber: 1814
localVariable_ActionSwitchOff_actorId	dc.b	0
ActionSwitchOff_block7732
ActionSwitchOff
	; LineNumber: 1819
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_receiverId
	; LineNumber: 1820
	
; //		DispatchEvent(2, receiverId, $FF, $FF);
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionSwitchOff_receiverId
	lda objectList_gobject_gobject_component2,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne ActionSwitchOff_elsedoneblock7736
ActionSwitchOff_ConditionalTrueBlock7734: ;Main true block ;keep 
	; LineNumber: 1820
	; LineNumber: 1821
	lda localVariable_ActionSwitchOff_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1822
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1824
ActionSwitchOff_elsedoneblock7736
	; LineNumber: 1825
	rts
end_procedure_ActionSwitchOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionBulkGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1829
	; LineNumber: 1829
localVariable_ActionBulkGrav_id	dc.b	0
	; LineNumber: 1829
localVariable_ActionBulkGrav_i	dc.b	0
	; LineNumber: 1827
localVariable_ActionBulkGrav_actorId	dc.b	0
ActionBulkGrav_block7739
ActionBulkGrav
	; LineNumber: 1837
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_i
ActionBulkGrav_forloop7740
	; LineNumber: 1831
	; LineNumber: 1832
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_id
	; LineNumber: 1833
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_ActionBulkGrav_id
	lda objectList_gobject_gobject_component3,x 
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne ActionBulkGrav_elsedoneblock7754
ActionBulkGrav_ConditionalTrueBlock7752: ;Main true block ;keep 
	; LineNumber: 1833
	; LineNumber: 1834
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionBulkGrav_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1835
ActionBulkGrav_elsedoneblock7754
	; LineNumber: 1836
ActionBulkGrav_loopstart7741
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ActionBulkGrav_i
	lda countDyn
	cmp localVariable_ActionBulkGrav_i ;keep
	bne ActionBulkGrav_forloop7740
ActionBulkGrav_loopdone7757: ;keep
ActionBulkGrav_loopend7742
	; LineNumber: 1837
	rts
end_procedure_ActionBulkGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DispatchEvent
	;    Procedure type : User-defined procedure
	; LineNumber: 1843
	; LineNumber: 1842
localVariable_DispatchEvent_i	dc.b	0
	; LineNumber: 1842
localVariable_DispatchEvent_action	dc.b	0
	; LineNumber: 1840
localVariable_DispatchEvent_event	dc.b	0
	; LineNumber: 1840
localVariable_DispatchEvent_senderId	dc.b	0
	; LineNumber: 1840
localVariable_DispatchEvent_p1	dc.b	0
	; LineNumber: 1840
localVariable_DispatchEvent_p2	dc.b	0
DispatchEvent_block7758
DispatchEvent
	; LineNumber: 1866
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_i
DispatchEvent_forloop7759
	; LineNumber: 1844
	; LineNumber: 1845
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DispatchEvent_elsedoneblock7839
DispatchEvent_ConditionalTrueBlock7837: ;Main true block ;keep 
	; LineNumber: 1844
	jmp DispatchEvent_loopend7761
DispatchEvent_elsedoneblock7839
	; LineNumber: 1846
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_event;keep
	bne DispatchEvent_localfailed7876
DispatchEvent_localsuccess7877: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_senderId,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_senderId;keep
	bne DispatchEvent_localfailed7876
	jmp DispatchEvent_ConditionalTrueBlock7843
DispatchEvent_localfailed7876
	jmp DispatchEvent_elsedoneblock7845
DispatchEvent_ConditionalTrueBlock7843: ;Main true block ;keep 
	; LineNumber: 1846
	; LineNumber: 1847
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_action,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_action
	; LineNumber: 1848
	lda #$1
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7880
	; LineNumber: 1848
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_actorId
	jsr ActionOpenDoor
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7880
	lda #$2
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7882
	; LineNumber: 1849
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_actorId
	jsr ActionCloseDoor
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7882
	lda #$3
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7884
	; LineNumber: 1850
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_actorId
	jsr ActionOpenExit
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7884
	lda #$4
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7886
	; LineNumber: 1851
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_actorId
	jsr ActionCloseExit
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7886
	lda #$5
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7888
	; LineNumber: 1852
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_actorId
	jsr ActionPrintText
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7888
	lda #$7
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7890
	; LineNumber: 1853
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_actorId
	jsr ActionLaserCannonOn
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7890
	lda #$8
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7892
	; LineNumber: 1854
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_actorId
	jsr ActionLaserCannonOff
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7892
	lda #$9
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7894
	; LineNumber: 1855
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_actorId
	jsr ActionFontaineOn
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7894
	lda #$a
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7896
	; LineNumber: 1856
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_actorId
	jsr ActionFontaineOff
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7896
	lda #$b
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7898
	; LineNumber: 1857
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_actorId
	jsr ActionSetGrav
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7898
	lda #$d
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7900
	; LineNumber: 1858
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_actorId
	jsr ActionSwitchOff
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7900
	lda #$c
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7902
	; LineNumber: 1859
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_actorId
	jsr ActionSwitchOn
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7902
	lda #$e
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7904
	; LineNumber: 1860
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_actorId
	jsr ActionBulkGrav
	jmp DispatchEvent_caseend7879
DispatchEvent_casenext7904
	lda #$6
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7906
	; LineNumber: 1861
	jsr ClearText
DispatchEvent_casenext7906
DispatchEvent_caseend7879
	; LineNumber: 1864
DispatchEvent_elsedoneblock7845
	; LineNumber: 1865
DispatchEvent_loopstart7760
	; Test Inc dec D
	inc localVariable_DispatchEvent_i
	lda #$20
	cmp localVariable_DispatchEvent_i ;keep
	beq DispatchEvent_loopdone7908
DispatchEvent_loopnotdone7909
	jmp DispatchEvent_forloop7759
DispatchEvent_loopdone7908
DispatchEvent_loopend7761
	; LineNumber: 1866
	rts
end_procedure_DispatchEvent
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCharacter
	;    Procedure type : User-defined procedure
	; LineNumber: 1872
	; LineNumber: 1870
localVariable_InitCharacter_id	dc.b	0
	; LineNumber: 1871
localVariable_InitCharacter_laserEmitId	dc.b	0
	; LineNumber: 1868
localVariable_InitCharacter_x	dc.b	0
	; LineNumber: 1868
localVariable_InitCharacter_y	dc.b	0
	; LineNumber: 1868
localVariable_InitCharacter_controlId	dc.b	0
InitCharacter_block7910
InitCharacter
	; LineNumber: 1873
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_id
	; LineNumber: 1874
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_laserEmitId
	; LineNumber: 1875
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7916
InitCharacter_localsuccess7917: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7916
	jmp InitCharacter_ConditionalTrueBlock7912
InitCharacter_localfailed7916
	jmp InitCharacter_elsedoneblock7914
InitCharacter_ConditionalTrueBlock7912: ;Main true block ;keep 
	; LineNumber: 1875
	; LineNumber: 1876
	lda #$80
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1877
	lda #$c3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1878
	lda #$48
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1879
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1880
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1881
	lda localVariable_InitCharacter_controlId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1882
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 1883
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 1884
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 1885
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 1886
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 1887
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1888
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1889
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 1890
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 1891
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1892
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1893
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1894
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 1895
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 1896
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1897
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 1898
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 1899
	lda localVariable_InitCharacter_x
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1900
	lda localVariable_InitCharacter_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1901
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1902
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1903
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1904
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1905
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1906
	lda localVariable_InitCharacter_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 1907
	lda #$a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 1908
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 1909
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 1910
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1911
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1912
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 1913
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitCharacter_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitCharacter_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1914
InitCharacter_elsedoneblock7914
	; LineNumber: 1915
	rts
end_procedure_InitCharacter
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBrick
	;    Procedure type : User-defined procedure
	; LineNumber: 1920
	; LineNumber: 1919
localVariable_InitBrick_id	dc.b	0
	; LineNumber: 1917
localVariable_InitBrick_x	dc.b	0
	; LineNumber: 1917
localVariable_InitBrick_y	dc.b	0
InitBrick_block7919
InitBrick
	; LineNumber: 1921
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_id
	; LineNumber: 1922
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBrick_localfailed7925
	jmp InitBrick_ConditionalTrueBlock7921
InitBrick_localfailed7925
	jmp InitBrick_elsedoneblock7923
InitBrick_ConditionalTrueBlock7921: ;Main true block ;keep 
	; LineNumber: 1922
	; LineNumber: 1923
	lda #$40
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBrick_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1924
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1925
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1926
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1927
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1928
	lda localVariable_InitBrick_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1929
	lda localVariable_InitBrick_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1930
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1931
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1932
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1933
	lda localVariable_InitBrick_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitBrick_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitBrick_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1934
InitBrick_elsedoneblock7923
	; LineNumber: 1935
	rts
end_procedure_InitBrick
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitStone
	;    Procedure type : User-defined procedure
	; LineNumber: 1941
	; LineNumber: 1939
localVariable_InitStone_pg	= $72
	; LineNumber: 1940
localVariable_InitStone_id	dc.b	0
	; LineNumber: 1937
localVariable_InitStone_tilen	dc.b	0
	; LineNumber: 1937
localVariable_InitStone_x	dc.b	0
	; LineNumber: 1937
localVariable_InitStone_y	dc.b	0
	; LineNumber: 1937
localVariable_InitStone_rollLeftRight	dc.b	0
InitStone_block7927
InitStone
	; LineNumber: 1942
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_id
	; LineNumber: 1943
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitStone_localfailed7933
	jmp InitStone_ConditionalTrueBlock7929
InitStone_localfailed7933
	jmp InitStone_elsedoneblock7931
InitStone_ConditionalTrueBlock7929: ;Main true block ;keep 
	; LineNumber: 1943
	; LineNumber: 1944
	lda localVariable_InitStone_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitStone_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1945
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1946
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1947
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1948
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1949
	lda localVariable_InitStone_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1950
	lda localVariable_InitStone_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1951
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1952
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1953
	lda localVariable_InitStone_rollLeftRight
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1954
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1955
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1956
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1957
	lda localVariable_InitStone_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1958
	lda localVariable_InitStone_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitStone_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitStone_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1959
InitStone_elsedoneblock7931
	; LineNumber: 1960
	rts
end_procedure_InitStone
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSand
	;    Procedure type : User-defined procedure
	; LineNumber: 1965
	; LineNumber: 1964
localVariable_InitSand_id	dc.b	0
	; LineNumber: 1962
localVariable_InitSand_x	dc.b	0
	; LineNumber: 1962
localVariable_InitSand_y	dc.b	0
InitSand_block7935
InitSand
	; LineNumber: 1966
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_id
	; LineNumber: 1967
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSand_elsedoneblock7939
InitSand_ConditionalTrueBlock7937: ;Main true block ;keep 
	; LineNumber: 1967
	; LineNumber: 1968
	lda #$62
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSand_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1969
	lda #$12
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1970
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1971
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1972
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1973
	lda localVariable_InitSand_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1974
	lda localVariable_InitSand_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1975
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1976
	lda localVariable_InitSand_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitSand_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitSand_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1977
InitSand_elsedoneblock7939
	; LineNumber: 1978
	rts
end_procedure_InitSand
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWater
	;    Procedure type : User-defined procedure
	; LineNumber: 1983
	; LineNumber: 1982
localVariable_InitWater_id	dc.b	0
	; LineNumber: 1980
localVariable_InitWater_x	dc.b	0
	; LineNumber: 1980
localVariable_InitWater_y	dc.b	0
InitWater_block7942
InitWater
	; LineNumber: 1984
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_id
	; LineNumber: 1985
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWater_localfailed7948
	jmp InitWater_ConditionalTrueBlock7944
InitWater_localfailed7948
	jmp InitWater_elsedoneblock7946
InitWater_ConditionalTrueBlock7944: ;Main true block ;keep 
	; LineNumber: 1985
	; LineNumber: 1986
	lda #$4a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWater_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1987
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1988
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1989
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1990
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1991
	lda localVariable_InitWater_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1992
	lda localVariable_InitWater_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1993
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1994
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 1995
	lda localVariable_InitWater_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitWater_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitWater_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 1996
InitWater_elsedoneblock7946
	; LineNumber: 1997
	rts
end_procedure_InitWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaterFlow
	;    Procedure type : User-defined procedure
	; LineNumber: 2002
	; LineNumber: 2001
localVariable_InitWaterFlow_id	dc.b	0
	; LineNumber: 1999
localVariable_InitWaterFlow_x	dc.b	0
	; LineNumber: 1999
localVariable_InitWaterFlow_y	dc.b	0
	; LineNumber: 1999
localVariable_InitWaterFlow_tilen	dc.b	0
	; LineNumber: 1999
localVariable_InitWaterFlow_grav	dc.b	0
InitWaterFlow_block7950
InitWaterFlow
	; LineNumber: 2003
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_id
	; LineNumber: 2004
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaterFlow_localfailed7956
	jmp InitWaterFlow_ConditionalTrueBlock7952
InitWaterFlow_localfailed7956
	jmp InitWaterFlow_elsedoneblock7954
InitWaterFlow_ConditionalTrueBlock7952: ;Main true block ;keep 
	; LineNumber: 2004
	; LineNumber: 2005
	lda localVariable_InitWaterFlow_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaterFlow_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2006
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2007
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2008
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2009
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2010
	lda localVariable_InitWaterFlow_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2011
	lda localVariable_InitWaterFlow_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2012
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2013
	lda localVariable_InitWaterFlow_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2014
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2015
	lda localVariable_InitWaterFlow_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitWaterFlow_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitWaterFlow_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2016
InitWaterFlow_elsedoneblock7954
	; LineNumber: 2017
	rts
end_procedure_InitWaterFlow
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitShiftPlattform
	;    Procedure type : User-defined procedure
	; LineNumber: 2023
	; LineNumber: 2022
localVariable_InitShiftPlattform_id	dc.b	0
	; LineNumber: 2020
localVariable_InitShiftPlattform_x	dc.b	0
	; LineNumber: 2020
localVariable_InitShiftPlattform_y	dc.b	0
	; LineNumber: 2020
localVariable_InitShiftPlattform_tilen	dc.b	0
	; LineNumber: 2020
localVariable_InitShiftPlattform_grav	dc.b	0
InitShiftPlattform_block7958
InitShiftPlattform
	; LineNumber: 2024
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_id
	; LineNumber: 2025
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitShiftPlattform_localfailed7964
	jmp InitShiftPlattform_ConditionalTrueBlock7960
InitShiftPlattform_localfailed7964
	jmp InitShiftPlattform_elsedoneblock7962
InitShiftPlattform_ConditionalTrueBlock7960: ;Main true block ;keep 
	; LineNumber: 2025
	; LineNumber: 2026
	lda localVariable_InitShiftPlattform_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitShiftPlattform_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2027
	lda #$6
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2028
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2029
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2030
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2031
	lda localVariable_InitShiftPlattform_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2032
	lda localVariable_InitShiftPlattform_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2033
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2034
	lda localVariable_InitShiftPlattform_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 2035
	lda localVariable_InitShiftPlattform_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitShiftPlattform_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitShiftPlattform_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2036
InitShiftPlattform_elsedoneblock7962
	; LineNumber: 2037
	rts
end_procedure_InitShiftPlattform
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLadder
	;    Procedure type : User-defined procedure
	; LineNumber: 2042
	; LineNumber: 2041
localVariable_InitLadder_id	dc.b	0
	; LineNumber: 2039
localVariable_InitLadder_x	dc.b	0
	; LineNumber: 2039
localVariable_InitLadder_y	dc.b	0
InitLadder_block7966
InitLadder
	; LineNumber: 2043
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_id
	; LineNumber: 2044
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLadder_localfailed7972
	jmp InitLadder_ConditionalTrueBlock7968
InitLadder_localfailed7972
	jmp InitLadder_elsedoneblock7970
InitLadder_ConditionalTrueBlock7968: ;Main true block ;keep 
	; LineNumber: 2044
	; LineNumber: 2045
	lda #$57
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLadder_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2046
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2047
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2048
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2049
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2050
	lda localVariable_InitLadder_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2051
	lda localVariable_InitLadder_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2052
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2053
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2054
	lda localVariable_InitLadder_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitLadder_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitLadder_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2055
InitLadder_elsedoneblock7970
	; LineNumber: 2056
	rts
end_procedure_InitLadder
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitRobe
	;    Procedure type : User-defined procedure
	; LineNumber: 2061
	; LineNumber: 2060
localVariable_InitRobe_id	dc.b	0
	; LineNumber: 2058
localVariable_InitRobe_x	dc.b	0
	; LineNumber: 2058
localVariable_InitRobe_y	dc.b	0
	; LineNumber: 2058
localVariable_InitRobe_tilen	dc.b	0
	; LineNumber: 2058
localVariable_InitRobe_grav	dc.b	0
InitRobe_block7974
InitRobe
	; LineNumber: 2062
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_id
	; LineNumber: 2063
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitRobe_localfailed7980
	jmp InitRobe_ConditionalTrueBlock7976
InitRobe_localfailed7980
	jmp InitRobe_elsedoneblock7978
InitRobe_ConditionalTrueBlock7976: ;Main true block ;keep 
	; LineNumber: 2063
	; LineNumber: 2064
	lda localVariable_InitRobe_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitRobe_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2065
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2066
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2067
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2068
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2069
	lda localVariable_InitRobe_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2070
	lda localVariable_InitRobe_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2071
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2072
	lda localVariable_InitRobe_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2073
	lda localVariable_InitRobe_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitRobe_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitRobe_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2074
InitRobe_elsedoneblock7978
	; LineNumber: 2075
	rts
end_procedure_InitRobe
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortal
	;    Procedure type : User-defined procedure
	; LineNumber: 2080
	; LineNumber: 2079
localVariable_InitPortal_id	dc.b	0
	; LineNumber: 2077
localVariable_InitPortal_x	dc.b	0
	; LineNumber: 2077
localVariable_InitPortal_y	dc.b	0
	; LineNumber: 2077
localVariable_InitPortal_exitDir	dc.b	0
InitPortal_block7982
InitPortal
	; LineNumber: 2081
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_id
	; LineNumber: 2082
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_localfailed8014
	jmp InitPortal_ConditionalTrueBlock7984
InitPortal_localfailed8014
	jmp InitPortal_elsedoneblock7986
InitPortal_ConditionalTrueBlock7984: ;Main true block ;keep 
	; LineNumber: 2082
	; LineNumber: 2083
	lda #$6b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortal_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2084
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2085
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2086
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2087
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2088
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2089
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2090
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2091
	lda localVariable_InitPortal_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2092
	lda localVariable_InitPortal_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2093
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2094
	lda localVariable_InitPortal_exitDir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_portalFireExitDir,x
	; LineNumber: 2095
	lda #$ff
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2096
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_elseblock8018
InitPortal_ConditionalTrueBlock8017: ;Main true block ;keep 
	; LineNumber: 2095
	; LineNumber: 2097
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 2098
	lda #$0
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2100
	jmp InitPortal_elsedoneblock8019
InitPortal_elseblock8018
	; LineNumber: 2099
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_elsedoneblock8033
InitPortal_ConditionalTrueBlock8031: ;Main true block ;keep 
	; LineNumber: 2099
	; LineNumber: 2101
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 2102
	lda #$1
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2103
InitPortal_elsedoneblock8033
InitPortal_elsedoneblock8019
	; LineNumber: 2104
	; Binary clause Simplified: NOTEQUALS
	lda lastPortal
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_elsedoneblock8039
InitPortal_ConditionalTrueBlock8037: ;Main true block ;keep 
	; LineNumber: 2104
	; LineNumber: 2105
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2106
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitPortal_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitPortal_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2107
InitPortal_elsedoneblock8039
	; LineNumber: 2108
InitPortal_elsedoneblock7986
	; LineNumber: 2109
	rts
end_procedure_InitPortal
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGravPad
	;    Procedure type : User-defined procedure
	; LineNumber: 2114
	; LineNumber: 2113
localVariable_InitGravPad_id	dc.b	0
	; LineNumber: 2111
localVariable_InitGravPad_x	dc.b	0
	; LineNumber: 2111
localVariable_InitGravPad_y	dc.b	0
	; LineNumber: 2111
localVariable_InitGravPad_tilen	dc.b	0
	; LineNumber: 2111
localVariable_InitGravPad_grav	dc.b	0
InitGravPad_block8042
InitGravPad
	; LineNumber: 2115
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_id
	; LineNumber: 2116
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitGravPad_localfailed8048
	jmp InitGravPad_ConditionalTrueBlock8044
InitGravPad_localfailed8048
	jmp InitGravPad_elsedoneblock8046
InitGravPad_ConditionalTrueBlock8044: ;Main true block ;keep 
	; LineNumber: 2116
	; LineNumber: 2117
	lda localVariable_InitGravPad_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitGravPad_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2118
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2119
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2120
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2121
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2122
	lda localVariable_InitGravPad_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2123
	lda localVariable_InitGravPad_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2124
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2125
	lda localVariable_InitGravPad_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2126
	lda localVariable_InitGravPad_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitGravPad_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitGravPad_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2127
InitGravPad_elsedoneblock8046
	; LineNumber: 2128
	rts
end_procedure_InitGravPad
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitMirror
	;    Procedure type : User-defined procedure
	; LineNumber: 2133
	; LineNumber: 2132
localVariable_InitMirror_id	dc.b	0
	; LineNumber: 2130
localVariable_InitMirror_x	dc.b	0
	; LineNumber: 2130
localVariable_InitMirror_y	dc.b	0
	; LineNumber: 2130
localVariable_InitMirror_tilen	dc.b	0
	; LineNumber: 2130
localVariable_InitMirror_turn	dc.b	0
InitMirror_block8050
InitMirror
	; LineNumber: 2134
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_id
	; LineNumber: 2135
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitMirror_localfailed8056
	jmp InitMirror_ConditionalTrueBlock8052
InitMirror_localfailed8056
	jmp InitMirror_elsedoneblock8054
InitMirror_ConditionalTrueBlock8052: ;Main true block ;keep 
	; LineNumber: 2135
	; LineNumber: 2136
	lda localVariable_InitMirror_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitMirror_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2137
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2138
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2139
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2140
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2141
	lda localVariable_InitMirror_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2142
	lda localVariable_InitMirror_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2143
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2144
	lda localVariable_InitMirror_turn
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_mirrorTurn,x
	; LineNumber: 2145
	lda localVariable_InitMirror_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitMirror_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitMirror_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2146
InitMirror_elsedoneblock8054
	; LineNumber: 2147
	rts
end_procedure_InitMirror
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLaserTransport
	;    Procedure type : User-defined procedure
	; LineNumber: 2152
	; LineNumber: 2151
localVariable_InitLaserTransport_id	dc.b	0
	; LineNumber: 2149
localVariable_InitLaserTransport_x	dc.b	0
	; LineNumber: 2149
localVariable_InitLaserTransport_y	dc.b	0
InitLaserTransport_block8058
InitLaserTransport
	; LineNumber: 2153
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_id
	; LineNumber: 2154
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLaserTransport_elsedoneblock8062
InitLaserTransport_ConditionalTrueBlock8060: ;Main true block ;keep 
	; LineNumber: 2154
	; LineNumber: 2155
	lda #$5b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLaserTransport_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2156
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2157
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2158
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2159
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2160
	lda localVariable_InitLaserTransport_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2161
	lda localVariable_InitLaserTransport_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2162
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2163
	lda localVariable_InitLaserTransport_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitLaserTransport_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitLaserTransport_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2164
InitLaserTransport_elsedoneblock8062
	; LineNumber: 2165
	rts
end_procedure_InitLaserTransport
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBox
	;    Procedure type : User-defined procedure
	; LineNumber: 2190
	; LineNumber: 2189
localVariable_InitBox_id	dc.b	0
	; LineNumber: 2187
localVariable_InitBox_x	dc.b	0
	; LineNumber: 2187
localVariable_InitBox_y	dc.b	0
	; LineNumber: 2187
localVariable_InitBox_tilen	dc.b	0
	; LineNumber: 2187
localVariable_InitBox_dir	dc.b	0
InitBox_block8065
InitBox
	; LineNumber: 2191
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_id
	; LineNumber: 2192
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBox_localfailed8071
	jmp InitBox_ConditionalTrueBlock8067
InitBox_localfailed8071
	jmp InitBox_elsedoneblock8069
InitBox_ConditionalTrueBlock8067: ;Main true block ;keep 
	; LineNumber: 2192
	; LineNumber: 2193
	lda localVariable_InitBox_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBox_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2194
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2195
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2196
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2197
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2198
	lda localVariable_InitBox_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2199
	lda localVariable_InitBox_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2200
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2201
	lda localVariable_InitBox_dir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2202
	lda localVariable_InitBox_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitBox_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitBox_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2203
InitBox_elsedoneblock8069
	; LineNumber: 2204
	rts
end_procedure_InitBox
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortalActivate
	;    Procedure type : User-defined procedure
	; LineNumber: 2209
	; LineNumber: 2208
localVariable_InitPortalActivate_id	dc.b	0
	; LineNumber: 2206
localVariable_InitPortalActivate_x	dc.b	0
	; LineNumber: 2206
localVariable_InitPortalActivate_y	dc.b	0
InitPortalActivate_block8073
InitPortalActivate
	; LineNumber: 2210
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_id
	; LineNumber: 2211
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortalActivate_elsedoneblock8077
InitPortalActivate_ConditionalTrueBlock8075: ;Main true block ;keep 
	; LineNumber: 2211
	; LineNumber: 2212
	lda #$68
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortalActivate_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2213
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2214
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2215
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2216
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2217
	lda localVariable_InitPortalActivate_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2218
	lda localVariable_InitPortalActivate_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2219
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2220
	lda localVariable_InitPortalActivate_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitPortalActivate_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitPortalActivate_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2221
InitPortalActivate_elsedoneblock8077
	; LineNumber: 2222
	rts
end_procedure_InitPortalActivate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 2229
	; LineNumber: 2226
localVariable_InitFontaine_id	dc.b	0
	; LineNumber: 2227
localVariable_InitFontaine_laserId	dc.b	0
	; LineNumber: 2228
localVariable_InitFontaine_laserEmitId	dc.b	0
	; LineNumber: 2224
localVariable_InitFontaine_x	dc.b	0
	; LineNumber: 2224
localVariable_InitFontaine_y	dc.b	0
	; LineNumber: 2224
localVariable_InitFontaine_tilen	dc.b	0
	; LineNumber: 2224
localVariable_InitFontaine_grav	dc.b	0
InitFontaine_block8080
InitFontaine
	; LineNumber: 2230
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_id
	; LineNumber: 2231
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_laserEmitId
	; LineNumber: 2232
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8086
InitFontaine_localsuccess8087: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_laserId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8086
	jmp InitFontaine_ConditionalTrueBlock8082
InitFontaine_localfailed8086
	jmp InitFontaine_elsedoneblock8084
InitFontaine_ConditionalTrueBlock8082: ;Main true block ;keep 
	; LineNumber: 2232
	; LineNumber: 2233
	lda localVariable_InitFontaine_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2234
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2235
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2236
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2237
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2238
	lda localVariable_InitFontaine_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2239
	lda localVariable_InitFontaine_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2240
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2241
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2242
	lda localVariable_InitFontaine_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2243
	lda localVariable_InitFontaine_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2244
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2245
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2246
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2247
	lda localVariable_InitFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2248
	lda localVariable_InitFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitFontaine_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitFontaine_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2249
InitFontaine_elsedoneblock8084
	; LineNumber: 2250
	rts
end_procedure_InitFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCannon
	;    Procedure type : User-defined procedure
	; LineNumber: 2256
	; LineNumber: 2254
localVariable_InitCannon_id	dc.b	0
	; LineNumber: 2255
localVariable_InitCannon_laserEmitId	dc.b	0
	; LineNumber: 2252
localVariable_InitCannon_x	dc.b	0
	; LineNumber: 2252
localVariable_InitCannon_y	dc.b	0
	; LineNumber: 2252
localVariable_InitCannon_tilen	dc.b	0
	; LineNumber: 2252
localVariable_InitCannon_grav	dc.b	0
InitCannon_block8089
InitCannon
	; LineNumber: 2257
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_id
	; LineNumber: 2258
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_laserEmitId
	; LineNumber: 2259
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8095
InitCannon_localsuccess8096: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8095
	jmp InitCannon_ConditionalTrueBlock8091
InitCannon_localfailed8095
	jmp InitCannon_elsedoneblock8093
InitCannon_ConditionalTrueBlock8091: ;Main true block ;keep 
	; LineNumber: 2259
	; LineNumber: 2260
	lda localVariable_InitCannon_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2261
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2262
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2263
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2264
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2265
	lda localVariable_InitCannon_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2266
	lda localVariable_InitCannon_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2267
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2268
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2269
	lda localVariable_InitCannon_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2270
	lda localVariable_InitCannon_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2271
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2272
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2273
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2274
	lda localVariable_InitCannon_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2275
	lda localVariable_InitCannon_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitCannon_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitCannon_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2276
InitCannon_elsedoneblock8093
	; LineNumber: 2277
	rts
end_procedure_InitCannon
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSwitchManual
	;    Procedure type : User-defined procedure
	; LineNumber: 2282
	; LineNumber: 2281
localVariable_InitSwitchManual_id	dc.b	0
	; LineNumber: 2279
localVariable_InitSwitchManual_x	dc.b	0
	; LineNumber: 2279
localVariable_InitSwitchManual_y	dc.b	0
InitSwitchManual_block8098
InitSwitchManual
	; LineNumber: 2283
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_id
	; LineNumber: 2284
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSwitchManual_localfailed8104
	jmp InitSwitchManual_ConditionalTrueBlock8100
InitSwitchManual_localfailed8104
	jmp InitSwitchManual_elsedoneblock8102
InitSwitchManual_ConditionalTrueBlock8100: ;Main true block ;keep 
	; LineNumber: 2284
	; LineNumber: 2285
	lda #$63
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSwitchManual_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2286
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2287
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2288
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2289
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2290
	lda localVariable_InitSwitchManual_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2291
	lda localVariable_InitSwitchManual_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2292
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2293
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2294
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2295
	
; // Push=off
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2296
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2297
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2298
	lda localVariable_InitSwitchManual_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2299
	lda localVariable_InitSwitchManual_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitSwitchManual_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitSwitchManual_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2300
InitSwitchManual_elsedoneblock8102
	; LineNumber: 2301
	rts
end_procedure_InitSwitchManual
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaypoint
	;    Procedure type : User-defined procedure
	; LineNumber: 2306
	; LineNumber: 2305
localVariable_InitWaypoint_id	dc.b	0
	; LineNumber: 2303
localVariable_InitWaypoint_x	dc.b	0
	; LineNumber: 2303
localVariable_InitWaypoint_y	dc.b	0
InitWaypoint_block8106
InitWaypoint
	; LineNumber: 2307
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_id
	; LineNumber: 2308
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaypoint_localfailed8112
	jmp InitWaypoint_ConditionalTrueBlock8108
InitWaypoint_localfailed8112
	jmp InitWaypoint_elsedoneblock8110
InitWaypoint_ConditionalTrueBlock8108: ;Main true block ;keep 
	; LineNumber: 2308
	; LineNumber: 2309
	lda #$20
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaypoint_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2310
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2311
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2312
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2313
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2314
	lda localVariable_InitWaypoint_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2315
	lda localVariable_InitWaypoint_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2316
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2317
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2318
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2319
	
; // Push=off
	lda localVariable_InitWaypoint_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitWaypoint_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitWaypoint_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2320
InitWaypoint_elsedoneblock8110
	; LineNumber: 2321
	rts
end_procedure_InitWaypoint
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 2326
	; LineNumber: 2325
localVariable_InitDoor_id	dc.b	0
	; LineNumber: 2323
localVariable_InitDoor_x	dc.b	0
	; LineNumber: 2323
localVariable_InitDoor_y	dc.b	0
InitDoor_block8114
InitDoor
	; LineNumber: 2327
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_id
	; LineNumber: 2328
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitDoor_localfailed8120
	jmp InitDoor_ConditionalTrueBlock8116
InitDoor_localfailed8120
	jmp InitDoor_elsedoneblock8118
InitDoor_ConditionalTrueBlock8116: ;Main true block ;keep 
	; LineNumber: 2328
	; LineNumber: 2329
	lda #$66
	; Calling storevariable on generic assign expression
	ldx localVariable_InitDoor_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2330
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2331
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2332
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2333
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2334
	lda localVariable_InitDoor_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2335
	lda localVariable_InitDoor_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2336
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2337
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2338
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2339
	
; // Push= Off
	lda #$b
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2340
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2341
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2342
	lda localVariable_InitDoor_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2343
	lda localVariable_InitDoor_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitDoor_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitDoor_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2344
InitDoor_elsedoneblock8118
	; LineNumber: 2345
	rts
end_procedure_InitDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitExit
	;    Procedure type : User-defined procedure
	; LineNumber: 2350
	; LineNumber: 2349
localVariable_InitExit_id	dc.b	0
	; LineNumber: 2347
localVariable_InitExit_x	dc.b	0
	; LineNumber: 2347
localVariable_InitExit_y	dc.b	0
InitExit_block8122
InitExit
	; LineNumber: 2351
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_id
	; LineNumber: 2352
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitExit_localfailed8128
	jmp InitExit_ConditionalTrueBlock8124
InitExit_localfailed8128
	jmp InitExit_elsedoneblock8126
InitExit_ConditionalTrueBlock8124: ;Main true block ;keep 
	; LineNumber: 2352
	; LineNumber: 2353
	lda #$4f
	; Calling storevariable on generic assign expression
	ldx localVariable_InitExit_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2354
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2355
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2356
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2357
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2358
	lda localVariable_InitExit_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2359
	lda localVariable_InitExit_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2360
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2361
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2362
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2363
	
; // Push= Off
	lda #$d
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2364
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2365
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2366
	lda localVariable_InitExit_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2367
	lda localVariable_InitExit_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_InitExit_x
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_InitExit_y
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2368
InitExit_elsedoneblock8126
	; LineNumber: 2369
	rts
end_procedure_InitExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ReleaseKeys
	;    Procedure type : User-defined procedure
	; LineNumber: 2374
	; LineNumber: 2373
localVariable_ReleaseKeys_controlId	dc.b	0
	; LineNumber: 2371
localVariable_ReleaseKeys_id	dc.b	0
ReleaseKeys_block8130
ReleaseKeys
	; LineNumber: 2375
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ReleaseKeys_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_controlId
	; LineNumber: 2376
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ReleaseKeys_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 2377
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 2378
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 2379
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 2380
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2381
	rts
end_procedure_ReleaseKeys
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ProcessBackObj
	;    Procedure type : User-defined procedure
	; LineNumber: 2393
	; LineNumber: 2385
localVariable_ProcessBackObj_controlId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_defWalk	dc.b	0
	; LineNumber: 2387
localVariable_ProcessBackObj_gravity	dc.b	0
	; LineNumber: 2388
localVariable_ProcessBackObj_backObj	dc.b	0
	; LineNumber: 2388
localVariable_ProcessBackObj_backObj2	dc.b	0
	; LineNumber: 2389
localVariable_ProcessBackObj_portalHitObj	dc.b	0
	; LineNumber: 2390
localVariable_ProcessBackObj_pos	dc.b	0
	; LineNumber: 2390
localVariable_ProcessBackObj_v	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_robeAbleId	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_portalId	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_gravPadId	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_switchId	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_laserBeanId	dc.b	0
	; LineNumber: 2391
localVariable_ProcessBackObj_exitId	dc.b	0
	; LineNumber: 2392
localVariable_ProcessBackObj_newx	dc.b	0
	; LineNumber: 2392
localVariable_ProcessBackObj_newy	dc.b	0
	; LineNumber: 2383
localVariable_ProcessBackObj_id	dc.b	0
ProcessBackObj_block8131
ProcessBackObj
	; LineNumber: 2394
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2395
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_component0,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne ProcessBackObj_elseblock8134
ProcessBackObj_ConditionalTrueBlock8133: ;Main true block ;keep 
	; LineNumber: 2395
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
	jmp ProcessBackObj_elsedoneblock8135
ProcessBackObj_elseblock8134
	; LineNumber: 2397
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
ProcessBackObj_elsedoneblock8135
	; LineNumber: 2400
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc ProcessBackObj_localfailed9968
ProcessBackObj_localsuccess9969: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed9970
	jmp ProcessBackObj_ConditionalTrueBlock8141
ProcessBackObj_localfailed9970: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq ProcessBackObj_localfailed9968
	jmp ProcessBackObj_ConditionalTrueBlock8141
ProcessBackObj_localfailed9968
	jmp ProcessBackObj_elsedoneblock8143
ProcessBackObj_ConditionalTrueBlock8141: ;Main true block ;keep 
	; LineNumber: 2400
	; LineNumber: 2401
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_robeAbleId
	; LineNumber: 2402
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_portalId
	; LineNumber: 2403
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_gravPadId
	; LineNumber: 2405
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed10792
ProcessBackObj_localsuccess10793: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed10792
	jmp ProcessBackObj_ConditionalTrueBlock9973
ProcessBackObj_localfailed10792
	jmp ProcessBackObj_elseblock9974
ProcessBackObj_ConditionalTrueBlock9973: ;Main true block ;keep 
	; LineNumber: 2404
	; LineNumber: 2406
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2407
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2408
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2409
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2411
	jmp ProcessBackObj_elsedoneblock9975
ProcessBackObj_elseblock9974
	; LineNumber: 2410
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_robeAbleId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11204
ProcessBackObj_localsuccess11205: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11204
	jmp ProcessBackObj_ConditionalTrueBlock10797
ProcessBackObj_localfailed11204
	jmp ProcessBackObj_elseblock10798
ProcessBackObj_ConditionalTrueBlock10797: ;Main true block ;keep 
	; LineNumber: 2410
	; LineNumber: 2412
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_robeAbleId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11212 = $88
	sta ProcessBackObj_binary_clause_temp_var11212
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11213 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11213
	lda ProcessBackObj_binary_clause_temp_var11212
	cmp ProcessBackObj_binary_clause_temp_2_var11213;keep
	bne ProcessBackObj_elsedoneblock11210
ProcessBackObj_ConditionalTrueBlock11208: ;Main true block ;keep 
	; LineNumber: 2412
	; LineNumber: 2413
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2414
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2415
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2416
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2417
ProcessBackObj_elsedoneblock11210
	; LineNumber: 2419
	jmp ProcessBackObj_elsedoneblock10799
ProcessBackObj_elseblock10798
	; LineNumber: 2418
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11413
ProcessBackObj_localsuccess11415: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11413
ProcessBackObj_localsuccess11414: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11416
	jmp ProcessBackObj_ConditionalTrueBlock11217
ProcessBackObj_localfailed11416: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_localfailed11413
	jmp ProcessBackObj_ConditionalTrueBlock11217
ProcessBackObj_localfailed11413
	jmp ProcessBackObj_elseblock11218
ProcessBackObj_ConditionalTrueBlock11217: ;Main true block ;keep 
	; LineNumber: 2419
	; LineNumber: 2420
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2421
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2422
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11421
ProcessBackObj_localsuccess11443: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11421
ProcessBackObj_ConditionalTrueBlock11419: ;Main true block ;keep 
	; LineNumber: 2422
	; LineNumber: 2423
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_elseblock11447
ProcessBackObj_ConditionalTrueBlock11446: ;Main true block ;keep 
	; LineNumber: 2423
	; LineNumber: 2424
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$1 ; array with const index optimization  ; optimized, look out for bugs
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2425
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2426
	lda localVariable_ProcessBackObj_portalId
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 2428
	jmp ProcessBackObj_elsedoneblock11448
ProcessBackObj_elseblock11447
	; LineNumber: 2427
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_elsedoneblock11462
ProcessBackObj_ConditionalTrueBlock11460: ;Main true block ;keep 
	; LineNumber: 2428
	; LineNumber: 2429
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$0 ; array with const index optimization  ; optimized, look out for bugs
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2430
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2431
	lda localVariable_ProcessBackObj_portalId
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 2432
ProcessBackObj_elsedoneblock11462
ProcessBackObj_elsedoneblock11448
	; LineNumber: 2433
ProcessBackObj_elsedoneblock11421
	; LineNumber: 2434
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11479
	jmp ProcessBackObj_ConditionalTrueBlock11466
ProcessBackObj_localfailed11479
	jmp ProcessBackObj_elsedoneblock11468
ProcessBackObj_ConditionalTrueBlock11466: ;Main true block ;keep 
	; LineNumber: 2434
	; LineNumber: 2435
	lda localVariable_ProcessBackObj_newx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_ProcessBackObj_newy
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_portalHitObj
	; LineNumber: 2436
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11487
	jmp ProcessBackObj_ConditionalTrueBlock11482
ProcessBackObj_localfailed11487
	jmp ProcessBackObj_elseblock11483
ProcessBackObj_ConditionalTrueBlock11482: ;Main true block ;keep 
	; LineNumber: 2436
	; LineNumber: 2438
	lda #<sndPortal
	ldy #>sndPortal
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2438
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2438
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2439
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; LineNumber: 2440
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_ProcessBackObj_newx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_ProcessBackObj_newy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 2442
	jmp ProcessBackObj_elsedoneblock11484
ProcessBackObj_elseblock11483
	; LineNumber: 2442
	; LineNumber: 2444
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2444
	lda #$3c
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2444
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2445
ProcessBackObj_elsedoneblock11484
	; LineNumber: 2446
ProcessBackObj_elsedoneblock11468
	; LineNumber: 2447
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2449
	jmp ProcessBackObj_elsedoneblock11219
ProcessBackObj_elseblock11218
	; LineNumber: 2448
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11552
	jmp ProcessBackObj_ConditionalTrueBlock11492
ProcessBackObj_localfailed11552
	jmp ProcessBackObj_elseblock11493
ProcessBackObj_ConditionalTrueBlock11492: ;Main true block ;keep 
	; LineNumber: 2448
	; LineNumber: 2450
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_component1,x 
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne ProcessBackObj_elsedoneblock11557
ProcessBackObj_ConditionalTrueBlock11555: ;Main true block ;keep 
	; LineNumber: 2450
	; LineNumber: 2451
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2452
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11583
ProcessBackObj_ConditionalTrueBlock11581: ;Main true block ;keep 
	; LineNumber: 2452
	; LineNumber: 2453
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq ProcessBackObj_elsedoneblock11596
ProcessBackObj_localsuccess11598: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_elsedoneblock11596
ProcessBackObj_ConditionalTrueBlock11594: ;Main true block ;keep 
	; LineNumber: 2452
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_elsedoneblock11596
	; LineNumber: 2454
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2455
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2456
ProcessBackObj_elsedoneblock11583
	; LineNumber: 2458
ProcessBackObj_elsedoneblock11557
	jmp ProcessBackObj_elsedoneblock11494
ProcessBackObj_elseblock11493
	; LineNumber: 2458
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_gravPadId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11604
ProcessBackObj_localsuccess11606: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11607 = $88
	sta ProcessBackObj_binary_clause_temp_var11607
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11608 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11608
	lda ProcessBackObj_binary_clause_temp_var11607
	cmp ProcessBackObj_binary_clause_temp_2_var11608;keep
	beq ProcessBackObj_elsedoneblock11604
ProcessBackObj_ConditionalTrueBlock11602: ;Main true block ;keep 
	; LineNumber: 2459
	; LineNumber: 2460
	lda #<sndGravActivate
	ldy #>sndGravActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2460
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2460
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2462
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2463
ProcessBackObj_elsedoneblock11604
ProcessBackObj_elsedoneblock11494
ProcessBackObj_elsedoneblock11219
ProcessBackObj_elsedoneblock10799
ProcessBackObj_elsedoneblock9975
	; LineNumber: 2465
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_ProcessBackObj_defWalk
	; cmp #$00 ignored
	beq ProcessBackObj_elsedoneblock11613
ProcessBackObj_localsuccess11635: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11613
ProcessBackObj_ConditionalTrueBlock11611: ;Main true block ;keep 
	; LineNumber: 2465
	; LineNumber: 2467
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_elsedoneblock11640
ProcessBackObj_ConditionalTrueBlock11638: ;Main true block ;keep 
	; LineNumber: 2467
	; LineNumber: 2468
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; cmp #$00 ignored
	beq ProcessBackObj_elsedoneblock11653
ProcessBackObj_localsuccess11655: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq ProcessBackObj_elsedoneblock11653
ProcessBackObj_ConditionalTrueBlock11651: ;Main true block ;keep 
	; LineNumber: 2467
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_elsedoneblock11653
	; LineNumber: 2469
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2470
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2471
ProcessBackObj_elsedoneblock11640
	; LineNumber: 2472
ProcessBackObj_elsedoneblock11613
	; LineNumber: 2473
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_elsedoneblock11660
ProcessBackObj_localsuccess11662: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11660
ProcessBackObj_ConditionalTrueBlock11658: ;Main true block ;keep 
	; LineNumber: 2472
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
ProcessBackObj_elsedoneblock11660
	; LineNumber: 2475
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11731
	jmp ProcessBackObj_ConditionalTrueBlock11665
ProcessBackObj_localfailed11731
	jmp ProcessBackObj_elsedoneblock11667
ProcessBackObj_ConditionalTrueBlock11665: ;Main true block ;keep 
	; LineNumber: 2475
	; LineNumber: 2476
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11765
ProcessBackObj_localsuccess11766: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11765
	jmp ProcessBackObj_ConditionalTrueBlock11734
ProcessBackObj_localfailed11765
	jmp ProcessBackObj_elseblock11735
ProcessBackObj_ConditionalTrueBlock11734: ;Main true block ;keep 
	; LineNumber: 2476
	; LineNumber: 2477
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2479
	jmp ProcessBackObj_elsedoneblock11736
ProcessBackObj_elseblock11735
	; LineNumber: 2478
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elseblock11771
ProcessBackObj_localsuccess11783: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elseblock11771
ProcessBackObj_localsuccess11782: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
ProcessBackObj_binary_clause_temp_var11784 = $88
	sta ProcessBackObj_binary_clause_temp_var11784
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
ProcessBackObj_binary_clause_temp_2_var11785 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11785
	lda ProcessBackObj_binary_clause_temp_var11784
	cmp ProcessBackObj_binary_clause_temp_2_var11785;keep
	beq ProcessBackObj_elseblock11771
ProcessBackObj_ConditionalTrueBlock11770: ;Main true block ;keep 
	; LineNumber: 2479
	; LineNumber: 2480
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2481
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2483
	jmp ProcessBackObj_elsedoneblock11772
ProcessBackObj_elseblock11771
	; LineNumber: 2482
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11791
ProcessBackObj_localsuccess11793: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_elsedoneblock11791
ProcessBackObj_ConditionalTrueBlock11789: ;Main true block ;keep 
	; LineNumber: 2483
	; LineNumber: 2484
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2485
ProcessBackObj_elsedoneblock11791
ProcessBackObj_elsedoneblock11772
ProcessBackObj_elsedoneblock11736
	; LineNumber: 2486
ProcessBackObj_elsedoneblock11667
	; LineNumber: 2487
ProcessBackObj_elsedoneblock8143
	; LineNumber: 2488
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed12935
	jmp ProcessBackObj_ConditionalTrueBlock11796
ProcessBackObj_localfailed12935
	jmp ProcessBackObj_elsedoneblock11798
ProcessBackObj_ConditionalTrueBlock11796: ;Main true block ;keep 
	; LineNumber: 2488
	; LineNumber: 2489
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$40
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_switchId
	; LineNumber: 2490
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_exitId
	; LineNumber: 2491
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_switchId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13506
	jmp ProcessBackObj_ConditionalTrueBlock12938
ProcessBackObj_localfailed13506
	jmp ProcessBackObj_elseblock12939
ProcessBackObj_ConditionalTrueBlock12938: ;Main true block ;keep 
	; LineNumber: 2491
	; LineNumber: 2492
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13522
	jmp ProcessBackObj_ConditionalTrueBlock13509
ProcessBackObj_localfailed13522
	jmp ProcessBackObj_elsedoneblock13511
ProcessBackObj_ConditionalTrueBlock13509: ;Main true block ;keep 
	; LineNumber: 2492
	; LineNumber: 2493
	lda #$14
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 2494
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_switchId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed13530
	jmp ProcessBackObj_ConditionalTrueBlock13525
ProcessBackObj_localfailed13530
	jmp ProcessBackObj_elseblock13526
ProcessBackObj_ConditionalTrueBlock13525: ;Main true block ;keep 
	; LineNumber: 2494
	; LineNumber: 2495
	lda #<txtDeactiveSwitch
	ldx #>txtDeactiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2496
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2497
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2498
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2499
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2500
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2502
	lda #<sndSwitchOn
	ldy #>sndSwitchOn
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2502
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2502
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2504
	jmp ProcessBackObj_elsedoneblock13527
ProcessBackObj_elseblock13526
	; LineNumber: 2504
	; LineNumber: 2505
	lda #<txtActiveSwitch
	ldx #>txtActiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2506
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2507
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2508
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2509
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2510
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_event
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_senderId
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p1
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_p2
	jsr DispatchEvent
	; LineNumber: 2511
	lda #<sndSwitchOff
	ldy #>sndSwitchOff
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2511
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2511
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2513
ProcessBackObj_elsedoneblock13527
	; LineNumber: 2515
ProcessBackObj_elsedoneblock13511
	jmp ProcessBackObj_elsedoneblock12940
ProcessBackObj_elseblock12939
	; LineNumber: 2515
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_exitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13804
ProcessBackObj_localsuccess13805: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13804
	jmp ProcessBackObj_ConditionalTrueBlock13535
ProcessBackObj_localfailed13804
	jmp ProcessBackObj_elsedoneblock13537
ProcessBackObj_ConditionalTrueBlock13535: ;Main true block ;keep 
	; LineNumber: 2516
	; LineNumber: 2517
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13941
	jmp ProcessBackObj_ConditionalTrueBlock13808
ProcessBackObj_localfailed13941
	jmp ProcessBackObj_elsedoneblock13810
ProcessBackObj_ConditionalTrueBlock13808: ;Main true block ;keep 
	; LineNumber: 2517
	; LineNumber: 2518
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_exitId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed14009
	jmp ProcessBackObj_ConditionalTrueBlock13944
ProcessBackObj_localfailed14009
	jmp ProcessBackObj_elseblock13945
ProcessBackObj_ConditionalTrueBlock13944: ;Main true block ;keep 
	; LineNumber: 2518
	; LineNumber: 2519
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2521
	lda #<sndExit
	ldy #>sndExit
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2521
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2521
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2522
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne ProcessBackObj_elseblock14013
ProcessBackObj_ConditionalTrueBlock14012: ;Main true block ;keep 
	; LineNumber: 2521
	; LineNumber: 2523
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2524
	jsr SetNextLevel
	; LineNumber: 2525
	jmp ProcessBackObj_elsedoneblock14014
ProcessBackObj_elseblock14013
	; LineNumber: 2526
	; LineNumber: 2527
	; Binary clause Simplified: EQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	bne ProcessBackObj_elseblock14047
ProcessBackObj_ConditionalTrueBlock14046: ;Main true block ;keep 
	; LineNumber: 2526
	; LineNumber: 2528
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2529
	jsr SetNextLevel
	; LineNumber: 2531
	jmp ProcessBackObj_elsedoneblock14048
ProcessBackObj_elseblock14047
	; LineNumber: 2531
	; LineNumber: 2532
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_elseblock14064
ProcessBackObj_localsuccess14068: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_elseblock14064
ProcessBackObj_ConditionalTrueBlock14063: ;Main true block ;keep 
	; LineNumber: 2532
	; LineNumber: 2533
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2534
	jsr SetNextLevel
	; LineNumber: 2536
	jmp ProcessBackObj_elsedoneblock14065
ProcessBackObj_elseblock14064
	; LineNumber: 2536
	; LineNumber: 2537
	lda localVariable_ProcessBackObj_controlId
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 2538
	jsr SwapActiveChar
	; LineNumber: 2539
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2540
	lda #<txtPlayerExit
	ldx #>txtPlayerExit
	sta sp
	stx sp+1
	; LineNumber: 2541
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2542
ProcessBackObj_elsedoneblock14065
	; LineNumber: 2543
ProcessBackObj_elsedoneblock14048
	; LineNumber: 2544
ProcessBackObj_elsedoneblock14014
	; LineNumber: 2546
	jmp ProcessBackObj_elsedoneblock13946
ProcessBackObj_elseblock13945
	; LineNumber: 2546
	; LineNumber: 2548
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2548
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2548
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2549
	lda #<txtExitClosed
	ldx #>txtExitClosed
	sta sp
	stx sp+1
	; LineNumber: 2550
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2551
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2552
ProcessBackObj_elsedoneblock13946
	; LineNumber: 2554
ProcessBackObj_elsedoneblock13810
	; LineNumber: 2555
ProcessBackObj_elsedoneblock13537
ProcessBackObj_elsedoneblock12940
	; LineNumber: 2556
ProcessBackObj_elsedoneblock11798
	; LineNumber: 2558
	rts
end_procedure_ProcessBackObj
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InputControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2565
	; LineNumber: 2562
localVariable_InputControl_controlId	dc.b	0
	; LineNumber: 2562
localVariable_InputControl_joyShift	dc.b	0
	; LineNumber: 2563
localVariable_InputControl_gravity	dc.b	0
	; LineNumber: 2564
localVariable_InputControl_joy	dc.b	0
	; LineNumber: 2560
localVariable_InputControl_id	dc.b	0
InputControl_block14072
InputControl
	; LineNumber: 2566
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_controlId
	; LineNumber: 2568
	lda localVariable_InputControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_id
	jsr ReleaseKeys
	; LineNumber: 2569
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_localfailed15008
InputControl_localsuccess15009: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_InputControl_controlId;keep
	beq InputControl_localfailed15008
	jmp InputControl_ConditionalTrueBlock14074
InputControl_localfailed15008
	jmp InputControl_elseblock14075
InputControl_ConditionalTrueBlock14074: ;Main true block ;keep 
	; LineNumber: 2570
	jmp InputControl_elsedoneblock14076
InputControl_elseblock14075
	; LineNumber: 2571
	; LineNumber: 2572
	
; // do nothin
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joy
	; LineNumber: 2573
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joyShift
	; LineNumber: 2574
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_component0,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elseblock15014
InputControl_ConditionalTrueBlock15013: ;Main true block ;keep 
	; LineNumber: 2573
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
	jmp InputControl_elsedoneblock15015
InputControl_elseblock15014
	; LineNumber: 2573
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
InputControl_elsedoneblock15015
	; LineNumber: 2575
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_joyShift
	asl
	asl
	asl
	asl
	asl
	asl
	asl
	; Compare with pure num / var optimization
	cmp localVariable_InputControl_joy;keep
	bne InputControl_elsedoneblock15023
InputControl_ConditionalTrueBlock15021: ;Main true block ;keep 
	; LineNumber: 2575
	; LineNumber: 2576
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc InputControl_elsedoneblock15035
InputControl_ConditionalTrueBlock15033: ;Main true block ;keep 
	; LineNumber: 2576
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_elsedoneblock15035
	; LineNumber: 2578
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2579
InputControl_elsedoneblock15023
	; LineNumber: 2581
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joyShift
	asl
	asl
	asl
	asl
	asl
	asl
	asl
	ora #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp localVariable_InputControl_joy;keep
	bne InputControl_elsedoneblock15041
InputControl_ConditionalTrueBlock15039: ;Main true block ;keep 
	; LineNumber: 2581
	; LineNumber: 2582
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; cmp #$00 ignored
	bne InputControl_elsedoneblock15059
InputControl_ConditionalTrueBlock15057: ;Main true block ;keep 
	; LineNumber: 2582
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_elsedoneblock15059
	; LineNumber: 2584
	; Test Inc dec D
	ldx localVariable_InputControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2585
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bcc InputControl_elsedoneblock15065
InputControl_ConditionalTrueBlock15063: ;Main true block ;keep 
	; LineNumber: 2585
	; LineNumber: 2586
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2587
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2588
InputControl_elsedoneblock15065
	; LineNumber: 2589
InputControl_elsedoneblock15041
	; LineNumber: 2591
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne InputControl_localfailed15506
	jmp InputControl_ConditionalTrueBlock15069
InputControl_localfailed15506
	jmp InputControl_elseblock15070
InputControl_ConditionalTrueBlock15069: ;Main true block ;keep 
	; LineNumber: 2592
	jmp InputControl_elsedoneblock15071
InputControl_elseblock15070
	; LineNumber: 2593
	; LineNumber: 2594
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne InputControl_elsedoneblock15512
InputControl_ConditionalTrueBlock15510: ;Main true block ;keep 
	; LineNumber: 2594
	; LineNumber: 2595
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15542
InputControl_ConditionalTrueBlock15540: ;Main true block ;keep 
	; LineNumber: 2594
	
; // ignore		
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15542
	; LineNumber: 2596
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15548
InputControl_ConditionalTrueBlock15546: ;Main true block ;keep 
	; LineNumber: 2595
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15548
	; LineNumber: 2597
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15554
InputControl_ConditionalTrueBlock15552: ;Main true block ;keep 
	; LineNumber: 2596
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15554
	; LineNumber: 2598
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15560
InputControl_ConditionalTrueBlock15558: ;Main true block ;keep 
	; LineNumber: 2597
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15560
	; LineNumber: 2599
InputControl_elsedoneblock15512
	; LineNumber: 2600
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	beq InputControl_elsedoneblock15566
InputControl_ConditionalTrueBlock15564: ;Main true block ;keep 
	; LineNumber: 2600
	; LineNumber: 2601
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15596
InputControl_ConditionalTrueBlock15594: ;Main true block ;keep 
	; LineNumber: 2600
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15596
	; LineNumber: 2602
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15602
InputControl_ConditionalTrueBlock15600: ;Main true block ;keep 
	; LineNumber: 2601
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15602
	; LineNumber: 2603
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15608
InputControl_ConditionalTrueBlock15606: ;Main true block ;keep 
	; LineNumber: 2602
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15608
	; LineNumber: 2604
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15614
InputControl_ConditionalTrueBlock15612: ;Main true block ;keep 
	; LineNumber: 2603
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15614
	; LineNumber: 2605
InputControl_elsedoneblock15566
	; LineNumber: 2606
	; Binary clause Simplified: NOTEQUALS
	clc
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; cmp #$00 ignored
	beq InputControl_elsedoneblock15620
InputControl_ConditionalTrueBlock15618: ;Main true block ;keep 
	; LineNumber: 2606
	; LineNumber: 2607
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15650
InputControl_ConditionalTrueBlock15648: ;Main true block ;keep 
	; LineNumber: 2606
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15650
	; LineNumber: 2608
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15656
InputControl_ConditionalTrueBlock15654: ;Main true block ;keep 
	; LineNumber: 2607
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15656
	; LineNumber: 2609
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15662
InputControl_ConditionalTrueBlock15660: ;Main true block ;keep 
	; LineNumber: 2608
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15662
	; LineNumber: 2610
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15668
InputControl_ConditionalTrueBlock15666: ;Main true block ;keep 
	; LineNumber: 2609
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15668
	; LineNumber: 2611
InputControl_elsedoneblock15620
	; LineNumber: 2612
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq InputControl_elsedoneblock15674
InputControl_ConditionalTrueBlock15672: ;Main true block ;keep 
	; LineNumber: 2612
	; LineNumber: 2613
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15704
InputControl_ConditionalTrueBlock15702: ;Main true block ;keep 
	; LineNumber: 2612
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15704
	; LineNumber: 2614
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15710
InputControl_ConditionalTrueBlock15708: ;Main true block ;keep 
	; LineNumber: 2613
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15710
	; LineNumber: 2615
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15716
InputControl_ConditionalTrueBlock15714: ;Main true block ;keep 
	; LineNumber: 2614
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15716
	; LineNumber: 2616
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15722
InputControl_ConditionalTrueBlock15720: ;Main true block ;keep 
	; LineNumber: 2615
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15722
	; LineNumber: 2617
InputControl_elsedoneblock15674
	; LineNumber: 2618
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InputControl_elsedoneblock15728
InputControl_ConditionalTrueBlock15726: ;Main true block ;keep 
	; LineNumber: 2618
	; LineNumber: 2619
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15758
InputControl_ConditionalTrueBlock15756: ;Main true block ;keep 
	; LineNumber: 2618
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15758
	; LineNumber: 2620
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15764
InputControl_ConditionalTrueBlock15762: ;Main true block ;keep 
	; LineNumber: 2619
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15764
	; LineNumber: 2621
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15770
InputControl_ConditionalTrueBlock15768: ;Main true block ;keep 
	; LineNumber: 2620
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15770
	; LineNumber: 2622
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15776
InputControl_ConditionalTrueBlock15774: ;Main true block ;keep 
	; LineNumber: 2621
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15776
	; LineNumber: 2623
InputControl_elsedoneblock15728
	; LineNumber: 2624
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq InputControl_elsedoneblock15782
InputControl_ConditionalTrueBlock15780: ;Main true block ;keep 
	; LineNumber: 2624
	; LineNumber: 2625
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15812
InputControl_ConditionalTrueBlock15810: ;Main true block ;keep 
	; LineNumber: 2624
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15812
	; LineNumber: 2626
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15818
InputControl_ConditionalTrueBlock15816: ;Main true block ;keep 
	; LineNumber: 2625
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15818
	; LineNumber: 2627
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15824
InputControl_ConditionalTrueBlock15822: ;Main true block ;keep 
	; LineNumber: 2626
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15824
	; LineNumber: 2628
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15830
InputControl_ConditionalTrueBlock15828: ;Main true block ;keep 
	; LineNumber: 2627
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15830
	; LineNumber: 2629
InputControl_elsedoneblock15782
	; LineNumber: 2630
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne InputControl_elsedoneblock15836
InputControl_ConditionalTrueBlock15834: ;Main true block ;keep 
	; LineNumber: 2630
	; LineNumber: 2631
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15866
InputControl_ConditionalTrueBlock15864: ;Main true block ;keep 
	; LineNumber: 2630
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15866
	; LineNumber: 2632
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15872
InputControl_ConditionalTrueBlock15870: ;Main true block ;keep 
	; LineNumber: 2631
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15872
	; LineNumber: 2633
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15878
InputControl_ConditionalTrueBlock15876: ;Main true block ;keep 
	; LineNumber: 2632
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15878
	; LineNumber: 2634
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15884
InputControl_ConditionalTrueBlock15882: ;Main true block ;keep 
	; LineNumber: 2633
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15884
	; LineNumber: 2635
InputControl_elsedoneblock15836
	; LineNumber: 2636
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq InputControl_elsedoneblock15890
InputControl_ConditionalTrueBlock15888: ;Main true block ;keep 
	; LineNumber: 2636
	; LineNumber: 2637
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15920
InputControl_ConditionalTrueBlock15918: ;Main true block ;keep 
	; LineNumber: 2636
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15920
	; LineNumber: 2638
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15926
InputControl_ConditionalTrueBlock15924: ;Main true block ;keep 
	; LineNumber: 2637
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15926
	; LineNumber: 2639
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15932
InputControl_ConditionalTrueBlock15930: ;Main true block ;keep 
	; LineNumber: 2638
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15932
	; LineNumber: 2640
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15938
InputControl_ConditionalTrueBlock15936: ;Main true block ;keep 
	; LineNumber: 2639
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15938
	; LineNumber: 2641
InputControl_elsedoneblock15890
	; LineNumber: 2642
InputControl_elsedoneblock15071
	; LineNumber: 2643
InputControl_elsedoneblock14076
	; LineNumber: 2644
	rts
end_procedure_InputControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2659
	; LineNumber: 2648
localVariable_UpdateControl_controlId	dc.b	0
	; LineNumber: 2649
localVariable_UpdateControl_grounded	dc.b	0
	; LineNumber: 2650
localVariable_UpdateControl_isShift	dc.b	0
	; LineNumber: 2651
localVariable_UpdateControl_gravity	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_oldx	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_oldy	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_newx	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_newy	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_moveDir	dc.b	0
	; LineNumber: 2654
localVariable_UpdateControl_shift	dc.w	0
	; LineNumber: 2655
localVariable_UpdateControl_laserEmitId	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_colObj	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_eraseObj	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_colObj2	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_eraseObj2	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_colObj3	dc.b	0
	; LineNumber: 2657
localVariable_UpdateControl_laserId	dc.b	0
	; LineNumber: 2658
localVariable_UpdateControl_shiftDir	dc.b	0
	; LineNumber: 2646
localVariable_UpdateControl_id	dc.b	0
UpdateControl_block15941
UpdateControl
	; LineNumber: 2660
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_controlId
	; LineNumber: 2661
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2662
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2663
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2664
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2665
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2666
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2667
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2668
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2670
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_component0,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateControl_localfailed16027
	jmp UpdateControl_ConditionalTrueBlock15943
UpdateControl_localfailed16027
	jmp UpdateControl_elseblock15944
UpdateControl_ConditionalTrueBlock15943: ;Main true block ;keep 
	; LineNumber: 2670
	; LineNumber: 2671
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2672
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2673
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2675
	jmp UpdateControl_elsedoneblock15945
UpdateControl_elseblock15944
	; LineNumber: 2675
	; LineNumber: 2676
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2677
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2678
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed16071
	jmp UpdateControl_ConditionalTrueBlock16031
UpdateControl_localfailed16071
	jmp UpdateControl_elsedoneblock16033
UpdateControl_ConditionalTrueBlock16031: ;Main true block ;keep 
	; LineNumber: 2677
	; LineNumber: 2679
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2680
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2681
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed16078
UpdateControl_localsuccess16079: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16078
	jmp UpdateControl_ConditionalTrueBlock16074
UpdateControl_localfailed16078: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_elsedoneblock16076
UpdateControl_localsuccess16080: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16076
UpdateControl_ConditionalTrueBlock16074: ;Main true block ;keep 
	; LineNumber: 2680
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16076
	; LineNumber: 2682
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16087
UpdateControl_localsuccess16088: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16087
	jmp UpdateControl_ConditionalTrueBlock16083
UpdateControl_localfailed16087: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_elsedoneblock16085
UpdateControl_localsuccess16089: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16085
UpdateControl_ConditionalTrueBlock16083: ;Main true block ;keep 
	; LineNumber: 2681
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16085
	; LineNumber: 2683
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed16096
UpdateControl_localsuccess16097: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16096
	jmp UpdateControl_ConditionalTrueBlock16092
UpdateControl_localfailed16096: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elsedoneblock16094
UpdateControl_localsuccess16098: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16094
UpdateControl_ConditionalTrueBlock16092: ;Main true block ;keep 
	; LineNumber: 2682
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16094
	; LineNumber: 2684
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed16105
UpdateControl_localsuccess16106: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16105
	jmp UpdateControl_ConditionalTrueBlock16101
UpdateControl_localfailed16105: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16103
UpdateControl_localsuccess16107: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16103
UpdateControl_ConditionalTrueBlock16101: ;Main true block ;keep 
	; LineNumber: 2683
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16103
	; LineNumber: 2685
UpdateControl_elsedoneblock16033
	; LineNumber: 2686
UpdateControl_elsedoneblock15945
	; LineNumber: 2687
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed21342
	jmp UpdateControl_ConditionalTrueBlock16110
UpdateControl_localfailed21342
	jmp UpdateControl_elseblock16111
UpdateControl_ConditionalTrueBlock16110: ;Main true block ;keep 
	; LineNumber: 2687
	; LineNumber: 2688
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_isShift
	; cmp #$00 ignored
	bne UpdateControl_localfailed21616
	jmp UpdateControl_ConditionalTrueBlock21345
UpdateControl_localfailed21616
	jmp UpdateControl_elseblock21346
UpdateControl_ConditionalTrueBlock21345: ;Main true block ;keep 
	; LineNumber: 2688
	; LineNumber: 2689
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2690
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2691
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21624
	jmp UpdateControl_localsuccess21623
UpdateControl_localfailed21624: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21621
UpdateControl_localsuccess21623: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	bne UpdateControl_elsedoneblock21621
UpdateControl_localsuccess21626: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21621
UpdateControl_localsuccess21625: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21621
UpdateControl_ConditionalTrueBlock21619: ;Main true block ;keep 
	; LineNumber: 2690
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock21621
	; LineNumber: 2693
	
; //TODO: AnimationWalkL
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2694
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2695
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21634
	jmp UpdateControl_localsuccess21633
UpdateControl_localfailed21634: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21631
UpdateControl_localsuccess21633: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21631
UpdateControl_localsuccess21635: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21631
UpdateControl_ConditionalTrueBlock21629: ;Main true block ;keep 
	; LineNumber: 2694
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock21631
	; LineNumber: 2697
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21736
	jmp UpdateControl_ConditionalTrueBlock21638
UpdateControl_localfailed21736
	jmp UpdateControl_elsedoneblock21640
UpdateControl_ConditionalTrueBlock21638: ;Main true block ;keep 
	; LineNumber: 2697
	; LineNumber: 2698
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2699
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2700
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2701
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2702
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21763
	jmp UpdateControl_localsuccess21762
UpdateControl_localfailed21763: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21741
UpdateControl_localsuccess21762: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21764
	jmp UpdateControl_ConditionalTrueBlock21739
UpdateControl_localfailed21764: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21741
UpdateControl_ConditionalTrueBlock21739: ;Main true block ;keep 
	; LineNumber: 2702
	; LineNumber: 2703
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21777
	jmp UpdateControl_ConditionalTrueBlock21767
UpdateControl_localfailed21777: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21769
UpdateControl_ConditionalTrueBlock21767: ;Main true block ;keep 
	; LineNumber: 2703
	; LineNumber: 2704
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21782
UpdateControl_ConditionalTrueBlock21780: ;Main true block ;keep 
	; LineNumber: 2703
	; LineNumber: 2705
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2706
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 2707
UpdateControl_elsedoneblock21782
	; LineNumber: 2708
UpdateControl_elsedoneblock21769
	; LineNumber: 2709
UpdateControl_elsedoneblock21741
	; LineNumber: 2710
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2711
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2712
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2713
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2714
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21810
	jmp UpdateControl_localsuccess21809
UpdateControl_localfailed21810: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21788
UpdateControl_localsuccess21809: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21811
	jmp UpdateControl_ConditionalTrueBlock21786
UpdateControl_localfailed21811: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21788
UpdateControl_ConditionalTrueBlock21786: ;Main true block ;keep 
	; LineNumber: 2714
	; LineNumber: 2715
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21824
	jmp UpdateControl_ConditionalTrueBlock21814
UpdateControl_localfailed21824: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21816
UpdateControl_ConditionalTrueBlock21814: ;Main true block ;keep 
	; LineNumber: 2715
	; LineNumber: 2716
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21829
UpdateControl_ConditionalTrueBlock21827: ;Main true block ;keep 
	; LineNumber: 2715
	; LineNumber: 2717
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2718
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 2719
UpdateControl_elsedoneblock21829
	; LineNumber: 2720
UpdateControl_elsedoneblock21816
	; LineNumber: 2721
UpdateControl_elsedoneblock21788
	; LineNumber: 2722
UpdateControl_elsedoneblock21640
	; LineNumber: 2724
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21855
	jmp UpdateControl_ConditionalTrueBlock21833
UpdateControl_localfailed21855
	jmp UpdateControl_elsedoneblock21835
UpdateControl_ConditionalTrueBlock21833: ;Main true block ;keep 
	; LineNumber: 2724
	; LineNumber: 2725
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2726
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2728
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21863
	jmp UpdateControl_localsuccess21862
UpdateControl_localfailed21863: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21860
UpdateControl_localsuccess21862: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21860
UpdateControl_localsuccess21864: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21860
UpdateControl_ConditionalTrueBlock21858: ;Main true block ;keep 
	; LineNumber: 2727
	; LineNumber: 2729
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2730
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2731
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2732
UpdateControl_elsedoneblock21860
	; LineNumber: 2734
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2735
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2736
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21872
	jmp UpdateControl_localsuccess21871
UpdateControl_localfailed21872: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21869
UpdateControl_localsuccess21871: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21869
UpdateControl_localsuccess21873: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21869
UpdateControl_ConditionalTrueBlock21867: ;Main true block ;keep 
	; LineNumber: 2735
	; LineNumber: 2737
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2738
UpdateControl_elsedoneblock21869
	; LineNumber: 2739
UpdateControl_elsedoneblock21835
	; LineNumber: 2741
	jmp UpdateControl_elsedoneblock21347
UpdateControl_elseblock21346
	; LineNumber: 2741
	; LineNumber: 2742
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2743
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2745
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21882
	jmp UpdateControl_localsuccess21881
UpdateControl_localfailed21882: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21879
UpdateControl_localsuccess21881: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21879
UpdateControl_localsuccess21883: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21879
UpdateControl_ConditionalTrueBlock21877: ;Main true block ;keep 
	; LineNumber: 2744
	; LineNumber: 2746
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2747
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2748
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2749
UpdateControl_elsedoneblock21879
	; LineNumber: 2750
UpdateControl_elsedoneblock21347
	; LineNumber: 2751
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed21898
	jmp UpdateControl_ConditionalTrueBlock21886
UpdateControl_localfailed21898: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_elseblock21887
UpdateControl_ConditionalTrueBlock21886: ;Main true block ;keep 
	; LineNumber: 2750
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock21888
UpdateControl_elseblock21887
	; LineNumber: 2751
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed21906
	jmp UpdateControl_ConditionalTrueBlock21902
UpdateControl_localfailed21906: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elsedoneblock21904
UpdateControl_ConditionalTrueBlock21902: ;Main true block ;keep 
	; LineNumber: 2751
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock21904
UpdateControl_elsedoneblock21888
	; LineNumber: 2754
	jmp UpdateControl_elsedoneblock16112
UpdateControl_elseblock16111
	; LineNumber: 2753
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_localfailed24242
	jmp UpdateControl_ConditionalTrueBlock21910
UpdateControl_localfailed24242
	jmp UpdateControl_elseblock21911
UpdateControl_ConditionalTrueBlock21910: ;Main true block ;keep 
	; LineNumber: 2754
	; LineNumber: 2755
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed24484
	jmp UpdateControl_ConditionalTrueBlock24245
UpdateControl_localfailed24484
	jmp UpdateControl_elseblock24246
UpdateControl_ConditionalTrueBlock24245: ;Main true block ;keep 
	; LineNumber: 2754
	
; // TODO: check for collideable?
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	jmp UpdateControl_elsedoneblock24247
UpdateControl_elseblock24246
	; LineNumber: 2755
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed24606
	jmp UpdateControl_ConditionalTrueBlock24488
UpdateControl_localfailed24606: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed24605
	jmp UpdateControl_ConditionalTrueBlock24488
UpdateControl_localfailed24605
	jmp UpdateControl_elsedoneblock24490
UpdateControl_ConditionalTrueBlock24488: ;Main true block ;keep 
	; LineNumber: 2756
	; LineNumber: 2757
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2758
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2759
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2760
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24611
UpdateControl_localsuccess24614: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24615
	jmp UpdateControl_localsuccess24613
UpdateControl_localfailed24615: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24611
UpdateControl_localsuccess24613: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24611
UpdateControl_ConditionalTrueBlock24609: ;Main true block ;keep 
	; LineNumber: 2759
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock24611
	; LineNumber: 2762
	
; //TODO: AnimationWalkL
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2763
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2764
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2765
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24620
UpdateControl_localsuccess24623: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24624
	jmp UpdateControl_localsuccess24622
UpdateControl_localfailed24624: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24620
UpdateControl_localsuccess24622: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24620
UpdateControl_ConditionalTrueBlock24618: ;Main true block ;keep 
	; LineNumber: 2764
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock24620
	; LineNumber: 2767
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24675
	jmp UpdateControl_ConditionalTrueBlock24627
UpdateControl_localfailed24675
	jmp UpdateControl_elsedoneblock24629
UpdateControl_ConditionalTrueBlock24627: ;Main true block ;keep 
	; LineNumber: 2767
	; LineNumber: 2768
	
; //TODO: AnimationWalkR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2769
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2770
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2771
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2772
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj3
	; LineNumber: 2773
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24689
	jmp UpdateControl_localsuccess24688
UpdateControl_localfailed24689: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24680
UpdateControl_localsuccess24688: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24691
	jmp UpdateControl_localsuccess24690
UpdateControl_localfailed24691: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24680
UpdateControl_localsuccess24690: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24680
UpdateControl_ConditionalTrueBlock24678: ;Main true block ;keep 
	; LineNumber: 2773
	; LineNumber: 2774
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24696
UpdateControl_ConditionalTrueBlock24694: ;Main true block ;keep 
	; LineNumber: 2774
	; LineNumber: 2775
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2776
UpdateControl_elsedoneblock24696
	; LineNumber: 2777
UpdateControl_elsedoneblock24680
	; LineNumber: 2778
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2779
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2780
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj2
	; LineNumber: 2781
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2782
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj3
	; LineNumber: 2783
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24711
	jmp UpdateControl_localsuccess24710
UpdateControl_localfailed24711: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24702
UpdateControl_localsuccess24710: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24713
	jmp UpdateControl_localsuccess24712
UpdateControl_localfailed24713: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24702
UpdateControl_localsuccess24712: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24702
UpdateControl_ConditionalTrueBlock24700: ;Main true block ;keep 
	; LineNumber: 2783
	; LineNumber: 2784
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24718
UpdateControl_ConditionalTrueBlock24716: ;Main true block ;keep 
	; LineNumber: 2784
	; LineNumber: 2785
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2786
UpdateControl_elsedoneblock24718
	; LineNumber: 2787
UpdateControl_elsedoneblock24702
	; LineNumber: 2788
UpdateControl_elsedoneblock24629
	; LineNumber: 2789
UpdateControl_elsedoneblock24490
UpdateControl_elsedoneblock24247
	; LineNumber: 2790
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2791
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bcc UpdateControl_elsedoneblock24724
UpdateControl_ConditionalTrueBlock24722: ;Main true block ;keep 
	; LineNumber: 2790
	; LineNumber: 2792
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2793
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2794
UpdateControl_elsedoneblock24724
	; LineNumber: 2795
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed24754
	jmp UpdateControl_ConditionalTrueBlock24728
UpdateControl_localfailed24754: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_elseblock24729
UpdateControl_ConditionalTrueBlock24728: ;Main true block ;keep 
	; LineNumber: 2794
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock24730
UpdateControl_elseblock24729
	; LineNumber: 2795
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed24769
	jmp UpdateControl_ConditionalTrueBlock24758
UpdateControl_localfailed24769: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elseblock24759
UpdateControl_ConditionalTrueBlock24758: ;Main true block ;keep 
	; LineNumber: 2795
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock24760
UpdateControl_elseblock24759
	; LineNumber: 2796
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_elsedoneblock24775
UpdateControl_ConditionalTrueBlock24773: ;Main true block ;keep 
	; LineNumber: 2796
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock24775
UpdateControl_elsedoneblock24760
UpdateControl_elsedoneblock24730
	; LineNumber: 2798
	jmp UpdateControl_elsedoneblock21912
UpdateControl_elseblock21911
	; LineNumber: 2798
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25678
	jmp UpdateControl_ConditionalTrueBlock24780
UpdateControl_localfailed25678: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed25677
	jmp UpdateControl_ConditionalTrueBlock24780
UpdateControl_localfailed25677: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed25676
	jmp UpdateControl_ConditionalTrueBlock24780
UpdateControl_localfailed25676
	jmp UpdateControl_elseblock24781
UpdateControl_ConditionalTrueBlock24780: ;Main true block ;keep 
	; LineNumber: 2799
	; LineNumber: 2800
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2801
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2802
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25686
	jmp UpdateControl_localsuccess25685
UpdateControl_localfailed25686: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25683
UpdateControl_localsuccess25685: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25683
UpdateControl_ConditionalTrueBlock25681: ;Main true block ;keep 
	; LineNumber: 2801
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25683
	; LineNumber: 2804
	
; //TODO: AnimationSwimL
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2805
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2806
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25694
	jmp UpdateControl_localsuccess25693
UpdateControl_localfailed25694: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25691
UpdateControl_localsuccess25693: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25691
UpdateControl_ConditionalTrueBlock25689: ;Main true block ;keep 
	; LineNumber: 2805
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25691
	; LineNumber: 2808
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2809
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2810
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25702
	jmp UpdateControl_localsuccess25701
UpdateControl_localfailed25702: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25699
UpdateControl_localsuccess25701: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25699
UpdateControl_localsuccess25703: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq UpdateControl_elsedoneblock25699
UpdateControl_ConditionalTrueBlock25697: ;Main true block ;keep 
	; LineNumber: 2809
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25699
	; LineNumber: 2812
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_colObj
	; LineNumber: 2813
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2814
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25711
	jmp UpdateControl_localsuccess25710
UpdateControl_localfailed25711: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25708
UpdateControl_localsuccess25710: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25708
UpdateControl_ConditionalTrueBlock25706: ;Main true block ;keep 
	; LineNumber: 2813
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25708
	; LineNumber: 2816
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25798
	jmp UpdateControl_ConditionalTrueBlock25714
UpdateControl_localfailed25798
	jmp UpdateControl_elseblock25715
UpdateControl_ConditionalTrueBlock25714: ;Main true block ;keep 
	; LineNumber: 2816
	; LineNumber: 2817
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25813
	jmp UpdateControl_ConditionalTrueBlock25801
UpdateControl_localfailed25813: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock25802
UpdateControl_ConditionalTrueBlock25801: ;Main true block ;keep 
	; LineNumber: 2816
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock25803
UpdateControl_elseblock25802
	; LineNumber: 2817
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed25821
	jmp UpdateControl_ConditionalTrueBlock25817
UpdateControl_localfailed25821: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_elsedoneblock25819
UpdateControl_ConditionalTrueBlock25817: ;Main true block ;keep 
	; LineNumber: 2817
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25819
UpdateControl_elsedoneblock25803
	; LineNumber: 2820
	jmp UpdateControl_elsedoneblock25716
UpdateControl_elseblock25715
	; LineNumber: 2819
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock25826
UpdateControl_ConditionalTrueBlock25825: ;Main true block ;keep 
	; LineNumber: 2820
	; LineNumber: 2821
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25858
UpdateControl_ConditionalTrueBlock25856: ;Main true block ;keep 
	; LineNumber: 2820
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25858
	; LineNumber: 2823
	jmp UpdateControl_elsedoneblock25827
UpdateControl_elseblock25826
	; LineNumber: 2822
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elsedoneblock25865
UpdateControl_ConditionalTrueBlock25863: ;Main true block ;keep 
	; LineNumber: 2823
	; LineNumber: 2824
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25877
UpdateControl_ConditionalTrueBlock25875: ;Main true block ;keep 
	; LineNumber: 2823
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25877
	; LineNumber: 2826
UpdateControl_elsedoneblock25865
UpdateControl_elsedoneblock25827
UpdateControl_elsedoneblock25716
	jmp UpdateControl_elsedoneblock24782
UpdateControl_elseblock24781
	; LineNumber: 2826
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed26228
	jmp UpdateControl_ConditionalTrueBlock25882
UpdateControl_localfailed26228
	jmp UpdateControl_elsedoneblock25884
UpdateControl_ConditionalTrueBlock25882: ;Main true block ;keep 
	; LineNumber: 2827
	; LineNumber: 2828
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2829
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserEmitId
	; LineNumber: 2830
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed26347
	jmp UpdateControl_ConditionalTrueBlock26231
UpdateControl_localfailed26347
	jmp UpdateControl_elseblock26232
UpdateControl_ConditionalTrueBlock26231: ;Main true block ;keep 
	; LineNumber: 2829
	; LineNumber: 2831
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	; LineNumber: 2832
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2833
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2834
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlCollideLaserTag,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2835
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserId
	; LineNumber: 2836
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26354
	jmp UpdateControl_ConditionalTrueBlock26350
UpdateControl_localfailed26354
	jmp UpdateControl_elsedoneblock26352
UpdateControl_ConditionalTrueBlock26350: ;Main true block ;keep 
	; LineNumber: 2835
	; LineNumber: 2837
	lda #$5a
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2838
	lda #$8
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2839
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2840
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2841
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2842
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2843
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2844
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2845
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2847
	lda localVariable_UpdateControl_laserId
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 2848
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	clc
	; Load Byte array
	; CAST type NADA
	pha
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	tax
	pla
	adc ystart,x 
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 2849
UpdateControl_elsedoneblock26352
	; LineNumber: 2851
	jmp UpdateControl_elsedoneblock26233
UpdateControl_elseblock26232
	; LineNumber: 2850
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock26359
UpdateControl_ConditionalTrueBlock26358: ;Main true block ;keep 
	; LineNumber: 2850
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26360
UpdateControl_elseblock26359
	; LineNumber: 2851
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elseblock26415
UpdateControl_ConditionalTrueBlock26414: ;Main true block ;keep 
	; LineNumber: 2851
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26416
UpdateControl_elseblock26415
	; LineNumber: 2852
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_elseblock26443
UpdateControl_ConditionalTrueBlock26442: ;Main true block ;keep 
	; LineNumber: 2852
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26444
UpdateControl_elseblock26443
	; LineNumber: 2853
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_elsedoneblock26458
UpdateControl_ConditionalTrueBlock26456: ;Main true block ;keep 
	; LineNumber: 2853
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateControl_elsedoneblock26458
UpdateControl_elsedoneblock26444
UpdateControl_elsedoneblock26416
UpdateControl_elsedoneblock26360
UpdateControl_elsedoneblock26233
	; LineNumber: 2855
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 2856
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 2857
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 2858
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 2859
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2860
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bcc UpdateControl_localfailed26518
	jmp UpdateControl_ConditionalTrueBlock26462
UpdateControl_localfailed26518
	jmp UpdateControl_elsedoneblock26464
UpdateControl_ConditionalTrueBlock26462: ;Main true block ;keep 
	; LineNumber: 2860
	; LineNumber: 2861
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2862
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserId
	; LineNumber: 2863
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2864
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2865
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2866
	lda #$8
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2867
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne UpdateControl_elseblock26522
UpdateControl_ConditionalTrueBlock26521: ;Main true block ;keep 
	; LineNumber: 2866
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_elsedoneblock26523
UpdateControl_elseblock26522
	; LineNumber: 2868
	; LineNumber: 2869
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq UpdateControl_elseblock26552
UpdateControl_ConditionalTrueBlock26551: ;Main true block ;keep 
	; LineNumber: 2868
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_elsedoneblock26553
UpdateControl_elseblock26552
	; LineNumber: 2870
	; LineNumber: 2871
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_elsedoneblock26568
UpdateControl_localsuccess26570: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_elsedoneblock26568
UpdateControl_ConditionalTrueBlock26566: ;Main true block ;keep 
	; LineNumber: 2870
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
UpdateControl_elsedoneblock26568
	; LineNumber: 2872
UpdateControl_elsedoneblock26553
	; LineNumber: 2873
UpdateControl_elsedoneblock26523
	; LineNumber: 2874
UpdateControl_elsedoneblock26464
	; LineNumber: 2875
UpdateControl_elsedoneblock25884
UpdateControl_elsedoneblock24782
UpdateControl_elsedoneblock21912
UpdateControl_elsedoneblock16112
	; LineNumber: 2878
	
; // Do Moves
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldx
	; LineNumber: 2879
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldy
	; LineNumber: 2881
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26638
	jmp UpdateControl_ConditionalTrueBlock26573
UpdateControl_localfailed26638
	jmp UpdateControl_elsedoneblock26575
UpdateControl_ConditionalTrueBlock26573: ;Main true block ;keep 
	; LineNumber: 2881
	; LineNumber: 2882
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed26672
	jmp UpdateControl_ConditionalTrueBlock26641
UpdateControl_localfailed26672
	jmp UpdateControl_elseblock26642
UpdateControl_ConditionalTrueBlock26641: ;Main true block ;keep 
	; LineNumber: 2881
	; LineNumber: 2884
	lda #<sndSwim
	ldy #>sndSwim
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2884
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2884
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2886
	jmp UpdateControl_elsedoneblock26643
UpdateControl_elseblock26642
	; LineNumber: 2885
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_elseblock26677
UpdateControl_ConditionalTrueBlock26676: ;Main true block ;keep 
	; LineNumber: 2886
	; LineNumber: 2888
	lda #<sndJump
	ldy #>sndJump
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2888
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2888
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2890
	jmp UpdateControl_elsedoneblock26678
UpdateControl_elseblock26677
	; LineNumber: 2889
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed26698
	jmp UpdateControl_ConditionalTrueBlock26693
UpdateControl_localfailed26698: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock26694
UpdateControl_ConditionalTrueBlock26693: ;Main true block ;keep 
	; LineNumber: 2889
	; LineNumber: 2892
	lda #<sndLadder
	ldy #>sndLadder
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2892
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2892
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2894
	jmp UpdateControl_elsedoneblock26695
UpdateControl_elseblock26694
	; LineNumber: 2893
	; LineNumber: 2896
	lda #<sndStep
	ldy #>sndStep
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2896
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2896
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2897
UpdateControl_elsedoneblock26695
UpdateControl_elsedoneblock26678
UpdateControl_elsedoneblock26643
	; LineNumber: 2898
UpdateControl_elsedoneblock26575
	; LineNumber: 2901
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed27404
	jmp UpdateControl_ConditionalTrueBlock26702
UpdateControl_localfailed27404
	jmp UpdateControl_elseblock26703
UpdateControl_ConditionalTrueBlock26702: ;Main true block ;keep 
	; LineNumber: 2901
	; LineNumber: 2902
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2903
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27409
UpdateControl_ConditionalTrueBlock27407: ;Main true block ;keep 
	; LineNumber: 2902
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27409
	; LineNumber: 2904
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2905
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2906
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2908
	jmp UpdateControl_elsedoneblock26704
UpdateControl_elseblock26703
	; LineNumber: 2907
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed27760
	jmp UpdateControl_ConditionalTrueBlock27414
UpdateControl_localfailed27760
	jmp UpdateControl_elseblock27415
UpdateControl_ConditionalTrueBlock27414: ;Main true block ;keep 
	; LineNumber: 2908
	; LineNumber: 2909
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2910
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27765
UpdateControl_ConditionalTrueBlock27763: ;Main true block ;keep 
	; LineNumber: 2909
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27765
	; LineNumber: 2911
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2912
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2913
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2915
	jmp UpdateControl_elsedoneblock27416
UpdateControl_elseblock27415
	; LineNumber: 2914
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_localfailed27938
	jmp UpdateControl_ConditionalTrueBlock27770
UpdateControl_localfailed27938
	jmp UpdateControl_elseblock27771
UpdateControl_ConditionalTrueBlock27770: ;Main true block ;keep 
	; LineNumber: 2915
	; LineNumber: 2916
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2917
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2918
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27943
UpdateControl_ConditionalTrueBlock27941: ;Main true block ;keep 
	; LineNumber: 2917
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27943
	; LineNumber: 2919
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27949
UpdateControl_ConditionalTrueBlock27947: ;Main true block ;keep 
	; LineNumber: 2918
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27949
	; LineNumber: 2920
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2921
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2922
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2924
	jmp UpdateControl_elsedoneblock27772
UpdateControl_elseblock27771
	; LineNumber: 2923
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed28030
	jmp UpdateControl_ConditionalTrueBlock27954
UpdateControl_localfailed28030
	jmp UpdateControl_elseblock27955
UpdateControl_ConditionalTrueBlock27954: ;Main true block ;keep 
	; LineNumber: 2924
	; LineNumber: 2925
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2926
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj2
	; LineNumber: 2927
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28035
UpdateControl_ConditionalTrueBlock28033: ;Main true block ;keep 
	; LineNumber: 2926
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28035
	; LineNumber: 2928
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28041
UpdateControl_ConditionalTrueBlock28039: ;Main true block ;keep 
	; LineNumber: 2927
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28041
	; LineNumber: 2929
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2930
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2931
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2933
	jmp UpdateControl_elsedoneblock27956
UpdateControl_elseblock27955
	; LineNumber: 2932
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed28076
	jmp UpdateControl_ConditionalTrueBlock28046
UpdateControl_localfailed28076
	jmp UpdateControl_elseblock28047
UpdateControl_ConditionalTrueBlock28046: ;Main true block ;keep 
	; LineNumber: 2933
	; LineNumber: 2934
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2935
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28081
UpdateControl_ConditionalTrueBlock28079: ;Main true block ;keep 
	; LineNumber: 2934
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28081
	; LineNumber: 2936
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2937
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2938
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2940
	jmp UpdateControl_elsedoneblock28048
UpdateControl_elseblock28047
	; LineNumber: 2939
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed28096
	jmp UpdateControl_ConditionalTrueBlock28086
UpdateControl_localfailed28096
	jmp UpdateControl_elsedoneblock28088
UpdateControl_ConditionalTrueBlock28086: ;Main true block ;keep 
	; LineNumber: 2940
	; LineNumber: 2941
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_eraseObj
	; LineNumber: 2942
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28101
UpdateControl_ConditionalTrueBlock28099: ;Main true block ;keep 
	; LineNumber: 2941
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28101
	; LineNumber: 2943
	lda localVariable_UpdateControl_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2944
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2945
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2946
UpdateControl_elsedoneblock28088
UpdateControl_elsedoneblock28048
UpdateControl_elsedoneblock27956
UpdateControl_elsedoneblock27772
UpdateControl_elsedoneblock27416
UpdateControl_elsedoneblock26704
	; LineNumber: 2947
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28107
UpdateControl_ConditionalTrueBlock28105: ;Main true block ;keep 
	; LineNumber: 2946
	; LineNumber: 2948
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_id
	jsr CycleAnimation
	; LineNumber: 2949
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_UpdateControl_newx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_UpdateControl_newy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 2950
UpdateControl_elsedoneblock28107
	; LineNumber: 2951
	rts
end_procedure_UpdateControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdatePhysics
	;    Procedure type : User-defined procedure
	; LineNumber: 2964
	; LineNumber: 2955
localVariable_UpdatePhysics_fall	dc.b	0
	; LineNumber: 2955
localVariable_UpdatePhysics_fallDown	dc.b	0
	; LineNumber: 2955
localVariable_UpdatePhysics_fallLeftDown	dc.b	0
	; LineNumber: 2955
localVariable_UpdatePhysics_fallRightDown	dc.b	0
	; LineNumber: 2956
localVariable_UpdatePhysics_colObj	dc.b	0
	; LineNumber: 2956
localVariable_UpdatePhysics_eraseObj	dc.b	0
	; LineNumber: 2956
localVariable_UpdatePhysics_destroyObj	dc.b	0
	; LineNumber: 2957
localVariable_UpdatePhysics_oldx	dc.b	$ff
	; LineNumber: 2957
localVariable_UpdatePhysics_oldy	dc.b	$ff
	; LineNumber: 2957
localVariable_UpdatePhysics_newx	dc.b	$ff
	; LineNumber: 2957
localVariable_UpdatePhysics_newy	dc.b	$ff
	; LineNumber: 2958
localVariable_UpdatePhysics_gravity	dc.b	0
	; LineNumber: 2959
localVariable_UpdatePhysics_shift	dc.w	0
	; LineNumber: 2960
localVariable_UpdatePhysics_shiftDir	dc.b	0
	; LineNumber: 2961
localVariable_UpdatePhysics_doPhys	dc.b	0
	; LineNumber: 2963
localVariable_UpdatePhysics_controlId	dc.b	0
	; LineNumber: 2953
localVariable_UpdatePhysics_id	dc.b	0
UpdatePhysics_block28110
UpdatePhysics
	; LineNumber: 2965
	
; //	c:boolean;
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_gravity
	; LineNumber: 2966
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	; LineNumber: 2967
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	; LineNumber: 2968
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
	; LineNumber: 2969
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 2970
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_doPhys
	; LineNumber: 2971
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_controlId
	; LineNumber: 2976
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_b_physFallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed45342
	jmp UpdatePhysics_ConditionalTrueBlock28112
UpdatePhysics_localfailed45342
	jmp UpdatePhysics_elsedoneblock28114
UpdatePhysics_ConditionalTrueBlock28112: ;Main true block ;keep 
	; LineNumber: 2976
	; LineNumber: 2977
	
; //	if(controlId <> $FF) then begin
; //		controlList[controlId].b_fallDown := false;
; //	end;
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_colObj
	; LineNumber: 2978
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_localfailed45376
	jmp UpdatePhysics_ConditionalTrueBlock45345
UpdatePhysics_localfailed45376
	jmp UpdatePhysics_elseblock45346
UpdatePhysics_ConditionalTrueBlock45345: ;Main true block ;keep 
	; LineNumber: 2977
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	jmp UpdatePhysics_elsedoneblock45347
UpdatePhysics_elseblock45346
	; LineNumber: 2978
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_elseblock45381
UpdatePhysics_localsuccess45394: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_elseblock45381
UpdatePhysics_localsuccess45393: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock45381
UpdatePhysics_ConditionalTrueBlock45380: ;Main true block ;keep 
	; LineNumber: 2978
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	jmp UpdatePhysics_elsedoneblock45382
UpdatePhysics_elseblock45381
	; LineNumber: 2979
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_elsedoneblock45400
UpdatePhysics_localsuccess45403: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_elsedoneblock45400
UpdatePhysics_localsuccess45402: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elsedoneblock45400
UpdatePhysics_ConditionalTrueBlock45398: ;Main true block ;keep 
	; LineNumber: 2979
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
UpdatePhysics_elsedoneblock45400
UpdatePhysics_elsedoneblock45382
UpdatePhysics_elsedoneblock45347
	; LineNumber: 2981
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_localfailed53624
	jmp UpdatePhysics_ConditionalTrueBlock45406
UpdatePhysics_localfailed53624
	jmp UpdatePhysics_elsedoneblock45408
UpdatePhysics_ConditionalTrueBlock45406: ;Main true block ;keep 
	; LineNumber: 2981
	; LineNumber: 2982
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock53629
UpdatePhysics_localsuccess53631: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elsedoneblock53629
UpdatePhysics_ConditionalTrueBlock53627: ;Main true block ;keep 
	; LineNumber: 2981
	; LineNumber: 2984
	lda #<sndFall
	ldy #>sndFall
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 2984
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 2984
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 2985
UpdatePhysics_elsedoneblock53629
	; LineNumber: 2986
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shiftDir
	; LineNumber: 2987
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_component0,x 
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdatePhysics_localfailed57738
	jmp UpdatePhysics_ConditionalTrueBlock53634
UpdatePhysics_localfailed57738
	jmp UpdatePhysics_elsedoneblock53636
UpdatePhysics_ConditionalTrueBlock53634: ;Main true block ;keep 
	; LineNumber: 2986
	; LineNumber: 2988
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda localVariable_UpdatePhysics_shiftDir
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_localfailed59792
	jmp UpdatePhysics_ConditionalTrueBlock57741
UpdatePhysics_localfailed59792: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda localVariable_UpdatePhysics_shiftDir
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_localfailed59791
	jmp UpdatePhysics_ConditionalTrueBlock57741
UpdatePhysics_localfailed59791
	jmp UpdatePhysics_elsedoneblock57743
UpdatePhysics_ConditionalTrueBlock57741: ;Main true block ;keep 
	; LineNumber: 2989
	; LineNumber: 2990
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed60818
UpdatePhysics_localsuccess60819: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed60818
	jmp UpdatePhysics_ConditionalTrueBlock59795
UpdatePhysics_localfailed60818
	jmp UpdatePhysics_elseblock59796
UpdatePhysics_ConditionalTrueBlock59795: ;Main true block ;keep 
	; LineNumber: 2989
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock59797
UpdatePhysics_elseblock59796
	; LineNumber: 2990
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed61332
UpdatePhysics_localsuccess61333: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed61332
	jmp UpdatePhysics_ConditionalTrueBlock60823
UpdatePhysics_localfailed61332
	jmp UpdatePhysics_elseblock60824
UpdatePhysics_ConditionalTrueBlock60823: ;Main true block ;keep 
	; LineNumber: 2990
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock60825
UpdatePhysics_elseblock60824
	; LineNumber: 2991
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed61589
UpdatePhysics_localsuccess61590: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_localfailed61589
	jmp UpdatePhysics_ConditionalTrueBlock61337
UpdatePhysics_localfailed61589
	jmp UpdatePhysics_elseblock61338
UpdatePhysics_ConditionalTrueBlock61337: ;Main true block ;keep 
	; LineNumber: 2991
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61339
UpdatePhysics_elseblock61338
	; LineNumber: 2992
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_elseblock61595
UpdatePhysics_localsuccess61718: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_elseblock61595
UpdatePhysics_ConditionalTrueBlock61594: ;Main true block ;keep 
	; LineNumber: 2992
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61596
UpdatePhysics_elseblock61595
	; LineNumber: 2993
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61723
UpdatePhysics_localsuccess61782: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_elseblock61723
UpdatePhysics_ConditionalTrueBlock61722: ;Main true block ;keep 
	; LineNumber: 2993
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61724
UpdatePhysics_elseblock61723
	; LineNumber: 2994
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61787
UpdatePhysics_localsuccess61814: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elseblock61787
UpdatePhysics_ConditionalTrueBlock61786: ;Main true block ;keep 
	; LineNumber: 2994
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61788
UpdatePhysics_elseblock61787
	; LineNumber: 2995
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elseblock61819
UpdatePhysics_localsuccess61830: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61819
UpdatePhysics_ConditionalTrueBlock61818: ;Main true block ;keep 
	; LineNumber: 2995
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61820
UpdatePhysics_elseblock61819
	; LineNumber: 2996
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elsedoneblock61836
UpdatePhysics_localsuccess61838: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_elsedoneblock61836
UpdatePhysics_ConditionalTrueBlock61834: ;Main true block ;keep 
	; LineNumber: 2996
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
UpdatePhysics_elsedoneblock61836
UpdatePhysics_elsedoneblock61820
UpdatePhysics_elsedoneblock61788
UpdatePhysics_elsedoneblock61724
UpdatePhysics_elsedoneblock61596
UpdatePhysics_elsedoneblock61339
UpdatePhysics_elsedoneblock60825
UpdatePhysics_elsedoneblock59797
	; LineNumber: 2998
UpdatePhysics_elsedoneblock57743
	; LineNumber: 3000
UpdatePhysics_elsedoneblock53636
	; LineNumber: 3001
UpdatePhysics_elsedoneblock45408
	; LineNumber: 3003
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallDown
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed61936
	jmp UpdatePhysics_ConditionalTrueBlock61841
UpdatePhysics_localfailed61936
	jmp UpdatePhysics_elseblock61842
UpdatePhysics_ConditionalTrueBlock61841: ;Main true block ;keep 
	; LineNumber: 3003
	; LineNumber: 3004
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 3005
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3006
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61941
UpdatePhysics_ConditionalTrueBlock61939: ;Main true block ;keep 
	; LineNumber: 3006
	; LineNumber: 3007
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3008
UpdatePhysics_elsedoneblock61941
	; LineNumber: 3010
	jmp UpdatePhysics_elsedoneblock61843
UpdatePhysics_elseblock61842
	; LineNumber: 3009
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallLeftDown
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock61947
UpdatePhysics_ConditionalTrueBlock61946: ;Main true block ;keep 
	; LineNumber: 3010
	; LineNumber: 3011
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3012
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61993
UpdatePhysics_ConditionalTrueBlock61991: ;Main true block ;keep 
	; LineNumber: 3012
	; LineNumber: 3013
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3014
UpdatePhysics_elsedoneblock61993
	; LineNumber: 3016
	jmp UpdatePhysics_elsedoneblock61948
UpdatePhysics_elseblock61947
	; LineNumber: 3015
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallRightDown
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock61999
UpdatePhysics_ConditionalTrueBlock61998: ;Main true block ;keep 
	; LineNumber: 3016
	; LineNumber: 3017
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3018
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62019
UpdatePhysics_ConditionalTrueBlock62017: ;Main true block ;keep 
	; LineNumber: 3018
	; LineNumber: 3019
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3020
UpdatePhysics_elsedoneblock62019
	; LineNumber: 3021
	jmp UpdatePhysics_elsedoneblock62000
UpdatePhysics_elseblock61999
	; LineNumber: 3022
	; LineNumber: 3023
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62026
UpdatePhysics_ConditionalTrueBlock62024: ;Main true block ;keep 
	; LineNumber: 3023
	; LineNumber: 3024
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3025
UpdatePhysics_elsedoneblock62026
	; LineNumber: 3026
UpdatePhysics_elsedoneblock62000
UpdatePhysics_elsedoneblock61948
UpdatePhysics_elsedoneblock61843
	; LineNumber: 3028
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldx
	; LineNumber: 3029
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldy
	; LineNumber: 3030
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3031
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed62298
	jmp UpdatePhysics_ConditionalTrueBlock62030
UpdatePhysics_localfailed62298
	jmp UpdatePhysics_elseblock62031
UpdatePhysics_ConditionalTrueBlock62030: ;Main true block ;keep 
	; LineNumber: 3031
	; LineNumber: 3032
	lda localVariable_UpdatePhysics_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shift
	sty localVariable_UpdatePhysics_shift+1
	; LineNumber: 3033
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3034
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3036
	jmp UpdatePhysics_elsedoneblock62032
UpdatePhysics_elseblock62031
	; LineNumber: 3035
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdatePhysics_localfailed62434
	jmp UpdatePhysics_ConditionalTrueBlock62302
UpdatePhysics_localfailed62434
	jmp UpdatePhysics_elseblock62303
UpdatePhysics_ConditionalTrueBlock62302: ;Main true block ;keep 
	; LineNumber: 3036
	; LineNumber: 3037
	lda localVariable_UpdatePhysics_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shift
	sty localVariable_UpdatePhysics_shift+1
	; LineNumber: 3038
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3039
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3041
	jmp UpdatePhysics_elsedoneblock62304
UpdatePhysics_elseblock62303
	; LineNumber: 3040
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdatePhysics_localfailed62502
	jmp UpdatePhysics_ConditionalTrueBlock62438
UpdatePhysics_localfailed62502
	jmp UpdatePhysics_elseblock62439
UpdatePhysics_ConditionalTrueBlock62438: ;Main true block ;keep 
	; LineNumber: 3040
	; LineNumber: 3042
	lda localVariable_UpdatePhysics_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shift
	sty localVariable_UpdatePhysics_shift+1
	; LineNumber: 3043
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3044
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3046
	jmp UpdatePhysics_elsedoneblock62440
UpdatePhysics_elseblock62439
	; LineNumber: 3045
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed62536
	jmp UpdatePhysics_ConditionalTrueBlock62506
UpdatePhysics_localfailed62536
	jmp UpdatePhysics_elseblock62507
UpdatePhysics_ConditionalTrueBlock62506: ;Main true block ;keep 
	; LineNumber: 3045
	; LineNumber: 3047
	lda localVariable_UpdatePhysics_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shift
	sty localVariable_UpdatePhysics_shift+1
	; LineNumber: 3048
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3049
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3050
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_eraseObj
	; LineNumber: 3052
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3052
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3052
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3053
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62541
UpdatePhysics_ConditionalTrueBlock62539: ;Main true block ;keep 
	; LineNumber: 3052
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_elsedoneblock62541
	; LineNumber: 3055
	jmp UpdatePhysics_elsedoneblock62508
UpdatePhysics_elseblock62507
	; LineNumber: 3054
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed62556
	jmp UpdatePhysics_ConditionalTrueBlock62546
UpdatePhysics_localfailed62556
	jmp UpdatePhysics_elsedoneblock62548
UpdatePhysics_ConditionalTrueBlock62546: ;Main true block ;keep 
	; LineNumber: 3054
	; LineNumber: 3056
	lda localVariable_UpdatePhysics_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shift
	sty localVariable_UpdatePhysics_shift+1
	; LineNumber: 3057
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3058
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3059
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_eraseObj
	; LineNumber: 3061
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3061
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3061
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3062
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62561
UpdatePhysics_ConditionalTrueBlock62559: ;Main true block ;keep 
	; LineNumber: 3061
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_elsedoneblock62561
	; LineNumber: 3063
UpdatePhysics_elsedoneblock62548
UpdatePhysics_elsedoneblock62508
UpdatePhysics_elsedoneblock62440
UpdatePhysics_elsedoneblock62304
UpdatePhysics_elsedoneblock62032
	; LineNumber: 3065
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62567
UpdatePhysics_ConditionalTrueBlock62565: ;Main true block ;keep 
	; LineNumber: 3064
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_UpdatePhysics_newx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_UpdatePhysics_newy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
UpdatePhysics_elsedoneblock62567
	; LineNumber: 3066
UpdatePhysics_elsedoneblock28114
	; LineNumber: 3067
	rts
end_procedure_UpdatePhysics
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFloater
	;    Procedure type : User-defined procedure
	; LineNumber: 3076
	; LineNumber: 3071
localVariable_UpdateFloater_waterId	dc.b	0
	; LineNumber: 3072
localVariable_UpdateFloater_colObj	dc.b	0
	; LineNumber: 3072
localVariable_UpdateFloater_eraseObj	dc.b	0
	; LineNumber: 3072
localVariable_UpdateFloater_z	dc.b	0
	; LineNumber: 3073
localVariable_UpdateFloater_oldx	dc.b	0
	; LineNumber: 3073
localVariable_UpdateFloater_oldy	dc.b	0
	; LineNumber: 3073
localVariable_UpdateFloater_newx	dc.b	0
	; LineNumber: 3073
localVariable_UpdateFloater_newy	dc.b	0
	; LineNumber: 3073
localVariable_UpdateFloater_moveDir	dc.b	0
	; LineNumber: 3074
localVariable_UpdateFloater_shift	dc.w	0
	; LineNumber: 3075
localVariable_UpdateFloater_floatDir	dc.b	0
	; LineNumber: 3069
localVariable_UpdateFloater_id	dc.b	0
UpdateFloater_block62570
UpdateFloater
	; LineNumber: 3077
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
UpdateFloater_val_var63264 = $88
	sta UpdateFloater_val_var63264
	lda globaltime
	sec
UpdateFloater_modulo63265
	sbc UpdateFloater_val_var63264
	bcs UpdateFloater_modulo63265
	adc UpdateFloater_val_var63264
	; cmp #$00 ignored
	bne UpdateFloater_localfailed63263
	jmp UpdateFloater_ConditionalTrueBlock62572
UpdateFloater_localfailed63263
	jmp UpdateFloater_elsedoneblock62574
UpdateFloater_ConditionalTrueBlock62572: ;Main true block ;keep 
	; LineNumber: 3077
	; LineNumber: 3078
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_waterId
	; LineNumber: 3079
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
	; LineNumber: 3080
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_waterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63270
UpdateFloater_ConditionalTrueBlock63268: ;Main true block ;keep 
	; LineNumber: 3079
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_waterId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
UpdateFloater_elsedoneblock63270
	; LineNumber: 3081
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_localfailed63615
	jmp UpdateFloater_ConditionalTrueBlock63274
UpdateFloater_localfailed63615
	jmp UpdateFloater_elsedoneblock63276
UpdateFloater_ConditionalTrueBlock63274: ;Main true block ;keep 
	; LineNumber: 3081
	; LineNumber: 3082
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
	; LineNumber: 3083
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3084
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3085
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3086
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_z
	; LineNumber: 3087
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_colObj
	; LineNumber: 3088
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3089
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63623
	jmp UpdateFloater_localsuccess63622
UpdateFloater_localfailed63623: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63620
UpdateFloater_localsuccess63622: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_elsedoneblock63620
UpdateFloater_ConditionalTrueBlock63618: ;Main true block ;keep 
	; LineNumber: 3088
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63620
	; LineNumber: 3091
	
; //TODO: AnimationSwimL
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_colObj
	; LineNumber: 3092
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3093
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63631
	jmp UpdateFloater_localsuccess63630
UpdateFloater_localfailed63631: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63628
UpdateFloater_localsuccess63630: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_elsedoneblock63628
UpdateFloater_ConditionalTrueBlock63626: ;Main true block ;keep 
	; LineNumber: 3092
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63628
	; LineNumber: 3095
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_colObj
	; LineNumber: 3096
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3097
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63639
	jmp UpdateFloater_localsuccess63638
UpdateFloater_localfailed63639: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63636
UpdateFloater_localsuccess63638: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_elsedoneblock63636
UpdateFloater_ConditionalTrueBlock63634: ;Main true block ;keep 
	; LineNumber: 3096
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63636
	; LineNumber: 3099
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_colObj
	; LineNumber: 3100
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3101
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63647
	jmp UpdateFloater_localsuccess63646
UpdateFloater_localfailed63647: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63644
UpdateFloater_localsuccess63646: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_elsedoneblock63644
UpdateFloater_ConditionalTrueBlock63642: ;Main true block ;keep 
	; LineNumber: 3100
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63644
	; LineNumber: 3103
	
; //TODO: AnimationSwimR
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldx
	; LineNumber: 3104
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldy
	; LineNumber: 3106
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_localfailed63800
	jmp UpdateFloater_ConditionalTrueBlock63650
UpdateFloater_localfailed63800
	jmp UpdateFloater_elseblock63651
UpdateFloater_ConditionalTrueBlock63650: ;Main true block ;keep 
	; LineNumber: 3106
	; LineNumber: 3107
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3108
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63805
UpdateFloater_ConditionalTrueBlock63803: ;Main true block ;keep 
	; LineNumber: 3107
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63805
	; LineNumber: 3109
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3110
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3111
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3113
	jmp UpdateFloater_elsedoneblock63652
UpdateFloater_elseblock63651
	; LineNumber: 3112
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_localfailed63880
	jmp UpdateFloater_ConditionalTrueBlock63810
UpdateFloater_localfailed63880
	jmp UpdateFloater_elseblock63811
UpdateFloater_ConditionalTrueBlock63810: ;Main true block ;keep 
	; LineNumber: 3113
	; LineNumber: 3114
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3115
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63885
UpdateFloater_ConditionalTrueBlock63883: ;Main true block ;keep 
	; LineNumber: 3114
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63885
	; LineNumber: 3116
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3117
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3118
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3121
	jmp UpdateFloater_elsedoneblock63812
UpdateFloater_elseblock63811
	; LineNumber: 3120
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_localfailed63920
	jmp UpdateFloater_ConditionalTrueBlock63890
UpdateFloater_localfailed63920
	jmp UpdateFloater_elseblock63891
UpdateFloater_ConditionalTrueBlock63890: ;Main true block ;keep 
	; LineNumber: 3121
	; LineNumber: 3122
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3123
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63925
UpdateFloater_ConditionalTrueBlock63923: ;Main true block ;keep 
	; LineNumber: 3122
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63925
	; LineNumber: 3124
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3125
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3126
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3128
	jmp UpdateFloater_elsedoneblock63892
UpdateFloater_elseblock63891
	; LineNumber: 3127
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_localfailed63940
	jmp UpdateFloater_ConditionalTrueBlock63930
UpdateFloater_localfailed63940
	jmp UpdateFloater_elsedoneblock63932
UpdateFloater_ConditionalTrueBlock63930: ;Main true block ;keep 
	; LineNumber: 3128
	; LineNumber: 3129
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_id
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_z
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_pos
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_compIdx
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_b_norm
	jsr GetObjArea
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_eraseObj
	; LineNumber: 3130
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63945
UpdateFloater_ConditionalTrueBlock63943: ;Main true block ;keep 
	; LineNumber: 3129
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63945
	; LineNumber: 3131
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3132
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3133
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3134
UpdateFloater_elsedoneblock63932
UpdateFloater_elsedoneblock63892
UpdateFloater_elsedoneblock63812
UpdateFloater_elsedoneblock63652
	; LineNumber: 3136
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63951
UpdateFloater_ConditionalTrueBlock63949: ;Main true block ;keep 
	; LineNumber: 3135
	lda localVariable_UpdateFloater_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_UpdateFloater_newx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_UpdateFloater_newy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	lda localVariable_UpdateFloater_z
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
UpdateFloater_elsedoneblock63951
	; LineNumber: 3137
UpdateFloater_elsedoneblock63276
	; LineNumber: 3138
UpdateFloater_elsedoneblock62574
	; LineNumber: 3139
	rts
end_procedure_UpdateFloater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentWater
	;    Procedure type : User-defined procedure
	; LineNumber: 3144
	; LineNumber: 3143
localVariable_IncCurrentWater_laserEmitId	dc.b	0
	; LineNumber: 3141
localVariable_IncCurrentWater_id	dc.b	0
IncCurrentWater_block63954
IncCurrentWater
	; LineNumber: 3145
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_laserEmitId
	; LineNumber: 3146
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentWater_elsedoneblock63958
IncCurrentWater_ConditionalTrueBlock63956: ;Main true block ;keep 
	; LineNumber: 3146
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentWater_elsedoneblock63958
	; LineNumber: 3148
	rts
end_procedure_IncCurrentWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 3156
	; LineNumber: 3153
localVariable_UpdateFontaine_id1	dc.b	0
	; LineNumber: 3153
localVariable_UpdateFontaine_i	dc.b	0
	; LineNumber: 3153
localVariable_UpdateFontaine_x	dc.b	0
	; LineNumber: 3153
localVariable_UpdateFontaine_y	dc.b	0
	; LineNumber: 3154
localVariable_UpdateFontaine_pos	dc.b	0
	; LineNumber: 3154
localVariable_UpdateFontaine_id2	dc.b	0
	; LineNumber: 3155
localVariable_UpdateFontaine_laserEmitId	dc.b	0
	; LineNumber: 3151
localVariable_UpdateFontaine_id	dc.b	0
UpdateFontaine_block63961
UpdateFontaine
	; LineNumber: 3157
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_laserEmitId
	; LineNumber: 3158
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3159
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFontaine_localfailed64109
	jmp UpdateFontaine_ConditionalTrueBlock63963
UpdateFontaine_localfailed64109
	jmp UpdateFontaine_elseblock63964
UpdateFontaine_ConditionalTrueBlock63963: ;Main true block ;keep 
	; LineNumber: 3159
	; LineNumber: 3160
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateFontaine_elsedoneblock64114
UpdateFontaine_ConditionalTrueBlock64112: ;Main true block ;keep 
	; LineNumber: 3159
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64114
	; LineNumber: 3161
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3162
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 3163
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3164
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3166
	jmp UpdateFontaine_elsedoneblock63965
UpdateFontaine_elseblock63964
	; LineNumber: 3165
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFontaine_localfailed64187
	jmp UpdateFontaine_ConditionalTrueBlock64119
UpdateFontaine_localfailed64187
	jmp UpdateFontaine_elseblock64120
UpdateFontaine_ConditionalTrueBlock64119: ;Main true block ;keep 
	; LineNumber: 3166
	; LineNumber: 3167
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateFontaine_elsedoneblock64192
UpdateFontaine_ConditionalTrueBlock64190: ;Main true block ;keep 
	; LineNumber: 3166
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64192
	; LineNumber: 3168
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3169
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 3170
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3171
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3173
	jmp UpdateFontaine_elsedoneblock64121
UpdateFontaine_elseblock64120
	; LineNumber: 3172
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFontaine_localfailed64226
	jmp UpdateFontaine_ConditionalTrueBlock64197
UpdateFontaine_localfailed64226
	jmp UpdateFontaine_elseblock64198
UpdateFontaine_ConditionalTrueBlock64197: ;Main true block ;keep 
	; LineNumber: 3173
	; LineNumber: 3174
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateFontaine_elsedoneblock64231
UpdateFontaine_ConditionalTrueBlock64229: ;Main true block ;keep 
	; LineNumber: 3173
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64231
	; LineNumber: 3175
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3176
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 3177
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3178
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3180
	jmp UpdateFontaine_elsedoneblock64199
UpdateFontaine_elseblock64198
	; LineNumber: 3179
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFontaine_elsedoneblock64238
UpdateFontaine_ConditionalTrueBlock64236: ;Main true block ;keep 
	; LineNumber: 3180
	; LineNumber: 3181
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateFontaine_elsedoneblock64250
UpdateFontaine_ConditionalTrueBlock64248: ;Main true block ;keep 
	; LineNumber: 3180
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64250
	; LineNumber: 3182
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3183
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_xdir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_ydir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_bomb
	jsr DirectFire
	; LineNumber: 3184
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3185
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3186
UpdateFontaine_elsedoneblock64238
UpdateFontaine_elsedoneblock64199
UpdateFontaine_elsedoneblock64121
UpdateFontaine_elsedoneblock63965
	; LineNumber: 3187
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFontaine_elsedoneblock64256
UpdateFontaine_ConditionalTrueBlock64254: ;Main true block ;keep 
	; LineNumber: 3186
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64256
	; LineNumber: 3188
	rts
end_procedure_UpdateFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3193
	; LineNumber: 3192
localVariable_IncCurrentLaser_laserEmitId	dc.b	0
	; LineNumber: 3190
localVariable_IncCurrentLaser_id	dc.b	0
IncCurrentLaser_block64259
IncCurrentLaser
	; LineNumber: 3194
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_laserEmitId
	; LineNumber: 3195
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentLaser_elsedoneblock64263
IncCurrentLaser_ConditionalTrueBlock64261: ;Main true block ;keep 
	; LineNumber: 3195
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentLaser_elsedoneblock64263
	; LineNumber: 3197
	rts
end_procedure_IncCurrentLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcFireExitDir
	;    Procedure type : User-defined procedure
	; LineNumber: 3202
	; LineNumber: 3201
localVariable_CalcFireExitDir_ret	dc.b	0
	; LineNumber: 3199
localVariable_CalcFireExitDir_xdir	dc.b	0
	; LineNumber: 3199
localVariable_CalcFireExitDir_ydir	dc.b	0
CalcFireExitDir_block64266
CalcFireExitDir
	; LineNumber: 3203
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_elseblock64269
CalcFireExitDir_localsuccess64336: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64269
CalcFireExitDir_ConditionalTrueBlock64268: ;Main true block ;keep 
	; LineNumber: 3203
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64270
CalcFireExitDir_elseblock64269
	; LineNumber: 3204
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_elseblock64341
CalcFireExitDir_localsuccess64372: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64341
CalcFireExitDir_ConditionalTrueBlock64340: ;Main true block ;keep 
	; LineNumber: 3205
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64342
CalcFireExitDir_elseblock64341
	; LineNumber: 3206
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64377
CalcFireExitDir_localsuccess64390: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_elseblock64377
CalcFireExitDir_ConditionalTrueBlock64376: ;Main true block ;keep 
	; LineNumber: 3207
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64378
CalcFireExitDir_elseblock64377
	; LineNumber: 3208
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64395
CalcFireExitDir_localsuccess64399: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_elseblock64395
CalcFireExitDir_ConditionalTrueBlock64394: ;Main true block ;keep 
	; LineNumber: 3209
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64396
CalcFireExitDir_elseblock64395
	; LineNumber: 3211
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
CalcFireExitDir_elsedoneblock64396
CalcFireExitDir_elsedoneblock64378
CalcFireExitDir_elsedoneblock64342
CalcFireExitDir_elsedoneblock64270
	; LineNumber: 3214
	; LineNumber: 3214
	lda localVariable_CalcFireExitDir_ret
	rts
end_procedure_CalcFireExitDir
	; NodeProcedureDecl 3
	; ***********  Defining procedure : FireLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3232
	; LineNumber: 3218
localVariable_FireLaser_laserEmitId	dc.b	0
	; LineNumber: 3219
localVariable_FireLaser_laserId	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_collideId	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_collideId2	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_mirrorId	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_destroyAbleId	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_portalId	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_waterId	dc.b	0
	; LineNumber: 3221
localVariable_FireLaser_collide	dc.b	0
	; LineNumber: 3222
localVariable_FireLaser_controlId	dc.b	0
	; LineNumber: 3223
localVariable_FireLaser_laserx	dc.b	0
	; LineNumber: 3223
localVariable_FireLaser_lasery	dc.b	0
	; LineNumber: 3223
localVariable_FireLaser_lastx	dc.b	0
	; LineNumber: 3223
localVariable_FireLaser_lasty	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_countLaser	dc.b	0
	; LineNumber: 3225
localVariable_FireLaser_turn	dc.b	0
	; LineNumber: 3226
localVariable_FireLaser_targetPortal	dc.b	0
	; LineNumber: 3227
localVariable_FireLaser_dir	dc.b	0
	; LineNumber: 3228
localVariable_FireLaser_portalIdMove	dc.b	0
	; LineNumber: 3229
localVariable_FireLaser_tempx	dc.b	0
	; LineNumber: 3229
localVariable_FireLaser_tempy	dc.b	0
	; LineNumber: 3229
localVariable_FireLaser_tempx2	dc.b	0
	; LineNumber: 3229
localVariable_FireLaser_tempy2	dc.b	0
	; LineNumber: 3229
localVariable_FireLaser_pos	dc.b	0
	; LineNumber: 3230
localVariable_FireLaser_laserType	dc.b	0
	; LineNumber: 3231
localVariable_FireLaser_collideControlId	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_id	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_xpos	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_ypos	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_xdir	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_ydir	dc.b	0
FireLaser_block64402
FireLaser
	; LineNumber: 3234
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed118540
	jmp FireLaser_ConditionalTrueBlock64404
FireLaser_localfailed118540
	jmp FireLaser_elsedoneblock64406
FireLaser_ConditionalTrueBlock64404: ;Main true block ;keep 
	; LineNumber: 3234
	; LineNumber: 3235
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserEmitId
	; LineNumber: 3236
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
	; LineNumber: 3237
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserType
	; LineNumber: 3238
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_component0,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne FireLaser_elsedoneblock118545
FireLaser_ConditionalTrueBlock118543: ;Main true block ;keep 
	; LineNumber: 3238
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
FireLaser_elsedoneblock118545
	; LineNumber: 3240
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	; LineNumber: 3241
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3242
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3243
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3244
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3245
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_countLaser
	; LineNumber: 3246
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_elsedoneblock118551
FireLaser_localsuccess118553: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne FireLaser_elsedoneblock118551
FireLaser_ConditionalTrueBlock118549: ;Main true block ;keep 
	; LineNumber: 3246
	; LineNumber: 3248
	lda #<sndLaser
	ldy #>sndLaser
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3248
	lda #$ff
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3248
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3249
FireLaser_elsedoneblock118551
	; LineNumber: 3250
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideId
	; LineNumber: 3251
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$80
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_mirrorId
	; LineNumber: 3253
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock118558
FireLaser_localsuccess118560: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_elsedoneblock118558
FireLaser_ConditionalTrueBlock118556: ;Main true block ;keep 
	; LineNumber: 3252
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
FireLaser_elsedoneblock118558
	; LineNumber: 3254
FireLaser_while118562
FireLaser_loopstart118566
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	bne FireLaser_localfailed145329
FireLaser_localsuccess145330: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: GREATER
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_countLaser;keep
	bcc FireLaser_localfailed145329
	beq FireLaser_localfailed145329
	jmp FireLaser_ConditionalTrueBlock118563
FireLaser_localfailed145329
	jmp FireLaser_elsedoneblock118565
FireLaser_ConditionalTrueBlock118563: ;Main true block ;keep 
	; LineNumber: 3254
	; LineNumber: 3255
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideId
	; LineNumber: 3256
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$80
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_mirrorId
	; LineNumber: 3258
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed158713
FireLaser_localsuccess158714: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed158713
	jmp FireLaser_ConditionalTrueBlock145333
FireLaser_localfailed158713
	jmp FireLaser_elseblock145334
FireLaser_ConditionalTrueBlock145333: ;Main true block ;keep 
	; LineNumber: 3257
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	jmp FireLaser_elsedoneblock145335
FireLaser_elseblock145334
	; LineNumber: 3259
	; LineNumber: 3260
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_lasery
	lda ystart,x 
	clc
	adc localVariable_FireLaser_laserx
	 ; end add / sub var with constant
	tax
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed165406
	jmp FireLaser_ConditionalTrueBlock158718
FireLaser_localfailed165406
	jmp FireLaser_elsedoneblock158720
FireLaser_ConditionalTrueBlock158718: ;Main true block ;keep 
	; LineNumber: 3260
	; LineNumber: 3261
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserId
	; LineNumber: 3262
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed168635
	jmp FireLaser_ConditionalTrueBlock165409
FireLaser_localfailed168635
	jmp FireLaser_elsedoneblock165411
FireLaser_ConditionalTrueBlock165409: ;Main true block ;keep 
	; LineNumber: 3261
	; LineNumber: 3263
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_elseblock168639
FireLaser_localsuccess168650: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_elseblock168639
FireLaser_ConditionalTrueBlock168638: ;Main true block ;keep 
	; LineNumber: 3262
	lda #$74
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_elsedoneblock168640
FireLaser_elseblock168639
	; LineNumber: 3263
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock168656
FireLaser_localsuccess168658: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_elsedoneblock168656
FireLaser_ConditionalTrueBlock168654: ;Main true block ;keep 
	; LineNumber: 3263
	lda #$75
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock168656
FireLaser_elsedoneblock168640
	; LineNumber: 3265
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_elseblock168662
FireLaser_ConditionalTrueBlock168661: ;Main true block ;keep 
	; LineNumber: 3265
	; LineNumber: 3266
	lda #$8
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 3268
	jmp FireLaser_elsedoneblock168663
FireLaser_elseblock168662
	; LineNumber: 3268
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
FireLaser_elsedoneblock168663
	; LineNumber: 3270
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 3271
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 3272
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 3273
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3274
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3275
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 3276
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 3278
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3279
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed170239
	jmp FireLaser_ConditionalTrueBlock168669
FireLaser_localfailed170239
	jmp FireLaser_elsedoneblock168671
FireLaser_ConditionalTrueBlock168669: ;Main true block ;keep 
	; LineNumber: 3279
	; LineNumber: 3280
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_mirrorId
	lda objectList_gobject_gobject_mirrorTurn,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3282
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed171025
FireLaser_localsuccess171026: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed171025
	jmp FireLaser_ConditionalTrueBlock170242
FireLaser_localfailed171025
	jmp FireLaser_elseblock170243
FireLaser_ConditionalTrueBlock170242: ;Main true block ;keep 
	; LineNumber: 3282
	; LineNumber: 3283
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171030
FireLaser_ConditionalTrueBlock171029: ;Main true block ;keep 
	; LineNumber: 3283
	; LineNumber: 3284
	
; // laser left
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3285
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3286
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3287
	jmp FireLaser_elsedoneblock171031
FireLaser_elseblock171030
	; LineNumber: 3287
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171058
FireLaser_ConditionalTrueBlock171057: ;Main true block ;keep 
	; LineNumber: 3288
	; LineNumber: 3289
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3290
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3291
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3293
	jmp FireLaser_elsedoneblock171059
FireLaser_elseblock171058
	; LineNumber: 3292
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171073
FireLaser_ConditionalTrueBlock171071: ;Main true block ;keep 
	; LineNumber: 3292
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171073
FireLaser_elsedoneblock171059
FireLaser_elsedoneblock171031
	; LineNumber: 3295
	jmp FireLaser_elsedoneblock170244
FireLaser_elseblock170243
	; LineNumber: 3295
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed171443
FireLaser_localsuccess171444: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed171443
	jmp FireLaser_ConditionalTrueBlock171078
FireLaser_localfailed171443
	jmp FireLaser_elseblock171079
FireLaser_ConditionalTrueBlock171078: ;Main true block ;keep 
	; LineNumber: 3296
	; LineNumber: 3297
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171448
FireLaser_ConditionalTrueBlock171447: ;Main true block ;keep 
	; LineNumber: 3297
	; LineNumber: 3298
	
; // laser right
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3299
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3300
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3301
	jmp FireLaser_elsedoneblock171449
FireLaser_elseblock171448
	; LineNumber: 3301
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171476
FireLaser_ConditionalTrueBlock171475: ;Main true block ;keep 
	; LineNumber: 3302
	; LineNumber: 3303
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3304
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3305
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3307
	jmp FireLaser_elsedoneblock171477
FireLaser_elseblock171476
	; LineNumber: 3306
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171491
FireLaser_ConditionalTrueBlock171489: ;Main true block ;keep 
	; LineNumber: 3306
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171491
FireLaser_elsedoneblock171477
FireLaser_elsedoneblock171449
	; LineNumber: 3309
	jmp FireLaser_elsedoneblock171080
FireLaser_elseblock171079
	; LineNumber: 3309
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_localfailed171652
FireLaser_localsuccess171653: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed171652
	jmp FireLaser_ConditionalTrueBlock171496
FireLaser_localfailed171652
	jmp FireLaser_elseblock171497
FireLaser_ConditionalTrueBlock171496: ;Main true block ;keep 
	; LineNumber: 3310
	; LineNumber: 3311
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171657
FireLaser_ConditionalTrueBlock171656: ;Main true block ;keep 
	; LineNumber: 3311
	; LineNumber: 3312
	
; // laser up
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3313
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3314
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3315
	jmp FireLaser_elsedoneblock171658
FireLaser_elseblock171657
	; LineNumber: 3315
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171685
FireLaser_ConditionalTrueBlock171684: ;Main true block ;keep 
	; LineNumber: 3316
	; LineNumber: 3317
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3318
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3319
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3321
	jmp FireLaser_elsedoneblock171686
FireLaser_elseblock171685
	; LineNumber: 3320
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171700
FireLaser_ConditionalTrueBlock171698: ;Main true block ;keep 
	; LineNumber: 3320
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171700
FireLaser_elsedoneblock171686
FireLaser_elsedoneblock171658
	; LineNumber: 3323
	jmp FireLaser_elsedoneblock171498
FireLaser_elseblock171497
	; LineNumber: 3323
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock171707
FireLaser_localsuccess171757: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elsedoneblock171707
FireLaser_ConditionalTrueBlock171705: ;Main true block ;keep 
	; LineNumber: 3324
	; LineNumber: 3325
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171761
FireLaser_ConditionalTrueBlock171760: ;Main true block ;keep 
	; LineNumber: 3325
	; LineNumber: 3326
	
; // laser down
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3327
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3328
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3329
	jmp FireLaser_elsedoneblock171762
FireLaser_elseblock171761
	; LineNumber: 3329
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171789
FireLaser_ConditionalTrueBlock171788: ;Main true block ;keep 
	; LineNumber: 3330
	; LineNumber: 3331
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3332
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3333
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3335
	jmp FireLaser_elsedoneblock171790
FireLaser_elseblock171789
	; LineNumber: 3334
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171804
FireLaser_ConditionalTrueBlock171802: ;Main true block ;keep 
	; LineNumber: 3334
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171804
FireLaser_elsedoneblock171790
FireLaser_elsedoneblock171762
	; LineNumber: 3336
FireLaser_elsedoneblock171707
FireLaser_elsedoneblock171498
FireLaser_elsedoneblock171080
FireLaser_elsedoneblock170244
	; LineNumber: 3337
FireLaser_elsedoneblock168671
	; LineNumber: 3338
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_waterId
	; LineNumber: 3339
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock171810
FireLaser_ConditionalTrueBlock171808: ;Main true block ;keep 
	; LineNumber: 3339
	; LineNumber: 3340
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elseblock171838
FireLaser_localsuccess171849: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_elseblock171838
FireLaser_ConditionalTrueBlock171837: ;Main true block ;keep 
	; LineNumber: 3339
	lda #$4d
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_elsedoneblock171839
FireLaser_elseblock171838
	; LineNumber: 3340
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_elsedoneblock171855
FireLaser_localsuccess171857: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock171855
FireLaser_ConditionalTrueBlock171853: ;Main true block ;keep 
	; LineNumber: 3340
	lda #$4c
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171855
FireLaser_elsedoneblock171839
	; LineNumber: 3342
FireLaser_elsedoneblock171810
	; LineNumber: 3343
	lda localVariable_FireLaser_laserId
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_Id
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_y
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_AddMapItem_z
	jsr AddMapItem
	; LineNumber: 3344
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_lasery
	lda ystart,x 
	clc
	adc localVariable_FireLaser_laserx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 3345
FireLaser_elsedoneblock165411
	; LineNumber: 3347
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalId
	; LineNumber: 3348
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171976
FireLaser_localsuccess171977: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171976
FireLaser_localsuccess171978: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171976
	jmp FireLaser_ConditionalTrueBlock171860
FireLaser_localfailed171976
	jmp FireLaser_elsedoneblock171862
FireLaser_ConditionalTrueBlock171860: ;Main true block ;keep 
	; LineNumber: 3348
	; LineNumber: 3349
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_portalId;keep
	bne FireLaser_elseblock171982
FireLaser_ConditionalTrueBlock171981: ;Main true block ;keep 
	; LineNumber: 3348
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
	jmp FireLaser_elsedoneblock171983
FireLaser_elseblock171982
	; LineNumber: 3349
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
FireLaser_elsedoneblock171983
	; LineNumber: 3351
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3352
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3353
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171990
FireLaser_ConditionalTrueBlock171989: ;Main true block ;keep 
	; LineNumber: 3353
	; LineNumber: 3354
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3355
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3357
	jmp FireLaser_elsedoneblock171991
FireLaser_elseblock171990
	; LineNumber: 3356
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne FireLaser_elseblock172046
FireLaser_ConditionalTrueBlock172045: ;Main true block ;keep 
	; LineNumber: 3357
	; LineNumber: 3358
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3359
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3361
	jmp FireLaser_elsedoneblock172047
FireLaser_elseblock172046
	; LineNumber: 3360
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elseblock172074
FireLaser_ConditionalTrueBlock172073: ;Main true block ;keep 
	; LineNumber: 3361
	; LineNumber: 3362
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3363
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3365
	jmp FireLaser_elsedoneblock172075
FireLaser_elseblock172074
	; LineNumber: 3364
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne FireLaser_elsedoneblock172089
FireLaser_ConditionalTrueBlock172087: ;Main true block ;keep 
	; LineNumber: 3365
	; LineNumber: 3366
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3367
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3369
FireLaser_elsedoneblock172089
FireLaser_elsedoneblock172075
FireLaser_elsedoneblock172047
FireLaser_elsedoneblock171991
FireLaser_elsedoneblock171862
	; LineNumber: 3371
FireLaser_elsedoneblock158720
	; LineNumber: 3372
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3373
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3374
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3375
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3376
	; Test Inc dec D
	inc localVariable_FireLaser_countLaser
	; LineNumber: 3377
FireLaser_elsedoneblock145335
	; LineNumber: 3378
	jmp FireLaser_while118562
FireLaser_elsedoneblock118565
FireLaser_loopend118567
	; LineNumber: 3382
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	beq FireLaser_localfailed172384
FireLaser_localsuccess172385: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172384
	jmp FireLaser_ConditionalTrueBlock172093
FireLaser_localfailed172384
	jmp FireLaser_elsedoneblock172095
FireLaser_ConditionalTrueBlock172093: ;Main true block ;keep 
	; LineNumber: 3382
	; LineNumber: 3383
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_elsedoneblock172390
FireLaser_ConditionalTrueBlock172388: ;Main true block ;keep 
	; LineNumber: 3383
	; LineNumber: 3384
	
; // Collide Actions
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideControlId
	; LineNumber: 3385
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172403
FireLaser_localsuccess172405: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideControlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq FireLaser_elsedoneblock172403
FireLaser_ConditionalTrueBlock172401: ;Main true block ;keep 
	; LineNumber: 3385
	; LineNumber: 3387
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3387
	lda #$ff
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3387
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3388
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3389
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideControlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3390
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3391
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 3392
FireLaser_elsedoneblock172403
	; LineNumber: 3394
FireLaser_elsedoneblock172390
	; LineNumber: 3398
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_component1,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed172441
	jmp FireLaser_ConditionalTrueBlock172408
FireLaser_localfailed172441
	jmp FireLaser_elsedoneblock172410
FireLaser_ConditionalTrueBlock172408: ;Main true block ;keep 
	; LineNumber: 3398
	; LineNumber: 3399
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$2
FireLaser_val_var172459 = $88
	sta FireLaser_val_var172459
	lda globaltime
	sec
FireLaser_modulo172460
	sbc FireLaser_val_var172459
	bcs FireLaser_modulo172460
	adc FireLaser_val_var172459
	; cmp #$00 ignored
	bne FireLaser_localfailed172458
	jmp FireLaser_ConditionalTrueBlock172444
FireLaser_localfailed172458
	jmp FireLaser_elsedoneblock172446
FireLaser_ConditionalTrueBlock172444: ;Main true block ;keep 
	; LineNumber: 3399
	; LineNumber: 3400
	
; // PushPull
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3401
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3402
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	; 8 bit mul
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_onOff,x 
	; Load right hand side
	tax
	lda localVariable_FireLaser_xdir
	jsr multiply_eightbit
	txa
	ldy #0 ; ::EightbitMul
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3403
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	; 8 bit mul
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_onOff,x 
	; Load right hand side
	tax
	lda localVariable_FireLaser_ydir
	jsr multiply_eightbit
	txa
	ldy #0 ; ::EightbitMul
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3404
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_z
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideId2
	; LineNumber: 3405
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_elsedoneblock172469
FireLaser_ConditionalTrueBlock172467: ;Main true block ;keep 
	; LineNumber: 3405
	; LineNumber: 3407
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3407
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3407
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3408
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3409
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3410
	lda localVariable_FireLaser_collideId
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 3412
FireLaser_elsedoneblock172469
FireLaser_elsedoneblock172446
	; LineNumber: 3413
FireLaser_elsedoneblock172410
	; LineNumber: 3416
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_localfailed172498
FireLaser_localsuccess172499: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_component2,x 
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne FireLaser_localfailed172498
	jmp FireLaser_ConditionalTrueBlock172473
FireLaser_localfailed172498
	jmp FireLaser_elsedoneblock172475
FireLaser_ConditionalTrueBlock172473: ;Main true block ;keep 
	; LineNumber: 3416
	; LineNumber: 3417
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
FireLaser_val_var172513 = $88
	sta FireLaser_val_var172513
	lda globaltime
	sec
FireLaser_modulo172514
	sbc FireLaser_val_var172513
	bcs FireLaser_modulo172514
	adc FireLaser_val_var172513
	; cmp #$00 ignored
	bne FireLaser_localfailed172512
	jmp FireLaser_ConditionalTrueBlock172502
FireLaser_localfailed172512
	jmp FireLaser_elsedoneblock172504
FireLaser_ConditionalTrueBlock172502: ;Main true block ;keep 
	; LineNumber: 3417
	; LineNumber: 3418
	
; // SwitchPos
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3419
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3420
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx2
	; LineNumber: 3421
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy2
	; LineNumber: 3423
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3424
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3426
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 3428
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3429
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3431
	lda localVariable_FireLaser_collideId
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 3432
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 3435
	lda #<sndTransport
	ldy #>sndTransport
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3435
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3435
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3437
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172519
FireLaser_ConditionalTrueBlock172517: ;Main true block ;keep 
	; LineNumber: 3437
	; LineNumber: 3438
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3439
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3440
FireLaser_elsedoneblock172519
	; LineNumber: 3441
FireLaser_elsedoneblock172504
	; LineNumber: 3442
FireLaser_elsedoneblock172475
	; LineNumber: 3445
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_localfailed172599
FireLaser_localsuccess172600: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_component2,x 
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne FireLaser_localfailed172599
	jmp FireLaser_ConditionalTrueBlock172523
FireLaser_localfailed172599
	jmp FireLaser_elsedoneblock172525
FireLaser_ConditionalTrueBlock172523: ;Main true block ;keep 
	; LineNumber: 3445
	; LineNumber: 3446
	
; // PortalActivate
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_lasty
	lda ystart,x 
	clc
	adc localVariable_FireLaser_lastx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_pos
	; LineNumber: 3447
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_FireLaser_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172639
FireLaser_localsuccess172640: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172639
	jmp FireLaser_ConditionalTrueBlock172603
FireLaser_localfailed172639
	jmp FireLaser_elsedoneblock172605
FireLaser_ConditionalTrueBlock172603: ;Main true block ;keep 
	; LineNumber: 3447
	; LineNumber: 3448
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172656
FireLaser_localsuccess172657: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172656
	jmp FireLaser_ConditionalTrueBlock172643
FireLaser_localfailed172656
	jmp FireLaser_elseblock172644
FireLaser_ConditionalTrueBlock172643: ;Main true block ;keep 
	; LineNumber: 3448
	; LineNumber: 3449
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp lastPortal;keep
	bne FireLaser_elseblock172661
FireLaser_ConditionalTrueBlock172660: ;Main true block ;keep 
	; LineNumber: 3448
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
	jmp FireLaser_elsedoneblock172662
FireLaser_elseblock172661
	; LineNumber: 3448
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
FireLaser_elsedoneblock172662
	; LineNumber: 3450
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_portalIdMove
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3451
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3452
	lda localVariable_FireLaser_portalIdMove
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_i
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldx
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_oldy
	lda localVariable_FireLaser_lastx
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_x
	lda localVariable_FireLaser_lasty
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_y
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_z
	jsr SetPos
	; LineNumber: 3453
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_xdir
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ydir
	jsr CalcFireExitDir
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_portalIdMove ; optimized, look out for bugs
	sta objectList_gobject_gobject_portalFireExitDir,x
	; LineNumber: 3454
	lda localVariable_FireLaser_portalIdMove
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 3456
	jmp FireLaser_elsedoneblock172645
FireLaser_elseblock172644
	; LineNumber: 3456
	; LineNumber: 3457
	lda localVariable_FireLaser_lastx
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_x
	lda localVariable_FireLaser_lasty
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_y
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_xdir
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ydir
	jsr CalcFireExitDir
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_exitDir
	jsr InitPortal
	; LineNumber: 3458
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_lasty
	lda ystart,x 
	clc
	adc localVariable_FireLaser_lastx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 3459
FireLaser_elsedoneblock172645
	; LineNumber: 3461
	lda #<sndPortalActivate
	ldy #>sndPortalActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3461
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3461
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3462
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172671
FireLaser_ConditionalTrueBlock172669: ;Main true block ;keep 
	; LineNumber: 3462
	; LineNumber: 3463
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3464
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3465
FireLaser_elsedoneblock172671
	; LineNumber: 3466
FireLaser_elsedoneblock172605
	; LineNumber: 3467
FireLaser_elsedoneblock172525
	; LineNumber: 3468
FireLaser_elsedoneblock172095
	; LineNumber: 3469
FireLaser_elsedoneblock64406
	; LineNumber: 3470
	rts
end_procedure_FireLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3481
	; LineNumber: 3475
localVariable_UpdateLaser_id1	dc.b	0
	; LineNumber: 3475
localVariable_UpdateLaser_i	dc.b	0
	; LineNumber: 3475
localVariable_UpdateLaser_x	dc.b	0
	; LineNumber: 3475
localVariable_UpdateLaser_y	dc.b	0
	; LineNumber: 3476
localVariable_UpdateLaser_pos	dc.b	0
	; LineNumber: 3476
localVariable_UpdateLaser_id2	dc.b	0
	; LineNumber: 3477
localVariable_UpdateLaser_exit	dc.b	0
	; LineNumber: 3478
localVariable_UpdateLaser_controlId	dc.b	0
	; LineNumber: 3479
localVariable_UpdateLaser_joy	dc.b	0
	; LineNumber: 3480
localVariable_UpdateLaser_laserEmitId	dc.b	0
	; LineNumber: 3473
localVariable_UpdateLaser_id	dc.b	0
UpdateLaser_block172674
UpdateLaser
	; LineNumber: 3482
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3483
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
	; LineNumber: 3484
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3485
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_laserEmitId
	; LineNumber: 3486
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_component0,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne UpdateLaser_elsedoneblock172678
UpdateLaser_ConditionalTrueBlock172676: ;Main true block ;keep 
	; LineNumber: 3486
	; LineNumber: 3487
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3488
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_elsedoneblock172691
UpdateLaser_localsuccess172693: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_elsedoneblock172691
UpdateLaser_ConditionalTrueBlock172689: ;Main true block ;keep 
	; LineNumber: 3487
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
UpdateLaser_elsedoneblock172691
	; LineNumber: 3489
UpdateLaser_elsedoneblock172678
	; LineNumber: 3490
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed173490
UpdateLaser_localsuccess173491: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_UpdateLaser_controlId;keep
	beq UpdateLaser_localfailed173490
UpdateLaser_localsuccess173492: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_localfailed173490
	jmp UpdateLaser_ConditionalTrueBlock172696
UpdateLaser_localfailed173490
	jmp UpdateLaser_elseblock172697
UpdateLaser_ConditionalTrueBlock172696: ;Main true block ;keep 
	; LineNumber: 3491
	jmp UpdateLaser_elsedoneblock172698
UpdateLaser_elseblock172697
	; LineNumber: 3492
	; LineNumber: 3493
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_elsedoneblock173498
UpdateLaser_ConditionalTrueBlock173496: ;Main true block ;keep 
	; LineNumber: 3493
	; LineNumber: 3494
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_waitRelease,x 
	; cmp #$00 ignored
	beq UpdateLaser_elsedoneblock173550
UpdateLaser_ConditionalTrueBlock173548: ;Main true block ;keep 
	; LineNumber: 3494
	; LineNumber: 3495
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_release,x 
	; cmp #$00 ignored
	beq UpdateLaser_elseblock173575
UpdateLaser_ConditionalTrueBlock173574: ;Main true block ;keep 
	; LineNumber: 3494
	
; // do nothin
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	jmp UpdateLaser_elsedoneblock173576
UpdateLaser_elseblock173575
	; LineNumber: 3495
	; LineNumber: 3497
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	beq UpdateLaser_elsedoneblock173590
UpdateLaser_ConditionalTrueBlock173588: ;Main true block ;keep 
	; LineNumber: 3496
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_release,x
UpdateLaser_elsedoneblock173590
	; LineNumber: 3498
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3499
UpdateLaser_elsedoneblock173576
	; LineNumber: 3500
UpdateLaser_elsedoneblock173550
	; LineNumber: 3501
UpdateLaser_elsedoneblock173498
	; LineNumber: 3503
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateLaser_exit
	; cmp #$00 ignored
	bne UpdateLaser_localfailed173940
	jmp UpdateLaser_ConditionalTrueBlock173594
UpdateLaser_localfailed173940
	jmp UpdateLaser_elsedoneblock173596
UpdateLaser_ConditionalTrueBlock173594: ;Main true block ;keep 
	; LineNumber: 3503
	; LineNumber: 3504
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3505
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174111
UpdateLaser_localsuccess174112: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174111
UpdateLaser_localsuccess174113: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateLaser_localfailed174111
	jmp UpdateLaser_ConditionalTrueBlock173943
UpdateLaser_localfailed174111: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateLaser_localfailed174110
	jmp UpdateLaser_ConditionalTrueBlock173943
UpdateLaser_localfailed174110
	jmp UpdateLaser_elseblock173944
UpdateLaser_ConditionalTrueBlock173943: ;Main true block ;keep 
	; LineNumber: 3505
	; LineNumber: 3506
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateLaser_elsedoneblock174118
UpdateLaser_ConditionalTrueBlock174116: ;Main true block ;keep 
	; LineNumber: 3505
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174118
	; LineNumber: 3507
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3508
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ypos
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	jsr FireLaser
	; LineNumber: 3509
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3510
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3512
	jmp UpdateLaser_elsedoneblock173945
UpdateLaser_elseblock173944
	; LineNumber: 3511
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174201
UpdateLaser_localsuccess174202: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174201
UpdateLaser_localsuccess174203: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174201
	jmp UpdateLaser_ConditionalTrueBlock174123
UpdateLaser_localfailed174201: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateLaser_localfailed174200
	jmp UpdateLaser_ConditionalTrueBlock174123
UpdateLaser_localfailed174200
	jmp UpdateLaser_elseblock174124
UpdateLaser_ConditionalTrueBlock174123: ;Main true block ;keep 
	; LineNumber: 3512
	; LineNumber: 3513
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateLaser_elsedoneblock174208
UpdateLaser_ConditionalTrueBlock174206: ;Main true block ;keep 
	; LineNumber: 3512
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174208
	; LineNumber: 3514
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3515
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ypos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	jsr FireLaser
	; LineNumber: 3516
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3517
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3519
	jmp UpdateLaser_elsedoneblock174125
UpdateLaser_elseblock174124
	; LineNumber: 3518
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174246
UpdateLaser_localsuccess174247: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174246
UpdateLaser_localsuccess174248: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_localfailed174246
	jmp UpdateLaser_ConditionalTrueBlock174213
UpdateLaser_localfailed174246: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174245
	jmp UpdateLaser_ConditionalTrueBlock174213
UpdateLaser_localfailed174245
	jmp UpdateLaser_elseblock174214
UpdateLaser_ConditionalTrueBlock174213: ;Main true block ;keep 
	; LineNumber: 3519
	; LineNumber: 3520
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateLaser_elsedoneblock174253
UpdateLaser_ConditionalTrueBlock174251: ;Main true block ;keep 
	; LineNumber: 3519
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174253
	; LineNumber: 3521
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3522
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	jsr FireLaser
	; LineNumber: 3523
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3524
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3526
	jmp UpdateLaser_elsedoneblock174215
UpdateLaser_elseblock174214
	; LineNumber: 3525
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174268
UpdateLaser_localsuccess174269: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174268
UpdateLaser_localsuccess174270: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateLaser_localfailed174268
	jmp UpdateLaser_ConditionalTrueBlock174258
UpdateLaser_localfailed174268: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateLaser_elsedoneblock174260
UpdateLaser_ConditionalTrueBlock174258: ;Main true block ;keep 
	; LineNumber: 3526
	; LineNumber: 3527
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateLaser_elsedoneblock174275
UpdateLaser_ConditionalTrueBlock174273: ;Main true block ;keep 
	; LineNumber: 3526
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174275
	; LineNumber: 3528
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3529
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_id
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xpos
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ypos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	jsr FireLaser
	; LineNumber: 3530
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3531
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3532
UpdateLaser_elsedoneblock174260
UpdateLaser_elsedoneblock174215
UpdateLaser_elsedoneblock174125
UpdateLaser_elsedoneblock173945
	; LineNumber: 3533
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateLaser_elsedoneblock174281
UpdateLaser_ConditionalTrueBlock174279: ;Main true block ;keep 
	; LineNumber: 3532
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174281
	; LineNumber: 3534
UpdateLaser_elsedoneblock173596
	; LineNumber: 3535
UpdateLaser_elsedoneblock172698
	; LineNumber: 3536
	rts
end_procedure_UpdateLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateObject
	;    Procedure type : User-defined procedure
	; LineNumber: 3542
	; LineNumber: 3541
localVariable_UpdateObject_controlId	dc.b	0
	; LineNumber: 3539
localVariable_UpdateObject_id	dc.b	0
UpdateObject_block174284
UpdateObject
	; LineNumber: 3543
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component1,x 
	and #$40
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$40;keep
	bne UpdateObject_elsedoneblock174288
UpdateObject_ConditionalTrueBlock174286: ;Main true block ;keep 
	; LineNumber: 3542
	; LineNumber: 3544
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_id
	jsr UpdateLaser
	; LineNumber: 3545
UpdateObject_elsedoneblock174288
	; LineNumber: 3546
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component2,x 
	and #$20
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateObject_elsedoneblock174294
UpdateObject_ConditionalTrueBlock174292: ;Main true block ;keep 
	; LineNumber: 3545
	; LineNumber: 3547
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_id
	jsr UpdateFontaine
	; LineNumber: 3548
UpdateObject_elsedoneblock174294
	; LineNumber: 3550
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne UpdateObject_localfailed174388
	jmp UpdateObject_ConditionalTrueBlock174298
UpdateObject_localfailed174388
	jmp UpdateObject_elseblock174299
UpdateObject_ConditionalTrueBlock174298: ;Main true block ;keep 
	; LineNumber: 3550
	; LineNumber: 3551
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component0,x 
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateObject_elsedoneblock174393
UpdateObject_ConditionalTrueBlock174391: ;Main true block ;keep 
	; LineNumber: 3551
	; LineNumber: 3552
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_id
	jsr UpdatePhysics
	; LineNumber: 3553
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3554
UpdateObject_elsedoneblock174393
	; LineNumber: 3555
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component1,x 
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateObject_elsedoneblock174399
UpdateObject_ConditionalTrueBlock174397: ;Main true block ;keep 
	; LineNumber: 3554
	; LineNumber: 3556
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_id
	jsr UpdateFloater
	; LineNumber: 3557
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3558
UpdateObject_elsedoneblock174399
	; LineNumber: 3560
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component0,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne UpdateObject_localfailed174430
	jmp UpdateObject_ConditionalTrueBlock174403
UpdateObject_localfailed174430
	jmp UpdateObject_elsedoneblock174405
UpdateObject_ConditionalTrueBlock174403: ;Main true block ;keep 
	; LineNumber: 3560
	; LineNumber: 3561
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3562
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc UpdateObject_elseblock174434
UpdateObject_localsuccess174445: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	bne UpdateObject_elseblock174434
UpdateObject_ConditionalTrueBlock174433: ;Main true block ;keep 
	; LineNumber: 3561
	lda #$1
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	jmp UpdateObject_elsedoneblock174435
UpdateObject_elseblock174434
	; LineNumber: 3563
	; LineNumber: 3564
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_elsedoneblock174451
UpdateObject_localsuccess174453: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_elsedoneblock174451
UpdateObject_ConditionalTrueBlock174449: ;Main true block ;keep 
	; LineNumber: 3564
	; LineNumber: 3566
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3566
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3566
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3567
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3568
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3569
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3571
UpdateObject_elsedoneblock174451
	; LineNumber: 3573
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3574
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3575
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3576
UpdateObject_elsedoneblock174435
	; LineNumber: 3577
UpdateObject_elsedoneblock174405
	; LineNumber: 3579
	jmp UpdateObject_elsedoneblock174300
UpdateObject_elseblock174299
	; LineNumber: 3578
	; LineNumber: 3580
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_component0,x 
	and #$80
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$80;keep
	bne UpdateObject_elsedoneblock174459
UpdateObject_ConditionalTrueBlock174457: ;Main true block ;keep 
	; LineNumber: 3580
	; LineNumber: 3581
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3582
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_elsedoneblock174472
UpdateObject_localsuccess174474: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_elsedoneblock174472
UpdateObject_ConditionalTrueBlock174470: ;Main true block ;keep 
	; LineNumber: 3582
	; LineNumber: 3584
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3584
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3584
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3585
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3586
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3587
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3589
UpdateObject_elsedoneblock174472
	; LineNumber: 3591
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3592
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3593
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3594
UpdateObject_elsedoneblock174459
	; LineNumber: 3595
UpdateObject_elsedoneblock174300
	; LineNumber: 3596
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 3597
	rts
end_procedure_UpdateObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Update
	;    Procedure type : User-defined procedure
	; LineNumber: 3603
	; LineNumber: 3601
localVariable_Update_i	dc.b	0
	; LineNumber: 3602
localVariable_Update_id	dc.b	0
Update_block174476
Update
	; LineNumber: 3604
	jsr ClearAllLaser
	; LineNumber: 3605
	lda 197
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
	; LineNumber: 3606
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_elsedoneblock174480
Update_ConditionalTrueBlock174478: ;Main true block ;keep 
	; LineNumber: 3606
	; LineNumber: 3608
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne Update_elsedoneblock174492
Update_ConditionalTrueBlock174490: ;Main true block ;keep 
	; LineNumber: 3608
	; LineNumber: 3610
	
; //Key::Read();
	lda #<sndPlayerChange
	ldy #>sndPlayerChange
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3610
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3610
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3611
	jsr SwapActiveChar
	; LineNumber: 3612
Update_elsedoneblock174492
	; LineNumber: 3613
Update_elsedoneblock174480
	; LineNumber: 3614
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$3f;keep
	bne Update_elsedoneblock174498
Update_ConditionalTrueBlock174496: ;Main true block ;keep 
	; LineNumber: 3614
	; LineNumber: 3615
	lda #$1
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 3616
Update_elsedoneblock174498
	; LineNumber: 3617
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne Update_elseblock174503
Update_localsuccess174507: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda needExtraCycle
	; cmp #$00 ignored
	beq Update_elseblock174503
Update_ConditionalTrueBlock174502: ;Main true block ;keep 
	; LineNumber: 3616
	lda #$1
	; Calling storevariable on generic assign expression
	sta cycle
	jmp Update_elsedoneblock174504
Update_elseblock174503
	; LineNumber: 3616
	lda #$0
	; Calling storevariable on generic assign expression
	sta cycle
Update_elsedoneblock174504
	; LineNumber: 3623
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
Update_forloop174510
	; LineNumber: 3619
	; LineNumber: 3620
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Update_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Update_id
	; LineNumber: 3621
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_id
	jsr UpdateObject
	; LineNumber: 3622
Update_loopstart174511
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Update_i
	lda countDyn
	cmp localVariable_Update_i ;keep
	bne Update_forloop174510
Update_loopdone174515: ;keep
Update_loopend174512
	; LineNumber: 3624
	; Binary clause Simplified: EQUALS
	lda cycle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_elsedoneblock174519
Update_ConditionalTrueBlock174517: ;Main true block ;keep 
	; LineNumber: 3623
	lda #$0
	; Calling storevariable on generic assign expression
	sta needExtraCycle
Update_elsedoneblock174519
	; LineNumber: 3626
	rts
end_procedure_Update
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitAnimations
	;    Procedure type : User-defined procedure
	; LineNumber: 3634
	; LineNumber: 3632
localVariable_InitAnimations_pa	= $72
InitAnimations_block174522
InitAnimations
	; LineNumber: 3667
	
; // walk left
; // l            r            u            d
; // 00 01 02 03  04 05 06 07  08 09 0a 0b  0c 0d 0e 0f 
; // walk right
; // l            r            u            d
; // 10 11 12 13  14 15 16 17  18 19 1a 1b  1c 1d 1e 1f 
; // stand
; // l  r  u  d
; // 20 21 22 23
; // swim l
; // l     r     u     d
; // 24 25 26 27 24 25 26 27
; // swim r
; // l     r     u     d
; // 28 29 2a 2b 28 29 2a 2b
; // TODO	
; // climb
; // l     r     u     d
; // 2c 2d 2e 2f 30 31 32 33
; // TODO	
; // robe
; // l     r     u     d
; // 34 35 36 37 48 49 4a 4b
	lda #<animList
	ldx #>animList
	sta localVariable_InitAnimations_pa
	stx localVariable_InitAnimations_pa+1
	; LineNumber: 3668
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$80
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3669
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$84
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3670
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$88
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3671
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$8c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3672
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3673
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3674
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3675
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3677
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$08
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3678
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$90
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3679
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$94
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3680
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$98
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3681
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$9c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3682
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3683
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3684
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3685
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3687
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$10
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3688
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3689
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3690
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3691
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3692
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3693
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3694
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3695
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3697
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$18
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3698
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3699
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3700
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3701
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3702
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3703
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3704
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3705
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3707
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$20
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3708
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3709
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3710
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3711
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3712
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3713
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3714
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3715
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3717
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$28
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3718
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$ac
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3719
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3720
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3721
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3722
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3723
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3724
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3725
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3727
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$30
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3728
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$b4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3729
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3730
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3731
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3732
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3733
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3734
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3735
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3737
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$38
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3738
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$6b
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3739
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$6c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3740
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$6d
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3741
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$6e
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3742
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3743
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3744
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3745
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3747
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$40
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3748
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$63
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3749
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3750
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3751
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3752
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3753
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3754
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3755
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3757
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$48
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3758
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$64
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3759
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3760
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3761
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3762
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3763
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3764
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3765
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3767
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$50
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3768
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$67
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3769
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3770
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3771
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3772
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3773
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3774
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3775
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3777
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$58
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3778
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$66
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3779
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3780
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3781
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3782
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3783
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3784
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3785
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3787
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$60
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3788
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3789
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3790
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3791
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3792
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3793
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3794
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3795
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3797
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$68
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3798
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3799
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3800
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3801
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3802
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3803
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3804
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3805
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3808
	rts
end_procedure_InitAnimations
	; NodeProcedureDecl 4
	; Ending memory block at $2000
EndBlock2000:
	org $a000
StartBlocka000:
	; Starting new memory block at $a000
lev		dc.b	"x {aaaaaa  a  a  aaa  ^a aa  a  aa    aa6 e  aaa  aa   d  aaa a6    [12    ^ ^Yaa  %  o   ^      ^Yaa&     ^         ^Yaa&    ^)         ^Yaa&        (   h     a& 4------====hh   aa&m   n   b@   = f aaX  x===ss rs8 h o aaaaaaaaaaaaaaa>>aaaa"
	dc.b	0
	; Resuming memory block at $a000
levActor	dc.b $1, $1, $d3, $cc, $ff, $ff, $ff, $ff
	dc.b $2, $2, $d3, $cc, $ff, $ff, $ff, $ff
	dc.b $1, $1, $d3, $0, $ff, $ff, $ff, $ff
	dc.b $2, $2, $d3, $0, $ff, $ff, $ff, $ff
	dc.b $1, $3, $d3, $c9, $ff, $ff, $ff, $ff
	dc.b $2, $4, $d3, $c9, $ff, $ff, $ff, $ff
	dc.b $3, $5, $d3, $ff, $0, $11, $a, $ff
	dc.b $4, $6, $d3, $ff, $ff, $ff, $ff, $ff
	dc.b $0, $5, $ff, $ff, $0, $11, $a, $ff
	dc.b $3, $5, $46, $ff, $0, $11, $a, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	; Resuming memory block at $a000
levBothMustComplete	dc.b	$01
	; Resuming memory block at $a000
levStrings	dc.w tmp_41_string0, tmp_18467_string1, tmp_6334_string2, tmp_26500_string3, tmp_19169_string4, tmp_15724_string5, tmp_11478_string6, tmp_29358_string7
	; Resuming memory block at $a000
tmp_41_string0		dc.b	"WELCOME"
	dc.b	0
	; Resuming memory block at $a000
tmp_18467_string1		dc.b	"aa"
	dc.b	0
	; Resuming memory block at $a000
tmp_6334_string2		dc.b	"bb"
	dc.b	0
	; Resuming memory block at $a000
tmp_26500_string3		dc.b	"cc"
	dc.b	0
	; Resuming memory block at $a000
tmp_19169_string4		dc.b	"dd"
	dc.b	0
	; Resuming memory block at $a000
tmp_15724_string5		dc.b	"ee"
	dc.b	0
	; Resuming memory block at $a000
tmp_11478_string6		dc.b	"ff"
	dc.b	0
	; Resuming memory block at $a000
tmp_29358_string7		dc.b	"gg"
	dc.b	0
EndBlocka000:
	org $a280
StartBlockA280:
	; Starting new memory block at $A280
	; ***********  Defining procedure : UpdateMain
	;    Procedure type : User-defined procedure
	; LineNumber: 3819
	; LineNumber: 3815
localVariable_UpdateMain_levStr		dc.b	0
	; LineNumber: 3816
localVariable_UpdateMain_levStr2		dc.b	0
	; LineNumber: 3817
localVariable_UpdateMain_pos	dc.b	0
	; LineNumber: 3818
localVariable_UpdateMain_len	dc.b	0
UpdateMain_block174536
UpdateMain
	; LineNumber: 3820
	; Assigning a string : localVariable_UpdateMain_levStr
	ldy #0
UpdateMain_stringassigncpy174537
	lda UpdateMain_stringassignstr174538,y
	sta localVariable_UpdateMain_levStr,y
	iny
	cmp #0 ;keep
	bne UpdateMain_stringassigncpy174537
	; LineNumber: 3821
	; Assigning a string : localVariable_UpdateMain_levStr2
	ldy #0
UpdateMain_stringassigncpy174539
	lda UpdateMain_stringassignstr174540,y
	sta localVariable_UpdateMain_levStr2,y
	iny
	cmp #0 ;keep
	bne UpdateMain_stringassigncpy174539
	; LineNumber: 3823
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdateMain_localfailed174771
	jmp UpdateMain_ConditionalTrueBlock174542
UpdateMain_localfailed174771
	jmp UpdateMain_elseblock174543
UpdateMain_ConditionalTrueBlock174542: ;Main true block ;keep 
	; LineNumber: 3823
	; LineNumber: 3824
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_elseblock174775
UpdateMain_ConditionalTrueBlock174774: ;Main true block ;keep 
	; LineNumber: 3823
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_elsedoneblock174776
UpdateMain_elseblock174775
	; LineNumber: 3823
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_elsedoneblock174776
	; LineNumber: 3825
	; INTEGER optimization: a=b+c 
	lda levelSingle
	clc
	adc #$01
	sta str_num+0
	lda #0
	adc #$00
	sta str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_UpdateMain_levStr
	clc
	adc localVariable_UpdateMain_pos
	sta str_p1+0
	lda #>localVariable_UpdateMain_levStr
	adc #0
	sta str_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 3826
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_elseblock174785
UpdateMain_ConditionalTrueBlock174784: ;Main true block ;keep 
	; LineNumber: 3825
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_elsedoneblock174786
UpdateMain_elseblock174785
	; LineNumber: 3825
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_elsedoneblock174786
	; LineNumber: 3827
	; INTEGER optimization: a=b+c 
	lda levelCoop
	clc
	adc #$01
	sta str_num+0
	lda #0
	adc #$00
	sta str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_UpdateMain_levStr2
	clc
	adc localVariable_UpdateMain_pos
	sta str_p1+0
	lda #>localVariable_UpdateMain_levStr2
	adc #0
	sta str_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 3829
	
; //TODO
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_elsedoneblock174796
UpdateMain_ConditionalTrueBlock174794: ;Main true block ;keep 
	; LineNumber: 3829
	; LineNumber: 3830
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_localfailed174824
	jmp UpdateMain_ConditionalTrueBlock174820
UpdateMain_localfailed174824: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174822
UpdateMain_ConditionalTrueBlock174820: ;Main true block ;keep 
	; LineNumber: 3829
	lda levelSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	lda levelCoop
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
UpdateMain_elsedoneblock174822
	; LineNumber: 3831
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174829
UpdateMain_ConditionalTrueBlock174827: ;Main true block ;keep 
	; LineNumber: 3830
	lda levelSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	lda levelCoop
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
UpdateMain_elsedoneblock174829
	; LineNumber: 3832
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateMain_localfailed174837
	jmp UpdateMain_ConditionalTrueBlock174833
UpdateMain_localfailed174837: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174835
UpdateMain_ConditionalTrueBlock174833: ;Main true block ;keep 
	; LineNumber: 3831
	lda levelSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	lda levelCoop
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
UpdateMain_elsedoneblock174835
	; LineNumber: 3833
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3834
UpdateMain_elsedoneblock174796
	; LineNumber: 3835
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateMain_elsedoneblock174842
UpdateMain_ConditionalTrueBlock174840: ;Main true block ;keep 
	; LineNumber: 3835
	; LineNumber: 3836
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174860
UpdateMain_ConditionalTrueBlock174858: ;Main true block ;keep 
	; LineNumber: 3835
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_elsedoneblock174860
	; LineNumber: 3837
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174866
UpdateMain_ConditionalTrueBlock174864: ;Main true block ;keep 
	; LineNumber: 3836
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_elsedoneblock174866
	; LineNumber: 3838
UpdateMain_elsedoneblock174842
	; LineNumber: 3839
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174872
UpdateMain_ConditionalTrueBlock174870: ;Main true block ;keep 
	; LineNumber: 3839
	; LineNumber: 3840
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174890
UpdateMain_ConditionalTrueBlock174888: ;Main true block ;keep 
	; LineNumber: 3839
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_elsedoneblock174890
	; LineNumber: 3841
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174896
UpdateMain_ConditionalTrueBlock174894: ;Main true block ;keep 
	; LineNumber: 3840
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_elsedoneblock174896
	; LineNumber: 3842
UpdateMain_elsedoneblock174872
	; LineNumber: 3844
	lda #<localVariable_UpdateMain_levStr
	ldx #>localVariable_UpdateMain_levStr
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$f
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3845
	lda #<localVariable_UpdateMain_levStr2
	ldx #>localVariable_UpdateMain_levStr2
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$f
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3847
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3849
	jmp UpdateMain_elsedoneblock174544
UpdateMain_elseblock174543
	; LineNumber: 3849
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateMain_elsedoneblock174903
UpdateMain_ConditionalTrueBlock174901: ;Main true block ;keep 
	; LineNumber: 3850
	; LineNumber: 3851
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_elsedoneblock174955
UpdateMain_ConditionalTrueBlock174953: ;Main true block ;keep 
	; LineNumber: 3851
	; LineNumber: 3852
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_elseblock174980
UpdateMain_ConditionalTrueBlock174979: ;Main true block ;keep 
	; LineNumber: 3851
	lda #$1
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateMain_elsedoneblock174981
UpdateMain_elseblock174980
	; LineNumber: 3852
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174995
UpdateMain_ConditionalTrueBlock174993: ;Main true block ;keep 
	; LineNumber: 3852
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
UpdateMain_elsedoneblock174995
UpdateMain_elsedoneblock174981
	; LineNumber: 3854
UpdateMain_elsedoneblock174955
	; LineNumber: 3855
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3856
UpdateMain_elsedoneblock174903
UpdateMain_elsedoneblock174544
	; LineNumber: 3857
	rts
end_procedure_UpdateMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : OpenMain
	;    Procedure type : User-defined procedure
	; LineNumber: 3865
	; LineNumber: 3861
localVariable_OpenMain_i	dc.b	0
	; LineNumber: 3862
localVariable_OpenMain_levStr		dc.b	"00"
	dc.b	0
	; LineNumber: 3863
localVariable_OpenMain_pos	dc.b	0
	; LineNumber: 3864
localVariable_OpenMain_len	dc.b	0
OpenMain_block174998
OpenMain
	; LineNumber: 3867
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 3868
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 3869
	lda #$30
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_levStr+$0
	; LineNumber: 3870
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne OpenMain_localfailed175089
	jmp OpenMain_ConditionalTrueBlock175000
OpenMain_localfailed175089
	jmp OpenMain_elseblock175001
OpenMain_ConditionalTrueBlock175000: ;Main true block ;keep 
	; LineNumber: 3869
	; LineNumber: 3871
	jsr InitLevel
	; LineNumber: 3872
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne OpenMain_localfailed175117
	jmp OpenMain_ConditionalTrueBlock175092
OpenMain_localfailed175117
	jmp OpenMain_elseblock175093
OpenMain_ConditionalTrueBlock175092: ;Main true block ;keep 
	; LineNumber: 3872
	; LineNumber: 3873
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_elseblock175121
OpenMain_ConditionalTrueBlock175120: ;Main true block ;keep 
	; LineNumber: 3872
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_elsedoneblock175122
OpenMain_elseblock175121
	; LineNumber: 3872
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_elsedoneblock175122
	; LineNumber: 3874
	; INTEGER optimization: a=b+c 
	lda levelSingle
	clc
	adc #$01
	sta str_num+0
	lda #0
	adc #$00
	sta str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_OpenMain_levStr
	clc
	adc localVariable_OpenMain_pos
	sta str_p1+0
	lda #>localVariable_OpenMain_levStr
	adc #0
	sta str_p1+1
	lda #$a
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	jmp OpenMain_elsedoneblock175094
OpenMain_elseblock175093
	; LineNumber: 3876
	; LineNumber: 3877
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_elseblock175132
OpenMain_ConditionalTrueBlock175131: ;Main true block ;keep 
	; LineNumber: 3876
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_elsedoneblock175133
OpenMain_elseblock175132
	; LineNumber: 3876
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_elsedoneblock175133
	; LineNumber: 3878
	; INTEGER optimization: a=b+c 
	lda levelCoop
	clc
	adc #$01
	sta str_num+0
	lda #0
	adc #$00
	sta str_num+1
	; INTEGER optimization: a=b+c 
	lda #<localVariable_OpenMain_levStr
	clc
	adc localVariable_OpenMain_pos
	sta str_p1+0
	lda #>localVariable_OpenMain_levStr
	adc #0
	sta str_p1+1
	lda #$a
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
OpenMain_elsedoneblock175094
	; LineNumber: 3880
	lda #<txtLevel
	ldx #>txtLevel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3881
	lda #<localVariable_OpenMain_levStr
	ldx #>localVariable_OpenMain_levStr
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3883
	; Load Integer array
	; CAST type INTEGER
	ldx #0 ; watch for bug, Integer array has max index of 128
	lda levStrings,x 
	ldy levStrings+1,x 
	sta localVariable_PrintCenterStringColor_p1
	sty localVariable_PrintCenterStringColor_p1+1
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3885
	lda #<txtStartLevel
	ldx #>txtStartLevel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3886
	lda #<txtMainMenu
	ldx #>txtMainMenu
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3888
	lda #<txtPressDel
	ldx #>txtPressDel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3890
	lda #<sndEnd
	ldy #>sndEnd
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3890
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3890
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3891
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne OpenMain_elsedoneblock175143
OpenMain_ConditionalTrueBlock175141: ;Main true block ;keep 
	; LineNumber: 3890
	lda #<txtPressSpace
	ldx #>txtPressSpace
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$12
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_elsedoneblock175143
	; LineNumber: 3892
	; Binary clause Simplified: NOTEQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	beq OpenMain_elsedoneblock175149
OpenMain_ConditionalTrueBlock175147: ;Main true block ;keep 
	; LineNumber: 3892
	; LineNumber: 3893
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq OpenMain_elseblock175162
OpenMain_ConditionalTrueBlock175161: ;Main true block ;keep 
	; LineNumber: 3892
	lda #<txtBothMustComplete
	ldx #>txtBothMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	jmp OpenMain_elsedoneblock175163
OpenMain_elseblock175162
	; LineNumber: 3893
	lda #<txtOneMustComplete
	ldx #>txtOneMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_elsedoneblock175163
	; LineNumber: 3895
OpenMain_elsedoneblock175149
	; LineNumber: 3897
	lda #$7
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3899
	jmp OpenMain_elsedoneblock175002
OpenMain_elseblock175001
	; LineNumber: 3898
	; Binary clause Simplified: EQUALS
	clc
	lda state
	; cmp #$00 ignored
	bne OpenMain_localfailed175174
	jmp OpenMain_ConditionalTrueBlock175170
OpenMain_localfailed175174
	jmp OpenMain_elsedoneblock175172
OpenMain_ConditionalTrueBlock175170: ;Main true block ;keep 
	; LineNumber: 3899
	; LineNumber: 3901
	lda #<txtSelectGameMode
	ldx #>txtSelectGameMode
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3903
	lda #<txtSinglePlayer
	ldx #>txtSinglePlayer
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3904
	lda #<txtSinglePlayer2Chars
	ldx #>txtSinglePlayer2Chars
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3905
	lda #<txtCoop
	ldx #>txtCoop
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$e
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3907
	lda #<txtSingleStart
	ldx #>txtSingleStart
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$f
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3908
	lda #<txtCoopStart
	ldx #>txtCoopStart
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3912
	
; // PrintCenterStringColor(#txtAuthor,18,0);
	lda #$6
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3913
OpenMain_elsedoneblock175172
OpenMain_elsedoneblock175002
	; LineNumber: 3915
	rts
end_procedure_OpenMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : InitMap
	;    Procedure type : User-defined procedure
	; LineNumber: 3920
	; LineNumber: 3919
localVariable_InitMap_i	dc.b	0
	; LineNumber: 3919
localVariable_InitMap_x	dc.b	0
	; LineNumber: 3919
localVariable_InitMap_y	dc.b	0
	; LineNumber: 3919
localVariable_InitMap_varPrefixed_c	dc.b	0
InitMap_block175176
InitMap
	; LineNumber: 3921
	jsr ClearMap
	; LineNumber: 3922
	lda #$0
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 3923
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 3927
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175177
	; LineNumber: 3925
	; LineNumber: 3926
	lda localVariable_InitMap_i
	; Calling storevariable on generic assign expression
	pha
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #199
	sec
	sbc localVariable_InitMap_i
	 ; end add / sub var with constant
	tax
	pla
	sta deletedObjects,x
	; LineNumber: 3927
InitMap_loopstart175178
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$c8
	cmp localVariable_InitMap_i ;keep
	bne InitMap_forloop175177
InitMap_loopdone175182: ;keep
InitMap_loopend175179
	; LineNumber: 3943
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175183
	; LineNumber: 3929
	; LineNumber: 3930
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3931
	; Modulo
	lda #$14
InitMap_val_var175209 = $88
	sta InitMap_val_var175209
	lda localVariable_InitMap_i
	sec
InitMap_modulo175210
	sbc InitMap_val_var175209
	bcs InitMap_modulo175210
	adc InitMap_val_var175209
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3932
	; Right is PURE NUMERIC : Is word =0
	; 8 bit div
	lda localVariable_InitMap_i
	sta div8x8_d
	; Load right hand side
	lda #$14
	sta div8x8_c
	jsr div8x8_procedure
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_y
	; LineNumber: 3933
	lda #$5b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175214
	; LineNumber: 3933
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_y
	lda #$71
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_grav
	jsr InitFontaine
	jmp InitMap_caseend175213
InitMap_casenext175214
	lda #$5d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175216
	; LineNumber: 3934
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_y
	lda #$70
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_grav
	jsr InitFontaine
	jmp InitMap_caseend175213
InitMap_casenext175216
	lda #$28
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175218
	; LineNumber: 3935
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_y
	lda #$72
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_grav
	jsr InitFontaine
	jmp InitMap_caseend175213
InitMap_casenext175218
	lda #$29
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175220
	; LineNumber: 3936
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_y
	lda #$73
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_grav
	jsr InitFontaine
	jmp InitMap_caseend175213
InitMap_casenext175220
	lda #$31
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175222
	; LineNumber: 3937
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_y
	lda #$47
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_grav
	jsr InitCannon
	jmp InitMap_caseend175213
InitMap_casenext175222
	lda #$39
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175224
	; LineNumber: 3938
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_y
	lda #$46
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_grav
	jsr InitCannon
	jmp InitMap_caseend175213
InitMap_casenext175224
	lda #$37
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175226
	; LineNumber: 3939
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_y
	lda #$48
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_grav
	jsr InitCannon
	jmp InitMap_caseend175213
InitMap_casenext175226
	lda #$33
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175228
	; LineNumber: 3940
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_y
	lda #$49
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_grav
	jsr InitCannon
InitMap_casenext175228
InitMap_caseend175213
	; LineNumber: 3943
InitMap_loopstart175184
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175230
InitMap_loopnotdone175231
	jmp InitMap_forloop175183
InitMap_loopdone175230
InitMap_loopend175185
	; LineNumber: 3992
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175232
	; LineNumber: 3946
	; LineNumber: 3947
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3948
	; Modulo
	lda #$14
InitMap_val_var175321 = $88
	sta InitMap_val_var175321
	lda localVariable_InitMap_i
	sec
InitMap_modulo175322
	sbc InitMap_val_var175321
	bcs InitMap_modulo175322
	adc InitMap_val_var175321
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3949
	; Right is PURE NUMERIC : Is word =0
	; 8 bit div
	lda localVariable_InitMap_i
	sta div8x8_d
	; Load right hand side
	lda #$14
	sta div8x8_c
	jsr div8x8_procedure
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_y
	; LineNumber: 3950
	lda #$40
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175326
	; LineNumber: 3950
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_y
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_controlId
	jsr InitCharacter
	jmp InitMap_caseend175325
InitMap_casenext175326
	lda #$25
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175328
	; LineNumber: 3952
	; LineNumber: 3953
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitMap_localfailed175335
	jmp InitMap_ConditionalTrueBlock175331
InitMap_localfailed175335: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InitMap_elsedoneblock175333
InitMap_ConditionalTrueBlock175331: ;Main true block ;keep 
	; LineNumber: 3952
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_controlId
	jsr InitCharacter
InitMap_elsedoneblock175333
	; LineNumber: 3954
	jmp InitMap_caseend175325
InitMap_casenext175328
	lda #$61
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175337
	; LineNumber: 3954
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_y
	jsr InitBrick
	jmp InitMap_caseend175325
InitMap_casenext175337
	lda #$62
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175339
	; LineNumber: 3955
	lda #$41
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_tilen
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_rollLeftRight
	jsr InitStone
	jmp InitMap_caseend175325
InitMap_casenext175339
	lda #$66
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175341
	; LineNumber: 3956
	lda #$65
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_tilen
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_y
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_rollLeftRight
	jsr InitStone
	jmp InitMap_caseend175325
InitMap_casenext175341
	lda #$3d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175343
	; LineNumber: 3957
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_y
	jsr InitWater
	jmp InitMap_caseend175325
InitMap_casenext175343
	lda #$27
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175345
	; LineNumber: 3958
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_y
	lda #$7c
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_grav
	jsr InitWaterFlow
	jmp InitMap_caseend175325
InitMap_casenext175345
	lda #$26
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175347
	; LineNumber: 3959
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_y
	lda #$7d
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_grav
	jsr InitWaterFlow
	jmp InitMap_caseend175325
InitMap_casenext175347
	lda #$7b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175349
	; LineNumber: 3960
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_y
	lda #$7e
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_grav
	jsr InitWaterFlow
	jmp InitMap_caseend175325
InitMap_casenext175349
	lda #$7d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175351
	; LineNumber: 3961
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_y
	lda #$7f
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_grav
	jsr InitWaterFlow
	jmp InitMap_caseend175325
InitMap_casenext175351
	lda #$73
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175353
	; LineNumber: 3962
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_y
	jsr InitSand
	jmp InitMap_caseend175325
InitMap_casenext175353
	lda #$5e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175355
	; LineNumber: 3963
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_y
	lda #$42
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_grav
	jsr InitShiftPlattform
	jmp InitMap_caseend175325
InitMap_casenext175355
	lda #$59
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175357
	; LineNumber: 3964
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_y
	lda #$43
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_grav
	jsr InitShiftPlattform
	jmp InitMap_caseend175325
InitMap_casenext175357
	lda #$3e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175359
	; LineNumber: 3965
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_y
	lda #$45
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_grav
	jsr InitShiftPlattform
	jmp InitMap_caseend175325
InitMap_casenext175359
	lda #$3c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175361
	; LineNumber: 3966
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_y
	lda #$44
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_grav
	jsr InitShiftPlattform
	jmp InitMap_caseend175325
InitMap_casenext175361
	lda #$68
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175363
	; LineNumber: 3967
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_y
	jsr InitLadder
	jmp InitMap_caseend175325
InitMap_casenext175363
	lda #$2d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175365
	; LineNumber: 3968
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_y
	lda #$5e
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_grav
	jsr InitRobe
	jmp InitMap_caseend175325
InitMap_casenext175365
	lda #$5f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175367
	; LineNumber: 3969
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_y
	lda #$5f
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_grav
	jsr InitRobe
	jmp InitMap_caseend175325
InitMap_casenext175367
	lda #$21
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175369
	; LineNumber: 3970
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_y
	lda #$60
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_grav
	jsr InitRobe
	jmp InitMap_caseend175325
InitMap_casenext175369
	lda #$7c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175371
	; LineNumber: 3971
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_y
	lda #$61
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_grav
	jsr InitRobe
	jmp InitMap_caseend175325
InitMap_casenext175371
	lda #$6f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175373
	; LineNumber: 3972
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_exitDir
	jsr InitPortal
	jmp InitMap_caseend175325
InitMap_casenext175373
	lda #$63
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175375
	; LineNumber: 3973
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_y
	jsr InitPortalActivate
	jmp InitMap_caseend175325
InitMap_casenext175375
	lda #$38
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175377
	; LineNumber: 3974
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_y
	lda #$53
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_grav
	jsr InitGravPad
	jmp InitMap_caseend175325
InitMap_casenext175377
	lda #$32
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175379
	; LineNumber: 3975
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_y
	lda #$54
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_tilen
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_grav
	jsr InitGravPad
	jmp InitMap_caseend175325
InitMap_casenext175379
	lda #$34
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175381
	; LineNumber: 3976
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_y
	lda #$56
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_grav
	jsr InitGravPad
	jmp InitMap_caseend175325
InitMap_casenext175381
	lda #$36
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175383
	; LineNumber: 3977
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_y
	lda #$55
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_tilen
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_grav
	jsr InitGravPad
	jmp InitMap_caseend175325
InitMap_casenext175383
	lda #$6e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175385
	; LineNumber: 3978
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_y
	lda #$5c
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_tilen
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_turn
	jsr InitMirror
	jmp InitMap_caseend175325
InitMap_casenext175385
	lda #$6d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175387
	; LineNumber: 3979
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_y
	lda #$5d
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_turn
	jsr InitMirror
	jmp InitMap_caseend175325
InitMap_casenext175387
	lda #$67
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175389
	; LineNumber: 3980
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_y
	lda #$52
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_tilen
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_turn
	jsr InitMirror
	jmp InitMap_caseend175325
InitMap_casenext175389
	lda #$74
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175391
	; LineNumber: 3981
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_y
	jsr InitLaserTransport
	jmp InitMap_caseend175325
InitMap_casenext175391
	lda #$64
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175393
	; LineNumber: 3983
	
; //			@LEV_LASER_TRANSPORT_ONCE: InitLaserTransportOnce(x,y);
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_y
	lda #$69
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_tilen
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_dir
	jsr InitBox
	jmp InitMap_caseend175325
InitMap_casenext175393
	lda #$65
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175395
	; LineNumber: 3984
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_y
	lda #$6a
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_tilen
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_dir
	jsr InitBox
	jmp InitMap_caseend175325
InitMap_casenext175395
	lda #$72
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175397
	; LineNumber: 3985
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_y
	jsr InitSwitchManual
	jmp InitMap_caseend175325
InitMap_casenext175397
	lda #$78
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175399
	; LineNumber: 3986
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_y
	jsr InitDoor
	jmp InitMap_caseend175325
InitMap_casenext175399
	lda #$58
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175401
	; LineNumber: 3987
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_y
	jsr InitExit
	jmp InitMap_caseend175325
InitMap_casenext175401
	lda #$2e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175403
	; LineNumber: 3988
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_y
	jsr InitWaypoint
InitMap_casenext175403
InitMap_caseend175325
	; LineNumber: 3991
InitMap_loopstart175233
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175405
InitMap_loopnotdone175406
	jmp InitMap_forloop175232
InitMap_loopdone175405
InitMap_loopend175234
	; LineNumber: 3992
	rts
end_procedure_InitMap
	; NodeProcedureDecl 4
	; ***********  Defining procedure : LoopMenu
	;    Procedure type : User-defined procedure
	; LineNumber: 3996
LoopMenu
	; LineNumber: 3997
LoopMenu_while175408
LoopMenu_loopstart175412
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne LoopMenu_localfailed175421
	jmp LoopMenu_ConditionalTrueBlock175409
LoopMenu_localfailed175421: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne LoopMenu_elsedoneblock175411
LoopMenu_ConditionalTrueBlock175409: ;Main true block ;keep 
	; LineNumber: 3997
	; LineNumber: 3998
	jsr callReadJoy1
	; LineNumber: 3999
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4000
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne LoopMenu_elsedoneblock175426
LoopMenu_ConditionalTrueBlock175424: ;Main true block ;keep 
	; LineNumber: 4000
	; LineNumber: 4001
	jsr UpdateMain
	; LineNumber: 4002
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4002
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4004
LoopMenu_elsedoneblock175426
	; LineNumber: 4005
	jmp LoopMenu_while175408
LoopMenu_elsedoneblock175411
LoopMenu_loopend175413
	; LineNumber: 4006
	rts
end_procedure_LoopMenu
	; NodeProcedureDecl 4
	; ***********  Defining procedure : GameLoop
	;    Procedure type : User-defined procedure
	; LineNumber: 4011
GameLoop
	; LineNumber: 4012
GameLoop_while175430
GameLoop_loopstart175434
	; Binary clause Simplified: NOTEQUALS
	clc
	lda #$1
	; cmp #$00 ignored
	beq GameLoop_localfailed175470
	jmp GameLoop_ConditionalTrueBlock175431
GameLoop_localfailed175470
	jmp GameLoop_elsedoneblock175433
GameLoop_ConditionalTrueBlock175431: ;Main true block ;keep 
	; LineNumber: 4012
	; LineNumber: 4013
	jsr callReadJoy1
	; LineNumber: 4014
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4015
	lda #$0
	cmp state ;keep
	bne GameLoop_casenext175473
	; LineNumber: 4016
	; LineNumber: 4017
	jsr ClearFullScreen
	; LineNumber: 4018
	
; // clear screen
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4019
	jsr OpenMain
	; LineNumber: 4020
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4021
	jsr OpenMain
	; LineNumber: 4023
	jmp GameLoop_caseend175472
GameLoop_casenext175473
	lda #$2
	cmp state ;keep
	bne GameLoop_casenext175475
	; LineNumber: 4024
	; LineNumber: 4025
	jsr ClearFullScreen
	; LineNumber: 4026
	
; // clear screen
	jsr InitLevel
	; LineNumber: 4027
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4028
	jsr OpenMain
	; LineNumber: 4029
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4030
	jsr OpenMain
	; LineNumber: 4031
	jmp GameLoop_caseend175472
GameLoop_casenext175475
	lda #$6
	cmp state ;keep
	bne GameLoop_casenext175477
	; LineNumber: 4032
	jsr LoopMenu
	jmp GameLoop_caseend175472
GameLoop_casenext175477
	lda #$7
	cmp state ;keep
	bne GameLoop_casenext175479
	; LineNumber: 4034
	jsr LoopMenu
	jmp GameLoop_caseend175472
GameLoop_casenext175479
	lda #$1
	cmp state ;keep
	bne GameLoop_casenext175481
	; LineNumber: 4035
	jsr InitScene
	jmp GameLoop_caseend175472
GameLoop_casenext175481
	lda #$3
	cmp state ;keep
	bne GameLoop_casenext175483
	; LineNumber: 4037
	; LineNumber: 4039
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4040
	
; // will be updated in raster chain
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4041
GameLoop_while175485
GameLoop_loopstart175489
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GameLoop_elsedoneblock175488
GameLoop_ConditionalTrueBlock175486: ;Main true block ;keep 
	; LineNumber: 4041
	; LineNumber: 4042
	jsr callReadJoy1
	; LineNumber: 4043
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4044
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne GameLoop_elsedoneblock175502
GameLoop_ConditionalTrueBlock175500: ;Main true block ;keep 
	; LineNumber: 4044
	; LineNumber: 4045
	jsr Update
	; LineNumber: 4046
	jsr Animate
	; LineNumber: 4047
	jsr CycleWater
	; LineNumber: 4048
	jsr DecreaseTextTimer
	; LineNumber: 4049
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4049
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4051
GameLoop_elsedoneblock175502
	; LineNumber: 4052
	jmp GameLoop_while175485
GameLoop_elsedoneblock175488
GameLoop_loopend175490
	; LineNumber: 4053
GameLoop_casenext175483
GameLoop_caseend175472
	; LineNumber: 4055
	jmp GameLoop_while175430
GameLoop_elsedoneblock175433
GameLoop_loopend175435
	; LineNumber: 4056
	rts
end_procedure_GameLoop
	; NodeProcedureDecl 4
	; ***********  Defining procedure : InitialiseTables
	;    Procedure type : User-defined procedure
	; LineNumber: 4059
InitialiseTables
	; LineNumber: 4062
	
; // create an address table of screen row addresses, we will use this to quickly find the Y position in screen memory
; // without needing to use costly multiplication
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$1000
	lda #<$1000
	ldx #0
	sta scr1,x   ; Address of table
	tya
	sta scr1+1,x
InitialiseTables_dtloop175506
	tay
	lda scr1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow175507
	iny
InitialiseTables_dtnooverflow175507
	sta scr1,x
	tya
	sta scr1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop175506
	; LineNumber: 4063
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$1e00
	lda #<$1e00
	ldx #0
	sta scr2,x   ; Address of table
	tya
	sta scr2+1,x
InitialiseTables_dtloop175508
	tay
	lda scr2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow175509
	iny
InitialiseTables_dtnooverflow175509
	sta scr2,x
	tya
	sta scr2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop175508
	; LineNumber: 4064
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9400
	lda #<$9400
	ldx #0
	sta col1,x   ; Address of table
	tya
	sta col1+1,x
InitialiseTables_dtloop175510
	tay
	lda col1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow175511
	iny
InitialiseTables_dtnooverflow175511
	sta col1,x
	tya
	sta col1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop175510
	; LineNumber: 4065
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9600
	lda #<$9600
	ldx #0
	sta col2,x   ; Address of table
	tya
	sta col2+1,x
InitialiseTables_dtloop175512
	tay
	lda col2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow175513
	iny
InitialiseTables_dtnooverflow175513
	sta col2,x
	tya
	sta col2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop175512
	; LineNumber: 4066
	rts
end_procedure_InitialiseTables
	; NodeProcedureDecl 4
	; ***********  Defining procedure : InitScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 4069
InitScreen
	; LineNumber: 4071
	
; // set the screen and border colour
	; Assigning memory location
	lda #$94
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 4072
	
; // width
	; Assigning memory location
	lda #$26
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 4073
	
; // 24 (25 rows-1) x 2
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $9000 + $0;keep
	clc
	adc #$2
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9000
	; LineNumber: 4074
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $9001 + $0;keep
	clc
	adc #$2
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9001
	; LineNumber: 4075
	; LineNumber: 4078
	; Assigning memory location
	lda #$e
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 4079
	; Assigning memory location
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 4080
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 4081
	jsr InitialiseTables
	; LineNumber: 4082
	rts
end_procedure_InitScreen
	; NodeProcedureDecl -1
	; Ending memory block at $A280
EndBlockA280:
	org $aecf
StartBlockaecf:
	; Starting new memory block at $aecf
objectList_gobject_gobject_component0	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_component1	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_component2	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_component3	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_transX	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_transY	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_transZ	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_rendTilePos	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_physGravity	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_b_physFallDown	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_b_physRollLeftRight	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_shiftDir	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_controlId	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_moves	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_animId	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_animPos	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_animFinish	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_portalFireExitDir	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_laserEmitId	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_laserTag	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_mirrorTurn	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
objectList_gobject_gobject_onOff	dc.b	0
	    dc.b 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
EndBlockaecf:

