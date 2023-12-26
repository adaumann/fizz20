
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
txtSingleStart		dc.b	"1P START LEVEL: XX"
	dc.b	0
	; Resuming memory block at $400
txtCoopStart		dc.b	"2P START LEVEL: XX"
	dc.b	0
	; Resuming memory block at $400
txtLevel		dc.b	"LEVEL: XX"
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
	; LineNumber: 4144
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
	; LineNumber: 4092
vbl
	; LineNumber: 4093
	; StartIRQ
	pha
	txa
	pha
	tya
	pha
	; LineNumber: 4094
	jsr UpdateSound
	; LineNumber: 4095
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175587
	jmp vbl_ConditionalTrueBlock175474
vbl_localfailed175587
	jmp vbl_elsedoneblock175476
vbl_ConditionalTrueBlock175474: ;Main true block ;keep 
	; LineNumber: 4095
	; LineNumber: 4096
	; Binary clause Simplified: EQUALS
	clc
	lda time
	; cmp #$00 ignored
	bne vbl_localfailed175645
	jmp vbl_ConditionalTrueBlock175590
vbl_localfailed175645
	jmp vbl_elseblock175591
vbl_ConditionalTrueBlock175590: ;Main true block ;keep 
	; LineNumber: 4096
	; LineNumber: 4097
	jsr SwitchBank
	; LineNumber: 4101
	jmp vbl_elsedoneblock175592
vbl_elseblock175591
	; LineNumber: 4100
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175674
vbl_localsuccess175675: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne vbl_localfailed175674
	jmp vbl_ConditionalTrueBlock175649
vbl_localfailed175674
	jmp vbl_elseblock175650
vbl_ConditionalTrueBlock175649: ;Main true block ;keep 
	; LineNumber: 4100
	; LineNumber: 4102
	
; // if(state = 8) then state := 2;
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175677
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
	bne vbl_halfcopyloop175677
	; LineNumber: 4103
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175679
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
	bne vbl_halfcopyloop175679
	; LineNumber: 4105
	jmp vbl_elsedoneblock175651
vbl_elseblock175650
	; LineNumber: 4104
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175691
vbl_localsuccess175692: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175691
	jmp vbl_ConditionalTrueBlock175683
vbl_localfailed175691
	jmp vbl_elsedoneblock175685
vbl_ConditionalTrueBlock175683: ;Main true block ;keep 
	; LineNumber: 4105
	; LineNumber: 4106
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175694
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
	bne vbl_halfcopyloop175694
	; LineNumber: 4107
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175696
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
	bne vbl_halfcopyloop175696
	; LineNumber: 4108
vbl_elsedoneblock175685
vbl_elsedoneblock175651
vbl_elsedoneblock175592
	; LineNumber: 4109
vbl_elsedoneblock175476
	; LineNumber: 4110
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne vbl_elsedoneblock175701
vbl_ConditionalTrueBlock175699: ;Main true block ;keep 
	; LineNumber: 4110
	; LineNumber: 4111
	lda #$0
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4112
vbl_elsedoneblock175701
	; LineNumber: 4113
	; Binary clause Simplified: LESS
	lda time
	; Compare with pure num / var optimization
	cmp #$4;keep
	bcs vbl_elseblock175706
vbl_ConditionalTrueBlock175705: ;Main true block ;keep 
	; LineNumber: 4112
	; Test Inc dec D
	inc time
	jmp vbl_elsedoneblock175707
vbl_elseblock175706
	; LineNumber: 4113
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_elsedoneblock175721
vbl_ConditionalTrueBlock175719: ;Main true block ;keep 
	; LineNumber: 4113
	; LineNumber: 4115
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4116
vbl_elsedoneblock175721
vbl_elsedoneblock175707
	; LineNumber: 4117
	; CloseIRQ
	pla
	tay
	pla
	tax
	pla
	 jmp $eabf     ; return to normal IRQ	
	; LineNumber: 4118
	rti
end_procedure_vbl
	; NodeProcedureDecl -1
	; ***********  Defining procedure : InitScene
	;    Procedure type : User-defined procedure
	; LineNumber: 4122
InitScene
	; LineNumber: 4124
	jsr InitMap
	; LineNumber: 4125
	jsr InitActors
	; LineNumber: 4125
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4127
	jsr ClearFullScreen
	; LineNumber: 4128
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4129
	jsr ClearText
	; LineNumber: 4130
	jsr SwitchBank
	; LineNumber: 4131
	jsr ClearFullScreen
	; LineNumber: 4132
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4133
	jsr ClearText
	; LineNumber: 4135
	jsr InitAnimations
	; LineNumber: 4136
	lda #$3
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4138
	lda #<sndSceneStart
	ldy #>sndSceneStart
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 4138
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 4138
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 4140
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne InitScene_viarasterirq_ntsc_timing175725
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp InitScene_viarasterirq_end175726
InitScene_viarasterirq_ntsc_timing175725
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
InitScene_viarasterirq_end175726
	; LineNumber: 4141
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
	; LineNumber: 4142
	rts
end_procedure_InitScene
block1
main_block_begin_
	; LineNumber: 4145
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175728
	ldy #>MainProgram_stringassignstr175728
	sta fileName
	sty fileName+1
	; LineNumber: 4146
	; Integer constant assigning
	; Load16bitvariable : #$400
	ldy #$04
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4147
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175730
	ldy #>MainProgram_stringassignstr175730
	sta fileName
	sty fileName+1
	; LineNumber: 4148
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4149
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4150
	jsr InitScreen
	; LineNumber: 4151
	jsr SetupSound
	; LineNumber: 4153
	jsr ClearFullScreen
	; LineNumber: 4155
	
; // clear screen
	lda #$28
	; Calling storevariable on generic assign expression
	sta maxSingleLevels
	; LineNumber: 4156
	lda #$1e
	; Calling storevariable on generic assign expression
	sta maxMultiLevels
	; LineNumber: 4157
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
	; LineNumber: 4158
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4160
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx #$79 ; optimized, look out for bugs
	lda #$0
	bne MainProgram_viarasterirq_ntsc_timing175731
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp MainProgram_viarasterirq_end175732
MainProgram_viarasterirq_ntsc_timing175731
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
MainProgram_viarasterirq_end175732
	; LineNumber: 4228
	
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
	; LineNumber: 4229
	jmp * ; loop like (�/%
	; LineNumber: 4230
main_block_end_
	; End of program
	; Ending memory block at $1210
UpdateMain_stringassignstr174484		dc.b	"00"
	dc.b	0
UpdateMain_stringassignstr174486		dc.b	"00"
	dc.b	0
MainProgram_stringassignstr175728		dc.b	"VAR"
	dc.b	0
MainProgram_stringassignstr175730		dc.b	"COD"
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
            BCS  main           ; Jump to error handler if error
	
	; LineNumber: 682
	rts
end_procedure_LoadFile
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 688
	; LineNumber: 686
localVariable_InitLevel_i	dc.w	0
	; LineNumber: 687
localVariable_InitLevel_levStr		dc.b	"XFF"
	dc.b	0
InitLevel_block127
InitLevel
	; LineNumber: 689
	lda #$0
	; Calling storevariable on generic assign expression
	sta countObjects
	; LineNumber: 690
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 691
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 692
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 693
	; Calling storevariable on generic assign expression
	sta countLasers
	; LineNumber: 694
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 695
	lda #$1
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 696
	lda #$6
	; Calling storevariable on generic assign expression
	sta statusCol
	; LineNumber: 698
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$2
	; LineNumber: 699
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 706
	; Integer constant assigning
	; Load16bitvariable : #$aecf
	ldy #$ae
	lda #$cf
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_i
	sty localVariable_InitLevel_i+1
InitLevel_forloop128
	; LineNumber: 702
	; LineNumber: 703
	
; // TODO: new mem pos
	ldy localVariable_InitLevel_i+1 ;keep
	lda localVariable_InitLevel_i
	sta sp
	sty sp+1
	; LineNumber: 704
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (sp),y
	; LineNumber: 705
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
	; LineNumber: 701
	; LineNumber: 702
	; ****** Inline assembler section
  jmp InitLevel_forloop128
InitLevel_elsedoneblock138
InitLevel_loopdone133: ;keep
InitLevel_loopend130
	; LineNumber: 707
	
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
	; LineNumber: 707
	; LineNumber: 708
trse_breakpoint_1
	; LineNumber: 710
	
; //		if(nextLevel <> levelSingle) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 711
	lda #$53
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 712
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
	; LineNumber: 713
	lda #<localVariable_InitLevel_levStr
	ldx #>localVariable_InitLevel_levStr
	sta fileName
	stx fileName+1
	; LineNumber: 714
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 717
	jmp InitLevel_elsedoneblock145
InitLevel_elseblock144
	; LineNumber: 717
	; LineNumber: 718
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitLevel_elsedoneblock164
InitLevel_ConditionalTrueBlock162: ;Main true block ;keep 
	; LineNumber: 717
	
; //		end;
	jsr SwapActiveChar
InitLevel_elsedoneblock164
	; LineNumber: 721
	
; //		if(nextLevel <> levelCoop) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 722
	lda #$4d
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 723
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
	; LineNumber: 724
	; INTEGER optimization: a=b+c 
	lda #<localVariable_InitLevel_levStr
	clc
	adc #$00
	sta fileName+0
	lda #>localVariable_InitLevel_levStr
	adc #$00
	sta fileName+1
	; LineNumber: 725
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 728
InitLevel_elsedoneblock145
	; LineNumber: 729
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
	; LineNumber: 730
	rts
end_procedure_InitLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetNextLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 733
SetNextLevel
	; LineNumber: 735
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne SetNextLevel_elseblock174
SetNextLevel_ConditionalTrueBlock173: ;Main true block ;keep 
	; LineNumber: 735
	; LineNumber: 736
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
	; LineNumber: 735
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_elsedoneblock198
SetNextLevel_elseblock197
	; LineNumber: 737
	; LineNumber: 738
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelSingle
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 739
SetNextLevel_elsedoneblock198
	; LineNumber: 741
	jmp SetNextLevel_elsedoneblock175
SetNextLevel_elseblock174
	; LineNumber: 741
	; LineNumber: 742
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
	; LineNumber: 741
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_elsedoneblock207
SetNextLevel_elseblock206
	; LineNumber: 743
	; LineNumber: 744
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelCoop
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 745
SetNextLevel_elsedoneblock207
	; LineNumber: 746
SetNextLevel_elsedoneblock175
	; LineNumber: 747
	rts
end_procedure_SetNextLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 749
	; LineNumber: 749
localVariable_IncLevel_mode	dc.b	0
IncLevel_block212
IncLevel
	; LineNumber: 751
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_IncLevel_mode
	; cmp #$00 ignored
	bne IncLevel_elseblock215
IncLevel_ConditionalTrueBlock214: ;Main true block ;keep 
	; LineNumber: 751
	; LineNumber: 752
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
	; LineNumber: 751
	; Test Inc dec D
	inc levelSingle
IncLevel_elsedoneblock235
	; LineNumber: 754
	jmp IncLevel_elsedoneblock216
IncLevel_elseblock215
	; LineNumber: 754
	; LineNumber: 755
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
	; LineNumber: 754
	; Test Inc dec D
	inc levelCoop
IncLevel_elsedoneblock242
	; LineNumber: 756
IncLevel_elsedoneblock216
	; LineNumber: 757
	rts
end_procedure_IncLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 759
	; LineNumber: 759
localVariable_DecLevel_mode	dc.b	0
DecLevel_block245
DecLevel
	; LineNumber: 761
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DecLevel_mode
	; cmp #$00 ignored
	bne DecLevel_elseblock248
DecLevel_ConditionalTrueBlock247: ;Main true block ;keep 
	; LineNumber: 761
	; LineNumber: 762
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_elsedoneblock268
DecLevel_ConditionalTrueBlock266: ;Main true block ;keep 
	; LineNumber: 761
	; Test Inc dec D
	dec levelSingle
DecLevel_elsedoneblock268
	; LineNumber: 764
	jmp DecLevel_elsedoneblock249
DecLevel_elseblock248
	; LineNumber: 764
	; LineNumber: 765
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_elsedoneblock275
DecLevel_ConditionalTrueBlock273: ;Main true block ;keep 
	; LineNumber: 764
	; Test Inc dec D
	dec levelCoop
DecLevel_elsedoneblock275
	; LineNumber: 766
DecLevel_elsedoneblock249
	; LineNumber: 767
	rts
end_procedure_DecLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGame
	;    Procedure type : User-defined procedure
	; LineNumber: 771
	; LineNumber: 770
localVariable_InitGame_levSingle	dc.b	0
	; LineNumber: 770
localVariable_InitGame_levCoop	dc.b	0
	; LineNumber: 770
localVariable_InitGame_mode	dc.b	0
InitGame_block278
InitGame
	; LineNumber: 772
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 773
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 774
	lda localVariable_InitGame_mode
	; Calling storevariable on generic assign expression
	sta gameMode
	; LineNumber: 775
	; Binary clause Simplified: EQUALS
	clc
	; cmp #$00 ignored
	bne InitGame_elseblock281
InitGame_ConditionalTrueBlock280: ;Main true block ;keep 
	; LineNumber: 774
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp InitGame_elsedoneblock282
InitGame_elseblock281
	; LineNumber: 774
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta nextLevel
InitGame_elsedoneblock282
	; LineNumber: 776
	lda #$0
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 777
	; Calling storevariable on generic assign expression
	sta cycle
	; LineNumber: 778
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	; LineNumber: 779
	rts
end_procedure_InitGame
	; NodeProcedureDecl 3
	; ***********  Defining procedure : print2x2block
	;    Procedure type : User-defined procedure
	; LineNumber: 783
	; LineNumber: 782
localVariable_print2x2block_x	dc.b	0
	; LineNumber: 782
localVariable_print2x2block_y	dc.b	0
	; LineNumber: 782
localVariable_print2x2block_varPrefixed_c	dc.b	0
print2x2block_block287
print2x2block
	; LineNumber: 789
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_elseblock290
print2x2block_ConditionalTrueBlock289: ;Main true block ;keep 
	; LineNumber: 788
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
	; LineNumber: 788
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
	; LineNumber: 791
	lda localVariable_print2x2block_varPrefixed_c
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	; LineNumber: 792
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_elseblock298
print2x2block_ConditionalTrueBlock297: ;Main true block ;keep 
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
	lda col1,x 
	ldy col1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp print2x2block_elsedoneblock299
print2x2block_elseblock298
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
	lda col2,x 
	ldy col2+1,x 
	sta screenmemory
	sty screenmemory+1
print2x2block_elsedoneblock299
	; LineNumber: 793
	; Binary clause Simplified: GREATEREQUAL
	lda localVariable_print2x2block_varPrefixed_c
	; Compare with pure num / var optimization
	cmp #$80;keep
	bcc print2x2block_elseblock306
print2x2block_ConditionalTrueBlock305: ;Main true block ;keep 
	; LineNumber: 793
	lda #$91
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	jmp print2x2block_elsedoneblock307
print2x2block_elseblock306
	; LineNumber: 795
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_print2x2block_varPrefixed_c
	lda tilesetColors,x 
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
print2x2block_elsedoneblock307
	; LineNumber: 805
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
	; LineNumber: 807
CycleWater
	; LineNumber: 809
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
	
	; LineNumber: 854
	rts
end_procedure_CycleWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetZLayerPointer
	;    Procedure type : User-defined procedure
	; LineNumber: 857
	; LineNumber: 856
localVariable_GetZLayerPointer_z	dc.b	0
GetZLayerPointer_block313
GetZLayerPointer
	; LineNumber: 858
	lda #$3
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext315
	; LineNumber: 858
	lda #<mapback2
	ldx #>mapback2
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext315
	lda #$2
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext317
	; LineNumber: 859
	lda #<mapback1
	ldx #>mapback1
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext317
	lda #$1
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext319
	; LineNumber: 860
	lda #<mapmain
	ldx #>mapmain
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend314
GetZLayerPointer_casenext319
	lda #$0
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext321
	; LineNumber: 861
	lda #<mapfront
	ldx #>mapfront
	sta tempPointer
	stx tempPointer+1
GetZLayerPointer_casenext321
GetZLayerPointer_caseend314
	; LineNumber: 864
	rts
end_procedure_GetZLayerPointer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPosAnim
	;    Procedure type : User-defined procedure
	; LineNumber: 876
	; LineNumber: 868
localVariable_PaintPosAnim_x	dc.b	0
	; LineNumber: 868
localVariable_PaintPosAnim_y	dc.b	0
	; LineNumber: 869
localVariable_PaintPosAnim_animId	dc.b	0
	; LineNumber: 870
localVariable_PaintPosAnim_hideSprite	dc.b	0
	; LineNumber: 871
localVariable_PaintPosAnim_pa	= $72
	; LineNumber: 872
localVariable_PaintPosAnim_currentTile	dc.b	0
	; LineNumber: 873
localVariable_PaintPosAnim_gravity	dc.b	0
	; LineNumber: 874
localVariable_PaintPosAnim_shiftAnim	dc.b	0
	; LineNumber: 866
localVariable_PaintPosAnim_t	dc.b	0
	; LineNumber: 866
localVariable_PaintPosAnim_considerAnimation	dc.b	0
PaintPosAnim_block323
PaintPosAnim
	; LineNumber: 877
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_animId
	; LineNumber: 878
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
	; LineNumber: 879
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
	; LineNumber: 879
	; LineNumber: 880
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; cmp #$00 ignored
	bne PaintPosAnim_elseblock1163
PaintPosAnim_ConditionalTrueBlock1162: ;Main true block ;keep 
	; LineNumber: 879
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1164
PaintPosAnim_elseblock1163
	; LineNumber: 880
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_elsedoneblock1398
PaintPosAnim_ConditionalTrueBlock1396: ;Main true block ;keep 
	; LineNumber: 881
	; LineNumber: 882
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
	; LineNumber: 883
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
	; LineNumber: 882
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
PaintPosAnim_elsedoneblock1514
	; LineNumber: 884
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne PaintPosAnim_elseblock1519
PaintPosAnim_ConditionalTrueBlock1518: ;Main true block ;keep 
	; LineNumber: 883
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1520
PaintPosAnim_elseblock1519
	; LineNumber: 884
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_elseblock1575
PaintPosAnim_ConditionalTrueBlock1574: ;Main true block ;keep 
	; LineNumber: 884
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1576
PaintPosAnim_elseblock1575
	; LineNumber: 885
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne PaintPosAnim_elseblock1603
PaintPosAnim_ConditionalTrueBlock1602: ;Main true block ;keep 
	; LineNumber: 885
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_elsedoneblock1604
PaintPosAnim_elseblock1603
	; LineNumber: 886
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne PaintPosAnim_elsedoneblock1618
PaintPosAnim_ConditionalTrueBlock1616: ;Main true block ;keep 
	; LineNumber: 886
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
PaintPosAnim_elsedoneblock1618
PaintPosAnim_elsedoneblock1604
PaintPosAnim_elsedoneblock1576
PaintPosAnim_elsedoneblock1520
	; LineNumber: 888
PaintPosAnim_elsedoneblock1398
PaintPosAnim_elsedoneblock1164
	; LineNumber: 889
	; Load pointer array
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
	tay
	lda (localVariable_PaintPosAnim_pa),y
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 890
	; 8 bit binop
	; Add/sub where right value is constant number
	clc
	adc localVariable_PaintPosAnim_shiftAnim
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 892
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
	; LineNumber: 891
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	jmp PaintPosAnim_elsedoneblock1624
PaintPosAnim_elseblock1623
	; LineNumber: 892
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
	; LineNumber: 893
	; LineNumber: 894
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
	; LineNumber: 894
	; LineNumber: 895
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
	; LineNumber: 896
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 898
	jmp PaintPosAnim_elsedoneblock1904
PaintPosAnim_elseblock1903
	; LineNumber: 897
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
	; LineNumber: 897
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_elsedoneblock1922
PaintPosAnim_elsedoneblock1904
	; LineNumber: 900
	jmp PaintPosAnim_elsedoneblock1811
PaintPosAnim_elseblock1810
	; LineNumber: 899
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne PaintPosAnim_elsedoneblock1931
PaintPosAnim_ConditionalTrueBlock1929: ;Main true block ;keep 
	; LineNumber: 900
	; LineNumber: 901
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
	; LineNumber: 901
	; LineNumber: 902
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 903
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 905
	jmp PaintPosAnim_elsedoneblock1963
PaintPosAnim_elseblock1962
	; LineNumber: 904
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
	; LineNumber: 904
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_elsedoneblock1981
PaintPosAnim_elsedoneblock1963
	; LineNumber: 906
PaintPosAnim_elsedoneblock1931
PaintPosAnim_elsedoneblock1811
PaintPosAnim_elsedoneblock1624
	; LineNumber: 908
	jmp PaintPosAnim_elsedoneblock330
PaintPosAnim_elseblock329
	; LineNumber: 907
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_rendTilePos,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
PaintPosAnim_elsedoneblock330
	; LineNumber: 910
	; LineNumber: 910
	lda localVariable_PaintPosAnim_currentTile
	rts
end_procedure_PaintPosAnim
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPos
	;    Procedure type : User-defined procedure
	; LineNumber: 922
	; LineNumber: 914
localVariable_PaintPos_x	dc.b	0
	; LineNumber: 914
localVariable_PaintPos_y	dc.b	0
	; LineNumber: 915
localVariable_PaintPos_t	dc.b	0
	; LineNumber: 915
localVariable_PaintPos_tHide	dc.b	0
	; LineNumber: 916
localVariable_PaintPos_animId	dc.b	0
	; LineNumber: 917
localVariable_PaintPos_hideSprite	dc.b	0
	; LineNumber: 918
localVariable_PaintPos_pa	= $72
	; LineNumber: 919
localVariable_PaintPos_currentTile	dc.b	0
	; LineNumber: 920
localVariable_PaintPos_gravity	dc.b	0
	; LineNumber: 921
localVariable_PaintPos_shiftAnim	dc.b	0
	; LineNumber: 912
localVariable_PaintPos_pos	dc.b	0
	; LineNumber: 912
localVariable_PaintPos_considerAnimation	dc.b	0
PaintPos_block1987
PaintPos
	; LineNumber: 927
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
	; LineNumber: 928
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
	; LineNumber: 929
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 930
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 932
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
	; LineNumber: 932
	; LineNumber: 933
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 934
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 936
	jmp PaintPos_elsedoneblock1995
PaintPos_elseblock1994
	; LineNumber: 935
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2051
PaintPos_ConditionalTrueBlock2050: ;Main true block ;keep 
	; LineNumber: 936
	; LineNumber: 937
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 938
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 940
	jmp PaintPos_elsedoneblock2052
PaintPos_elseblock2051
	; LineNumber: 939
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2079
PaintPos_ConditionalTrueBlock2078: ;Main true block ;keep 
	; LineNumber: 940
	; LineNumber: 941
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 942
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 944
	jmp PaintPos_elsedoneblock2080
PaintPos_elseblock2079
	; LineNumber: 943
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elsedoneblock2094
PaintPos_ConditionalTrueBlock2092: ;Main true block ;keep 
	; LineNumber: 944
	; LineNumber: 945
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 946
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 947
PaintPos_elsedoneblock2094
PaintPos_elsedoneblock2080
PaintPos_elsedoneblock2052
PaintPos_elsedoneblock1995
	; LineNumber: 949
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_PaintPos_t
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_elseblock2099
PaintPos_ConditionalTrueBlock2098: ;Main true block ;keep 
	; LineNumber: 949
	; LineNumber: 950
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
	; LineNumber: 951
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
	; LineNumber: 953
	rts
end_procedure_PaintPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ConvertShift
	;    Procedure type : User-defined procedure
	; LineNumber: 958
	; LineNumber: 957
localVariable_ConvertShift_ret	dc.w	0
	; LineNumber: 955
localVariable_ConvertShift_gravity	dc.b	0
	; LineNumber: 955
localVariable_ConvertShift_pos	dc.b	0
ConvertShift_block2105
ConvertShift
	; LineNumber: 963
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ConvertShift_elseblock2108
ConvertShift_ConditionalTrueBlock2107: ;Main true block ;keep 
	; LineNumber: 962
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
	; LineNumber: 963
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ConvertShift_elseblock2164
ConvertShift_ConditionalTrueBlock2163: ;Main true block ;keep 
	; LineNumber: 963
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
	; LineNumber: 964
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne ConvertShift_elseblock2192
ConvertShift_ConditionalTrueBlock2191: ;Main true block ;keep 
	; LineNumber: 964
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
	; LineNumber: 965
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne ConvertShift_elsedoneblock2207
ConvertShift_ConditionalTrueBlock2205: ;Main true block ;keep 
	; LineNumber: 965
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
	; LineNumber: 967
	; LineNumber: 968
	ldy localVariable_ConvertShift_ret+1 ;keep
	lda localVariable_ConvertShift_ret
	rts
end_procedure_ConvertShift
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPosition
	;    Procedure type : User-defined procedure
	; LineNumber: 974
	; LineNumber: 973
localVariable_CalcPosition_destx	dc.b	0
	; LineNumber: 973
localVariable_CalcPosition_desty	dc.b	0
	; LineNumber: 971
localVariable_CalcPosition_startx	dc.b	0
	; LineNumber: 971
localVariable_CalcPosition_starty	dc.b	0
	; LineNumber: 971
localVariable_CalcPosition_pos	dc.b	0
CalcPosition_block2210
CalcPosition
	; LineNumber: 975
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
	; LineNumber: 976
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
	; LineNumber: 977
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_elseblock2213
CalcPosition_ConditionalTrueBlock2212: ;Main true block ;keep 
	; LineNumber: 976
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
	jmp CalcPosition_elsedoneblock2214
CalcPosition_elseblock2213
	; LineNumber: 977
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPosition_elsedoneblock2228
CalcPosition_ConditionalTrueBlock2226: ;Main true block ;keep 
	; LineNumber: 977
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
CalcPosition_elsedoneblock2228
CalcPosition_elsedoneblock2214
	; LineNumber: 979
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_elseblock2233
CalcPosition_ConditionalTrueBlock2232: ;Main true block ;keep 
	; LineNumber: 978
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
	jmp CalcPosition_elsedoneblock2234
CalcPosition_elseblock2233
	; LineNumber: 979
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPosition_elsedoneblock2248
CalcPosition_ConditionalTrueBlock2246: ;Main true block ;keep 
	; LineNumber: 979
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
CalcPosition_elsedoneblock2248
CalcPosition_elsedoneblock2234
	; LineNumber: 981
	; LineNumber: 982
	ldy localVariable_CalcPosition_destx ; optimized, look out for bugs
	lda localVariable_CalcPosition_desty
	rts
end_procedure_CalcPosition
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionMapPos
	;    Procedure type : User-defined procedure
	; LineNumber: 988
	; LineNumber: 987
localVariable_CalcPositionMapPos_npos	dc.w	0
	; LineNumber: 985
localVariable_CalcPositionMapPos_startx	dc.b	0
	; LineNumber: 985
localVariable_CalcPositionMapPos_starty	dc.b	0
	; LineNumber: 985
localVariable_CalcPositionMapPos_pos	dc.b	0
CalcPositionMapPos_block2251
CalcPositionMapPos
	; LineNumber: 989
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
	; LineNumber: 991
	; LineNumber: 991
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
	; LineNumber: 996
	; LineNumber: 995
localVariable_GetObjectByPosFilterComp_mapPos	dc.b	0
	; LineNumber: 995
localVariable_GetObjectByPosFilterComp_colId	dc.b	0
	; LineNumber: 995
localVariable_GetObjectByPosFilterComp_ret	dc.b	0
	; LineNumber: 995
localVariable_GetObjectByPosFilterComp_val	dc.b	0
	; LineNumber: 993
localVariable_GetObjectByPosFilterComp_x	dc.b	0
	; LineNumber: 993
localVariable_GetObjectByPosFilterComp_y	dc.b	0
	; LineNumber: 993
localVariable_GetObjectByPosFilterComp_z	dc.b	0
	; LineNumber: 993
localVariable_GetObjectByPosFilterComp_comp	dc.b	0
	; LineNumber: 993
localVariable_GetObjectByPosFilterComp_compIdx	dc.b	0
GetObjectByPosFilterComp_block2253
GetObjectByPosFilterComp
	; LineNumber: 997
	lda localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 998
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
	; LineNumber: 999
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
	; LineNumber: 1004
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjectByPosFilterComp_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_colId
	; LineNumber: 1005
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjectByPosFilterComp_elsedoneblock2257
GetObjectByPosFilterComp_ConditionalTrueBlock2255: ;Main true block ;keep 
	; LineNumber: 1005
	; LineNumber: 1006
	lda #$0
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2276
	; LineNumber: 1006
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
	; LineNumber: 1007
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
	; LineNumber: 1008
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
	; LineNumber: 1009
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
	; LineNumber: 1012
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjectByPosFilterComp_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjectByPosFilterComp_comp;keep
	bne GetObjectByPosFilterComp_elsedoneblock2287
GetObjectByPosFilterComp_ConditionalTrueBlock2285: ;Main true block ;keep 
	; LineNumber: 1011
	lda localVariable_GetObjectByPosFilterComp_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
GetObjectByPosFilterComp_elsedoneblock2287
	; LineNumber: 1013
GetObjectByPosFilterComp_elsedoneblock2257
	; LineNumber: 1016
	; LineNumber: 1016
	lda localVariable_GetObjectByPosFilterComp_ret
	rts
end_procedure_GetObjectByPosFilterComp
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetObjArea
	;    Procedure type : User-defined procedure
	; LineNumber: 1022
	; LineNumber: 1020
localVariable_GetObjArea_gravity	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_mapPos	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_colId	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_ret	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_val	dc.b	0
	; LineNumber: 1021
localVariable_GetObjArea_gpos	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_id	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_z	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_pos	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_comp	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_compIdx	dc.b	0
	; LineNumber: 1018
localVariable_GetObjArea_b_norm	dc.b	0
GetObjArea_block2290
GetObjArea
	; LineNumber: 1026
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
	; LineNumber: 1027
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_GetObjArea_b_norm
	; cmp #$00 ignored
	bne GetObjArea_elseblock2293
GetObjArea_ConditionalTrueBlock2292: ;Main true block ;keep 
	; LineNumber: 1027
	; LineNumber: 1028
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
	; LineNumber: 1027
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
GetObjArea_elsedoneblock2411
	; LineNumber: 1030
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne GetObjArea_elseblock2416
GetObjArea_ConditionalTrueBlock2415: ;Main true block ;keep 
	; LineNumber: 1029
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2417
GetObjArea_elseblock2416
	; LineNumber: 1030
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne GetObjArea_elseblock2472
GetObjArea_ConditionalTrueBlock2471: ;Main true block ;keep 
	; LineNumber: 1030
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaUp,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2473
GetObjArea_elseblock2472
	; LineNumber: 1031
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GetObjArea_elseblock2500
GetObjArea_ConditionalTrueBlock2499: ;Main true block ;keep 
	; LineNumber: 1031
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaLeft,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_elsedoneblock2501
GetObjArea_elseblock2500
	; LineNumber: 1032
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne GetObjArea_elsedoneblock2515
GetObjArea_ConditionalTrueBlock2513: ;Main true block ;keep 
	; LineNumber: 1032
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
	; LineNumber: 1034
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
GetObjArea_elsedoneblock2294
	; LineNumber: 1037
	lda localVariable_GetObjArea_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1039
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
	; LineNumber: 1040
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjArea_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_colId
	; LineNumber: 1041
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
	; LineNumber: 1042
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_GetObjArea_colId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjArea_elsedoneblock2522
GetObjArea_ConditionalTrueBlock2520: ;Main true block ;keep 
	; LineNumber: 1042
	; LineNumber: 1043
	lda #$0
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2541
	; LineNumber: 1043
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
	; LineNumber: 1044
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
	; LineNumber: 1045
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
	; LineNumber: 1046
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
	; LineNumber: 1049
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjArea_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjArea_comp;keep
	bne GetObjArea_elsedoneblock2552
GetObjArea_ConditionalTrueBlock2550: ;Main true block ;keep 
	; LineNumber: 1048
	lda localVariable_GetObjArea_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
GetObjArea_elsedoneblock2552
	; LineNumber: 1050
GetObjArea_elsedoneblock2522
	; LineNumber: 1052
	; LineNumber: 1052
	lda localVariable_GetObjArea_ret
	rts
end_procedure_GetObjArea
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionX
	;    Procedure type : User-defined procedure
	; LineNumber: 1057
	; LineNumber: 1056
localVariable_CalcPositionX_destx	dc.b	0
	; LineNumber: 1054
localVariable_CalcPositionX_startx	dc.b	0
	; LineNumber: 1054
localVariable_CalcPositionX_offsetx	dc.b	0
CalcPositionX_block2555
CalcPositionX
	; LineNumber: 1058
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionX_startx
	clc
	adc localVariable_CalcPositionX_offsetx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	; LineNumber: 1059
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionX_elseblock2558
CalcPositionX_ConditionalTrueBlock2557: ;Main true block ;keep 
	; LineNumber: 1058
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	jmp CalcPositionX_elsedoneblock2559
CalcPositionX_elseblock2558
	; LineNumber: 1059
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionX_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPositionX_elsedoneblock2573
CalcPositionX_ConditionalTrueBlock2571: ;Main true block ;keep 
	; LineNumber: 1059
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
CalcPositionX_elsedoneblock2573
CalcPositionX_elsedoneblock2559
	; LineNumber: 1062
	; LineNumber: 1062
	lda localVariable_CalcPositionX_destx
	rts
end_procedure_CalcPositionX
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionY
	;    Procedure type : User-defined procedure
	; LineNumber: 1067
	; LineNumber: 1066
localVariable_CalcPositionY_desty	dc.b	0
	; LineNumber: 1064
localVariable_CalcPositionY_starty	dc.b	0
	; LineNumber: 1064
localVariable_CalcPositionY_offsety	dc.b	0
CalcPositionY_block2576
CalcPositionY
	; LineNumber: 1068
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionY_starty
	clc
	adc localVariable_CalcPositionY_offsety
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	; LineNumber: 1069
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionY_elseblock2579
CalcPositionY_ConditionalTrueBlock2578: ;Main true block ;keep 
	; LineNumber: 1068
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	jmp CalcPositionY_elsedoneblock2580
CalcPositionY_elseblock2579
	; LineNumber: 1069
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionY_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPositionY_elsedoneblock2594
CalcPositionY_ConditionalTrueBlock2592: ;Main true block ;keep 
	; LineNumber: 1069
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
CalcPositionY_elsedoneblock2594
CalcPositionY_elsedoneblock2580
	; LineNumber: 1072
	; LineNumber: 1072
	lda localVariable_CalcPositionY_desty
	rts
end_procedure_CalcPositionY
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ChangeMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1078
	; LineNumber: 1076
localVariable_ChangeMapItem_oldpos	dc.b	0
	; LineNumber: 1077
localVariable_ChangeMapItem_pos	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_id	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_oldx	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_oldy	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_x	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_y	dc.b	0
	; LineNumber: 1074
localVariable_ChangeMapItem_z	dc.b	0
ChangeMapItem_block2597
ChangeMapItem
	; LineNumber: 1079
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
	; LineNumber: 1080
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
	; LineNumber: 1081
	lda localVariable_ChangeMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1086
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_oldpos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1087
	lda localVariable_ChangeMapItem_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1089
	
; // ##
	lda localVariable_ChangeMapItem_oldpos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1090
	lda localVariable_ChangeMapItem_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1091
	rts
end_procedure_ChangeMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1097
	; LineNumber: 1095
localVariable_UpdateMapItem_oldpos	dc.b	0
	; LineNumber: 1096
localVariable_UpdateMapItem_pos	dc.b	0
	; LineNumber: 1093
localVariable_UpdateMapItem_id	dc.b	0
	; LineNumber: 1093
localVariable_UpdateMapItem_x	dc.b	0
	; LineNumber: 1093
localVariable_UpdateMapItem_y	dc.b	0
UpdateMapItem_block2598
UpdateMapItem
	; LineNumber: 1098
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
	; LineNumber: 1102
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1103
	rts
end_procedure_UpdateMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetPos
	;    Procedure type : User-defined procedure
	; LineNumber: 1109
	; LineNumber: 1107
localVariable_SetPos_pos	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_waypointId	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_lastWaypointId	dc.b	0
	; LineNumber: 1108
localVariable_SetPos_controlId	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_i	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_oldx	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_oldy	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_x	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_y	dc.b	0
	; LineNumber: 1105
localVariable_SetPos_z	dc.b	0
SetPos_block2599
SetPos
	; LineNumber: 1113
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
	; LineNumber: 1117
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SetPos_i
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_controlId
	; LineNumber: 1117
	; Test Inc dec D
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1120
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq SetPos_localfailed2617
	jmp SetPos_ConditionalTrueBlock2601
SetPos_localfailed2617
	jmp SetPos_elsedoneblock2603
SetPos_ConditionalTrueBlock2601: ;Main true block ;keep 
	; LineNumber: 1120
	; LineNumber: 1121
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
	; LineNumber: 1122
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_elsedoneblock2622
SetPos_ConditionalTrueBlock2620: ;Main true block ;keep 
	; LineNumber: 1122
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
	; LineNumber: 1124
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
	; LineNumber: 1125
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_elsedoneblock2628
SetPos_ConditionalTrueBlock2626: ;Main true block ;keep 
	; LineNumber: 1125
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
	; LineNumber: 1127
	lda localVariable_SetPos_waypointId
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_waypointId,x
	; LineNumber: 1128
	lda localVariable_SetPos_lastWaypointId
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1129
SetPos_elsedoneblock2603
	; LineNumber: 1131
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
	; LineNumber: 1132
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_i ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1133
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1134
	rts
end_procedure_SetPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetZLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 1139
	; LineNumber: 1138
localVariable_SetZLayer_pos	dc.b	0
	; LineNumber: 1136
localVariable_SetZLayer_id	dc.b	0
	; LineNumber: 1136
localVariable_SetZLayer_oldz	dc.b	0
	; LineNumber: 1136
localVariable_SetZLayer_newz	dc.b	0
SetZLayer_block2631
SetZLayer
	; LineNumber: 1140
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
	; LineNumber: 1143
	; Test Inc dec D
	ldx localVariable_SetZLayer_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1145
	lda localVariable_SetZLayer_oldz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1146
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1147
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1148
	lda localVariable_SetZLayer_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1149
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	ldx localVariable_SetZLayer_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1150
	lda localVariable_SetZLayer_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1151
	rts
end_procedure_SetZLayer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1156
	; LineNumber: 1155
localVariable_AddMapItem_pos	dc.b	0
	; LineNumber: 1153
localVariable_AddMapItem_Id	dc.b	0
	; LineNumber: 1153
localVariable_AddMapItem_x	dc.b	0
	; LineNumber: 1153
localVariable_AddMapItem_y	dc.b	0
	; LineNumber: 1153
localVariable_AddMapItem_z	dc.b	0
AddMapItem_block2632
AddMapItem
	; LineNumber: 1157
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
	; LineNumber: 1158
	lda localVariable_AddMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1163
	lda localVariable_AddMapItem_Id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_AddMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1164
	rts
end_procedure_AddMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearMap
	;    Procedure type : User-defined procedure
	; LineNumber: 1169
	; LineNumber: 1168
localVariable_ClearMap_m	dc.b	0
ClearMap_block2633
ClearMap
	; LineNumber: 1177
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearMap_m
ClearMap_forloop2634
	; LineNumber: 1171
	; LineNumber: 1172
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ClearMap_m ; optimized, look out for bugs
	sta mapback2,x
	; LineNumber: 1173
	; Calling storevariable on generic assign expression
	sta mapback1,x
	; LineNumber: 1174
	; Calling storevariable on generic assign expression
	sta mapmain,x
	; LineNumber: 1175
	; Calling storevariable on generic assign expression
	sta mapfront,x
	; LineNumber: 1176
ClearMap_loopstart2635
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearMap_m
	lda #$f0
	cmp localVariable_ClearMap_m ;keep
	bne ClearMap_forloop2634
ClearMap_loopdone2639: ;keep
ClearMap_loopend2636
	; LineNumber: 1177
	lda #$ff
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 1178
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 1179
	rts
end_procedure_ClearMap
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddDynItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1182
	; LineNumber: 1181
localVariable_AddDynItem_i	dc.b	0
AddDynItem_block2640
AddDynItem
	; LineNumber: 1183
	lda localVariable_AddDynItem_i
	; Calling storevariable on generic assign expression
	ldx countDyn ; optimized, look out for bugs
	sta dynObjectList,x
	; LineNumber: 1184
	; Test Inc dec D
	inc countDyn
	; LineNumber: 1185
	rts
end_procedure_AddDynItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddAnimItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1188
	; LineNumber: 1187
localVariable_AddAnimItem_i	dc.b	0
AddAnimItem_block2641
AddAnimItem
	; LineNumber: 1189
	lda localVariable_AddAnimItem_i
	; Calling storevariable on generic assign expression
	ldx countAnim ; optimized, look out for bugs
	sta animObjectList,x
	; LineNumber: 1190
	; Test Inc dec D
	inc countAnim
	; LineNumber: 1191
	rts
end_procedure_AddAnimItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetId
	;    Procedure type : User-defined procedure
	; LineNumber: 1195
	; LineNumber: 1194
localVariable_GetId_ret	dc.b	0
GetId_block2642
GetId
	; LineNumber: 1196
	; Binary clause Simplified: EQUALS
	lda countObjects
	; Compare with pure num / var optimization
	cmp #$c8;keep
	bne GetId_elseblock2645
GetId_ConditionalTrueBlock2644: ;Main true block ;keep 
	; LineNumber: 1195
	; LineNumber: 1197
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetId_ret
	; LineNumber: 1199
	jmp GetId_elsedoneblock2646
GetId_elseblock2645
	; LineNumber: 1198
	; LineNumber: 1200
	; Test Inc dec D
	inc countObjects
	; LineNumber: 1201
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
	; LineNumber: 1202
GetId_elsedoneblock2646
	; LineNumber: 1205
	; LineNumber: 1205
	lda localVariable_GetId_ret
	rts
end_procedure_GetId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetLaserEmitId
	;    Procedure type : User-defined procedure
	; LineNumber: 1210
	; LineNumber: 1209
localVariable_GetLaserEmitId_ret	dc.b	0
GetLaserEmitId_block2651
GetLaserEmitId
	; LineNumber: 1211
	; Binary clause Simplified: EQUALS
	lda countLasers
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne GetLaserEmitId_elseblock2654
GetLaserEmitId_ConditionalTrueBlock2653: ;Main true block ;keep 
	; LineNumber: 1210
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	jmp GetLaserEmitId_elsedoneblock2655
GetLaserEmitId_elseblock2654
	; LineNumber: 1211
	; LineNumber: 1213
	; Test Inc dec D
	inc countLasers
	; LineNumber: 1214
	lda countLasers
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	; LineNumber: 1215
GetLaserEmitId_elsedoneblock2655
	; LineNumber: 1218
	; LineNumber: 1218
	lda localVariable_GetLaserEmitId_ret
	rts
end_procedure_GetLaserEmitId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintFull
	;    Procedure type : User-defined procedure
	; LineNumber: 1223
	; LineNumber: 1222
localVariable_PaintFull_i	dc.b	0
PaintFull_block2660
PaintFull
	; LineNumber: 1228
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintFull_i
PaintFull_forloop2661
	; LineNumber: 1225
	; LineNumber: 1226
	lda localVariable_PaintFull_i
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	jsr PaintPos
	; LineNumber: 1227
PaintFull_loopstart2662
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_PaintFull_i
	lda #$f0
	cmp localVariable_PaintFull_i ;keep
	bne PaintFull_forloop2661
PaintFull_loopdone2666: ;keep
PaintFull_loopend2663
	; LineNumber: 1228
	rts
end_procedure_PaintFull
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1233
	; LineNumber: 1232
localVariable_DeleteMapItem_pos	dc.b	0
	; LineNumber: 1230
localVariable_DeleteMapItem_id	dc.b	0
	; LineNumber: 1230
localVariable_DeleteMapItem_x	dc.b	0
	; LineNumber: 1230
localVariable_DeleteMapItem_y	dc.b	0
	; LineNumber: 1230
localVariable_DeleteMapItem_z	dc.b	0
DeleteMapItem_block2667
DeleteMapItem
	; LineNumber: 1234
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
	; LineNumber: 1235
	lda localVariable_DeleteMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1236
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_DeleteMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1237
	rts
end_procedure_DeleteMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteDynObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1243
	; LineNumber: 1241
localVariable_DeleteDynObject_i	dc.b	0
	; LineNumber: 1241
localVariable_DeleteDynObject_j	dc.b	0
	; LineNumber: 1242
localVariable_DeleteDynObject_found	dc.b	0
	; LineNumber: 1239
localVariable_DeleteDynObject_id	dc.b	0
DeleteDynObject_block2668
DeleteDynObject
	; LineNumber: 1244
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_i
	; LineNumber: 1245
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	; LineNumber: 1246
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
	; LineNumber: 1247
	; LineNumber: 1248
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteDynObject_i
	lda dynObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteDynObject_id;keep
	bne DeleteDynObject_elseblock2688
DeleteDynObject_ConditionalTrueBlock2687: ;Main true block ;keep 
	; LineNumber: 1248
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	jmp DeleteDynObject_elsedoneblock2689
DeleteDynObject_elseblock2688
	; LineNumber: 1250
	; Test Inc dec D
	inc localVariable_DeleteDynObject_i
DeleteDynObject_elsedoneblock2689
	; LineNumber: 1252
	jmp DeleteDynObject_while2669
DeleteDynObject_elsedoneblock2672
DeleteDynObject_loopend2674
	; LineNumber: 1253
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteDynObject_found
	; cmp #$00 ignored
	beq DeleteDynObject_elsedoneblock2697
DeleteDynObject_ConditionalTrueBlock2695: ;Main true block ;keep 
	; LineNumber: 1253
	; LineNumber: 1253
	; Test Inc dec D
	dec countDyn
	; LineNumber: 1258
	lda localVariable_DeleteDynObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_j
DeleteDynObject_forloop2706
	; LineNumber: 1255
	; LineNumber: 1256
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
	; LineNumber: 1257
DeleteDynObject_loopstart2707
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteDynObject_j
	lda countDyn
	cmp localVariable_DeleteDynObject_j ;keep
	bne DeleteDynObject_forloop2706
DeleteDynObject_loopdone2711: ;keep
DeleteDynObject_loopend2708
	; LineNumber: 1258
DeleteDynObject_elsedoneblock2697
	; LineNumber: 1259
	rts
end_procedure_DeleteDynObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteAnimObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1265
	; LineNumber: 1263
localVariable_DeleteAnimObject_i	dc.b	0
	; LineNumber: 1263
localVariable_DeleteAnimObject_j	dc.b	0
	; LineNumber: 1264
localVariable_DeleteAnimObject_found	dc.b	0
	; LineNumber: 1261
localVariable_DeleteAnimObject_id	dc.b	0
DeleteAnimObject_block2712
DeleteAnimObject
	; LineNumber: 1266
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_i
	; LineNumber: 1267
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	; LineNumber: 1268
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
	; LineNumber: 1269
	; LineNumber: 1270
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteAnimObject_i
	lda animObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteAnimObject_id;keep
	bne DeleteAnimObject_elseblock2732
DeleteAnimObject_ConditionalTrueBlock2731: ;Main true block ;keep 
	; LineNumber: 1270
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	jmp DeleteAnimObject_elsedoneblock2733
DeleteAnimObject_elseblock2732
	; LineNumber: 1272
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_i
DeleteAnimObject_elsedoneblock2733
	; LineNumber: 1274
	jmp DeleteAnimObject_while2713
DeleteAnimObject_elsedoneblock2716
DeleteAnimObject_loopend2718
	; LineNumber: 1275
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteAnimObject_found
	; cmp #$00 ignored
	beq DeleteAnimObject_elsedoneblock2741
DeleteAnimObject_ConditionalTrueBlock2739: ;Main true block ;keep 
	; LineNumber: 1275
	; LineNumber: 1275
	; Test Inc dec D
	dec countAnim
	; LineNumber: 1280
	lda localVariable_DeleteAnimObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_j
DeleteAnimObject_forloop2750
	; LineNumber: 1277
	; LineNumber: 1278
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
	; LineNumber: 1279
DeleteAnimObject_loopstart2751
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_j
	lda countAnim
	cmp localVariable_DeleteAnimObject_j ;keep
	bne DeleteAnimObject_forloop2750
DeleteAnimObject_loopdone2755: ;keep
DeleteAnimObject_loopend2752
	; LineNumber: 1280
DeleteAnimObject_elsedoneblock2741
	; LineNumber: 1281
	rts
end_procedure_DeleteAnimObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeletePos
	;    Procedure type : User-defined procedure
	; LineNumber: 1286
	; LineNumber: 1285
localVariable_DeletePos_x	dc.b	0
	; LineNumber: 1285
localVariable_DeletePos_y	dc.b	0
	; LineNumber: 1283
localVariable_DeletePos_id	dc.b	0
	; LineNumber: 1283
localVariable_DeletePos_isDyn	dc.b	0
	; LineNumber: 1283
localVariable_DeletePos_isAnim	dc.b	0
DeletePos_block2756
DeletePos
	; LineNumber: 1287
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
	; LineNumber: 1287
	; LineNumber: 1288
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
	; LineNumber: 1289
	; Test Inc dec D
	dec countObjects
	; LineNumber: 1290
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
	; LineNumber: 1291
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isDyn
	; cmp #$00 ignored
	beq DeletePos_elsedoneblock2779
DeletePos_ConditionalTrueBlock2777: ;Main true block ;keep 
	; LineNumber: 1291
	; LineNumber: 1292
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_id
	jsr DeleteDynObject
	; LineNumber: 1293
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
	; LineNumber: 1294
DeletePos_elsedoneblock2779
	; LineNumber: 1296
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isAnim
	; cmp #$00 ignored
	beq DeletePos_elsedoneblock2785
DeletePos_ConditionalTrueBlock2783: ;Main true block ;keep 
	; LineNumber: 1295
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_id
	jsr DeleteAnimObject
DeletePos_elsedoneblock2785
	; LineNumber: 1297
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
	; LineNumber: 1298
DeletePos_elsedoneblock2760
	; LineNumber: 1299
	rts
end_procedure_DeletePos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchBank
	;    Procedure type : User-defined procedure
	; LineNumber: 1302
SwitchBank
	; LineNumber: 1303
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne SwitchBank_elseblock2791
SwitchBank_ConditionalTrueBlock2790: ;Main true block ;keep 
	; LineNumber: 1304
	; LineNumber: 1305
	lda #$fe
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1306
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	ora #$80
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1307
	lda #$1
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1309
	jmp SwitchBank_elsedoneblock2792
SwitchBank_elseblock2791
	; LineNumber: 1310
	; LineNumber: 1311
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1312
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1313
	lda #$0
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1314
SwitchBank_elsedoneblock2792
	; LineNumber: 1315
	rts
end_procedure_SwitchBank
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CycleAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1322
	; LineNumber: 1319
localVariable_CycleAnimation_animId	dc.b	0
	; LineNumber: 1320
localVariable_CycleAnimation_pa	= $72
	; LineNumber: 1317
localVariable_CycleAnimation_id	dc.b	0
CycleAnimation_block2797
CycleAnimation
	; LineNumber: 1323
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CycleAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_animId
	; LineNumber: 1324
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
	; LineNumber: 1325
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
	; LineNumber: 1325
	; LineNumber: 1326
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_CycleAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1327
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1329
	jmp CycleAnimation_elsedoneblock2804
CycleAnimation_elseblock2803
	; LineNumber: 1328
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
	; LineNumber: 1328
	; Test Inc dec D
	ldx localVariable_CycleAnimation_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
CycleAnimation_elsedoneblock2822
CycleAnimation_elsedoneblock2804
	; LineNumber: 1330
	rts
end_procedure_CycleAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1333
	; LineNumber: 1332
localVariable_SwitchAnimation_id	dc.b	0
	; LineNumber: 1332
localVariable_SwitchAnimation_anim	dc.b	0
SwitchAnimation_block2827
SwitchAnimation
	; LineNumber: 1334
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SwitchAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp localVariable_SwitchAnimation_anim;keep
	beq SwitchAnimation_elsedoneblock2831
SwitchAnimation_ConditionalTrueBlock2829: ;Main true block ;keep 
	; LineNumber: 1334
	; LineNumber: 1335
	lda localVariable_SwitchAnimation_anim
	; Calling storevariable on generic assign expression
	ldx localVariable_SwitchAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1336
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1337
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1338
SwitchAnimation_elsedoneblock2831
	; LineNumber: 1339
	rts
end_procedure_SwitchAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearLaserWithTag
	;    Procedure type : User-defined procedure
	; LineNumber: 1345
	; LineNumber: 1343
localVariable_ClearLaserWithTag_i	dc.b	0
	; LineNumber: 1343
localVariable_ClearLaserWithTag_varPrefixed_c	dc.b	0
	; LineNumber: 1344
localVariable_ClearLaserWithTag_varPrefixed_d	dc.b	0
	; LineNumber: 1341
localVariable_ClearLaserWithTag_tag	dc.b	0
ClearLaserWithTag_block2834
ClearLaserWithTag
	; LineNumber: 1360
	;		c := mapback2[i];
; //		if(c <> $FF and (objectList[c].component0 & 32 = 32 and objectList[c].laserTag <> $FF)) then begin 
; //			DeletePos(c, false, false);
; //		end;
; //		
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_i
ClearLaserWithTag_forloop2835
	; LineNumber: 1346
	; LineNumber: 1348
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_varPrefixed_c
	; LineNumber: 1349
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
	; LineNumber: 1349
	; LineNumber: 1350
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
	; LineNumber: 1349
	; LineNumber: 1351
	lda localVariable_ClearLaserWithTag_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1352
ClearLaserWithTag_elsedoneblock2875
	; LineNumber: 1353
ClearLaserWithTag_elsedoneblock2862
	; LineNumber: 1359
ClearLaserWithTag_loopstart2836
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearLaserWithTag_i
	lda #$f0
	cmp localVariable_ClearLaserWithTag_i ;keep
	bne ClearLaserWithTag_forloop2835
ClearLaserWithTag_loopdone2878: ;keep
ClearLaserWithTag_loopend2837
	; LineNumber: 1360
	rts
end_procedure_ClearLaserWithTag
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearAllLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 1367
	; LineNumber: 1365
localVariable_ClearAllLaser_i	dc.b	0
	; LineNumber: 1365
localVariable_ClearAllLaser_varPrefixed_c	dc.b	0
	; LineNumber: 1366
localVariable_ClearAllLaser_varPrefixed_d	dc.b	0
ClearAllLaser_block2879
ClearAllLaser
	; LineNumber: 1381
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_i
ClearAllLaser_forloop2880
	; LineNumber: 1368
	; LineNumber: 1370
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1371
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
	; LineNumber: 1371
	; LineNumber: 1372
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
	; LineNumber: 1371
	; LineNumber: 1373
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1374
ClearAllLaser_elsedoneblock2931
	; LineNumber: 1375
ClearAllLaser_elsedoneblock2917
	; LineNumber: 1376
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1377
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
	; LineNumber: 1376
	; LineNumber: 1378
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1379
ClearAllLaser_elsedoneblock2938
	; LineNumber: 1380
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
	; LineNumber: 1381
	rts
end_procedure_ClearAllLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DirectFire
	;    Procedure type : User-defined procedure
	; LineNumber: 1392
	; LineNumber: 1385
localVariable_DirectFire_laserEmitId	dc.b	0
	; LineNumber: 1386
localVariable_DirectFire_laserId	dc.b	0
	; LineNumber: 1387
localVariable_DirectFire_collideId	dc.b	0
	; LineNumber: 1387
localVariable_DirectFire_floaterId	dc.b	0
	; LineNumber: 1388
localVariable_DirectFire_collide	dc.b	0
	; LineNumber: 1389
localVariable_DirectFire_laserx	dc.b	0
	; LineNumber: 1389
localVariable_DirectFire_lasery	dc.b	0
	; LineNumber: 1389
localVariable_DirectFire_lastx	dc.b	0
	; LineNumber: 1389
localVariable_DirectFire_lasty	dc.b	0
	; LineNumber: 1390
localVariable_DirectFire_countLaser	dc.b	0
	; LineNumber: 1391
localVariable_DirectFire_dir	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_tileUp	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_tileDown	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_tileLeft	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_tileRight	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_z	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_comp0	dc.b	0
	; LineNumber: 1392
localVariable_DirectFire_comp2	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_id	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_xpos	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_ypos	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_xdir	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_ydir	dc.b	0
	; LineNumber: 1383
localVariable_DirectFire_bomb	dc.b	0
DirectFire_block2945
DirectFire
	; LineNumber: 1394
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
	; LineNumber: 1394
	; LineNumber: 1395
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserEmitId
	; LineNumber: 1396
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	beq DirectFire_elseblock5016
DirectFire_ConditionalTrueBlock5015: ;Main true block ;keep 
	; LineNumber: 1396
	; LineNumber: 1397
	lda #$58
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1398
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1399
	lda #$59
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1400
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1401
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1402
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1403
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1405
	jmp DirectFire_elsedoneblock5017
DirectFire_elseblock5016
	; LineNumber: 1405
	; LineNumber: 1406
	lda #$7e
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1407
	lda #$7f
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1408
	lda #$7c
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1409
	lda #$7d
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1410
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1411
	lda #$22
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1412
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1413
DirectFire_elsedoneblock5017
	; LineNumber: 1415
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1416
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1417
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1418
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1419
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1420
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_countLaser
	; LineNumber: 1421
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
	; LineNumber: 1422
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
	; LineNumber: 1423
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
	; LineNumber: 1422
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
DirectFire_elsedoneblock5025
	; LineNumber: 1424
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
	; LineNumber: 1424
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
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_comp
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_compIdx
	jsr GetObjectByPosFilterComp
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collideId
	; LineNumber: 1426
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
	; LineNumber: 1427
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
	; LineNumber: 1427
	; LineNumber: 1428
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1430
	jmp DirectFire_elsedoneblock6060
DirectFire_elseblock6059
	; LineNumber: 1430
	; LineNumber: 1432
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
	; LineNumber: 1432
	; LineNumber: 1433
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserId
	; LineNumber: 1434
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_localfailed6953
	jmp DirectFire_ConditionalTrueBlock6829
DirectFire_localfailed6953
	jmp DirectFire_elsedoneblock6831
DirectFire_ConditionalTrueBlock6829: ;Main true block ;keep 
	; LineNumber: 1433
	; LineNumber: 1435
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
	; LineNumber: 1434
	; LineNumber: 1436
	lda localVariable_DirectFire_tileLeft
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1437
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1439
	jmp DirectFire_elsedoneblock6958
DirectFire_elseblock6957
	; LineNumber: 1438
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
	; LineNumber: 1439
	; LineNumber: 1440
	lda localVariable_DirectFire_tileRight
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1441
	lda #$5
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1443
	jmp DirectFire_elsedoneblock7023
DirectFire_elseblock7022
	; LineNumber: 1442
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
	; LineNumber: 1443
	; LineNumber: 1444
	lda localVariable_DirectFire_tileUp
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1445
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1447
	jmp DirectFire_elsedoneblock7055
DirectFire_elseblock7054
	; LineNumber: 1446
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
	; LineNumber: 1447
	; LineNumber: 1448
	lda localVariable_DirectFire_tileDown
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1449
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1450
DirectFire_elsedoneblock7071
DirectFire_elsedoneblock7055
DirectFire_elsedoneblock7023
DirectFire_elsedoneblock6958
	; LineNumber: 1451
	lda localVariable_DirectFire_comp0
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1452
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1453
	lda localVariable_DirectFire_comp2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1454
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1455
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1456
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1457
	lda localVariable_DirectFire_z
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1458
	lda localVariable_DirectFire_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 1459
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
	; LineNumber: 1460
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
	; LineNumber: 1461
DirectFire_elsedoneblock6831
	; LineNumber: 1462
DirectFire_elsedoneblock6574
	; LineNumber: 1463
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1464
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1465
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1466
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1467
	; Test Inc dec D
	inc localVariable_DirectFire_countLaser
	; LineNumber: 1468
DirectFire_elsedoneblock6060
	; LineNumber: 1469
	jmp DirectFire_while5029
DirectFire_elsedoneblock5032
DirectFire_loopend5034
	; LineNumber: 1470
DirectFire_elsedoneblock2949
	; LineNumber: 1471
	rts
end_procedure_DirectFire
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Animate
	;    Procedure type : User-defined procedure
	; LineNumber: 1477
	; LineNumber: 1475
localVariable_Animate_i	dc.b	0
	; LineNumber: 1476
localVariable_Animate_id	dc.b	0
Animate_block7075
Animate
	; LineNumber: 1478
	; Binary clause Simplified: NOTEQUALS
	clc
	lda countAnim
	; cmp #$00 ignored
	beq Animate_elsedoneblock7079
Animate_ConditionalTrueBlock7077: ;Main true block ;keep 
	; LineNumber: 1478
	; LineNumber: 1483
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_i
Animate_forloop7088
	; LineNumber: 1479
	; LineNumber: 1480
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Animate_i
	lda animObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_id
	; LineNumber: 1481
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
	; LineNumber: 1482
Animate_loopstart7089
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Animate_i
	lda countAnim
	cmp localVariable_Animate_i ;keep
	bne Animate_forloop7088
Animate_loopdone7093: ;keep
Animate_loopend7090
	; LineNumber: 1483
Animate_elsedoneblock7079
	; LineNumber: 1484
	rts
end_procedure_Animate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetupSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1493
SetupSound
	; LineNumber: 1494
	jsr StopSounds
	; LineNumber: 1495
	; Poke
	; Optimization: shift is zero
	lda #$f
	sta $900e
	; LineNumber: 1497
	rts
end_procedure_SetupSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PlayNote
	;    Procedure type : User-defined procedure
	; LineNumber: 1500
	; LineNumber: 1499
localVariable_PlayNote_sindex	dc.b	0
	; LineNumber: 1499
localVariable_PlayNote_note	dc.b	0
PlayNote_block7095
PlayNote
	; LineNumber: 1501
	; ****** Inline assembler section
	; get sound channel to play on
	lda localVariable_PlayNote_sindex
	lsr
	tax ; put into x reg
	
	; get note
	lda localVariable_PlayNote_note
	; play sound
	sta SOUND1_REGISTER,x
		
	; LineNumber: 1516
	rts
end_procedure_PlayNote
	; NodeProcedureDecl 3
	; ***********  Defining procedure : StopSounds
	;    Procedure type : User-defined procedure
	; LineNumber: 1521
	; LineNumber: 1520
localVariable_StopSounds_i	dc.b	0
StopSounds_block7096
StopSounds
	; LineNumber: 1527
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_StopSounds_i
StopSounds_forloop7097
	; LineNumber: 1522
	; LineNumber: 1523
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_StopSounds_i ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1524
	; Calling storevariable on generic assign expression
	sta vsndTime,x
	; LineNumber: 1525
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
	; LineNumber: 1526
StopSounds_loopstart7098
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_StopSounds_i
	lda #$4
	cmp localVariable_StopSounds_i ;keep
	bne StopSounds_forloop7097
StopSounds_loopdone7102: ;keep
StopSounds_loopend7099
	; LineNumber: 1528
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $900a
	; LineNumber: 1529
	; Poke
	; Optimization: shift is zero
	sta $900b
	; LineNumber: 1530
	; Poke
	; Optimization: shift is zero
	sta $900c
	; LineNumber: 1531
	; Poke
	; Optimization: shift is zero
	sta $900d
	; LineNumber: 1532
	rts
end_procedure_StopSounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SndTime
	;    Procedure type : User-defined procedure
	; LineNumber: 1535
	; LineNumber: 1534
localVariable_SndTime_s	dc.b	0
SndTime_block7103
SndTime
	; LineNumber: 1537
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
	; LineNumber: 1536
	
; // decrease time
	; Test Inc dec D
	ldx localVariable_SndTime_s
	; Optimize byte array dec 
	dec vsndTime,x
SndTime_elsedoneblock7107
	; LineNumber: 1539
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SndTime_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne SndTime_elsedoneblock7113
SndTime_ConditionalTrueBlock7111: ;Main true block ;keep 
	; LineNumber: 1538
	
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
	; LineNumber: 1540
	rts
end_procedure_SndTime
	
; // goto next command
; // Play active sounds on voice 1
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSoundInternal
	;    Procedure type : User-defined procedure
	; LineNumber: 1546
	; LineNumber: 1545
localVariable_UpdateSoundInternal_duration	dc.b	0
	; LineNumber: 1543
localVariable_UpdateSoundInternal_s	dc.b	0
UpdateSoundInternal_block7118
UpdateSoundInternal
	; LineNumber: 1547
	; Load Integer array
	; CAST type NADA
	lda localVariable_UpdateSoundInternal_s
	asl
	tax
	lda psnd,x 
	ldy psnd+1,x 
	sta soundPointer
	sty soundPointer+1
	; LineNumber: 1549
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7122
UpdateSoundInternal_ConditionalTrueBlock7120: ;Main true block ;keep 
	; LineNumber: 1550
	; LineNumber: 1552
	
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
	; LineNumber: 1553
	; LineNumber: 1554
	
; // idle
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1555
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1557
UpdateSoundInternal_elsedoneblock7134
	; LineNumber: 1558
	rts
	; LineNumber: 1560
UpdateSoundInternal_elsedoneblock7122
	; LineNumber: 1562
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
	; LineNumber: 1563
	; LineNumber: 1567
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7177
UpdateSoundInternal_ConditionalTrueBlock7175: ;Main true block ;keep 
	; LineNumber: 1568
	; LineNumber: 1569
	
; // play note
; //addbreakpoint(); nop(3);
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
	; LineNumber: 1570
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateSoundInternal_elsedoneblock7195
UpdateSoundInternal_ConditionalTrueBlock7193: ;Main true block ;keep 
	; LineNumber: 1570
	; LineNumber: 1571
	
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
	; LineNumber: 1572
UpdateSoundInternal_elsedoneblock7195
	; LineNumber: 1573
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateSoundInternal_elsedoneblock7201
UpdateSoundInternal_ConditionalTrueBlock7199: ;Main true block ;keep 
	; LineNumber: 1573
	; LineNumber: 1574
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1575
UpdateSoundInternal_elsedoneblock7201
	; LineNumber: 1576
UpdateSoundInternal_elsedoneblock7177
	; LineNumber: 1577
UpdateSoundInternal_elsedoneblock7140
	; LineNumber: 1580
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
	; LineNumber: 1581
	; LineNumber: 1582
	
; // increment
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1583
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$80
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1585
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7219
UpdateSoundInternal_ConditionalTrueBlock7217: ;Main true block ;keep 
	; LineNumber: 1584
	
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_elsedoneblock7219
	; LineNumber: 1587
	
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
	; LineNumber: 1588
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1590
UpdateSoundInternal_elsedoneblock7207
	; LineNumber: 1593
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
	; LineNumber: 1594
	; LineNumber: 1595
	
; // decrement
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1596
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$40
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1597
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_elsedoneblock7237
UpdateSoundInternal_ConditionalTrueBlock7235: ;Main true block ;keep 
	; LineNumber: 1596
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_elsedoneblock7237
	; LineNumber: 1598
	
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
	; LineNumber: 1599
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1601
UpdateSoundInternal_elsedoneblock7225
	; LineNumber: 1602
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_SndTime_s
	jsr SndTime
	; LineNumber: 1605
	rts
end_procedure_UpdateSoundInternal
	
; // ----------------------------------------------------------------------
; // Play active sounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1610
UpdateSound
	; LineNumber: 1611
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1612
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1613
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1614
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1616
	rts
end_procedure_UpdateSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecreaseTextTimer
	;    Procedure type : User-defined procedure
	; LineNumber: 1619
DecreaseTextTimer
	; LineNumber: 1620
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda textTimer
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecreaseTextTimer_elsedoneblock7245
DecreaseTextTimer_ConditionalTrueBlock7243: ;Main true block ;keep 
	; LineNumber: 1620
	; LineNumber: 1621
	; Test Inc dec D
	dec textTimer
	; LineNumber: 1622
	; Binary clause Simplified: EQUALS
	clc
	lda textTimer
	; cmp #$00 ignored
	bne DecreaseTextTimer_elsedoneblock7257
DecreaseTextTimer_ConditionalTrueBlock7255: ;Main true block ;keep 
	; LineNumber: 1621
	jsr ClearText
DecreaseTextTimer_elsedoneblock7257
	; LineNumber: 1623
DecreaseTextTimer_elsedoneblock7245
	; LineNumber: 1624
	rts
end_procedure_DecreaseTextTimer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Pos2ObjectId
	;    Procedure type : User-defined procedure
	; LineNumber: 1629
	; LineNumber: 1628
localVariable_Pos2ObjectId_varPrefixed_c	dc.b	0
	; LineNumber: 1626
localVariable_Pos2ObjectId_pos	dc.b	0
Pos2ObjectId_block7260
Pos2ObjectId
	; LineNumber: 1630
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	; LineNumber: 1631
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_Pos2ObjectId_pos
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elsedoneblock7264
Pos2ObjectId_ConditionalTrueBlock7262: ;Main true block ;keep 
	; LineNumber: 1631
	; LineNumber: 1632
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7373
Pos2ObjectId_ConditionalTrueBlock7372: ;Main true block ;keep 
	; LineNumber: 1631
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7374
Pos2ObjectId_elseblock7373
	; LineNumber: 1632
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7429
Pos2ObjectId_ConditionalTrueBlock7428: ;Main true block ;keep 
	; LineNumber: 1632
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7430
Pos2ObjectId_elseblock7429
	; LineNumber: 1633
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elseblock7457
Pos2ObjectId_ConditionalTrueBlock7456: ;Main true block ;keep 
	; LineNumber: 1633
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_elsedoneblock7458
Pos2ObjectId_elseblock7457
	; LineNumber: 1634
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_elsedoneblock7472
Pos2ObjectId_ConditionalTrueBlock7470: ;Main true block ;keep 
	; LineNumber: 1634
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
	; LineNumber: 1636
Pos2ObjectId_elsedoneblock7264
	; LineNumber: 1638
	; LineNumber: 1638
	lda localVariable_Pos2ObjectId_varPrefixed_c
	rts
end_procedure_Pos2ObjectId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitActors
	;    Procedure type : User-defined procedure
	; LineNumber: 1644
	; LineNumber: 1643
localVariable_InitActors_i	dc.b	0
	; LineNumber: 1643
localVariable_InitActors_j	dc.b	0
	; LineNumber: 1643
localVariable_InitActors_x	dc.b	0
	; LineNumber: 1643
localVariable_InitActors_y	dc.b	0
	; LineNumber: 1643
localVariable_InitActors_varPrefixed_c	dc.b	0
InitActors_block7475
InitActors
	; LineNumber: 1645
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_j
	; LineNumber: 1658
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_i
InitActors_forloop7476
	; LineNumber: 1647
	; LineNumber: 1648
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InitActors_i
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_event,x
	; LineNumber: 1649
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
	; LineNumber: 1650
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
	; LineNumber: 1651
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
	; LineNumber: 1652
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
	; LineNumber: 1653
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
	; LineNumber: 1654
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
	; LineNumber: 1655
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
	; LineNumber: 1656
	; Test Inc dec D
	inc localVariable_InitActors_j
	; LineNumber: 1657
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
	; LineNumber: 1658
	rts
end_procedure_InitActors
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ColorLine
	;    Procedure type : User-defined procedure
	; LineNumber: 1663
	; LineNumber: 1662
localVariable_ColorLine_i	dc.b	0
	; LineNumber: 1660
localVariable_ColorLine_y	dc.b	0
	; LineNumber: 1660
localVariable_ColorLine_col	dc.b	0
ColorLine_block7483
ColorLine
	; LineNumber: 1664
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ColorLine_elseblock7486
ColorLine_ConditionalTrueBlock7485: ;Main true block ;keep 
	; LineNumber: 1663
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
	; LineNumber: 1663
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
	; LineNumber: 1666
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_i
ColorLine_forloop7492
	; LineNumber: 1664
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
	; LineNumber: 1666
	rts
end_procedure_ColorLine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : MenuMove
	;    Procedure type : User-defined procedure
	; LineNumber: 1670
	; LineNumber: 1669
localVariable_MenuMove_len	dc.b	0
	; LineNumber: 1669
localVariable_MenuMove_oldMenuItem	dc.b	0
MenuMove_block7498
MenuMove
	; LineNumber: 1671
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne MenuMove_elseblock7501
MenuMove_ConditionalTrueBlock7500: ;Main true block ;keep 
	; LineNumber: 1671
	; LineNumber: 1672
	; Binary clause Simplified: GREATEREQUAL
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc MenuMove_elsedoneblock7533
MenuMove_ConditionalTrueBlock7531: ;Main true block ;keep 
	; LineNumber: 1671
	; Test Inc dec D
	dec menuItem
MenuMove_elsedoneblock7533
	; LineNumber: 1674
	jmp MenuMove_elsedoneblock7502
MenuMove_elseblock7501
	; LineNumber: 1673
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne MenuMove_elsedoneblock7540
MenuMove_ConditionalTrueBlock7538: ;Main true block ;keep 
	; LineNumber: 1674
	; LineNumber: 1675
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_MenuMove_len
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp menuItem;keep
	bcc MenuMove_elsedoneblock7552
	beq MenuMove_elsedoneblock7552
MenuMove_ConditionalTrueBlock7550: ;Main true block ;keep 
	; LineNumber: 1674
	; Test Inc dec D
	inc menuItem
MenuMove_elsedoneblock7552
	; LineNumber: 1676
MenuMove_elsedoneblock7540
MenuMove_elsedoneblock7502
	; LineNumber: 1677
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
	; LineNumber: 1678
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
	; LineNumber: 1679
	rts
end_procedure_MenuMove
	
; // @include "Sounds.ras"
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1684
	; LineNumber: 1684
localVariable_ActionOpenDoor_receiverId	dc.b	0
	; LineNumber: 1682
localVariable_ActionOpenDoor_actorId	dc.b	0
ActionOpenDoor_block7555
ActionOpenDoor
	; LineNumber: 1686
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_receiverId
	; LineNumber: 1687
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
	bne ActionOpenDoor_elsedoneblock7559
ActionOpenDoor_ConditionalTrueBlock7557: ;Main true block ;keep 
	; LineNumber: 1687
	; LineNumber: 1688
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenDoor_elsedoneblock7571
ActionOpenDoor_ConditionalTrueBlock7569: ;Main true block ;keep 
	; LineNumber: 1688
	; LineNumber: 1689
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
	; LineNumber: 1690
	lda localVariable_ActionOpenDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$a
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1691
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1692
ActionOpenDoor_elsedoneblock7571
	; LineNumber: 1693
ActionOpenDoor_elsedoneblock7559
	; LineNumber: 1694
	rts
end_procedure_ActionOpenDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1698
	; LineNumber: 1698
localVariable_ActionCloseDoor_receiverId	dc.b	0
	; LineNumber: 1696
localVariable_ActionCloseDoor_actorId	dc.b	0
ActionCloseDoor_block7574
ActionCloseDoor
	; LineNumber: 1700
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_receiverId
	; LineNumber: 1701
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
	bne ActionCloseDoor_elsedoneblock7578
ActionCloseDoor_ConditionalTrueBlock7576: ;Main true block ;keep 
	; LineNumber: 1701
	; LineNumber: 1702
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseDoor_elsedoneblock7590
ActionCloseDoor_ConditionalTrueBlock7588: ;Main true block ;keep 
	; LineNumber: 1702
	; LineNumber: 1703
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
	; LineNumber: 1704
	lda localVariable_ActionCloseDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1705
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1706
ActionCloseDoor_elsedoneblock7590
	; LineNumber: 1707
ActionCloseDoor_elsedoneblock7578
	; LineNumber: 1708
	rts
end_procedure_ActionCloseDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1712
	; LineNumber: 1712
localVariable_ActionOpenExit_receiverId	dc.b	0
	; LineNumber: 1710
localVariable_ActionOpenExit_actorId	dc.b	0
ActionOpenExit_block7593
ActionOpenExit
	; LineNumber: 1714
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_receiverId
	; LineNumber: 1715
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
	bne ActionOpenExit_elsedoneblock7597
ActionOpenExit_ConditionalTrueBlock7595: ;Main true block ;keep 
	; LineNumber: 1715
	; LineNumber: 1716
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenExit_elsedoneblock7609
ActionOpenExit_ConditionalTrueBlock7607: ;Main true block ;keep 
	; LineNumber: 1716
	; LineNumber: 1717
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1718
	lda localVariable_ActionOpenExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1719
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1720
ActionOpenExit_elsedoneblock7609
	; LineNumber: 1721
ActionOpenExit_elsedoneblock7597
	; LineNumber: 1722
	rts
end_procedure_ActionOpenExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1726
	; LineNumber: 1726
localVariable_ActionCloseExit_receiverId	dc.b	0
	; LineNumber: 1724
localVariable_ActionCloseExit_actorId	dc.b	0
ActionCloseExit_block7612
ActionCloseExit
	; LineNumber: 1728
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_receiverId
	; LineNumber: 1729
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
	bne ActionCloseExit_elsedoneblock7616
ActionCloseExit_ConditionalTrueBlock7614: ;Main true block ;keep 
	; LineNumber: 1729
	; LineNumber: 1730
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseExit_elsedoneblock7628
ActionCloseExit_ConditionalTrueBlock7626: ;Main true block ;keep 
	; LineNumber: 1730
	; LineNumber: 1731
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1732
	lda localVariable_ActionCloseExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1733
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1734
ActionCloseExit_elsedoneblock7628
	; LineNumber: 1735
ActionCloseExit_elsedoneblock7616
	; LineNumber: 1736
	rts
end_procedure_ActionCloseExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1740
	; LineNumber: 1740
localVariable_ActionLaserCannonOn_receiverId	dc.b	0
	; LineNumber: 1738
localVariable_ActionLaserCannonOn_actorId	dc.b	0
ActionLaserCannonOn_block7631
ActionLaserCannonOn
	; LineNumber: 1742
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_receiverId
	; LineNumber: 1743
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
	bne ActionLaserCannonOn_elsedoneblock7635
ActionLaserCannonOn_ConditionalTrueBlock7633: ;Main true block ;keep 
	; LineNumber: 1743
	; LineNumber: 1744
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1745
ActionLaserCannonOn_elsedoneblock7635
	; LineNumber: 1746
	rts
end_procedure_ActionLaserCannonOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1750
	; LineNumber: 1750
localVariable_ActionLaserCannonOff_receiverId	dc.b	0
	; LineNumber: 1748
localVariable_ActionLaserCannonOff_actorId	dc.b	0
ActionLaserCannonOff_block7638
ActionLaserCannonOff
	; LineNumber: 1752
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_receiverId
	; LineNumber: 1753
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
	bne ActionLaserCannonOff_elsedoneblock7642
ActionLaserCannonOff_ConditionalTrueBlock7640: ;Main true block ;keep 
	; LineNumber: 1753
	; LineNumber: 1754
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1755
ActionLaserCannonOff_elsedoneblock7642
	; LineNumber: 1756
	rts
end_procedure_ActionLaserCannonOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1760
	; LineNumber: 1760
localVariable_ActionFontaineOn_receiverId	dc.b	0
	; LineNumber: 1758
localVariable_ActionFontaineOn_actorId	dc.b	0
ActionFontaineOn_block7645
ActionFontaineOn
	; LineNumber: 1762
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_receiverId
	; LineNumber: 1763
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
	bne ActionFontaineOn_elsedoneblock7649
ActionFontaineOn_ConditionalTrueBlock7647: ;Main true block ;keep 
	; LineNumber: 1763
	; LineNumber: 1764
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1765
ActionFontaineOn_elsedoneblock7649
	; LineNumber: 1766
	rts
end_procedure_ActionFontaineOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1770
	; LineNumber: 1770
localVariable_ActionFontaineOff_receiverId	dc.b	0
	; LineNumber: 1768
localVariable_ActionFontaineOff_actorId	dc.b	0
ActionFontaineOff_block7652
ActionFontaineOff
	; LineNumber: 1772
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_receiverId
	; LineNumber: 1773
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
	bne ActionFontaineOff_elsedoneblock7656
ActionFontaineOff_ConditionalTrueBlock7654: ;Main true block ;keep 
	; LineNumber: 1773
	; LineNumber: 1774
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1775
ActionFontaineOff_elsedoneblock7656
	; LineNumber: 1776
	rts
end_procedure_ActionFontaineOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionPrintText
	;    Procedure type : User-defined procedure
	; LineNumber: 1781
	; LineNumber: 1780
localVariable_ActionPrintText_textId	dc.b	0
	; LineNumber: 1780
localVariable_ActionPrintText_x	dc.b	0
	; LineNumber: 1778
localVariable_ActionPrintText_actorId	dc.b	0
ActionPrintText_block7659
ActionPrintText
	; LineNumber: 1782
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionPrintText_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_textId
	; LineNumber: 1783
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_x
	; LineNumber: 1784
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param2,x 
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 1785
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ActionPrintText_textId
	asl
	tax
	lda levStrings,x 
	ldy levStrings+1,x 
	sta sp
	sty sp+1
	; LineNumber: 1786
	lda localVariable_ActionPrintText_x
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 1787
	rts
end_procedure_ActionPrintText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSetGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1791
	; LineNumber: 1791
localVariable_ActionSetGrav_receiverId	dc.b	0
	; LineNumber: 1789
localVariable_ActionSetGrav_actorId	dc.b	0
ActionSetGrav_block7660
ActionSetGrav
	; LineNumber: 1793
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSetGrav_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_receiverId
	; LineNumber: 1794
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSetGrav_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1795
	rts
end_procedure_ActionSetGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1799
	; LineNumber: 1799
localVariable_ActionSwitchOn_receiverId	dc.b	0
	; LineNumber: 1797
localVariable_ActionSwitchOn_actorId	dc.b	0
ActionSwitchOn_block7661
ActionSwitchOn
	; LineNumber: 1801
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_receiverId
	; LineNumber: 1802
	
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
	bne ActionSwitchOn_elsedoneblock7665
ActionSwitchOn_ConditionalTrueBlock7663: ;Main true block ;keep 
	; LineNumber: 1802
	; LineNumber: 1803
	lda localVariable_ActionSwitchOn_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1804
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1806
ActionSwitchOn_elsedoneblock7665
	; LineNumber: 1807
	rts
end_procedure_ActionSwitchOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1812
	; LineNumber: 1811
localVariable_ActionSwitchOff_receiverId	dc.b	0
	; LineNumber: 1809
localVariable_ActionSwitchOff_actorId	dc.b	0
ActionSwitchOff_block7668
ActionSwitchOff
	; LineNumber: 1814
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_receiverId
	; LineNumber: 1815
	
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
	bne ActionSwitchOff_elsedoneblock7672
ActionSwitchOff_ConditionalTrueBlock7670: ;Main true block ;keep 
	; LineNumber: 1815
	; LineNumber: 1816
	lda localVariable_ActionSwitchOff_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1817
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1819
ActionSwitchOff_elsedoneblock7672
	; LineNumber: 1820
	rts
end_procedure_ActionSwitchOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionBulkGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1824
	; LineNumber: 1824
localVariable_ActionBulkGrav_id	dc.b	0
	; LineNumber: 1824
localVariable_ActionBulkGrav_i	dc.b	0
	; LineNumber: 1822
localVariable_ActionBulkGrav_actorId	dc.b	0
ActionBulkGrav_block7675
ActionBulkGrav
	; LineNumber: 1832
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_i
ActionBulkGrav_forloop7676
	; LineNumber: 1826
	; LineNumber: 1827
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_id
	; LineNumber: 1828
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
	bne ActionBulkGrav_elsedoneblock7690
ActionBulkGrav_ConditionalTrueBlock7688: ;Main true block ;keep 
	; LineNumber: 1828
	; LineNumber: 1829
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionBulkGrav_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1830
ActionBulkGrav_elsedoneblock7690
	; LineNumber: 1831
ActionBulkGrav_loopstart7677
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ActionBulkGrav_i
	lda countDyn
	cmp localVariable_ActionBulkGrav_i ;keep
	bne ActionBulkGrav_forloop7676
ActionBulkGrav_loopdone7693: ;keep
ActionBulkGrav_loopend7678
	; LineNumber: 1832
	rts
end_procedure_ActionBulkGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DispatchEvent
	;    Procedure type : User-defined procedure
	; LineNumber: 1838
	; LineNumber: 1837
localVariable_DispatchEvent_i	dc.b	0
	; LineNumber: 1837
localVariable_DispatchEvent_action	dc.b	0
	; LineNumber: 1835
localVariable_DispatchEvent_event	dc.b	0
	; LineNumber: 1835
localVariable_DispatchEvent_senderId	dc.b	0
	; LineNumber: 1835
localVariable_DispatchEvent_p1	dc.b	0
	; LineNumber: 1835
localVariable_DispatchEvent_p2	dc.b	0
DispatchEvent_block7694
DispatchEvent
	; LineNumber: 1861
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_i
DispatchEvent_forloop7695
	; LineNumber: 1839
	; LineNumber: 1840
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DispatchEvent_elsedoneblock7775
DispatchEvent_ConditionalTrueBlock7773: ;Main true block ;keep 
	; LineNumber: 1839
	jmp DispatchEvent_loopend7697
DispatchEvent_elsedoneblock7775
	; LineNumber: 1841
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_event;keep
	bne DispatchEvent_localfailed7812
DispatchEvent_localsuccess7813: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_senderId,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_senderId;keep
	bne DispatchEvent_localfailed7812
	jmp DispatchEvent_ConditionalTrueBlock7779
DispatchEvent_localfailed7812
	jmp DispatchEvent_elsedoneblock7781
DispatchEvent_ConditionalTrueBlock7779: ;Main true block ;keep 
	; LineNumber: 1841
	; LineNumber: 1842
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_action,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_action
	; LineNumber: 1843
	lda #$1
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7816
	; LineNumber: 1843
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_actorId
	jsr ActionOpenDoor
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7816
	lda #$2
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7818
	; LineNumber: 1844
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_actorId
	jsr ActionCloseDoor
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7818
	lda #$3
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7820
	; LineNumber: 1845
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_actorId
	jsr ActionOpenExit
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7820
	lda #$4
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7822
	; LineNumber: 1846
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_actorId
	jsr ActionCloseExit
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7822
	lda #$5
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7824
	; LineNumber: 1847
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_actorId
	jsr ActionPrintText
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7824
	lda #$7
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7826
	; LineNumber: 1848
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_actorId
	jsr ActionLaserCannonOn
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7826
	lda #$8
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7828
	; LineNumber: 1849
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_actorId
	jsr ActionLaserCannonOff
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7828
	lda #$9
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7830
	; LineNumber: 1850
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_actorId
	jsr ActionFontaineOn
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7830
	lda #$a
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7832
	; LineNumber: 1851
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_actorId
	jsr ActionFontaineOff
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7832
	lda #$b
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7834
	; LineNumber: 1852
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_actorId
	jsr ActionSetGrav
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7834
	lda #$d
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7836
	; LineNumber: 1853
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_actorId
	jsr ActionSwitchOff
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7836
	lda #$c
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7838
	; LineNumber: 1854
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_actorId
	jsr ActionSwitchOn
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7838
	lda #$e
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7840
	; LineNumber: 1855
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_actorId
	jsr ActionBulkGrav
	jmp DispatchEvent_caseend7815
DispatchEvent_casenext7840
	lda #$6
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7842
	; LineNumber: 1856
	jsr ClearText
DispatchEvent_casenext7842
DispatchEvent_caseend7815
	; LineNumber: 1859
DispatchEvent_elsedoneblock7781
	; LineNumber: 1860
DispatchEvent_loopstart7696
	; Test Inc dec D
	inc localVariable_DispatchEvent_i
	lda #$20
	cmp localVariable_DispatchEvent_i ;keep
	beq DispatchEvent_loopdone7844
DispatchEvent_loopnotdone7845
	jmp DispatchEvent_forloop7695
DispatchEvent_loopdone7844
DispatchEvent_loopend7697
	; LineNumber: 1861
	rts
end_procedure_DispatchEvent
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCharacter
	;    Procedure type : User-defined procedure
	; LineNumber: 1867
	; LineNumber: 1865
localVariable_InitCharacter_id	dc.b	0
	; LineNumber: 1866
localVariable_InitCharacter_laserEmitId	dc.b	0
	; LineNumber: 1863
localVariable_InitCharacter_x	dc.b	0
	; LineNumber: 1863
localVariable_InitCharacter_y	dc.b	0
	; LineNumber: 1863
localVariable_InitCharacter_controlId	dc.b	0
InitCharacter_block7846
InitCharacter
	; LineNumber: 1868
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_id
	; LineNumber: 1869
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_laserEmitId
	; LineNumber: 1870
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7852
InitCharacter_localsuccess7853: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7852
	jmp InitCharacter_ConditionalTrueBlock7848
InitCharacter_localfailed7852
	jmp InitCharacter_elsedoneblock7850
InitCharacter_ConditionalTrueBlock7848: ;Main true block ;keep 
	; LineNumber: 1870
	; LineNumber: 1871
	lda #$80
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1872
	lda #$c3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1873
	lda #$48
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1874
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1875
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1876
	lda localVariable_InitCharacter_controlId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1877
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 1878
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 1879
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 1880
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 1881
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 1882
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1883
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1884
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 1885
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 1886
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1887
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1888
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1889
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 1890
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 1891
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1892
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 1893
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 1894
	lda localVariable_InitCharacter_x
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1895
	lda localVariable_InitCharacter_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1896
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1897
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1898
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1899
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1900
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1901
	lda localVariable_InitCharacter_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 1902
	lda #$a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 1903
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 1904
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 1905
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1906
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1907
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 1908
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
	; LineNumber: 1909
InitCharacter_elsedoneblock7850
	; LineNumber: 1910
	rts
end_procedure_InitCharacter
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBrick
	;    Procedure type : User-defined procedure
	; LineNumber: 1915
	; LineNumber: 1914
localVariable_InitBrick_id	dc.b	0
	; LineNumber: 1912
localVariable_InitBrick_x	dc.b	0
	; LineNumber: 1912
localVariable_InitBrick_y	dc.b	0
InitBrick_block7855
InitBrick
	; LineNumber: 1916
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_id
	; LineNumber: 1917
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBrick_localfailed7861
	jmp InitBrick_ConditionalTrueBlock7857
InitBrick_localfailed7861
	jmp InitBrick_elsedoneblock7859
InitBrick_ConditionalTrueBlock7857: ;Main true block ;keep 
	; LineNumber: 1917
	; LineNumber: 1918
	lda #$40
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBrick_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1919
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1920
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1921
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1922
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1923
	lda localVariable_InitBrick_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1924
	lda localVariable_InitBrick_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1925
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1926
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1927
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1928
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
	; LineNumber: 1929
InitBrick_elsedoneblock7859
	; LineNumber: 1930
	rts
end_procedure_InitBrick
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitStone
	;    Procedure type : User-defined procedure
	; LineNumber: 1936
	; LineNumber: 1934
localVariable_InitStone_pg	= $72
	; LineNumber: 1935
localVariable_InitStone_id	dc.b	0
	; LineNumber: 1932
localVariable_InitStone_tilen	dc.b	0
	; LineNumber: 1932
localVariable_InitStone_x	dc.b	0
	; LineNumber: 1932
localVariable_InitStone_y	dc.b	0
	; LineNumber: 1932
localVariable_InitStone_rollLeftRight	dc.b	0
InitStone_block7863
InitStone
	; LineNumber: 1937
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_id
	; LineNumber: 1938
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitStone_localfailed7869
	jmp InitStone_ConditionalTrueBlock7865
InitStone_localfailed7869
	jmp InitStone_elsedoneblock7867
InitStone_ConditionalTrueBlock7865: ;Main true block ;keep 
	; LineNumber: 1938
	; LineNumber: 1939
	lda localVariable_InitStone_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitStone_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1940
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1941
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1942
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1943
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1944
	lda localVariable_InitStone_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1945
	lda localVariable_InitStone_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1946
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1947
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1948
	lda localVariable_InitStone_rollLeftRight
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1949
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1950
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1951
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1952
	lda localVariable_InitStone_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1953
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
	; LineNumber: 1954
InitStone_elsedoneblock7867
	; LineNumber: 1955
	rts
end_procedure_InitStone
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSand
	;    Procedure type : User-defined procedure
	; LineNumber: 1960
	; LineNumber: 1959
localVariable_InitSand_id	dc.b	0
	; LineNumber: 1957
localVariable_InitSand_x	dc.b	0
	; LineNumber: 1957
localVariable_InitSand_y	dc.b	0
InitSand_block7871
InitSand
	; LineNumber: 1961
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_id
	; LineNumber: 1962
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSand_elsedoneblock7875
InitSand_ConditionalTrueBlock7873: ;Main true block ;keep 
	; LineNumber: 1962
	; LineNumber: 1963
	lda #$62
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSand_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1964
	lda #$12
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1965
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1966
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1967
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1968
	lda localVariable_InitSand_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1969
	lda localVariable_InitSand_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1970
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1971
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
	; LineNumber: 1972
InitSand_elsedoneblock7875
	; LineNumber: 1973
	rts
end_procedure_InitSand
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWater
	;    Procedure type : User-defined procedure
	; LineNumber: 1978
	; LineNumber: 1977
localVariable_InitWater_id	dc.b	0
	; LineNumber: 1975
localVariable_InitWater_x	dc.b	0
	; LineNumber: 1975
localVariable_InitWater_y	dc.b	0
InitWater_block7878
InitWater
	; LineNumber: 1979
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_id
	; LineNumber: 1980
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWater_localfailed7884
	jmp InitWater_ConditionalTrueBlock7880
InitWater_localfailed7884
	jmp InitWater_elsedoneblock7882
InitWater_ConditionalTrueBlock7880: ;Main true block ;keep 
	; LineNumber: 1980
	; LineNumber: 1981
	lda #$4a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWater_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1982
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1983
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1984
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1985
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1986
	lda localVariable_InitWater_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1987
	lda localVariable_InitWater_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1988
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1989
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 1990
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
	; LineNumber: 1991
InitWater_elsedoneblock7882
	; LineNumber: 1992
	rts
end_procedure_InitWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaterFlow
	;    Procedure type : User-defined procedure
	; LineNumber: 1997
	; LineNumber: 1996
localVariable_InitWaterFlow_id	dc.b	0
	; LineNumber: 1994
localVariable_InitWaterFlow_x	dc.b	0
	; LineNumber: 1994
localVariable_InitWaterFlow_y	dc.b	0
	; LineNumber: 1994
localVariable_InitWaterFlow_tilen	dc.b	0
	; LineNumber: 1994
localVariable_InitWaterFlow_grav	dc.b	0
InitWaterFlow_block7886
InitWaterFlow
	; LineNumber: 1998
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_id
	; LineNumber: 1999
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaterFlow_localfailed7892
	jmp InitWaterFlow_ConditionalTrueBlock7888
InitWaterFlow_localfailed7892
	jmp InitWaterFlow_elsedoneblock7890
InitWaterFlow_ConditionalTrueBlock7888: ;Main true block ;keep 
	; LineNumber: 1999
	; LineNumber: 2000
	lda localVariable_InitWaterFlow_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaterFlow_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2001
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2002
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2003
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2004
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2005
	lda localVariable_InitWaterFlow_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2006
	lda localVariable_InitWaterFlow_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2007
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2008
	lda localVariable_InitWaterFlow_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2009
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2010
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
	; LineNumber: 2011
InitWaterFlow_elsedoneblock7890
	; LineNumber: 2012
	rts
end_procedure_InitWaterFlow
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitShiftPlattform
	;    Procedure type : User-defined procedure
	; LineNumber: 2018
	; LineNumber: 2017
localVariable_InitShiftPlattform_id	dc.b	0
	; LineNumber: 2015
localVariable_InitShiftPlattform_x	dc.b	0
	; LineNumber: 2015
localVariable_InitShiftPlattform_y	dc.b	0
	; LineNumber: 2015
localVariable_InitShiftPlattform_tilen	dc.b	0
	; LineNumber: 2015
localVariable_InitShiftPlattform_grav	dc.b	0
InitShiftPlattform_block7894
InitShiftPlattform
	; LineNumber: 2019
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_id
	; LineNumber: 2020
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitShiftPlattform_localfailed7900
	jmp InitShiftPlattform_ConditionalTrueBlock7896
InitShiftPlattform_localfailed7900
	jmp InitShiftPlattform_elsedoneblock7898
InitShiftPlattform_ConditionalTrueBlock7896: ;Main true block ;keep 
	; LineNumber: 2020
	; LineNumber: 2021
	lda localVariable_InitShiftPlattform_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitShiftPlattform_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2022
	lda #$6
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2023
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2024
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2025
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2026
	lda localVariable_InitShiftPlattform_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2027
	lda localVariable_InitShiftPlattform_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2028
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2029
	lda localVariable_InitShiftPlattform_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 2030
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
	; LineNumber: 2031
InitShiftPlattform_elsedoneblock7898
	; LineNumber: 2032
	rts
end_procedure_InitShiftPlattform
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLadder
	;    Procedure type : User-defined procedure
	; LineNumber: 2037
	; LineNumber: 2036
localVariable_InitLadder_id	dc.b	0
	; LineNumber: 2034
localVariable_InitLadder_x	dc.b	0
	; LineNumber: 2034
localVariable_InitLadder_y	dc.b	0
InitLadder_block7902
InitLadder
	; LineNumber: 2038
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_id
	; LineNumber: 2039
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLadder_localfailed7908
	jmp InitLadder_ConditionalTrueBlock7904
InitLadder_localfailed7908
	jmp InitLadder_elsedoneblock7906
InitLadder_ConditionalTrueBlock7904: ;Main true block ;keep 
	; LineNumber: 2039
	; LineNumber: 2040
	lda #$57
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLadder_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2041
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2042
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2043
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2044
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2045
	lda localVariable_InitLadder_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2046
	lda localVariable_InitLadder_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2047
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2048
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2049
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
	; LineNumber: 2050
InitLadder_elsedoneblock7906
	; LineNumber: 2051
	rts
end_procedure_InitLadder
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitRobe
	;    Procedure type : User-defined procedure
	; LineNumber: 2056
	; LineNumber: 2055
localVariable_InitRobe_id	dc.b	0
	; LineNumber: 2053
localVariable_InitRobe_x	dc.b	0
	; LineNumber: 2053
localVariable_InitRobe_y	dc.b	0
	; LineNumber: 2053
localVariable_InitRobe_tilen	dc.b	0
	; LineNumber: 2053
localVariable_InitRobe_grav	dc.b	0
InitRobe_block7910
InitRobe
	; LineNumber: 2057
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_id
	; LineNumber: 2058
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitRobe_localfailed7916
	jmp InitRobe_ConditionalTrueBlock7912
InitRobe_localfailed7916
	jmp InitRobe_elsedoneblock7914
InitRobe_ConditionalTrueBlock7912: ;Main true block ;keep 
	; LineNumber: 2058
	; LineNumber: 2059
	lda localVariable_InitRobe_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitRobe_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2060
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2061
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2062
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2063
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2064
	lda localVariable_InitRobe_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2065
	lda localVariable_InitRobe_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2066
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2067
	lda localVariable_InitRobe_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2068
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
	; LineNumber: 2069
InitRobe_elsedoneblock7914
	; LineNumber: 2070
	rts
end_procedure_InitRobe
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortal
	;    Procedure type : User-defined procedure
	; LineNumber: 2075
	; LineNumber: 2074
localVariable_InitPortal_id	dc.b	0
	; LineNumber: 2072
localVariable_InitPortal_x	dc.b	0
	; LineNumber: 2072
localVariable_InitPortal_y	dc.b	0
	; LineNumber: 2072
localVariable_InitPortal_exitDir	dc.b	0
InitPortal_block7918
InitPortal
	; LineNumber: 2076
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_id
	; LineNumber: 2077
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_localfailed7950
	jmp InitPortal_ConditionalTrueBlock7920
InitPortal_localfailed7950
	jmp InitPortal_elsedoneblock7922
InitPortal_ConditionalTrueBlock7920: ;Main true block ;keep 
	; LineNumber: 2077
	; LineNumber: 2078
	lda #$6b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortal_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2079
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2080
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2081
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2082
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2083
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2084
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2085
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2086
	lda localVariable_InitPortal_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2087
	lda localVariable_InitPortal_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2088
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2089
	lda localVariable_InitPortal_exitDir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_portalFireExitDir,x
	; LineNumber: 2090
	lda #$ff
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2091
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_elseblock7954
InitPortal_ConditionalTrueBlock7953: ;Main true block ;keep 
	; LineNumber: 2090
	; LineNumber: 2092
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 2093
	lda #$0
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2095
	jmp InitPortal_elsedoneblock7955
InitPortal_elseblock7954
	; LineNumber: 2094
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_elsedoneblock7969
InitPortal_ConditionalTrueBlock7967: ;Main true block ;keep 
	; LineNumber: 2094
	; LineNumber: 2096
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 2097
	lda #$1
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2098
InitPortal_elsedoneblock7969
InitPortal_elsedoneblock7955
	; LineNumber: 2099
	; Binary clause Simplified: NOTEQUALS
	lda lastPortal
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_elsedoneblock7975
InitPortal_ConditionalTrueBlock7973: ;Main true block ;keep 
	; LineNumber: 2099
	; LineNumber: 2100
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2101
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
	; LineNumber: 2102
InitPortal_elsedoneblock7975
	; LineNumber: 2103
InitPortal_elsedoneblock7922
	; LineNumber: 2104
	rts
end_procedure_InitPortal
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGravPad
	;    Procedure type : User-defined procedure
	; LineNumber: 2109
	; LineNumber: 2108
localVariable_InitGravPad_id	dc.b	0
	; LineNumber: 2106
localVariable_InitGravPad_x	dc.b	0
	; LineNumber: 2106
localVariable_InitGravPad_y	dc.b	0
	; LineNumber: 2106
localVariable_InitGravPad_tilen	dc.b	0
	; LineNumber: 2106
localVariable_InitGravPad_grav	dc.b	0
InitGravPad_block7978
InitGravPad
	; LineNumber: 2110
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_id
	; LineNumber: 2111
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitGravPad_localfailed7984
	jmp InitGravPad_ConditionalTrueBlock7980
InitGravPad_localfailed7984
	jmp InitGravPad_elsedoneblock7982
InitGravPad_ConditionalTrueBlock7980: ;Main true block ;keep 
	; LineNumber: 2111
	; LineNumber: 2112
	lda localVariable_InitGravPad_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitGravPad_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2113
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2114
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2115
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2116
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2117
	lda localVariable_InitGravPad_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2118
	lda localVariable_InitGravPad_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2119
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2120
	lda localVariable_InitGravPad_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2121
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
	; LineNumber: 2122
InitGravPad_elsedoneblock7982
	; LineNumber: 2123
	rts
end_procedure_InitGravPad
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitMirror
	;    Procedure type : User-defined procedure
	; LineNumber: 2128
	; LineNumber: 2127
localVariable_InitMirror_id	dc.b	0
	; LineNumber: 2125
localVariable_InitMirror_x	dc.b	0
	; LineNumber: 2125
localVariable_InitMirror_y	dc.b	0
	; LineNumber: 2125
localVariable_InitMirror_tilen	dc.b	0
	; LineNumber: 2125
localVariable_InitMirror_turn	dc.b	0
InitMirror_block7986
InitMirror
	; LineNumber: 2129
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_id
	; LineNumber: 2130
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitMirror_localfailed7992
	jmp InitMirror_ConditionalTrueBlock7988
InitMirror_localfailed7992
	jmp InitMirror_elsedoneblock7990
InitMirror_ConditionalTrueBlock7988: ;Main true block ;keep 
	; LineNumber: 2130
	; LineNumber: 2131
	lda localVariable_InitMirror_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitMirror_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2132
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2133
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2134
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2135
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2136
	lda localVariable_InitMirror_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2137
	lda localVariable_InitMirror_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2138
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2139
	lda localVariable_InitMirror_turn
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_mirrorTurn,x
	; LineNumber: 2140
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
	; LineNumber: 2141
InitMirror_elsedoneblock7990
	; LineNumber: 2142
	rts
end_procedure_InitMirror
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLaserTransport
	;    Procedure type : User-defined procedure
	; LineNumber: 2147
	; LineNumber: 2146
localVariable_InitLaserTransport_id	dc.b	0
	; LineNumber: 2144
localVariable_InitLaserTransport_x	dc.b	0
	; LineNumber: 2144
localVariable_InitLaserTransport_y	dc.b	0
InitLaserTransport_block7994
InitLaserTransport
	; LineNumber: 2148
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_id
	; LineNumber: 2149
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLaserTransport_elsedoneblock7998
InitLaserTransport_ConditionalTrueBlock7996: ;Main true block ;keep 
	; LineNumber: 2149
	; LineNumber: 2150
	lda #$5b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLaserTransport_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2151
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2152
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2153
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2154
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2155
	lda localVariable_InitLaserTransport_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2156
	lda localVariable_InitLaserTransport_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2157
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2158
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
	; LineNumber: 2159
InitLaserTransport_elsedoneblock7998
	; LineNumber: 2160
	rts
end_procedure_InitLaserTransport
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBox
	;    Procedure type : User-defined procedure
	; LineNumber: 2185
	; LineNumber: 2184
localVariable_InitBox_id	dc.b	0
	; LineNumber: 2182
localVariable_InitBox_x	dc.b	0
	; LineNumber: 2182
localVariable_InitBox_y	dc.b	0
	; LineNumber: 2182
localVariable_InitBox_tilen	dc.b	0
	; LineNumber: 2182
localVariable_InitBox_dir	dc.b	0
InitBox_block8001
InitBox
	; LineNumber: 2186
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_id
	; LineNumber: 2187
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBox_localfailed8007
	jmp InitBox_ConditionalTrueBlock8003
InitBox_localfailed8007
	jmp InitBox_elsedoneblock8005
InitBox_ConditionalTrueBlock8003: ;Main true block ;keep 
	; LineNumber: 2187
	; LineNumber: 2188
	lda localVariable_InitBox_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBox_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2189
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2190
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2191
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2192
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2193
	lda localVariable_InitBox_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2194
	lda localVariable_InitBox_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2195
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2196
	lda localVariable_InitBox_dir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2197
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
	; LineNumber: 2198
InitBox_elsedoneblock8005
	; LineNumber: 2199
	rts
end_procedure_InitBox
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortalActivate
	;    Procedure type : User-defined procedure
	; LineNumber: 2204
	; LineNumber: 2203
localVariable_InitPortalActivate_id	dc.b	0
	; LineNumber: 2201
localVariable_InitPortalActivate_x	dc.b	0
	; LineNumber: 2201
localVariable_InitPortalActivate_y	dc.b	0
InitPortalActivate_block8009
InitPortalActivate
	; LineNumber: 2205
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_id
	; LineNumber: 2206
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortalActivate_elsedoneblock8013
InitPortalActivate_ConditionalTrueBlock8011: ;Main true block ;keep 
	; LineNumber: 2206
	; LineNumber: 2207
	lda #$68
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortalActivate_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2208
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2209
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2210
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2211
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2212
	lda localVariable_InitPortalActivate_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2213
	lda localVariable_InitPortalActivate_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2214
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2215
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
	; LineNumber: 2216
InitPortalActivate_elsedoneblock8013
	; LineNumber: 2217
	rts
end_procedure_InitPortalActivate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 2224
	; LineNumber: 2221
localVariable_InitFontaine_id	dc.b	0
	; LineNumber: 2222
localVariable_InitFontaine_laserId	dc.b	0
	; LineNumber: 2223
localVariable_InitFontaine_laserEmitId	dc.b	0
	; LineNumber: 2219
localVariable_InitFontaine_x	dc.b	0
	; LineNumber: 2219
localVariable_InitFontaine_y	dc.b	0
	; LineNumber: 2219
localVariable_InitFontaine_tilen	dc.b	0
	; LineNumber: 2219
localVariable_InitFontaine_grav	dc.b	0
InitFontaine_block8016
InitFontaine
	; LineNumber: 2225
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_id
	; LineNumber: 2226
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_laserEmitId
	; LineNumber: 2227
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8022
InitFontaine_localsuccess8023: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_laserId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8022
	jmp InitFontaine_ConditionalTrueBlock8018
InitFontaine_localfailed8022
	jmp InitFontaine_elsedoneblock8020
InitFontaine_ConditionalTrueBlock8018: ;Main true block ;keep 
	; LineNumber: 2227
	; LineNumber: 2228
	lda localVariable_InitFontaine_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2229
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2230
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2231
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2232
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2233
	lda localVariable_InitFontaine_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2234
	lda localVariable_InitFontaine_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2235
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2236
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2237
	lda localVariable_InitFontaine_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2238
	lda localVariable_InitFontaine_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2239
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2240
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2241
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2242
	lda localVariable_InitFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2243
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
	; LineNumber: 2244
InitFontaine_elsedoneblock8020
	; LineNumber: 2245
	rts
end_procedure_InitFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCannon
	;    Procedure type : User-defined procedure
	; LineNumber: 2251
	; LineNumber: 2249
localVariable_InitCannon_id	dc.b	0
	; LineNumber: 2250
localVariable_InitCannon_laserEmitId	dc.b	0
	; LineNumber: 2247
localVariable_InitCannon_x	dc.b	0
	; LineNumber: 2247
localVariable_InitCannon_y	dc.b	0
	; LineNumber: 2247
localVariable_InitCannon_tilen	dc.b	0
	; LineNumber: 2247
localVariable_InitCannon_grav	dc.b	0
InitCannon_block8025
InitCannon
	; LineNumber: 2252
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_id
	; LineNumber: 2253
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_laserEmitId
	; LineNumber: 2254
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8031
InitCannon_localsuccess8032: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8031
	jmp InitCannon_ConditionalTrueBlock8027
InitCannon_localfailed8031
	jmp InitCannon_elsedoneblock8029
InitCannon_ConditionalTrueBlock8027: ;Main true block ;keep 
	; LineNumber: 2254
	; LineNumber: 2255
	lda localVariable_InitCannon_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2256
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2257
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2258
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2259
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2260
	lda localVariable_InitCannon_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2261
	lda localVariable_InitCannon_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2262
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2263
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2264
	lda localVariable_InitCannon_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2265
	lda localVariable_InitCannon_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2266
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2267
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2268
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2269
	lda localVariable_InitCannon_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2270
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
	; LineNumber: 2271
InitCannon_elsedoneblock8029
	; LineNumber: 2272
	rts
end_procedure_InitCannon
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSwitchManual
	;    Procedure type : User-defined procedure
	; LineNumber: 2277
	; LineNumber: 2276
localVariable_InitSwitchManual_id	dc.b	0
	; LineNumber: 2274
localVariable_InitSwitchManual_x	dc.b	0
	; LineNumber: 2274
localVariable_InitSwitchManual_y	dc.b	0
InitSwitchManual_block8034
InitSwitchManual
	; LineNumber: 2278
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_id
	; LineNumber: 2279
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSwitchManual_localfailed8040
	jmp InitSwitchManual_ConditionalTrueBlock8036
InitSwitchManual_localfailed8040
	jmp InitSwitchManual_elsedoneblock8038
InitSwitchManual_ConditionalTrueBlock8036: ;Main true block ;keep 
	; LineNumber: 2279
	; LineNumber: 2280
	lda #$63
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSwitchManual_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2281
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2282
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2283
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2284
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2285
	lda localVariable_InitSwitchManual_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2286
	lda localVariable_InitSwitchManual_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2287
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2288
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2289
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2290
	
; // Push=off
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2291
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2292
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2293
	lda localVariable_InitSwitchManual_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2294
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
	; LineNumber: 2295
InitSwitchManual_elsedoneblock8038
	; LineNumber: 2296
	rts
end_procedure_InitSwitchManual
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaypoint
	;    Procedure type : User-defined procedure
	; LineNumber: 2301
	; LineNumber: 2300
localVariable_InitWaypoint_id	dc.b	0
	; LineNumber: 2298
localVariable_InitWaypoint_x	dc.b	0
	; LineNumber: 2298
localVariable_InitWaypoint_y	dc.b	0
InitWaypoint_block8042
InitWaypoint
	; LineNumber: 2302
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_id
	; LineNumber: 2303
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaypoint_localfailed8048
	jmp InitWaypoint_ConditionalTrueBlock8044
InitWaypoint_localfailed8048
	jmp InitWaypoint_elsedoneblock8046
InitWaypoint_ConditionalTrueBlock8044: ;Main true block ;keep 
	; LineNumber: 2303
	; LineNumber: 2304
	lda #$20
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaypoint_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2305
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2306
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2307
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2308
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2309
	lda localVariable_InitWaypoint_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2310
	lda localVariable_InitWaypoint_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2311
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2312
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2313
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2314
	
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
	; LineNumber: 2315
InitWaypoint_elsedoneblock8046
	; LineNumber: 2316
	rts
end_procedure_InitWaypoint
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 2321
	; LineNumber: 2320
localVariable_InitDoor_id	dc.b	0
	; LineNumber: 2318
localVariable_InitDoor_x	dc.b	0
	; LineNumber: 2318
localVariable_InitDoor_y	dc.b	0
InitDoor_block8050
InitDoor
	; LineNumber: 2322
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_id
	; LineNumber: 2323
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitDoor_localfailed8056
	jmp InitDoor_ConditionalTrueBlock8052
InitDoor_localfailed8056
	jmp InitDoor_elsedoneblock8054
InitDoor_ConditionalTrueBlock8052: ;Main true block ;keep 
	; LineNumber: 2323
	; LineNumber: 2324
	lda #$66
	; Calling storevariable on generic assign expression
	ldx localVariable_InitDoor_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2325
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2326
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2327
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2328
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2329
	lda localVariable_InitDoor_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2330
	lda localVariable_InitDoor_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2331
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2332
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2333
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2334
	
; // Push= Off
	lda #$b
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2335
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2336
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2337
	lda localVariable_InitDoor_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2338
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
	; LineNumber: 2339
InitDoor_elsedoneblock8054
	; LineNumber: 2340
	rts
end_procedure_InitDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitExit
	;    Procedure type : User-defined procedure
	; LineNumber: 2345
	; LineNumber: 2344
localVariable_InitExit_id	dc.b	0
	; LineNumber: 2342
localVariable_InitExit_x	dc.b	0
	; LineNumber: 2342
localVariable_InitExit_y	dc.b	0
InitExit_block8058
InitExit
	; LineNumber: 2346
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_id
	; LineNumber: 2347
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitExit_localfailed8064
	jmp InitExit_ConditionalTrueBlock8060
InitExit_localfailed8064
	jmp InitExit_elsedoneblock8062
InitExit_ConditionalTrueBlock8060: ;Main true block ;keep 
	; LineNumber: 2347
	; LineNumber: 2348
	lda #$4f
	; Calling storevariable on generic assign expression
	ldx localVariable_InitExit_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2349
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2350
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2351
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2352
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2353
	lda localVariable_InitExit_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2354
	lda localVariable_InitExit_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2355
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2356
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2357
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2358
	
; // Push= Off
	lda #$d
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2359
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2360
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2361
	lda localVariable_InitExit_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2362
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
	; LineNumber: 2363
InitExit_elsedoneblock8062
	; LineNumber: 2364
	rts
end_procedure_InitExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ReleaseKeys
	;    Procedure type : User-defined procedure
	; LineNumber: 2369
	; LineNumber: 2368
localVariable_ReleaseKeys_controlId	dc.b	0
	; LineNumber: 2366
localVariable_ReleaseKeys_id	dc.b	0
ReleaseKeys_block8066
ReleaseKeys
	; LineNumber: 2370
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ReleaseKeys_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_controlId
	; LineNumber: 2371
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ReleaseKeys_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 2372
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 2373
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 2374
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 2375
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2376
	rts
end_procedure_ReleaseKeys
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ProcessBackObj
	;    Procedure type : User-defined procedure
	; LineNumber: 2388
	; LineNumber: 2380
localVariable_ProcessBackObj_controlId	dc.b	0
	; LineNumber: 2381
localVariable_ProcessBackObj_defWalk	dc.b	0
	; LineNumber: 2382
localVariable_ProcessBackObj_gravity	dc.b	0
	; LineNumber: 2383
localVariable_ProcessBackObj_backObj	dc.b	0
	; LineNumber: 2383
localVariable_ProcessBackObj_backObj2	dc.b	0
	; LineNumber: 2384
localVariable_ProcessBackObj_portalHitObj	dc.b	0
	; LineNumber: 2385
localVariable_ProcessBackObj_pos	dc.b	0
	; LineNumber: 2385
localVariable_ProcessBackObj_v	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_robeAbleId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_portalId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_gravPadId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_switchId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_laserBeanId	dc.b	0
	; LineNumber: 2386
localVariable_ProcessBackObj_exitId	dc.b	0
	; LineNumber: 2387
localVariable_ProcessBackObj_newx	dc.b	0
	; LineNumber: 2387
localVariable_ProcessBackObj_newy	dc.b	0
	; LineNumber: 2378
localVariable_ProcessBackObj_id	dc.b	0
ProcessBackObj_block8067
ProcessBackObj
	; LineNumber: 2389
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2390
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
	bne ProcessBackObj_elseblock8070
ProcessBackObj_ConditionalTrueBlock8069: ;Main true block ;keep 
	; LineNumber: 2390
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
	jmp ProcessBackObj_elsedoneblock8071
ProcessBackObj_elseblock8070
	; LineNumber: 2392
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
ProcessBackObj_elsedoneblock8071
	; LineNumber: 2395
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc ProcessBackObj_localfailed9904
ProcessBackObj_localsuccess9905: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed9906
	jmp ProcessBackObj_ConditionalTrueBlock8077
ProcessBackObj_localfailed9906: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq ProcessBackObj_localfailed9904
	jmp ProcessBackObj_ConditionalTrueBlock8077
ProcessBackObj_localfailed9904
	jmp ProcessBackObj_elsedoneblock8079
ProcessBackObj_ConditionalTrueBlock8077: ;Main true block ;keep 
	; LineNumber: 2395
	; LineNumber: 2396
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
	; LineNumber: 2397
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
	; LineNumber: 2398
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
	; LineNumber: 2400
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
	beq ProcessBackObj_localfailed10728
ProcessBackObj_localsuccess10729: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed10728
	jmp ProcessBackObj_ConditionalTrueBlock9909
ProcessBackObj_localfailed10728
	jmp ProcessBackObj_elseblock9910
ProcessBackObj_ConditionalTrueBlock9909: ;Main true block ;keep 
	; LineNumber: 2399
	; LineNumber: 2401
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2402
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2403
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2404
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2406
	jmp ProcessBackObj_elsedoneblock9911
ProcessBackObj_elseblock9910
	; LineNumber: 2405
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_robeAbleId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11140
ProcessBackObj_localsuccess11141: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11140
	jmp ProcessBackObj_ConditionalTrueBlock10733
ProcessBackObj_localfailed11140
	jmp ProcessBackObj_elseblock10734
ProcessBackObj_ConditionalTrueBlock10733: ;Main true block ;keep 
	; LineNumber: 2405
	; LineNumber: 2407
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_robeAbleId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11148 = $88
	sta ProcessBackObj_binary_clause_temp_var11148
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11149 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11149
	lda ProcessBackObj_binary_clause_temp_var11148
	cmp ProcessBackObj_binary_clause_temp_2_var11149;keep
	bne ProcessBackObj_elsedoneblock11146
ProcessBackObj_ConditionalTrueBlock11144: ;Main true block ;keep 
	; LineNumber: 2407
	; LineNumber: 2408
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2409
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2410
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2411
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2412
ProcessBackObj_elsedoneblock11146
	; LineNumber: 2414
	jmp ProcessBackObj_elsedoneblock10735
ProcessBackObj_elseblock10734
	; LineNumber: 2413
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11349
ProcessBackObj_localsuccess11351: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11349
ProcessBackObj_localsuccess11350: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11352
	jmp ProcessBackObj_ConditionalTrueBlock11153
ProcessBackObj_localfailed11352: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_localfailed11349
	jmp ProcessBackObj_ConditionalTrueBlock11153
ProcessBackObj_localfailed11349
	jmp ProcessBackObj_elseblock11154
ProcessBackObj_ConditionalTrueBlock11153: ;Main true block ;keep 
	; LineNumber: 2414
	; LineNumber: 2415
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2416
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2417
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11357
ProcessBackObj_localsuccess11379: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11357
ProcessBackObj_ConditionalTrueBlock11355: ;Main true block ;keep 
	; LineNumber: 2417
	; LineNumber: 2418
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_elseblock11383
ProcessBackObj_ConditionalTrueBlock11382: ;Main true block ;keep 
	; LineNumber: 2418
	; LineNumber: 2419
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$1 ; array with const index optimization  ; optimized, look out for bugs
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2420
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2421
	lda localVariable_ProcessBackObj_portalId
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 2423
	jmp ProcessBackObj_elsedoneblock11384
ProcessBackObj_elseblock11383
	; LineNumber: 2422
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_elsedoneblock11398
ProcessBackObj_ConditionalTrueBlock11396: ;Main true block ;keep 
	; LineNumber: 2423
	; LineNumber: 2424
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$0 ; array with const index optimization  ; optimized, look out for bugs
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
	; LineNumber: 2427
ProcessBackObj_elsedoneblock11398
ProcessBackObj_elsedoneblock11384
	; LineNumber: 2428
ProcessBackObj_elsedoneblock11357
	; LineNumber: 2429
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11415
	jmp ProcessBackObj_ConditionalTrueBlock11402
ProcessBackObj_localfailed11415
	jmp ProcessBackObj_elsedoneblock11404
ProcessBackObj_ConditionalTrueBlock11402: ;Main true block ;keep 
	; LineNumber: 2429
	; LineNumber: 2430
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
	; LineNumber: 2431
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11423
	jmp ProcessBackObj_ConditionalTrueBlock11418
ProcessBackObj_localfailed11423
	jmp ProcessBackObj_elseblock11419
ProcessBackObj_ConditionalTrueBlock11418: ;Main true block ;keep 
	; LineNumber: 2431
	; LineNumber: 2433
	lda #<sndPortal
	ldy #>sndPortal
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2433
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2433
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2434
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
	; LineNumber: 2435
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
	; LineNumber: 2437
	jmp ProcessBackObj_elsedoneblock11420
ProcessBackObj_elseblock11419
	; LineNumber: 2437
	; LineNumber: 2439
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2439
	lda #$3c
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2439
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2440
ProcessBackObj_elsedoneblock11420
	; LineNumber: 2441
ProcessBackObj_elsedoneblock11404
	; LineNumber: 2442
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2444
	jmp ProcessBackObj_elsedoneblock11155
ProcessBackObj_elseblock11154
	; LineNumber: 2443
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
	beq ProcessBackObj_localfailed11488
	jmp ProcessBackObj_ConditionalTrueBlock11428
ProcessBackObj_localfailed11488
	jmp ProcessBackObj_elseblock11429
ProcessBackObj_ConditionalTrueBlock11428: ;Main true block ;keep 
	; LineNumber: 2443
	; LineNumber: 2445
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
	bne ProcessBackObj_elsedoneblock11493
ProcessBackObj_ConditionalTrueBlock11491: ;Main true block ;keep 
	; LineNumber: 2445
	; LineNumber: 2446
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2447
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11519
ProcessBackObj_ConditionalTrueBlock11517: ;Main true block ;keep 
	; LineNumber: 2447
	; LineNumber: 2448
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq ProcessBackObj_elsedoneblock11532
ProcessBackObj_localsuccess11534: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_elsedoneblock11532
ProcessBackObj_ConditionalTrueBlock11530: ;Main true block ;keep 
	; LineNumber: 2447
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_elsedoneblock11532
	; LineNumber: 2449
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2450
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2451
ProcessBackObj_elsedoneblock11519
	; LineNumber: 2453
ProcessBackObj_elsedoneblock11493
	jmp ProcessBackObj_elsedoneblock11430
ProcessBackObj_elseblock11429
	; LineNumber: 2453
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_gravPadId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11540
ProcessBackObj_localsuccess11542: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11543 = $88
	sta ProcessBackObj_binary_clause_temp_var11543
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11544 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11544
	lda ProcessBackObj_binary_clause_temp_var11543
	cmp ProcessBackObj_binary_clause_temp_2_var11544;keep
	beq ProcessBackObj_elsedoneblock11540
ProcessBackObj_ConditionalTrueBlock11538: ;Main true block ;keep 
	; LineNumber: 2454
	; LineNumber: 2455
	lda #<sndGravActivate
	ldy #>sndGravActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2455
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2455
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2457
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2458
ProcessBackObj_elsedoneblock11540
ProcessBackObj_elsedoneblock11430
ProcessBackObj_elsedoneblock11155
ProcessBackObj_elsedoneblock10735
ProcessBackObj_elsedoneblock9911
	; LineNumber: 2460
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_ProcessBackObj_defWalk
	; cmp #$00 ignored
	beq ProcessBackObj_elsedoneblock11549
ProcessBackObj_localsuccess11571: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11549
ProcessBackObj_ConditionalTrueBlock11547: ;Main true block ;keep 
	; LineNumber: 2460
	; LineNumber: 2462
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_elsedoneblock11576
ProcessBackObj_ConditionalTrueBlock11574: ;Main true block ;keep 
	; LineNumber: 2462
	; LineNumber: 2463
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; cmp #$00 ignored
	beq ProcessBackObj_elsedoneblock11589
ProcessBackObj_localsuccess11591: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq ProcessBackObj_elsedoneblock11589
ProcessBackObj_ConditionalTrueBlock11587: ;Main true block ;keep 
	; LineNumber: 2462
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_elsedoneblock11589
	; LineNumber: 2464
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2465
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2466
ProcessBackObj_elsedoneblock11576
	; LineNumber: 2467
ProcessBackObj_elsedoneblock11549
	; LineNumber: 2468
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_elsedoneblock11596
ProcessBackObj_localsuccess11598: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11596
ProcessBackObj_ConditionalTrueBlock11594: ;Main true block ;keep 
	; LineNumber: 2467
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
ProcessBackObj_elsedoneblock11596
	; LineNumber: 2470
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11667
	jmp ProcessBackObj_ConditionalTrueBlock11601
ProcessBackObj_localfailed11667
	jmp ProcessBackObj_elsedoneblock11603
ProcessBackObj_ConditionalTrueBlock11601: ;Main true block ;keep 
	; LineNumber: 2470
	; LineNumber: 2471
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11701
ProcessBackObj_localsuccess11702: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11701
	jmp ProcessBackObj_ConditionalTrueBlock11670
ProcessBackObj_localfailed11701
	jmp ProcessBackObj_elseblock11671
ProcessBackObj_ConditionalTrueBlock11670: ;Main true block ;keep 
	; LineNumber: 2471
	; LineNumber: 2472
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
	; LineNumber: 2474
	jmp ProcessBackObj_elsedoneblock11672
ProcessBackObj_elseblock11671
	; LineNumber: 2473
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elseblock11707
ProcessBackObj_localsuccess11719: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elseblock11707
ProcessBackObj_localsuccess11718: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
ProcessBackObj_binary_clause_temp_var11720 = $88
	sta ProcessBackObj_binary_clause_temp_var11720
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
ProcessBackObj_binary_clause_temp_2_var11721 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11721
	lda ProcessBackObj_binary_clause_temp_var11720
	cmp ProcessBackObj_binary_clause_temp_2_var11721;keep
	beq ProcessBackObj_elseblock11707
ProcessBackObj_ConditionalTrueBlock11706: ;Main true block ;keep 
	; LineNumber: 2474
	; LineNumber: 2475
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
	; LineNumber: 2476
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
	; LineNumber: 2478
	jmp ProcessBackObj_elsedoneblock11708
ProcessBackObj_elseblock11707
	; LineNumber: 2477
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_elsedoneblock11727
ProcessBackObj_localsuccess11729: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_elsedoneblock11727
ProcessBackObj_ConditionalTrueBlock11725: ;Main true block ;keep 
	; LineNumber: 2478
	; LineNumber: 2479
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
	; LineNumber: 2480
ProcessBackObj_elsedoneblock11727
ProcessBackObj_elsedoneblock11708
ProcessBackObj_elsedoneblock11672
	; LineNumber: 2481
ProcessBackObj_elsedoneblock11603
	; LineNumber: 2482
ProcessBackObj_elsedoneblock8079
	; LineNumber: 2483
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed12871
	jmp ProcessBackObj_ConditionalTrueBlock11732
ProcessBackObj_localfailed12871
	jmp ProcessBackObj_elsedoneblock11734
ProcessBackObj_ConditionalTrueBlock11732: ;Main true block ;keep 
	; LineNumber: 2483
	; LineNumber: 2484
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
	; LineNumber: 2485
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
	; LineNumber: 2486
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_switchId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13442
	jmp ProcessBackObj_ConditionalTrueBlock12874
ProcessBackObj_localfailed13442
	jmp ProcessBackObj_elseblock12875
ProcessBackObj_ConditionalTrueBlock12874: ;Main true block ;keep 
	; LineNumber: 2486
	; LineNumber: 2487
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13458
	jmp ProcessBackObj_ConditionalTrueBlock13445
ProcessBackObj_localfailed13458
	jmp ProcessBackObj_elsedoneblock13447
ProcessBackObj_ConditionalTrueBlock13445: ;Main true block ;keep 
	; LineNumber: 2487
	; LineNumber: 2488
	lda #$14
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 2489
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_switchId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed13466
	jmp ProcessBackObj_ConditionalTrueBlock13461
ProcessBackObj_localfailed13466
	jmp ProcessBackObj_elseblock13462
ProcessBackObj_ConditionalTrueBlock13461: ;Main true block ;keep 
	; LineNumber: 2489
	; LineNumber: 2490
	lda #<txtDeactiveSwitch
	ldx #>txtDeactiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2491
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2492
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2493
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2494
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2495
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
	; LineNumber: 2497
	lda #<sndSwitchOn
	ldy #>sndSwitchOn
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2497
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2497
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2499
	jmp ProcessBackObj_elsedoneblock13463
ProcessBackObj_elseblock13462
	; LineNumber: 2499
	; LineNumber: 2500
	lda #<txtActiveSwitch
	ldx #>txtActiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2501
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2502
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2503
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2504
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2505
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
	; LineNumber: 2506
	lda #<sndSwitchOff
	ldy #>sndSwitchOff
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2506
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2506
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2508
ProcessBackObj_elsedoneblock13463
	; LineNumber: 2510
ProcessBackObj_elsedoneblock13447
	jmp ProcessBackObj_elsedoneblock12876
ProcessBackObj_elseblock12875
	; LineNumber: 2510
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_exitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13740
ProcessBackObj_localsuccess13741: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13740
	jmp ProcessBackObj_ConditionalTrueBlock13471
ProcessBackObj_localfailed13740
	jmp ProcessBackObj_elsedoneblock13473
ProcessBackObj_ConditionalTrueBlock13471: ;Main true block ;keep 
	; LineNumber: 2511
	; LineNumber: 2512
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13877
	jmp ProcessBackObj_ConditionalTrueBlock13744
ProcessBackObj_localfailed13877
	jmp ProcessBackObj_elsedoneblock13746
ProcessBackObj_ConditionalTrueBlock13744: ;Main true block ;keep 
	; LineNumber: 2512
	; LineNumber: 2513
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_exitId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed13945
	jmp ProcessBackObj_ConditionalTrueBlock13880
ProcessBackObj_localfailed13945
	jmp ProcessBackObj_elseblock13881
ProcessBackObj_ConditionalTrueBlock13880: ;Main true block ;keep 
	; LineNumber: 2513
	; LineNumber: 2514
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2516
	lda #<sndExit
	ldy #>sndExit
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2516
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2516
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2517
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne ProcessBackObj_elseblock13949
ProcessBackObj_ConditionalTrueBlock13948: ;Main true block ;keep 
	; LineNumber: 2516
	; LineNumber: 2518
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2519
	jsr SetNextLevel
	; LineNumber: 2520
	jmp ProcessBackObj_elsedoneblock13950
ProcessBackObj_elseblock13949
	; LineNumber: 2521
	; LineNumber: 2522
	; Binary clause Simplified: EQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	bne ProcessBackObj_elseblock13983
ProcessBackObj_ConditionalTrueBlock13982: ;Main true block ;keep 
	; LineNumber: 2521
	; LineNumber: 2523
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2524
	jsr SetNextLevel
	; LineNumber: 2526
	jmp ProcessBackObj_elsedoneblock13984
ProcessBackObj_elseblock13983
	; LineNumber: 2526
	; LineNumber: 2527
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_elseblock14000
ProcessBackObj_localsuccess14004: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_elseblock14000
ProcessBackObj_ConditionalTrueBlock13999: ;Main true block ;keep 
	; LineNumber: 2527
	; LineNumber: 2528
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2529
	jsr SetNextLevel
	; LineNumber: 2531
	jmp ProcessBackObj_elsedoneblock14001
ProcessBackObj_elseblock14000
	; LineNumber: 2531
	; LineNumber: 2532
	lda localVariable_ProcessBackObj_controlId
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 2533
	jsr SwapActiveChar
	; LineNumber: 2534
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2535
	lda #<txtPlayerExit
	ldx #>txtPlayerExit
	sta sp
	stx sp+1
	; LineNumber: 2536
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2537
ProcessBackObj_elsedoneblock14001
	; LineNumber: 2538
ProcessBackObj_elsedoneblock13984
	; LineNumber: 2539
ProcessBackObj_elsedoneblock13950
	; LineNumber: 2541
	jmp ProcessBackObj_elsedoneblock13882
ProcessBackObj_elseblock13881
	; LineNumber: 2541
	; LineNumber: 2543
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2543
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2543
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2544
	lda #<txtExitClosed
	ldx #>txtExitClosed
	sta sp
	stx sp+1
	; LineNumber: 2545
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2546
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2547
ProcessBackObj_elsedoneblock13882
	; LineNumber: 2549
ProcessBackObj_elsedoneblock13746
	; LineNumber: 2550
ProcessBackObj_elsedoneblock13473
ProcessBackObj_elsedoneblock12876
	; LineNumber: 2551
ProcessBackObj_elsedoneblock11734
	; LineNumber: 2553
	rts
end_procedure_ProcessBackObj
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InputControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2560
	; LineNumber: 2557
localVariable_InputControl_controlId	dc.b	0
	; LineNumber: 2557
localVariable_InputControl_joyShift	dc.b	0
	; LineNumber: 2558
localVariable_InputControl_gravity	dc.b	0
	; LineNumber: 2559
localVariable_InputControl_joy	dc.b	0
	; LineNumber: 2555
localVariable_InputControl_id	dc.b	0
InputControl_block14008
InputControl
	; LineNumber: 2561
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_controlId
	; LineNumber: 2563
	lda localVariable_InputControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_id
	jsr ReleaseKeys
	; LineNumber: 2564
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_localfailed14944
InputControl_localsuccess14945: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_InputControl_controlId;keep
	beq InputControl_localfailed14944
	jmp InputControl_ConditionalTrueBlock14010
InputControl_localfailed14944
	jmp InputControl_elseblock14011
InputControl_ConditionalTrueBlock14010: ;Main true block ;keep 
	; LineNumber: 2565
	jmp InputControl_elsedoneblock14012
InputControl_elseblock14011
	; LineNumber: 2566
	; LineNumber: 2567
	
; // do nothin
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joy
	; LineNumber: 2568
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joyShift
	; LineNumber: 2569
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
	bne InputControl_elseblock14950
InputControl_ConditionalTrueBlock14949: ;Main true block ;keep 
	; LineNumber: 2568
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
	jmp InputControl_elsedoneblock14951
InputControl_elseblock14950
	; LineNumber: 2568
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
InputControl_elsedoneblock14951
	; LineNumber: 2570
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
	bne InputControl_elsedoneblock14959
InputControl_ConditionalTrueBlock14957: ;Main true block ;keep 
	; LineNumber: 2570
	; LineNumber: 2571
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc InputControl_elsedoneblock14971
InputControl_ConditionalTrueBlock14969: ;Main true block ;keep 
	; LineNumber: 2571
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_elsedoneblock14971
	; LineNumber: 2573
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2574
InputControl_elsedoneblock14959
	; LineNumber: 2576
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
	bne InputControl_elsedoneblock14977
InputControl_ConditionalTrueBlock14975: ;Main true block ;keep 
	; LineNumber: 2576
	; LineNumber: 2577
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; cmp #$00 ignored
	bne InputControl_elsedoneblock14995
InputControl_ConditionalTrueBlock14993: ;Main true block ;keep 
	; LineNumber: 2577
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_elsedoneblock14995
	; LineNumber: 2579
	; Test Inc dec D
	ldx localVariable_InputControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2580
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bcc InputControl_elsedoneblock15001
InputControl_ConditionalTrueBlock14999: ;Main true block ;keep 
	; LineNumber: 2580
	; LineNumber: 2581
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2582
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2583
InputControl_elsedoneblock15001
	; LineNumber: 2584
InputControl_elsedoneblock14977
	; LineNumber: 2586
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne InputControl_localfailed15442
	jmp InputControl_ConditionalTrueBlock15005
InputControl_localfailed15442
	jmp InputControl_elseblock15006
InputControl_ConditionalTrueBlock15005: ;Main true block ;keep 
	; LineNumber: 2587
	jmp InputControl_elsedoneblock15007
InputControl_elseblock15006
	; LineNumber: 2588
	; LineNumber: 2589
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne InputControl_elsedoneblock15448
InputControl_ConditionalTrueBlock15446: ;Main true block ;keep 
	; LineNumber: 2589
	; LineNumber: 2590
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15478
InputControl_ConditionalTrueBlock15476: ;Main true block ;keep 
	; LineNumber: 2589
	
; // ignore		
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15478
	; LineNumber: 2591
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15484
InputControl_ConditionalTrueBlock15482: ;Main true block ;keep 
	; LineNumber: 2590
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15484
	; LineNumber: 2592
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15490
InputControl_ConditionalTrueBlock15488: ;Main true block ;keep 
	; LineNumber: 2591
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15490
	; LineNumber: 2593
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15496
InputControl_ConditionalTrueBlock15494: ;Main true block ;keep 
	; LineNumber: 2592
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15496
	; LineNumber: 2594
InputControl_elsedoneblock15448
	; LineNumber: 2595
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	beq InputControl_elsedoneblock15502
InputControl_ConditionalTrueBlock15500: ;Main true block ;keep 
	; LineNumber: 2595
	; LineNumber: 2596
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15532
InputControl_ConditionalTrueBlock15530: ;Main true block ;keep 
	; LineNumber: 2595
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15532
	; LineNumber: 2597
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15538
InputControl_ConditionalTrueBlock15536: ;Main true block ;keep 
	; LineNumber: 2596
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15538
	; LineNumber: 2598
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15544
InputControl_ConditionalTrueBlock15542: ;Main true block ;keep 
	; LineNumber: 2597
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15544
	; LineNumber: 2599
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15550
InputControl_ConditionalTrueBlock15548: ;Main true block ;keep 
	; LineNumber: 2598
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15550
	; LineNumber: 2600
InputControl_elsedoneblock15502
	; LineNumber: 2601
	; Binary clause Simplified: NOTEQUALS
	clc
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; cmp #$00 ignored
	beq InputControl_elsedoneblock15556
InputControl_ConditionalTrueBlock15554: ;Main true block ;keep 
	; LineNumber: 2601
	; LineNumber: 2602
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15586
InputControl_ConditionalTrueBlock15584: ;Main true block ;keep 
	; LineNumber: 2601
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15586
	; LineNumber: 2603
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15592
InputControl_ConditionalTrueBlock15590: ;Main true block ;keep 
	; LineNumber: 2602
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15592
	; LineNumber: 2604
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15598
InputControl_ConditionalTrueBlock15596: ;Main true block ;keep 
	; LineNumber: 2603
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15598
	; LineNumber: 2605
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15604
InputControl_ConditionalTrueBlock15602: ;Main true block ;keep 
	; LineNumber: 2604
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15604
	; LineNumber: 2606
InputControl_elsedoneblock15556
	; LineNumber: 2607
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq InputControl_elsedoneblock15610
InputControl_ConditionalTrueBlock15608: ;Main true block ;keep 
	; LineNumber: 2607
	; LineNumber: 2608
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15640
InputControl_ConditionalTrueBlock15638: ;Main true block ;keep 
	; LineNumber: 2607
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15640
	; LineNumber: 2609
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15646
InputControl_ConditionalTrueBlock15644: ;Main true block ;keep 
	; LineNumber: 2608
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15646
	; LineNumber: 2610
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15652
InputControl_ConditionalTrueBlock15650: ;Main true block ;keep 
	; LineNumber: 2609
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15652
	; LineNumber: 2611
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15658
InputControl_ConditionalTrueBlock15656: ;Main true block ;keep 
	; LineNumber: 2610
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15658
	; LineNumber: 2612
InputControl_elsedoneblock15610
	; LineNumber: 2613
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InputControl_elsedoneblock15664
InputControl_ConditionalTrueBlock15662: ;Main true block ;keep 
	; LineNumber: 2613
	; LineNumber: 2614
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15694
InputControl_ConditionalTrueBlock15692: ;Main true block ;keep 
	; LineNumber: 2613
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15694
	; LineNumber: 2615
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15700
InputControl_ConditionalTrueBlock15698: ;Main true block ;keep 
	; LineNumber: 2614
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15700
	; LineNumber: 2616
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15706
InputControl_ConditionalTrueBlock15704: ;Main true block ;keep 
	; LineNumber: 2615
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15706
	; LineNumber: 2617
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15712
InputControl_ConditionalTrueBlock15710: ;Main true block ;keep 
	; LineNumber: 2616
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15712
	; LineNumber: 2618
InputControl_elsedoneblock15664
	; LineNumber: 2619
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq InputControl_elsedoneblock15718
InputControl_ConditionalTrueBlock15716: ;Main true block ;keep 
	; LineNumber: 2619
	; LineNumber: 2620
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15748
InputControl_ConditionalTrueBlock15746: ;Main true block ;keep 
	; LineNumber: 2619
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15748
	; LineNumber: 2621
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15754
InputControl_ConditionalTrueBlock15752: ;Main true block ;keep 
	; LineNumber: 2620
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15754
	; LineNumber: 2622
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15760
InputControl_ConditionalTrueBlock15758: ;Main true block ;keep 
	; LineNumber: 2621
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15760
	; LineNumber: 2623
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15766
InputControl_ConditionalTrueBlock15764: ;Main true block ;keep 
	; LineNumber: 2622
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15766
	; LineNumber: 2624
InputControl_elsedoneblock15718
	; LineNumber: 2625
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne InputControl_elsedoneblock15772
InputControl_ConditionalTrueBlock15770: ;Main true block ;keep 
	; LineNumber: 2625
	; LineNumber: 2626
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15802
InputControl_ConditionalTrueBlock15800: ;Main true block ;keep 
	; LineNumber: 2625
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15802
	; LineNumber: 2627
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15808
InputControl_ConditionalTrueBlock15806: ;Main true block ;keep 
	; LineNumber: 2626
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15808
	; LineNumber: 2628
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15814
InputControl_ConditionalTrueBlock15812: ;Main true block ;keep 
	; LineNumber: 2627
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15814
	; LineNumber: 2629
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15820
InputControl_ConditionalTrueBlock15818: ;Main true block ;keep 
	; LineNumber: 2628
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15820
	; LineNumber: 2630
InputControl_elsedoneblock15772
	; LineNumber: 2631
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq InputControl_elsedoneblock15826
InputControl_ConditionalTrueBlock15824: ;Main true block ;keep 
	; LineNumber: 2631
	; LineNumber: 2632
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_elsedoneblock15856
InputControl_ConditionalTrueBlock15854: ;Main true block ;keep 
	; LineNumber: 2631
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_elsedoneblock15856
	; LineNumber: 2633
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_elsedoneblock15862
InputControl_ConditionalTrueBlock15860: ;Main true block ;keep 
	; LineNumber: 2632
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_elsedoneblock15862
	; LineNumber: 2634
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_elsedoneblock15868
InputControl_ConditionalTrueBlock15866: ;Main true block ;keep 
	; LineNumber: 2633
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_elsedoneblock15868
	; LineNumber: 2635
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_elsedoneblock15874
InputControl_ConditionalTrueBlock15872: ;Main true block ;keep 
	; LineNumber: 2634
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_elsedoneblock15874
	; LineNumber: 2636
InputControl_elsedoneblock15826
	; LineNumber: 2637
InputControl_elsedoneblock15007
	; LineNumber: 2638
InputControl_elsedoneblock14012
	; LineNumber: 2639
	rts
end_procedure_InputControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2654
	; LineNumber: 2643
localVariable_UpdateControl_controlId	dc.b	0
	; LineNumber: 2644
localVariable_UpdateControl_grounded	dc.b	0
	; LineNumber: 2645
localVariable_UpdateControl_isShift	dc.b	0
	; LineNumber: 2646
localVariable_UpdateControl_gravity	dc.b	0
	; LineNumber: 2647
localVariable_UpdateControl_oldx	dc.b	0
	; LineNumber: 2647
localVariable_UpdateControl_oldy	dc.b	0
	; LineNumber: 2647
localVariable_UpdateControl_newx	dc.b	0
	; LineNumber: 2647
localVariable_UpdateControl_newy	dc.b	0
	; LineNumber: 2647
localVariable_UpdateControl_moveDir	dc.b	0
	; LineNumber: 2649
localVariable_UpdateControl_shift	dc.w	0
	; LineNumber: 2650
localVariable_UpdateControl_laserEmitId	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_colObj	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_eraseObj	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_colObj2	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_eraseObj2	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_colObj3	dc.b	0
	; LineNumber: 2652
localVariable_UpdateControl_laserId	dc.b	0
	; LineNumber: 2653
localVariable_UpdateControl_shiftDir	dc.b	0
	; LineNumber: 2641
localVariable_UpdateControl_id	dc.b	0
UpdateControl_block15877
UpdateControl
	; LineNumber: 2655
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_controlId
	; LineNumber: 2656
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2657
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2658
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2659
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2660
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2661
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2662
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2663
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2665
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
	beq UpdateControl_localfailed15963
	jmp UpdateControl_ConditionalTrueBlock15879
UpdateControl_localfailed15963
	jmp UpdateControl_elseblock15880
UpdateControl_ConditionalTrueBlock15879: ;Main true block ;keep 
	; LineNumber: 2665
	; LineNumber: 2666
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2667
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2668
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2670
	jmp UpdateControl_elsedoneblock15881
UpdateControl_elseblock15880
	; LineNumber: 2670
	; LineNumber: 2671
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2672
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
	; LineNumber: 2673
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed16007
	jmp UpdateControl_ConditionalTrueBlock15967
UpdateControl_localfailed16007
	jmp UpdateControl_elsedoneblock15969
UpdateControl_ConditionalTrueBlock15967: ;Main true block ;keep 
	; LineNumber: 2672
	; LineNumber: 2674
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2675
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2676
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed16014
UpdateControl_localsuccess16015: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16014
	jmp UpdateControl_ConditionalTrueBlock16010
UpdateControl_localfailed16014: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_elsedoneblock16012
UpdateControl_localsuccess16016: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16012
UpdateControl_ConditionalTrueBlock16010: ;Main true block ;keep 
	; LineNumber: 2675
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16012
	; LineNumber: 2677
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16023
UpdateControl_localsuccess16024: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16023
	jmp UpdateControl_ConditionalTrueBlock16019
UpdateControl_localfailed16023: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_elsedoneblock16021
UpdateControl_localsuccess16025: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16021
UpdateControl_ConditionalTrueBlock16019: ;Main true block ;keep 
	; LineNumber: 2676
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16021
	; LineNumber: 2678
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed16032
UpdateControl_localsuccess16033: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16032
	jmp UpdateControl_ConditionalTrueBlock16028
UpdateControl_localfailed16032: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elsedoneblock16030
UpdateControl_localsuccess16034: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16030
UpdateControl_ConditionalTrueBlock16028: ;Main true block ;keep 
	; LineNumber: 2677
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16030
	; LineNumber: 2679
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed16041
UpdateControl_localsuccess16042: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16041
	jmp UpdateControl_ConditionalTrueBlock16037
UpdateControl_localfailed16041: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16039
UpdateControl_localsuccess16043: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_elsedoneblock16039
UpdateControl_ConditionalTrueBlock16037: ;Main true block ;keep 
	; LineNumber: 2678
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_elsedoneblock16039
	; LineNumber: 2680
UpdateControl_elsedoneblock15969
	; LineNumber: 2681
UpdateControl_elsedoneblock15881
	; LineNumber: 2682
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed21278
	jmp UpdateControl_ConditionalTrueBlock16046
UpdateControl_localfailed21278
	jmp UpdateControl_elseblock16047
UpdateControl_ConditionalTrueBlock16046: ;Main true block ;keep 
	; LineNumber: 2682
	; LineNumber: 2683
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_isShift
	; cmp #$00 ignored
	bne UpdateControl_localfailed21552
	jmp UpdateControl_ConditionalTrueBlock21281
UpdateControl_localfailed21552
	jmp UpdateControl_elseblock21282
UpdateControl_ConditionalTrueBlock21281: ;Main true block ;keep 
	; LineNumber: 2683
	; LineNumber: 2684
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
	; LineNumber: 2685
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
	; LineNumber: 2686
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21560
	jmp UpdateControl_localsuccess21559
UpdateControl_localfailed21560: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21557
UpdateControl_localsuccess21559: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	bne UpdateControl_elsedoneblock21557
UpdateControl_localsuccess21562: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21557
UpdateControl_localsuccess21561: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21557
UpdateControl_ConditionalTrueBlock21555: ;Main true block ;keep 
	; LineNumber: 2685
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock21557
	; LineNumber: 2688
	
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
	; LineNumber: 2690
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21570
	jmp UpdateControl_localsuccess21569
UpdateControl_localfailed21570: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21567
UpdateControl_localsuccess21569: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21567
UpdateControl_localsuccess21571: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21567
UpdateControl_ConditionalTrueBlock21565: ;Main true block ;keep 
	; LineNumber: 2689
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock21567
	; LineNumber: 2692
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21672
	jmp UpdateControl_ConditionalTrueBlock21574
UpdateControl_localfailed21672
	jmp UpdateControl_elsedoneblock21576
UpdateControl_ConditionalTrueBlock21574: ;Main true block ;keep 
	; LineNumber: 2692
	; LineNumber: 2693
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
	; LineNumber: 2695
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
	; LineNumber: 2696
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
	; LineNumber: 2697
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21699
	jmp UpdateControl_localsuccess21698
UpdateControl_localfailed21699: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21677
UpdateControl_localsuccess21698: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21700
	jmp UpdateControl_ConditionalTrueBlock21675
UpdateControl_localfailed21700: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21677
UpdateControl_ConditionalTrueBlock21675: ;Main true block ;keep 
	; LineNumber: 2697
	; LineNumber: 2698
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21713
	jmp UpdateControl_ConditionalTrueBlock21703
UpdateControl_localfailed21713: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21705
UpdateControl_ConditionalTrueBlock21703: ;Main true block ;keep 
	; LineNumber: 2698
	; LineNumber: 2699
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21718
UpdateControl_ConditionalTrueBlock21716: ;Main true block ;keep 
	; LineNumber: 2698
	; LineNumber: 2700
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2701
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 2702
UpdateControl_elsedoneblock21718
	; LineNumber: 2703
UpdateControl_elsedoneblock21705
	; LineNumber: 2704
UpdateControl_elsedoneblock21677
	; LineNumber: 2705
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
	; LineNumber: 2706
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
	; LineNumber: 2707
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
	; LineNumber: 2708
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
	; LineNumber: 2709
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21746
	jmp UpdateControl_localsuccess21745
UpdateControl_localfailed21746: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21724
UpdateControl_localsuccess21745: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21747
	jmp UpdateControl_ConditionalTrueBlock21722
UpdateControl_localfailed21747: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21724
UpdateControl_ConditionalTrueBlock21722: ;Main true block ;keep 
	; LineNumber: 2709
	; LineNumber: 2710
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21760
	jmp UpdateControl_ConditionalTrueBlock21750
UpdateControl_localfailed21760: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21752
UpdateControl_ConditionalTrueBlock21750: ;Main true block ;keep 
	; LineNumber: 2710
	; LineNumber: 2711
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21765
UpdateControl_ConditionalTrueBlock21763: ;Main true block ;keep 
	; LineNumber: 2710
	; LineNumber: 2712
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2713
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 2714
UpdateControl_elsedoneblock21765
	; LineNumber: 2715
UpdateControl_elsedoneblock21752
	; LineNumber: 2716
UpdateControl_elsedoneblock21724
	; LineNumber: 2717
UpdateControl_elsedoneblock21576
	; LineNumber: 2719
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21791
	jmp UpdateControl_ConditionalTrueBlock21769
UpdateControl_localfailed21791
	jmp UpdateControl_elsedoneblock21771
UpdateControl_ConditionalTrueBlock21769: ;Main true block ;keep 
	; LineNumber: 2719
	; LineNumber: 2720
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
	; LineNumber: 2721
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
	; LineNumber: 2723
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21799
	jmp UpdateControl_localsuccess21798
UpdateControl_localfailed21799: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21796
UpdateControl_localsuccess21798: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21796
UpdateControl_localsuccess21800: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21796
UpdateControl_ConditionalTrueBlock21794: ;Main true block ;keep 
	; LineNumber: 2722
	; LineNumber: 2724
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2725
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2726
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2727
UpdateControl_elsedoneblock21796
	; LineNumber: 2729
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
	; LineNumber: 2730
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
	; LineNumber: 2731
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21808
	jmp UpdateControl_localsuccess21807
UpdateControl_localfailed21808: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21805
UpdateControl_localsuccess21807: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21805
UpdateControl_localsuccess21809: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21805
UpdateControl_ConditionalTrueBlock21803: ;Main true block ;keep 
	; LineNumber: 2730
	; LineNumber: 2732
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2733
UpdateControl_elsedoneblock21805
	; LineNumber: 2734
UpdateControl_elsedoneblock21771
	; LineNumber: 2736
	jmp UpdateControl_elsedoneblock21283
UpdateControl_elseblock21282
	; LineNumber: 2736
	; LineNumber: 2737
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
	; LineNumber: 2738
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
	; LineNumber: 2740
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21818
	jmp UpdateControl_localsuccess21817
UpdateControl_localfailed21818: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock21815
UpdateControl_localsuccess21817: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21815
UpdateControl_localsuccess21819: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock21815
UpdateControl_ConditionalTrueBlock21813: ;Main true block ;keep 
	; LineNumber: 2739
	; LineNumber: 2741
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2742
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2743
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2744
UpdateControl_elsedoneblock21815
	; LineNumber: 2745
UpdateControl_elsedoneblock21283
	; LineNumber: 2746
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed21834
	jmp UpdateControl_ConditionalTrueBlock21822
UpdateControl_localfailed21834: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_elseblock21823
UpdateControl_ConditionalTrueBlock21822: ;Main true block ;keep 
	; LineNumber: 2745
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock21824
UpdateControl_elseblock21823
	; LineNumber: 2746
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed21842
	jmp UpdateControl_ConditionalTrueBlock21838
UpdateControl_localfailed21842: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elsedoneblock21840
UpdateControl_ConditionalTrueBlock21838: ;Main true block ;keep 
	; LineNumber: 2746
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock21840
UpdateControl_elsedoneblock21824
	; LineNumber: 2749
	jmp UpdateControl_elsedoneblock16048
UpdateControl_elseblock16047
	; LineNumber: 2748
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_localfailed24178
	jmp UpdateControl_ConditionalTrueBlock21846
UpdateControl_localfailed24178
	jmp UpdateControl_elseblock21847
UpdateControl_ConditionalTrueBlock21846: ;Main true block ;keep 
	; LineNumber: 2749
	; LineNumber: 2750
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed24420
	jmp UpdateControl_ConditionalTrueBlock24181
UpdateControl_localfailed24420
	jmp UpdateControl_elseblock24182
UpdateControl_ConditionalTrueBlock24181: ;Main true block ;keep 
	; LineNumber: 2749
	
; // TODO: check for collideable?
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	jmp UpdateControl_elsedoneblock24183
UpdateControl_elseblock24182
	; LineNumber: 2750
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed24542
	jmp UpdateControl_ConditionalTrueBlock24424
UpdateControl_localfailed24542: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed24541
	jmp UpdateControl_ConditionalTrueBlock24424
UpdateControl_localfailed24541
	jmp UpdateControl_elsedoneblock24426
UpdateControl_ConditionalTrueBlock24424: ;Main true block ;keep 
	; LineNumber: 2751
	; LineNumber: 2752
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
	; LineNumber: 2753
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
	; LineNumber: 2754
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
	; LineNumber: 2755
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24547
UpdateControl_localsuccess24550: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24551
	jmp UpdateControl_localsuccess24549
UpdateControl_localfailed24551: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24547
UpdateControl_localsuccess24549: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24547
UpdateControl_ConditionalTrueBlock24545: ;Main true block ;keep 
	; LineNumber: 2754
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock24547
	; LineNumber: 2757
	
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
	; LineNumber: 2760
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24556
UpdateControl_localsuccess24559: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24560
	jmp UpdateControl_localsuccess24558
UpdateControl_localfailed24560: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24556
UpdateControl_localsuccess24558: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24556
UpdateControl_ConditionalTrueBlock24554: ;Main true block ;keep 
	; LineNumber: 2759
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock24556
	; LineNumber: 2762
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24611
	jmp UpdateControl_ConditionalTrueBlock24563
UpdateControl_localfailed24611
	jmp UpdateControl_elsedoneblock24565
UpdateControl_ConditionalTrueBlock24563: ;Main true block ;keep 
	; LineNumber: 2762
	; LineNumber: 2763
	
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
	; LineNumber: 2765
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
	; LineNumber: 2766
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
	; LineNumber: 2767
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
	; LineNumber: 2768
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24625
	jmp UpdateControl_localsuccess24624
UpdateControl_localfailed24625: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24616
UpdateControl_localsuccess24624: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24627
	jmp UpdateControl_localsuccess24626
UpdateControl_localfailed24627: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24616
UpdateControl_localsuccess24626: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24616
UpdateControl_ConditionalTrueBlock24614: ;Main true block ;keep 
	; LineNumber: 2768
	; LineNumber: 2769
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24632
UpdateControl_ConditionalTrueBlock24630: ;Main true block ;keep 
	; LineNumber: 2769
	; LineNumber: 2770
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2771
UpdateControl_elsedoneblock24632
	; LineNumber: 2772
UpdateControl_elsedoneblock24616
	; LineNumber: 2773
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
	; LineNumber: 2774
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
	; LineNumber: 2775
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
	; LineNumber: 2776
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
	; LineNumber: 2777
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
	; LineNumber: 2778
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24647
	jmp UpdateControl_localsuccess24646
UpdateControl_localfailed24647: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24638
UpdateControl_localsuccess24646: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24649
	jmp UpdateControl_localsuccess24648
UpdateControl_localfailed24649: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24638
UpdateControl_localsuccess24648: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock24638
UpdateControl_ConditionalTrueBlock24636: ;Main true block ;keep 
	; LineNumber: 2778
	; LineNumber: 2779
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock24654
UpdateControl_ConditionalTrueBlock24652: ;Main true block ;keep 
	; LineNumber: 2779
	; LineNumber: 2780
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2781
UpdateControl_elsedoneblock24654
	; LineNumber: 2782
UpdateControl_elsedoneblock24638
	; LineNumber: 2783
UpdateControl_elsedoneblock24565
	; LineNumber: 2784
UpdateControl_elsedoneblock24426
UpdateControl_elsedoneblock24183
	; LineNumber: 2785
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2786
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bcc UpdateControl_elsedoneblock24660
UpdateControl_ConditionalTrueBlock24658: ;Main true block ;keep 
	; LineNumber: 2785
	; LineNumber: 2787
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2788
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2789
UpdateControl_elsedoneblock24660
	; LineNumber: 2790
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed24690
	jmp UpdateControl_ConditionalTrueBlock24664
UpdateControl_localfailed24690: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_elseblock24665
UpdateControl_ConditionalTrueBlock24664: ;Main true block ;keep 
	; LineNumber: 2789
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock24666
UpdateControl_elseblock24665
	; LineNumber: 2790
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed24705
	jmp UpdateControl_ConditionalTrueBlock24694
UpdateControl_localfailed24705: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elseblock24695
UpdateControl_ConditionalTrueBlock24694: ;Main true block ;keep 
	; LineNumber: 2790
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock24696
UpdateControl_elseblock24695
	; LineNumber: 2791
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_elsedoneblock24711
UpdateControl_ConditionalTrueBlock24709: ;Main true block ;keep 
	; LineNumber: 2791
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock24711
UpdateControl_elsedoneblock24696
UpdateControl_elsedoneblock24666
	; LineNumber: 2793
	jmp UpdateControl_elsedoneblock21848
UpdateControl_elseblock21847
	; LineNumber: 2793
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25614
	jmp UpdateControl_ConditionalTrueBlock24716
UpdateControl_localfailed25614: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed25613
	jmp UpdateControl_ConditionalTrueBlock24716
UpdateControl_localfailed25613: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed25612
	jmp UpdateControl_ConditionalTrueBlock24716
UpdateControl_localfailed25612
	jmp UpdateControl_elseblock24717
UpdateControl_ConditionalTrueBlock24716: ;Main true block ;keep 
	; LineNumber: 2794
	; LineNumber: 2795
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
	; LineNumber: 2796
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
	; LineNumber: 2797
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25622
	jmp UpdateControl_localsuccess25621
UpdateControl_localfailed25622: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25619
UpdateControl_localsuccess25621: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25619
UpdateControl_ConditionalTrueBlock25617: ;Main true block ;keep 
	; LineNumber: 2796
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25619
	; LineNumber: 2799
	
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
	; LineNumber: 2801
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25630
	jmp UpdateControl_localsuccess25629
UpdateControl_localfailed25630: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25627
UpdateControl_localsuccess25629: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25627
UpdateControl_ConditionalTrueBlock25625: ;Main true block ;keep 
	; LineNumber: 2800
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25627
	; LineNumber: 2803
	
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
	; LineNumber: 2804
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
	; LineNumber: 2805
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25638
	jmp UpdateControl_localsuccess25637
UpdateControl_localfailed25638: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25635
UpdateControl_localsuccess25637: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25635
UpdateControl_localsuccess25639: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq UpdateControl_elsedoneblock25635
UpdateControl_ConditionalTrueBlock25633: ;Main true block ;keep 
	; LineNumber: 2804
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25635
	; LineNumber: 2807
	
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
	; LineNumber: 2808
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
	; LineNumber: 2809
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25647
	jmp UpdateControl_localsuccess25646
UpdateControl_localfailed25647: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25644
UpdateControl_localsuccess25646: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_elsedoneblock25644
UpdateControl_ConditionalTrueBlock25642: ;Main true block ;keep 
	; LineNumber: 2808
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_elsedoneblock25644
	; LineNumber: 2811
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25734
	jmp UpdateControl_ConditionalTrueBlock25650
UpdateControl_localfailed25734
	jmp UpdateControl_elseblock25651
UpdateControl_ConditionalTrueBlock25650: ;Main true block ;keep 
	; LineNumber: 2811
	; LineNumber: 2812
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25749
	jmp UpdateControl_ConditionalTrueBlock25737
UpdateControl_localfailed25749: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock25738
UpdateControl_ConditionalTrueBlock25737: ;Main true block ;keep 
	; LineNumber: 2811
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_elsedoneblock25739
UpdateControl_elseblock25738
	; LineNumber: 2812
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed25757
	jmp UpdateControl_ConditionalTrueBlock25753
UpdateControl_localfailed25757: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_elsedoneblock25755
UpdateControl_ConditionalTrueBlock25753: ;Main true block ;keep 
	; LineNumber: 2812
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25755
UpdateControl_elsedoneblock25739
	; LineNumber: 2815
	jmp UpdateControl_elsedoneblock25652
UpdateControl_elseblock25651
	; LineNumber: 2814
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock25762
UpdateControl_ConditionalTrueBlock25761: ;Main true block ;keep 
	; LineNumber: 2815
	; LineNumber: 2816
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25794
UpdateControl_ConditionalTrueBlock25792: ;Main true block ;keep 
	; LineNumber: 2815
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25794
	; LineNumber: 2818
	jmp UpdateControl_elsedoneblock25763
UpdateControl_elseblock25762
	; LineNumber: 2817
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elsedoneblock25801
UpdateControl_ConditionalTrueBlock25799: ;Main true block ;keep 
	; LineNumber: 2818
	; LineNumber: 2819
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock25813
UpdateControl_ConditionalTrueBlock25811: ;Main true block ;keep 
	; LineNumber: 2818
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_elsedoneblock25813
	; LineNumber: 2821
UpdateControl_elsedoneblock25801
UpdateControl_elsedoneblock25763
UpdateControl_elsedoneblock25652
	jmp UpdateControl_elsedoneblock24718
UpdateControl_elseblock24717
	; LineNumber: 2821
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed26164
	jmp UpdateControl_ConditionalTrueBlock25818
UpdateControl_localfailed26164
	jmp UpdateControl_elsedoneblock25820
UpdateControl_ConditionalTrueBlock25818: ;Main true block ;keep 
	; LineNumber: 2822
	; LineNumber: 2823
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2824
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserEmitId
	; LineNumber: 2825
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed26283
	jmp UpdateControl_ConditionalTrueBlock26167
UpdateControl_localfailed26283
	jmp UpdateControl_elseblock26168
UpdateControl_ConditionalTrueBlock26167: ;Main true block ;keep 
	; LineNumber: 2824
	; LineNumber: 2826
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	; LineNumber: 2827
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2828
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2829
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlCollideLaserTag,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2830
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserId
	; LineNumber: 2831
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26290
	jmp UpdateControl_ConditionalTrueBlock26286
UpdateControl_localfailed26290
	jmp UpdateControl_elsedoneblock26288
UpdateControl_ConditionalTrueBlock26286: ;Main true block ;keep 
	; LineNumber: 2830
	; LineNumber: 2832
	lda #$5a
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2833
	lda #$8
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2834
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2835
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2836
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2837
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2838
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2839
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2840
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2842
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
	; LineNumber: 2843
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
	; LineNumber: 2844
UpdateControl_elsedoneblock26288
	; LineNumber: 2846
	jmp UpdateControl_elsedoneblock26169
UpdateControl_elseblock26168
	; LineNumber: 2845
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock26295
UpdateControl_ConditionalTrueBlock26294: ;Main true block ;keep 
	; LineNumber: 2845
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26296
UpdateControl_elseblock26295
	; LineNumber: 2846
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_elseblock26351
UpdateControl_ConditionalTrueBlock26350: ;Main true block ;keep 
	; LineNumber: 2846
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26352
UpdateControl_elseblock26351
	; LineNumber: 2847
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_elseblock26379
UpdateControl_ConditionalTrueBlock26378: ;Main true block ;keep 
	; LineNumber: 2847
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_elsedoneblock26380
UpdateControl_elseblock26379
	; LineNumber: 2848
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_elsedoneblock26394
UpdateControl_ConditionalTrueBlock26392: ;Main true block ;keep 
	; LineNumber: 2848
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateControl_elsedoneblock26394
UpdateControl_elsedoneblock26380
UpdateControl_elsedoneblock26352
UpdateControl_elsedoneblock26296
UpdateControl_elsedoneblock26169
	; LineNumber: 2850
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
	; LineNumber: 2851
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
	; LineNumber: 2852
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
	; LineNumber: 2853
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
	; LineNumber: 2854
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2855
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bcc UpdateControl_localfailed26454
	jmp UpdateControl_ConditionalTrueBlock26398
UpdateControl_localfailed26454
	jmp UpdateControl_elsedoneblock26400
UpdateControl_ConditionalTrueBlock26398: ;Main true block ;keep 
	; LineNumber: 2855
	; LineNumber: 2856
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2857
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
	; LineNumber: 2858
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2859
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2860
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2861
	lda #$8
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2862
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne UpdateControl_elseblock26458
UpdateControl_ConditionalTrueBlock26457: ;Main true block ;keep 
	; LineNumber: 2861
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_elsedoneblock26459
UpdateControl_elseblock26458
	; LineNumber: 2863
	; LineNumber: 2864
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq UpdateControl_elseblock26488
UpdateControl_ConditionalTrueBlock26487: ;Main true block ;keep 
	; LineNumber: 2863
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_elsedoneblock26489
UpdateControl_elseblock26488
	; LineNumber: 2865
	; LineNumber: 2866
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_elsedoneblock26504
UpdateControl_localsuccess26506: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_elsedoneblock26504
UpdateControl_ConditionalTrueBlock26502: ;Main true block ;keep 
	; LineNumber: 2865
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
UpdateControl_elsedoneblock26504
	; LineNumber: 2867
UpdateControl_elsedoneblock26489
	; LineNumber: 2868
UpdateControl_elsedoneblock26459
	; LineNumber: 2869
UpdateControl_elsedoneblock26400
	; LineNumber: 2870
UpdateControl_elsedoneblock25820
UpdateControl_elsedoneblock24718
UpdateControl_elsedoneblock21848
UpdateControl_elsedoneblock16048
	; LineNumber: 2873
	
; // Do Moves
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldx
	; LineNumber: 2874
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldy
	; LineNumber: 2876
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26574
	jmp UpdateControl_ConditionalTrueBlock26509
UpdateControl_localfailed26574
	jmp UpdateControl_elsedoneblock26511
UpdateControl_ConditionalTrueBlock26509: ;Main true block ;keep 
	; LineNumber: 2876
	; LineNumber: 2877
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed26608
	jmp UpdateControl_ConditionalTrueBlock26577
UpdateControl_localfailed26608
	jmp UpdateControl_elseblock26578
UpdateControl_ConditionalTrueBlock26577: ;Main true block ;keep 
	; LineNumber: 2876
	; LineNumber: 2879
	lda #<sndSwim
	ldy #>sndSwim
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2879
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2879
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2881
	jmp UpdateControl_elsedoneblock26579
UpdateControl_elseblock26578
	; LineNumber: 2880
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_elseblock26613
UpdateControl_ConditionalTrueBlock26612: ;Main true block ;keep 
	; LineNumber: 2881
	; LineNumber: 2883
	lda #<sndJump
	ldy #>sndJump
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2883
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2883
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2885
	jmp UpdateControl_elsedoneblock26614
UpdateControl_elseblock26613
	; LineNumber: 2884
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed26634
	jmp UpdateControl_ConditionalTrueBlock26629
UpdateControl_localfailed26634: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_elseblock26630
UpdateControl_ConditionalTrueBlock26629: ;Main true block ;keep 
	; LineNumber: 2884
	; LineNumber: 2887
	lda #<sndLadder
	ldy #>sndLadder
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2887
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2887
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2889
	jmp UpdateControl_elsedoneblock26631
UpdateControl_elseblock26630
	; LineNumber: 2888
	; LineNumber: 2891
	lda #<sndStep
	ldy #>sndStep
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2891
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2891
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2892
UpdateControl_elsedoneblock26631
UpdateControl_elsedoneblock26614
UpdateControl_elsedoneblock26579
	; LineNumber: 2893
UpdateControl_elsedoneblock26511
	; LineNumber: 2896
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed27340
	jmp UpdateControl_ConditionalTrueBlock26638
UpdateControl_localfailed27340
	jmp UpdateControl_elseblock26639
UpdateControl_ConditionalTrueBlock26638: ;Main true block ;keep 
	; LineNumber: 2896
	; LineNumber: 2897
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
	; LineNumber: 2898
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27345
UpdateControl_ConditionalTrueBlock27343: ;Main true block ;keep 
	; LineNumber: 2897
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27345
	; LineNumber: 2899
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
	; LineNumber: 2900
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2901
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2903
	jmp UpdateControl_elsedoneblock26640
UpdateControl_elseblock26639
	; LineNumber: 2902
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed27696
	jmp UpdateControl_ConditionalTrueBlock27350
UpdateControl_localfailed27696
	jmp UpdateControl_elseblock27351
UpdateControl_ConditionalTrueBlock27350: ;Main true block ;keep 
	; LineNumber: 2903
	; LineNumber: 2904
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
	; LineNumber: 2905
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27701
UpdateControl_ConditionalTrueBlock27699: ;Main true block ;keep 
	; LineNumber: 2904
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27701
	; LineNumber: 2906
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
	; LineNumber: 2907
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2908
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2910
	jmp UpdateControl_elsedoneblock27352
UpdateControl_elseblock27351
	; LineNumber: 2909
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_localfailed27874
	jmp UpdateControl_ConditionalTrueBlock27706
UpdateControl_localfailed27874
	jmp UpdateControl_elseblock27707
UpdateControl_ConditionalTrueBlock27706: ;Main true block ;keep 
	; LineNumber: 2910
	; LineNumber: 2911
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
	; LineNumber: 2912
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
	; LineNumber: 2913
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27879
UpdateControl_ConditionalTrueBlock27877: ;Main true block ;keep 
	; LineNumber: 2912
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27879
	; LineNumber: 2914
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27885
UpdateControl_ConditionalTrueBlock27883: ;Main true block ;keep 
	; LineNumber: 2913
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27885
	; LineNumber: 2915
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
	; LineNumber: 2916
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2917
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2919
	jmp UpdateControl_elsedoneblock27708
UpdateControl_elseblock27707
	; LineNumber: 2918
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed27966
	jmp UpdateControl_ConditionalTrueBlock27890
UpdateControl_localfailed27966
	jmp UpdateControl_elseblock27891
UpdateControl_ConditionalTrueBlock27890: ;Main true block ;keep 
	; LineNumber: 2919
	; LineNumber: 2920
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
	; LineNumber: 2921
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
	; LineNumber: 2922
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27971
UpdateControl_ConditionalTrueBlock27969: ;Main true block ;keep 
	; LineNumber: 2921
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27971
	; LineNumber: 2923
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock27977
UpdateControl_ConditionalTrueBlock27975: ;Main true block ;keep 
	; LineNumber: 2922
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock27977
	; LineNumber: 2924
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
	; LineNumber: 2925
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2926
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2928
	jmp UpdateControl_elsedoneblock27892
UpdateControl_elseblock27891
	; LineNumber: 2927
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed28012
	jmp UpdateControl_ConditionalTrueBlock27982
UpdateControl_localfailed28012
	jmp UpdateControl_elseblock27983
UpdateControl_ConditionalTrueBlock27982: ;Main true block ;keep 
	; LineNumber: 2928
	; LineNumber: 2929
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
	; LineNumber: 2930
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28017
UpdateControl_ConditionalTrueBlock28015: ;Main true block ;keep 
	; LineNumber: 2929
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28017
	; LineNumber: 2931
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
	; LineNumber: 2932
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2933
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2935
	jmp UpdateControl_elsedoneblock27984
UpdateControl_elseblock27983
	; LineNumber: 2934
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed28032
	jmp UpdateControl_ConditionalTrueBlock28022
UpdateControl_localfailed28032
	jmp UpdateControl_elsedoneblock28024
UpdateControl_ConditionalTrueBlock28022: ;Main true block ;keep 
	; LineNumber: 2935
	; LineNumber: 2936
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
	; LineNumber: 2937
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28037
UpdateControl_ConditionalTrueBlock28035: ;Main true block ;keep 
	; LineNumber: 2936
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_elsedoneblock28037
	; LineNumber: 2938
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
	; LineNumber: 2939
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2940
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2941
UpdateControl_elsedoneblock28024
UpdateControl_elsedoneblock27984
UpdateControl_elsedoneblock27892
UpdateControl_elsedoneblock27708
UpdateControl_elsedoneblock27352
UpdateControl_elsedoneblock26640
	; LineNumber: 2942
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_elsedoneblock28043
UpdateControl_ConditionalTrueBlock28041: ;Main true block ;keep 
	; LineNumber: 2941
	; LineNumber: 2943
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_id
	jsr CycleAnimation
	; LineNumber: 2944
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
	; LineNumber: 2945
UpdateControl_elsedoneblock28043
	; LineNumber: 2946
	rts
end_procedure_UpdateControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdatePhysics
	;    Procedure type : User-defined procedure
	; LineNumber: 2959
	; LineNumber: 2950
localVariable_UpdatePhysics_fall	dc.b	0
	; LineNumber: 2950
localVariable_UpdatePhysics_fallDown	dc.b	0
	; LineNumber: 2950
localVariable_UpdatePhysics_fallLeftDown	dc.b	0
	; LineNumber: 2950
localVariable_UpdatePhysics_fallRightDown	dc.b	0
	; LineNumber: 2951
localVariable_UpdatePhysics_colObj	dc.b	0
	; LineNumber: 2951
localVariable_UpdatePhysics_eraseObj	dc.b	0
	; LineNumber: 2951
localVariable_UpdatePhysics_destroyObj	dc.b	0
	; LineNumber: 2952
localVariable_UpdatePhysics_oldx	dc.b	$ff
	; LineNumber: 2952
localVariable_UpdatePhysics_oldy	dc.b	$ff
	; LineNumber: 2952
localVariable_UpdatePhysics_newx	dc.b	$ff
	; LineNumber: 2952
localVariable_UpdatePhysics_newy	dc.b	$ff
	; LineNumber: 2953
localVariable_UpdatePhysics_gravity	dc.b	0
	; LineNumber: 2954
localVariable_UpdatePhysics_shift	dc.w	0
	; LineNumber: 2955
localVariable_UpdatePhysics_shiftDir	dc.b	0
	; LineNumber: 2956
localVariable_UpdatePhysics_doPhys	dc.b	0
	; LineNumber: 2958
localVariable_UpdatePhysics_controlId	dc.b	0
	; LineNumber: 2948
localVariable_UpdatePhysics_id	dc.b	0
UpdatePhysics_block28046
UpdatePhysics
	; LineNumber: 2960
	
; //	c:boolean;
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_gravity
	; LineNumber: 2961
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	; LineNumber: 2962
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	; LineNumber: 2963
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
	; LineNumber: 2964
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 2965
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_doPhys
	; LineNumber: 2966
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_controlId
	; LineNumber: 2971
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_b_physFallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed45278
	jmp UpdatePhysics_ConditionalTrueBlock28048
UpdatePhysics_localfailed45278
	jmp UpdatePhysics_elsedoneblock28050
UpdatePhysics_ConditionalTrueBlock28048: ;Main true block ;keep 
	; LineNumber: 2971
	; LineNumber: 2972
	
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
	; LineNumber: 2973
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_localfailed45312
	jmp UpdatePhysics_ConditionalTrueBlock45281
UpdatePhysics_localfailed45312
	jmp UpdatePhysics_elseblock45282
UpdatePhysics_ConditionalTrueBlock45281: ;Main true block ;keep 
	; LineNumber: 2972
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	jmp UpdatePhysics_elsedoneblock45283
UpdatePhysics_elseblock45282
	; LineNumber: 2973
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
	bne UpdatePhysics_elseblock45317
UpdatePhysics_localsuccess45330: ;keep
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
	bne UpdatePhysics_elseblock45317
UpdatePhysics_localsuccess45329: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock45317
UpdatePhysics_ConditionalTrueBlock45316: ;Main true block ;keep 
	; LineNumber: 2973
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	jmp UpdatePhysics_elsedoneblock45318
UpdatePhysics_elseblock45317
	; LineNumber: 2974
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
	bne UpdatePhysics_elsedoneblock45336
UpdatePhysics_localsuccess45339: ;keep
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
	bne UpdatePhysics_elsedoneblock45336
UpdatePhysics_localsuccess45338: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elsedoneblock45336
UpdatePhysics_ConditionalTrueBlock45334: ;Main true block ;keep 
	; LineNumber: 2974
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
UpdatePhysics_elsedoneblock45336
UpdatePhysics_elsedoneblock45318
UpdatePhysics_elsedoneblock45283
	; LineNumber: 2976
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_localfailed53560
	jmp UpdatePhysics_ConditionalTrueBlock45342
UpdatePhysics_localfailed53560
	jmp UpdatePhysics_elsedoneblock45344
UpdatePhysics_ConditionalTrueBlock45342: ;Main true block ;keep 
	; LineNumber: 2976
	; LineNumber: 2977
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock53565
UpdatePhysics_localsuccess53567: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_elsedoneblock53565
UpdatePhysics_ConditionalTrueBlock53563: ;Main true block ;keep 
	; LineNumber: 2976
	; LineNumber: 2979
	lda #<sndFall
	ldy #>sndFall
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 2979
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 2979
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 2980
UpdatePhysics_elsedoneblock53565
	; LineNumber: 2981
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shiftDir
	; LineNumber: 2982
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
	bne UpdatePhysics_localfailed57674
	jmp UpdatePhysics_ConditionalTrueBlock53570
UpdatePhysics_localfailed57674
	jmp UpdatePhysics_elsedoneblock53572
UpdatePhysics_ConditionalTrueBlock53570: ;Main true block ;keep 
	; LineNumber: 2981
	; LineNumber: 2983
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
	bne UpdatePhysics_localfailed59728
	jmp UpdatePhysics_ConditionalTrueBlock57677
UpdatePhysics_localfailed59728: ;keep
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
	beq UpdatePhysics_localfailed59727
	jmp UpdatePhysics_ConditionalTrueBlock57677
UpdatePhysics_localfailed59727
	jmp UpdatePhysics_elsedoneblock57679
UpdatePhysics_ConditionalTrueBlock57677: ;Main true block ;keep 
	; LineNumber: 2984
	; LineNumber: 2985
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed60754
UpdatePhysics_localsuccess60755: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed60754
	jmp UpdatePhysics_ConditionalTrueBlock59731
UpdatePhysics_localfailed60754
	jmp UpdatePhysics_elseblock59732
UpdatePhysics_ConditionalTrueBlock59731: ;Main true block ;keep 
	; LineNumber: 2984
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock59733
UpdatePhysics_elseblock59732
	; LineNumber: 2985
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed61268
UpdatePhysics_localsuccess61269: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed61268
	jmp UpdatePhysics_ConditionalTrueBlock60759
UpdatePhysics_localfailed61268
	jmp UpdatePhysics_elseblock60760
UpdatePhysics_ConditionalTrueBlock60759: ;Main true block ;keep 
	; LineNumber: 2985
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock60761
UpdatePhysics_elseblock60760
	; LineNumber: 2986
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed61525
UpdatePhysics_localsuccess61526: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_localfailed61525
	jmp UpdatePhysics_ConditionalTrueBlock61273
UpdatePhysics_localfailed61525
	jmp UpdatePhysics_elseblock61274
UpdatePhysics_ConditionalTrueBlock61273: ;Main true block ;keep 
	; LineNumber: 2986
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61275
UpdatePhysics_elseblock61274
	; LineNumber: 2987
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_elseblock61531
UpdatePhysics_localsuccess61654: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_elseblock61531
UpdatePhysics_ConditionalTrueBlock61530: ;Main true block ;keep 
	; LineNumber: 2987
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61532
UpdatePhysics_elseblock61531
	; LineNumber: 2988
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61659
UpdatePhysics_localsuccess61718: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_elseblock61659
UpdatePhysics_ConditionalTrueBlock61658: ;Main true block ;keep 
	; LineNumber: 2988
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61660
UpdatePhysics_elseblock61659
	; LineNumber: 2989
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61723
UpdatePhysics_localsuccess61750: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elseblock61723
UpdatePhysics_ConditionalTrueBlock61722: ;Main true block ;keep 
	; LineNumber: 2989
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61724
UpdatePhysics_elseblock61723
	; LineNumber: 2990
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elseblock61755
UpdatePhysics_localsuccess61766: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_elseblock61755
UpdatePhysics_ConditionalTrueBlock61754: ;Main true block ;keep 
	; LineNumber: 2990
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_elsedoneblock61756
UpdatePhysics_elseblock61755
	; LineNumber: 2991
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_elsedoneblock61772
UpdatePhysics_localsuccess61774: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_elsedoneblock61772
UpdatePhysics_ConditionalTrueBlock61770: ;Main true block ;keep 
	; LineNumber: 2991
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
UpdatePhysics_elsedoneblock61772
UpdatePhysics_elsedoneblock61756
UpdatePhysics_elsedoneblock61724
UpdatePhysics_elsedoneblock61660
UpdatePhysics_elsedoneblock61532
UpdatePhysics_elsedoneblock61275
UpdatePhysics_elsedoneblock60761
UpdatePhysics_elsedoneblock59733
	; LineNumber: 2993
UpdatePhysics_elsedoneblock57679
	; LineNumber: 2995
UpdatePhysics_elsedoneblock53572
	; LineNumber: 2996
UpdatePhysics_elsedoneblock45344
	; LineNumber: 2998
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallDown
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed61872
	jmp UpdatePhysics_ConditionalTrueBlock61777
UpdatePhysics_localfailed61872
	jmp UpdatePhysics_elseblock61778
UpdatePhysics_ConditionalTrueBlock61777: ;Main true block ;keep 
	; LineNumber: 2998
	; LineNumber: 2999
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 3000
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3001
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61877
UpdatePhysics_ConditionalTrueBlock61875: ;Main true block ;keep 
	; LineNumber: 3001
	; LineNumber: 3002
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3003
UpdatePhysics_elsedoneblock61877
	; LineNumber: 3005
	jmp UpdatePhysics_elsedoneblock61779
UpdatePhysics_elseblock61778
	; LineNumber: 3004
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallLeftDown
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock61883
UpdatePhysics_ConditionalTrueBlock61882: ;Main true block ;keep 
	; LineNumber: 3005
	; LineNumber: 3006
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3007
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61929
UpdatePhysics_ConditionalTrueBlock61927: ;Main true block ;keep 
	; LineNumber: 3007
	; LineNumber: 3008
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3009
UpdatePhysics_elsedoneblock61929
	; LineNumber: 3011
	jmp UpdatePhysics_elsedoneblock61884
UpdatePhysics_elseblock61883
	; LineNumber: 3010
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallRightDown
	; cmp #$00 ignored
	beq UpdatePhysics_elseblock61935
UpdatePhysics_ConditionalTrueBlock61934: ;Main true block ;keep 
	; LineNumber: 3011
	; LineNumber: 3012
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3013
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61955
UpdatePhysics_ConditionalTrueBlock61953: ;Main true block ;keep 
	; LineNumber: 3013
	; LineNumber: 3014
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3015
UpdatePhysics_elsedoneblock61955
	; LineNumber: 3016
	jmp UpdatePhysics_elsedoneblock61936
UpdatePhysics_elseblock61935
	; LineNumber: 3017
	; LineNumber: 3018
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock61962
UpdatePhysics_ConditionalTrueBlock61960: ;Main true block ;keep 
	; LineNumber: 3018
	; LineNumber: 3019
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3020
UpdatePhysics_elsedoneblock61962
	; LineNumber: 3021
UpdatePhysics_elsedoneblock61936
UpdatePhysics_elsedoneblock61884
UpdatePhysics_elsedoneblock61779
	; LineNumber: 3023
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldx
	; LineNumber: 3024
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldy
	; LineNumber: 3025
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3026
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed62234
	jmp UpdatePhysics_ConditionalTrueBlock61966
UpdatePhysics_localfailed62234
	jmp UpdatePhysics_elseblock61967
UpdatePhysics_ConditionalTrueBlock61966: ;Main true block ;keep 
	; LineNumber: 3026
	; LineNumber: 3027
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
	; LineNumber: 3028
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3029
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3031
	jmp UpdatePhysics_elsedoneblock61968
UpdatePhysics_elseblock61967
	; LineNumber: 3030
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdatePhysics_localfailed62370
	jmp UpdatePhysics_ConditionalTrueBlock62238
UpdatePhysics_localfailed62370
	jmp UpdatePhysics_elseblock62239
UpdatePhysics_ConditionalTrueBlock62238: ;Main true block ;keep 
	; LineNumber: 3031
	; LineNumber: 3032
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
	jmp UpdatePhysics_elsedoneblock62240
UpdatePhysics_elseblock62239
	; LineNumber: 3035
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdatePhysics_localfailed62438
	jmp UpdatePhysics_ConditionalTrueBlock62374
UpdatePhysics_localfailed62438
	jmp UpdatePhysics_elseblock62375
UpdatePhysics_ConditionalTrueBlock62374: ;Main true block ;keep 
	; LineNumber: 3035
	; LineNumber: 3037
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
	jmp UpdatePhysics_elsedoneblock62376
UpdatePhysics_elseblock62375
	; LineNumber: 3040
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed62472
	jmp UpdatePhysics_ConditionalTrueBlock62442
UpdatePhysics_localfailed62472
	jmp UpdatePhysics_elseblock62443
UpdatePhysics_ConditionalTrueBlock62442: ;Main true block ;keep 
	; LineNumber: 3040
	; LineNumber: 3042
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
	; LineNumber: 3045
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
	; LineNumber: 3047
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3047
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3047
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3048
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62477
UpdatePhysics_ConditionalTrueBlock62475: ;Main true block ;keep 
	; LineNumber: 3047
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_elsedoneblock62477
	; LineNumber: 3050
	jmp UpdatePhysics_elsedoneblock62444
UpdatePhysics_elseblock62443
	; LineNumber: 3049
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed62492
	jmp UpdatePhysics_ConditionalTrueBlock62482
UpdatePhysics_localfailed62492
	jmp UpdatePhysics_elsedoneblock62484
UpdatePhysics_ConditionalTrueBlock62482: ;Main true block ;keep 
	; LineNumber: 3049
	; LineNumber: 3051
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
	; LineNumber: 3052
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3053
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3054
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
	; LineNumber: 3056
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3056
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3056
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3057
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62497
UpdatePhysics_ConditionalTrueBlock62495: ;Main true block ;keep 
	; LineNumber: 3056
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_elsedoneblock62497
	; LineNumber: 3058
UpdatePhysics_elsedoneblock62484
UpdatePhysics_elsedoneblock62444
UpdatePhysics_elsedoneblock62376
UpdatePhysics_elsedoneblock62240
UpdatePhysics_elsedoneblock61968
	; LineNumber: 3060
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_elsedoneblock62503
UpdatePhysics_ConditionalTrueBlock62501: ;Main true block ;keep 
	; LineNumber: 3059
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
UpdatePhysics_elsedoneblock62503
	; LineNumber: 3061
UpdatePhysics_elsedoneblock28050
	; LineNumber: 3062
	rts
end_procedure_UpdatePhysics
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFloater
	;    Procedure type : User-defined procedure
	; LineNumber: 3071
	; LineNumber: 3066
localVariable_UpdateFloater_waterId	dc.b	0
	; LineNumber: 3067
localVariable_UpdateFloater_colObj	dc.b	0
	; LineNumber: 3067
localVariable_UpdateFloater_eraseObj	dc.b	0
	; LineNumber: 3067
localVariable_UpdateFloater_z	dc.b	0
	; LineNumber: 3068
localVariable_UpdateFloater_oldx	dc.b	0
	; LineNumber: 3068
localVariable_UpdateFloater_oldy	dc.b	0
	; LineNumber: 3068
localVariable_UpdateFloater_newx	dc.b	0
	; LineNumber: 3068
localVariable_UpdateFloater_newy	dc.b	0
	; LineNumber: 3068
localVariable_UpdateFloater_moveDir	dc.b	0
	; LineNumber: 3069
localVariable_UpdateFloater_shift	dc.w	0
	; LineNumber: 3070
localVariable_UpdateFloater_floatDir	dc.b	0
	; LineNumber: 3064
localVariable_UpdateFloater_id	dc.b	0
UpdateFloater_block62506
UpdateFloater
	; LineNumber: 3072
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
UpdateFloater_val_var63200 = $88
	sta UpdateFloater_val_var63200
	lda globaltime
	sec
UpdateFloater_modulo63201
	sbc UpdateFloater_val_var63200
	bcs UpdateFloater_modulo63201
	adc UpdateFloater_val_var63200
	; cmp #$00 ignored
	bne UpdateFloater_localfailed63199
	jmp UpdateFloater_ConditionalTrueBlock62508
UpdateFloater_localfailed63199
	jmp UpdateFloater_elsedoneblock62510
UpdateFloater_ConditionalTrueBlock62508: ;Main true block ;keep 
	; LineNumber: 3072
	; LineNumber: 3073
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
	; LineNumber: 3074
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
	; LineNumber: 3075
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_waterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63206
UpdateFloater_ConditionalTrueBlock63204: ;Main true block ;keep 
	; LineNumber: 3074
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_waterId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
UpdateFloater_elsedoneblock63206
	; LineNumber: 3076
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_localfailed63551
	jmp UpdateFloater_ConditionalTrueBlock63210
UpdateFloater_localfailed63551
	jmp UpdateFloater_elsedoneblock63212
UpdateFloater_ConditionalTrueBlock63210: ;Main true block ;keep 
	; LineNumber: 3076
	; LineNumber: 3077
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
	; LineNumber: 3078
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3079
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3080
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3081
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_z
	; LineNumber: 3082
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
	; LineNumber: 3083
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
	; LineNumber: 3084
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63559
	jmp UpdateFloater_localsuccess63558
UpdateFloater_localfailed63559: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63556
UpdateFloater_localsuccess63558: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_elsedoneblock63556
UpdateFloater_ConditionalTrueBlock63554: ;Main true block ;keep 
	; LineNumber: 3083
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63556
	; LineNumber: 3086
	
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
	; LineNumber: 3087
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
	; LineNumber: 3088
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63567
	jmp UpdateFloater_localsuccess63566
UpdateFloater_localfailed63567: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63564
UpdateFloater_localsuccess63566: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_elsedoneblock63564
UpdateFloater_ConditionalTrueBlock63562: ;Main true block ;keep 
	; LineNumber: 3087
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63564
	; LineNumber: 3090
	
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
	; LineNumber: 3091
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
	; LineNumber: 3092
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63575
	jmp UpdateFloater_localsuccess63574
UpdateFloater_localfailed63575: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63572
UpdateFloater_localsuccess63574: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_elsedoneblock63572
UpdateFloater_ConditionalTrueBlock63570: ;Main true block ;keep 
	; LineNumber: 3091
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63572
	; LineNumber: 3094
	
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
	; LineNumber: 3095
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
	; LineNumber: 3096
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63583
	jmp UpdateFloater_localsuccess63582
UpdateFloater_localfailed63583: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63580
UpdateFloater_localsuccess63582: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_elsedoneblock63580
UpdateFloater_ConditionalTrueBlock63578: ;Main true block ;keep 
	; LineNumber: 3095
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_elsedoneblock63580
	; LineNumber: 3098
	
; //TODO: AnimationSwimR
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldx
	; LineNumber: 3099
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldy
	; LineNumber: 3101
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_localfailed63736
	jmp UpdateFloater_ConditionalTrueBlock63586
UpdateFloater_localfailed63736
	jmp UpdateFloater_elseblock63587
UpdateFloater_ConditionalTrueBlock63586: ;Main true block ;keep 
	; LineNumber: 3101
	; LineNumber: 3102
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
	; LineNumber: 3103
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63741
UpdateFloater_ConditionalTrueBlock63739: ;Main true block ;keep 
	; LineNumber: 3102
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63741
	; LineNumber: 3104
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
	; LineNumber: 3105
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3106
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3108
	jmp UpdateFloater_elsedoneblock63588
UpdateFloater_elseblock63587
	; LineNumber: 3107
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_localfailed63816
	jmp UpdateFloater_ConditionalTrueBlock63746
UpdateFloater_localfailed63816
	jmp UpdateFloater_elseblock63747
UpdateFloater_ConditionalTrueBlock63746: ;Main true block ;keep 
	; LineNumber: 3108
	; LineNumber: 3109
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
	; LineNumber: 3110
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63821
UpdateFloater_ConditionalTrueBlock63819: ;Main true block ;keep 
	; LineNumber: 3109
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63821
	; LineNumber: 3111
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
	; LineNumber: 3112
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3113
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3116
	jmp UpdateFloater_elsedoneblock63748
UpdateFloater_elseblock63747
	; LineNumber: 3115
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_localfailed63856
	jmp UpdateFloater_ConditionalTrueBlock63826
UpdateFloater_localfailed63856
	jmp UpdateFloater_elseblock63827
UpdateFloater_ConditionalTrueBlock63826: ;Main true block ;keep 
	; LineNumber: 3116
	; LineNumber: 3117
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
	; LineNumber: 3118
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63861
UpdateFloater_ConditionalTrueBlock63859: ;Main true block ;keep 
	; LineNumber: 3117
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63861
	; LineNumber: 3119
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
	; LineNumber: 3120
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3121
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3123
	jmp UpdateFloater_elsedoneblock63828
UpdateFloater_elseblock63827
	; LineNumber: 3122
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_localfailed63876
	jmp UpdateFloater_ConditionalTrueBlock63866
UpdateFloater_localfailed63876
	jmp UpdateFloater_elsedoneblock63868
UpdateFloater_ConditionalTrueBlock63866: ;Main true block ;keep 
	; LineNumber: 3123
	; LineNumber: 3124
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
	; LineNumber: 3125
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63881
UpdateFloater_ConditionalTrueBlock63879: ;Main true block ;keep 
	; LineNumber: 3124
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_elsedoneblock63881
	; LineNumber: 3126
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3127
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3128
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3129
UpdateFloater_elsedoneblock63868
UpdateFloater_elsedoneblock63828
UpdateFloater_elsedoneblock63748
UpdateFloater_elsedoneblock63588
	; LineNumber: 3131
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_elsedoneblock63887
UpdateFloater_ConditionalTrueBlock63885: ;Main true block ;keep 
	; LineNumber: 3130
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
UpdateFloater_elsedoneblock63887
	; LineNumber: 3132
UpdateFloater_elsedoneblock63212
	; LineNumber: 3133
UpdateFloater_elsedoneblock62510
	; LineNumber: 3134
	rts
end_procedure_UpdateFloater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentWater
	;    Procedure type : User-defined procedure
	; LineNumber: 3139
	; LineNumber: 3138
localVariable_IncCurrentWater_laserEmitId	dc.b	0
	; LineNumber: 3136
localVariable_IncCurrentWater_id	dc.b	0
IncCurrentWater_block63890
IncCurrentWater
	; LineNumber: 3140
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_laserEmitId
	; LineNumber: 3141
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentWater_elsedoneblock63894
IncCurrentWater_ConditionalTrueBlock63892: ;Main true block ;keep 
	; LineNumber: 3141
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentWater_elsedoneblock63894
	; LineNumber: 3143
	rts
end_procedure_IncCurrentWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 3151
	; LineNumber: 3148
localVariable_UpdateFontaine_id1	dc.b	0
	; LineNumber: 3148
localVariable_UpdateFontaine_i	dc.b	0
	; LineNumber: 3148
localVariable_UpdateFontaine_x	dc.b	0
	; LineNumber: 3148
localVariable_UpdateFontaine_y	dc.b	0
	; LineNumber: 3149
localVariable_UpdateFontaine_pos	dc.b	0
	; LineNumber: 3149
localVariable_UpdateFontaine_id2	dc.b	0
	; LineNumber: 3150
localVariable_UpdateFontaine_laserEmitId	dc.b	0
	; LineNumber: 3146
localVariable_UpdateFontaine_id	dc.b	0
UpdateFontaine_block63897
UpdateFontaine
	; LineNumber: 3152
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_laserEmitId
	; LineNumber: 3153
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3154
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFontaine_localfailed64045
	jmp UpdateFontaine_ConditionalTrueBlock63899
UpdateFontaine_localfailed64045
	jmp UpdateFontaine_elseblock63900
UpdateFontaine_ConditionalTrueBlock63899: ;Main true block ;keep 
	; LineNumber: 3154
	; LineNumber: 3155
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateFontaine_elsedoneblock64050
UpdateFontaine_ConditionalTrueBlock64048: ;Main true block ;keep 
	; LineNumber: 3154
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64050
	; LineNumber: 3156
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3157
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
	; LineNumber: 3158
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3159
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3161
	jmp UpdateFontaine_elsedoneblock63901
UpdateFontaine_elseblock63900
	; LineNumber: 3160
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFontaine_localfailed64123
	jmp UpdateFontaine_ConditionalTrueBlock64055
UpdateFontaine_localfailed64123
	jmp UpdateFontaine_elseblock64056
UpdateFontaine_ConditionalTrueBlock64055: ;Main true block ;keep 
	; LineNumber: 3161
	; LineNumber: 3162
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateFontaine_elsedoneblock64128
UpdateFontaine_ConditionalTrueBlock64126: ;Main true block ;keep 
	; LineNumber: 3161
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64128
	; LineNumber: 3163
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3164
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
	; LineNumber: 3165
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3166
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3168
	jmp UpdateFontaine_elsedoneblock64057
UpdateFontaine_elseblock64056
	; LineNumber: 3167
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFontaine_localfailed64162
	jmp UpdateFontaine_ConditionalTrueBlock64133
UpdateFontaine_localfailed64162
	jmp UpdateFontaine_elseblock64134
UpdateFontaine_ConditionalTrueBlock64133: ;Main true block ;keep 
	; LineNumber: 3168
	; LineNumber: 3169
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateFontaine_elsedoneblock64167
UpdateFontaine_ConditionalTrueBlock64165: ;Main true block ;keep 
	; LineNumber: 3168
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64167
	; LineNumber: 3170
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3171
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
	; LineNumber: 3172
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3173
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3175
	jmp UpdateFontaine_elsedoneblock64135
UpdateFontaine_elseblock64134
	; LineNumber: 3174
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFontaine_elsedoneblock64174
UpdateFontaine_ConditionalTrueBlock64172: ;Main true block ;keep 
	; LineNumber: 3175
	; LineNumber: 3176
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateFontaine_elsedoneblock64186
UpdateFontaine_ConditionalTrueBlock64184: ;Main true block ;keep 
	; LineNumber: 3175
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64186
	; LineNumber: 3177
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3178
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
	; LineNumber: 3179
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3180
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3181
UpdateFontaine_elsedoneblock64174
UpdateFontaine_elsedoneblock64135
UpdateFontaine_elsedoneblock64057
UpdateFontaine_elsedoneblock63901
	; LineNumber: 3182
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFontaine_elsedoneblock64192
UpdateFontaine_ConditionalTrueBlock64190: ;Main true block ;keep 
	; LineNumber: 3181
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_elsedoneblock64192
	; LineNumber: 3183
	rts
end_procedure_UpdateFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3188
	; LineNumber: 3187
localVariable_IncCurrentLaser_laserEmitId	dc.b	0
	; LineNumber: 3185
localVariable_IncCurrentLaser_id	dc.b	0
IncCurrentLaser_block64195
IncCurrentLaser
	; LineNumber: 3189
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_laserEmitId
	; LineNumber: 3190
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentLaser_elsedoneblock64199
IncCurrentLaser_ConditionalTrueBlock64197: ;Main true block ;keep 
	; LineNumber: 3190
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentLaser_elsedoneblock64199
	; LineNumber: 3192
	rts
end_procedure_IncCurrentLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcFireExitDir
	;    Procedure type : User-defined procedure
	; LineNumber: 3197
	; LineNumber: 3196
localVariable_CalcFireExitDir_ret	dc.b	0
	; LineNumber: 3194
localVariable_CalcFireExitDir_xdir	dc.b	0
	; LineNumber: 3194
localVariable_CalcFireExitDir_ydir	dc.b	0
CalcFireExitDir_block64202
CalcFireExitDir
	; LineNumber: 3198
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_elseblock64205
CalcFireExitDir_localsuccess64272: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64205
CalcFireExitDir_ConditionalTrueBlock64204: ;Main true block ;keep 
	; LineNumber: 3198
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64206
CalcFireExitDir_elseblock64205
	; LineNumber: 3199
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_elseblock64277
CalcFireExitDir_localsuccess64308: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64277
CalcFireExitDir_ConditionalTrueBlock64276: ;Main true block ;keep 
	; LineNumber: 3200
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64278
CalcFireExitDir_elseblock64277
	; LineNumber: 3201
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64313
CalcFireExitDir_localsuccess64326: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_elseblock64313
CalcFireExitDir_ConditionalTrueBlock64312: ;Main true block ;keep 
	; LineNumber: 3202
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64314
CalcFireExitDir_elseblock64313
	; LineNumber: 3203
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_elseblock64331
CalcFireExitDir_localsuccess64335: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_elseblock64331
CalcFireExitDir_ConditionalTrueBlock64330: ;Main true block ;keep 
	; LineNumber: 3204
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_elsedoneblock64332
CalcFireExitDir_elseblock64331
	; LineNumber: 3206
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
CalcFireExitDir_elsedoneblock64332
CalcFireExitDir_elsedoneblock64314
CalcFireExitDir_elsedoneblock64278
CalcFireExitDir_elsedoneblock64206
	; LineNumber: 3209
	; LineNumber: 3209
	lda localVariable_CalcFireExitDir_ret
	rts
end_procedure_CalcFireExitDir
	; NodeProcedureDecl 3
	; ***********  Defining procedure : FireLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3227
	; LineNumber: 3213
localVariable_FireLaser_laserEmitId	dc.b	0
	; LineNumber: 3214
localVariable_FireLaser_laserId	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_collideId	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_collideId2	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_mirrorId	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_destroyAbleId	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_portalId	dc.b	0
	; LineNumber: 3215
localVariable_FireLaser_waterId	dc.b	0
	; LineNumber: 3216
localVariable_FireLaser_collide	dc.b	0
	; LineNumber: 3217
localVariable_FireLaser_controlId	dc.b	0
	; LineNumber: 3218
localVariable_FireLaser_laserx	dc.b	0
	; LineNumber: 3218
localVariable_FireLaser_lasery	dc.b	0
	; LineNumber: 3218
localVariable_FireLaser_lastx	dc.b	0
	; LineNumber: 3218
localVariable_FireLaser_lasty	dc.b	0
	; LineNumber: 3219
localVariable_FireLaser_countLaser	dc.b	0
	; LineNumber: 3220
localVariable_FireLaser_turn	dc.b	0
	; LineNumber: 3221
localVariable_FireLaser_targetPortal	dc.b	0
	; LineNumber: 3222
localVariable_FireLaser_dir	dc.b	0
	; LineNumber: 3223
localVariable_FireLaser_portalIdMove	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_tempx	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_tempy	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_tempx2	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_tempy2	dc.b	0
	; LineNumber: 3224
localVariable_FireLaser_pos	dc.b	0
	; LineNumber: 3225
localVariable_FireLaser_laserType	dc.b	0
	; LineNumber: 3226
localVariable_FireLaser_collideControlId	dc.b	0
	; LineNumber: 3211
localVariable_FireLaser_id	dc.b	0
	; LineNumber: 3211
localVariable_FireLaser_xpos	dc.b	0
	; LineNumber: 3211
localVariable_FireLaser_ypos	dc.b	0
	; LineNumber: 3211
localVariable_FireLaser_xdir	dc.b	0
	; LineNumber: 3211
localVariable_FireLaser_ydir	dc.b	0
FireLaser_block64338
FireLaser
	; LineNumber: 3229
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed118476
	jmp FireLaser_ConditionalTrueBlock64340
FireLaser_localfailed118476
	jmp FireLaser_elsedoneblock64342
FireLaser_ConditionalTrueBlock64340: ;Main true block ;keep 
	; LineNumber: 3229
	; LineNumber: 3230
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserEmitId
	; LineNumber: 3231
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
	; LineNumber: 3232
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserType
	; LineNumber: 3233
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
	bne FireLaser_elsedoneblock118481
FireLaser_ConditionalTrueBlock118479: ;Main true block ;keep 
	; LineNumber: 3233
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
FireLaser_elsedoneblock118481
	; LineNumber: 3235
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	; LineNumber: 3236
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3237
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3238
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3239
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3240
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_countLaser
	; LineNumber: 3241
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_elsedoneblock118487
FireLaser_localsuccess118489: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne FireLaser_elsedoneblock118487
FireLaser_ConditionalTrueBlock118485: ;Main true block ;keep 
	; LineNumber: 3241
	; LineNumber: 3243
	lda #<sndLaser
	ldy #>sndLaser
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3243
	lda #$ff
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3243
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3244
FireLaser_elsedoneblock118487
	; LineNumber: 3245
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
	; LineNumber: 3246
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
	; LineNumber: 3248
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock118494
FireLaser_localsuccess118496: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_elsedoneblock118494
FireLaser_ConditionalTrueBlock118492: ;Main true block ;keep 
	; LineNumber: 3247
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
FireLaser_elsedoneblock118494
	; LineNumber: 3249
FireLaser_while118498
FireLaser_loopstart118502
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	bne FireLaser_localfailed145265
FireLaser_localsuccess145266: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: GREATER
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_countLaser;keep
	bcc FireLaser_localfailed145265
	beq FireLaser_localfailed145265
	jmp FireLaser_ConditionalTrueBlock118499
FireLaser_localfailed145265
	jmp FireLaser_elsedoneblock118501
FireLaser_ConditionalTrueBlock118499: ;Main true block ;keep 
	; LineNumber: 3249
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
	beq FireLaser_localfailed158649
FireLaser_localsuccess158650: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed158649
	jmp FireLaser_ConditionalTrueBlock145269
FireLaser_localfailed158649
	jmp FireLaser_elseblock145270
FireLaser_ConditionalTrueBlock145269: ;Main true block ;keep 
	; LineNumber: 3252
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	jmp FireLaser_elsedoneblock145271
FireLaser_elseblock145270
	; LineNumber: 3254
	; LineNumber: 3255
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
	bne FireLaser_localfailed165342
	jmp FireLaser_ConditionalTrueBlock158654
FireLaser_localfailed165342
	jmp FireLaser_elsedoneblock158656
FireLaser_ConditionalTrueBlock158654: ;Main true block ;keep 
	; LineNumber: 3255
	; LineNumber: 3256
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserId
	; LineNumber: 3257
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed168571
	jmp FireLaser_ConditionalTrueBlock165345
FireLaser_localfailed168571
	jmp FireLaser_elsedoneblock165347
FireLaser_ConditionalTrueBlock165345: ;Main true block ;keep 
	; LineNumber: 3256
	; LineNumber: 3258
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_elseblock168575
FireLaser_localsuccess168586: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_elseblock168575
FireLaser_ConditionalTrueBlock168574: ;Main true block ;keep 
	; LineNumber: 3257
	lda #$74
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_elsedoneblock168576
FireLaser_elseblock168575
	; LineNumber: 3258
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock168592
FireLaser_localsuccess168594: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_elsedoneblock168592
FireLaser_ConditionalTrueBlock168590: ;Main true block ;keep 
	; LineNumber: 3258
	lda #$75
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock168592
FireLaser_elsedoneblock168576
	; LineNumber: 3260
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_elseblock168598
FireLaser_ConditionalTrueBlock168597: ;Main true block ;keep 
	; LineNumber: 3260
	; LineNumber: 3261
	lda #$8
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 3263
	jmp FireLaser_elsedoneblock168599
FireLaser_elseblock168598
	; LineNumber: 3263
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
FireLaser_elsedoneblock168599
	; LineNumber: 3265
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 3266
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 3267
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 3268
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3269
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3270
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 3271
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 3273
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3274
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed170175
	jmp FireLaser_ConditionalTrueBlock168605
FireLaser_localfailed170175
	jmp FireLaser_elsedoneblock168607
FireLaser_ConditionalTrueBlock168605: ;Main true block ;keep 
	; LineNumber: 3274
	; LineNumber: 3275
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_mirrorId
	lda objectList_gobject_gobject_mirrorTurn,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3277
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed170961
FireLaser_localsuccess170962: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed170961
	jmp FireLaser_ConditionalTrueBlock170178
FireLaser_localfailed170961
	jmp FireLaser_elseblock170179
FireLaser_ConditionalTrueBlock170178: ;Main true block ;keep 
	; LineNumber: 3277
	; LineNumber: 3278
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock170966
FireLaser_ConditionalTrueBlock170965: ;Main true block ;keep 
	; LineNumber: 3278
	; LineNumber: 3279
	
; // laser left
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3280
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3281
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3282
	jmp FireLaser_elsedoneblock170967
FireLaser_elseblock170966
	; LineNumber: 3282
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock170994
FireLaser_ConditionalTrueBlock170993: ;Main true block ;keep 
	; LineNumber: 3283
	; LineNumber: 3284
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3285
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3286
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3288
	jmp FireLaser_elsedoneblock170995
FireLaser_elseblock170994
	; LineNumber: 3287
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171009
FireLaser_ConditionalTrueBlock171007: ;Main true block ;keep 
	; LineNumber: 3287
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171009
FireLaser_elsedoneblock170995
FireLaser_elsedoneblock170967
	; LineNumber: 3290
	jmp FireLaser_elsedoneblock170180
FireLaser_elseblock170179
	; LineNumber: 3290
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed171379
FireLaser_localsuccess171380: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed171379
	jmp FireLaser_ConditionalTrueBlock171014
FireLaser_localfailed171379
	jmp FireLaser_elseblock171015
FireLaser_ConditionalTrueBlock171014: ;Main true block ;keep 
	; LineNumber: 3291
	; LineNumber: 3292
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171384
FireLaser_ConditionalTrueBlock171383: ;Main true block ;keep 
	; LineNumber: 3292
	; LineNumber: 3293
	
; // laser right
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3294
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3295
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3296
	jmp FireLaser_elsedoneblock171385
FireLaser_elseblock171384
	; LineNumber: 3296
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171412
FireLaser_ConditionalTrueBlock171411: ;Main true block ;keep 
	; LineNumber: 3297
	; LineNumber: 3298
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3299
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3300
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3302
	jmp FireLaser_elsedoneblock171413
FireLaser_elseblock171412
	; LineNumber: 3301
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171427
FireLaser_ConditionalTrueBlock171425: ;Main true block ;keep 
	; LineNumber: 3301
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171427
FireLaser_elsedoneblock171413
FireLaser_elsedoneblock171385
	; LineNumber: 3304
	jmp FireLaser_elsedoneblock171016
FireLaser_elseblock171015
	; LineNumber: 3304
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_localfailed171588
FireLaser_localsuccess171589: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed171588
	jmp FireLaser_ConditionalTrueBlock171432
FireLaser_localfailed171588
	jmp FireLaser_elseblock171433
FireLaser_ConditionalTrueBlock171432: ;Main true block ;keep 
	; LineNumber: 3305
	; LineNumber: 3306
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171593
FireLaser_ConditionalTrueBlock171592: ;Main true block ;keep 
	; LineNumber: 3306
	; LineNumber: 3307
	
; // laser up
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3308
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3309
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3310
	jmp FireLaser_elsedoneblock171594
FireLaser_elseblock171593
	; LineNumber: 3310
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171621
FireLaser_ConditionalTrueBlock171620: ;Main true block ;keep 
	; LineNumber: 3311
	; LineNumber: 3312
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3313
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3314
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3316
	jmp FireLaser_elsedoneblock171622
FireLaser_elseblock171621
	; LineNumber: 3315
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171636
FireLaser_ConditionalTrueBlock171634: ;Main true block ;keep 
	; LineNumber: 3315
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171636
FireLaser_elsedoneblock171622
FireLaser_elsedoneblock171594
	; LineNumber: 3318
	jmp FireLaser_elsedoneblock171434
FireLaser_elseblock171433
	; LineNumber: 3318
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock171643
FireLaser_localsuccess171693: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elsedoneblock171643
FireLaser_ConditionalTrueBlock171641: ;Main true block ;keep 
	; LineNumber: 3319
	; LineNumber: 3320
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171697
FireLaser_ConditionalTrueBlock171696: ;Main true block ;keep 
	; LineNumber: 3320
	; LineNumber: 3321
	
; // laser down
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3322
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3323
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3324
	jmp FireLaser_elsedoneblock171698
FireLaser_elseblock171697
	; LineNumber: 3324
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_elseblock171725
FireLaser_ConditionalTrueBlock171724: ;Main true block ;keep 
	; LineNumber: 3325
	; LineNumber: 3326
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3327
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3328
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3330
	jmp FireLaser_elsedoneblock171726
FireLaser_elseblock171725
	; LineNumber: 3329
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elsedoneblock171740
FireLaser_ConditionalTrueBlock171738: ;Main true block ;keep 
	; LineNumber: 3329
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171740
FireLaser_elsedoneblock171726
FireLaser_elsedoneblock171698
	; LineNumber: 3331
FireLaser_elsedoneblock171643
FireLaser_elsedoneblock171434
FireLaser_elsedoneblock171016
FireLaser_elsedoneblock170180
	; LineNumber: 3332
FireLaser_elsedoneblock168607
	; LineNumber: 3333
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
	; LineNumber: 3334
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock171746
FireLaser_ConditionalTrueBlock171744: ;Main true block ;keep 
	; LineNumber: 3334
	; LineNumber: 3335
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_elseblock171774
FireLaser_localsuccess171785: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_elseblock171774
FireLaser_ConditionalTrueBlock171773: ;Main true block ;keep 
	; LineNumber: 3334
	lda #$4d
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_elsedoneblock171775
FireLaser_elseblock171774
	; LineNumber: 3335
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_elsedoneblock171791
FireLaser_localsuccess171793: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_elsedoneblock171791
FireLaser_ConditionalTrueBlock171789: ;Main true block ;keep 
	; LineNumber: 3335
	lda #$4c
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_elsedoneblock171791
FireLaser_elsedoneblock171775
	; LineNumber: 3337
FireLaser_elsedoneblock171746
	; LineNumber: 3338
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
	; LineNumber: 3339
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
	; LineNumber: 3340
FireLaser_elsedoneblock165347
	; LineNumber: 3342
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
	; LineNumber: 3343
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171912
FireLaser_localsuccess171913: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171912
FireLaser_localsuccess171914: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed171912
	jmp FireLaser_ConditionalTrueBlock171796
FireLaser_localfailed171912
	jmp FireLaser_elsedoneblock171798
FireLaser_ConditionalTrueBlock171796: ;Main true block ;keep 
	; LineNumber: 3343
	; LineNumber: 3344
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_portalId;keep
	bne FireLaser_elseblock171918
FireLaser_ConditionalTrueBlock171917: ;Main true block ;keep 
	; LineNumber: 3343
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
	jmp FireLaser_elsedoneblock171919
FireLaser_elseblock171918
	; LineNumber: 3344
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
FireLaser_elsedoneblock171919
	; LineNumber: 3346
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3347
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3348
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_elseblock171926
FireLaser_ConditionalTrueBlock171925: ;Main true block ;keep 
	; LineNumber: 3348
	; LineNumber: 3349
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3350
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3352
	jmp FireLaser_elsedoneblock171927
FireLaser_elseblock171926
	; LineNumber: 3351
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne FireLaser_elseblock171982
FireLaser_ConditionalTrueBlock171981: ;Main true block ;keep 
	; LineNumber: 3352
	; LineNumber: 3353
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3354
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3356
	jmp FireLaser_elsedoneblock171983
FireLaser_elseblock171982
	; LineNumber: 3355
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_elseblock172010
FireLaser_ConditionalTrueBlock172009: ;Main true block ;keep 
	; LineNumber: 3356
	; LineNumber: 3357
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3358
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3360
	jmp FireLaser_elsedoneblock172011
FireLaser_elseblock172010
	; LineNumber: 3359
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne FireLaser_elsedoneblock172025
FireLaser_ConditionalTrueBlock172023: ;Main true block ;keep 
	; LineNumber: 3360
	; LineNumber: 3361
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3362
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3364
FireLaser_elsedoneblock172025
FireLaser_elsedoneblock172011
FireLaser_elsedoneblock171983
FireLaser_elsedoneblock171927
FireLaser_elsedoneblock171798
	; LineNumber: 3366
FireLaser_elsedoneblock158656
	; LineNumber: 3367
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3368
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3369
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3370
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3371
	; Test Inc dec D
	inc localVariable_FireLaser_countLaser
	; LineNumber: 3372
FireLaser_elsedoneblock145271
	; LineNumber: 3373
	jmp FireLaser_while118498
FireLaser_elsedoneblock118501
FireLaser_loopend118503
	; LineNumber: 3377
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	beq FireLaser_localfailed172320
FireLaser_localsuccess172321: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172320
	jmp FireLaser_ConditionalTrueBlock172029
FireLaser_localfailed172320
	jmp FireLaser_elsedoneblock172031
FireLaser_ConditionalTrueBlock172029: ;Main true block ;keep 
	; LineNumber: 3377
	; LineNumber: 3378
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_elsedoneblock172326
FireLaser_ConditionalTrueBlock172324: ;Main true block ;keep 
	; LineNumber: 3378
	; LineNumber: 3379
	
; // Collide Actions
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideControlId
	; LineNumber: 3380
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172339
FireLaser_localsuccess172341: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideControlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq FireLaser_elsedoneblock172339
FireLaser_ConditionalTrueBlock172337: ;Main true block ;keep 
	; LineNumber: 3380
	; LineNumber: 3382
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+8
	sty psnd+9
	; LineNumber: 3382
	lda #$ff
	; Calling storevariable on generic assign expression
	sta vsnd+$4
	; LineNumber: 3382
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$4
	; LineNumber: 3383
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3384
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideControlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3385
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3386
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 3387
FireLaser_elsedoneblock172339
	; LineNumber: 3389
FireLaser_elsedoneblock172326
	; LineNumber: 3393
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
	bne FireLaser_localfailed172377
	jmp FireLaser_ConditionalTrueBlock172344
FireLaser_localfailed172377
	jmp FireLaser_elsedoneblock172346
FireLaser_ConditionalTrueBlock172344: ;Main true block ;keep 
	; LineNumber: 3393
	; LineNumber: 3394
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$2
FireLaser_val_var172395 = $88
	sta FireLaser_val_var172395
	lda globaltime
	sec
FireLaser_modulo172396
	sbc FireLaser_val_var172395
	bcs FireLaser_modulo172396
	adc FireLaser_val_var172395
	; cmp #$00 ignored
	bne FireLaser_localfailed172394
	jmp FireLaser_ConditionalTrueBlock172380
FireLaser_localfailed172394
	jmp FireLaser_elsedoneblock172382
FireLaser_ConditionalTrueBlock172380: ;Main true block ;keep 
	; LineNumber: 3394
	; LineNumber: 3395
	
; // PushPull
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3396
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3397
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
	; LineNumber: 3398
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
	; LineNumber: 3399
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
	; LineNumber: 3400
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_elsedoneblock172405
FireLaser_ConditionalTrueBlock172403: ;Main true block ;keep 
	; LineNumber: 3400
	; LineNumber: 3402
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3402
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3402
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3403
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3404
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3405
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
	; LineNumber: 3407
FireLaser_elsedoneblock172405
FireLaser_elsedoneblock172382
	; LineNumber: 3408
FireLaser_elsedoneblock172346
	; LineNumber: 3411
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_localfailed172434
FireLaser_localsuccess172435: ;keep
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
	bne FireLaser_localfailed172434
	jmp FireLaser_ConditionalTrueBlock172409
FireLaser_localfailed172434
	jmp FireLaser_elsedoneblock172411
FireLaser_ConditionalTrueBlock172409: ;Main true block ;keep 
	; LineNumber: 3411
	; LineNumber: 3412
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
FireLaser_val_var172449 = $88
	sta FireLaser_val_var172449
	lda globaltime
	sec
FireLaser_modulo172450
	sbc FireLaser_val_var172449
	bcs FireLaser_modulo172450
	adc FireLaser_val_var172449
	; cmp #$00 ignored
	bne FireLaser_localfailed172448
	jmp FireLaser_ConditionalTrueBlock172438
FireLaser_localfailed172448
	jmp FireLaser_elsedoneblock172440
FireLaser_ConditionalTrueBlock172438: ;Main true block ;keep 
	; LineNumber: 3412
	; LineNumber: 3413
	
; // SwitchPos
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3414
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3415
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx2
	; LineNumber: 3416
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy2
	; LineNumber: 3418
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3419
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3421
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
	; LineNumber: 3423
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3424
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3426
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
	; LineNumber: 3427
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
	; LineNumber: 3430
	lda #<sndTransport
	ldy #>sndTransport
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3430
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3430
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3432
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172455
FireLaser_ConditionalTrueBlock172453: ;Main true block ;keep 
	; LineNumber: 3432
	; LineNumber: 3433
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3434
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3435
FireLaser_elsedoneblock172455
	; LineNumber: 3436
FireLaser_elsedoneblock172440
	; LineNumber: 3437
FireLaser_elsedoneblock172411
	; LineNumber: 3440
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_localfailed172535
FireLaser_localsuccess172536: ;keep
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
	bne FireLaser_localfailed172535
	jmp FireLaser_ConditionalTrueBlock172459
FireLaser_localfailed172535
	jmp FireLaser_elsedoneblock172461
FireLaser_ConditionalTrueBlock172459: ;Main true block ;keep 
	; LineNumber: 3440
	; LineNumber: 3441
	
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
	; LineNumber: 3442
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_FireLaser_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172575
FireLaser_localsuccess172576: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172575
	jmp FireLaser_ConditionalTrueBlock172539
FireLaser_localfailed172575
	jmp FireLaser_elsedoneblock172541
FireLaser_ConditionalTrueBlock172539: ;Main true block ;keep 
	; LineNumber: 3442
	; LineNumber: 3443
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172592
FireLaser_localsuccess172593: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172592
	jmp FireLaser_ConditionalTrueBlock172579
FireLaser_localfailed172592
	jmp FireLaser_elseblock172580
FireLaser_ConditionalTrueBlock172579: ;Main true block ;keep 
	; LineNumber: 3443
	; LineNumber: 3444
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp lastPortal;keep
	bne FireLaser_elseblock172597
FireLaser_ConditionalTrueBlock172596: ;Main true block ;keep 
	; LineNumber: 3443
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
	jmp FireLaser_elsedoneblock172598
FireLaser_elseblock172597
	; LineNumber: 3443
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
FireLaser_elsedoneblock172598
	; LineNumber: 3445
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_portalIdMove
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3446
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3447
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
	; LineNumber: 3448
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
	; LineNumber: 3449
	lda localVariable_FireLaser_portalIdMove
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 3451
	jmp FireLaser_elsedoneblock172581
FireLaser_elseblock172580
	; LineNumber: 3451
	; LineNumber: 3452
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
	; LineNumber: 3453
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
	; LineNumber: 3454
FireLaser_elsedoneblock172581
	; LineNumber: 3456
	lda #<sndPortalActivate
	ldy #>sndPortalActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3456
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3456
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3457
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_elsedoneblock172607
FireLaser_ConditionalTrueBlock172605: ;Main true block ;keep 
	; LineNumber: 3457
	; LineNumber: 3458
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3459
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3460
FireLaser_elsedoneblock172607
	; LineNumber: 3461
FireLaser_elsedoneblock172541
	; LineNumber: 3462
FireLaser_elsedoneblock172461
	; LineNumber: 3463
FireLaser_elsedoneblock172031
	; LineNumber: 3464
FireLaser_elsedoneblock64342
	; LineNumber: 3465
	rts
end_procedure_FireLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3476
	; LineNumber: 3470
localVariable_UpdateLaser_id1	dc.b	0
	; LineNumber: 3470
localVariable_UpdateLaser_i	dc.b	0
	; LineNumber: 3470
localVariable_UpdateLaser_x	dc.b	0
	; LineNumber: 3470
localVariable_UpdateLaser_y	dc.b	0
	; LineNumber: 3471
localVariable_UpdateLaser_pos	dc.b	0
	; LineNumber: 3471
localVariable_UpdateLaser_id2	dc.b	0
	; LineNumber: 3472
localVariable_UpdateLaser_exit	dc.b	0
	; LineNumber: 3473
localVariable_UpdateLaser_controlId	dc.b	0
	; LineNumber: 3474
localVariable_UpdateLaser_joy	dc.b	0
	; LineNumber: 3475
localVariable_UpdateLaser_laserEmitId	dc.b	0
	; LineNumber: 3468
localVariable_UpdateLaser_id	dc.b	0
UpdateLaser_block172610
UpdateLaser
	; LineNumber: 3477
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3478
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
	; LineNumber: 3479
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3480
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_laserEmitId
	; LineNumber: 3481
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
	bne UpdateLaser_elsedoneblock172614
UpdateLaser_ConditionalTrueBlock172612: ;Main true block ;keep 
	; LineNumber: 3481
	; LineNumber: 3482
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3483
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_elsedoneblock172627
UpdateLaser_localsuccess172629: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_elsedoneblock172627
UpdateLaser_ConditionalTrueBlock172625: ;Main true block ;keep 
	; LineNumber: 3482
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
UpdateLaser_elsedoneblock172627
	; LineNumber: 3484
UpdateLaser_elsedoneblock172614
	; LineNumber: 3485
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed173426
UpdateLaser_localsuccess173427: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_UpdateLaser_controlId;keep
	beq UpdateLaser_localfailed173426
UpdateLaser_localsuccess173428: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_localfailed173426
	jmp UpdateLaser_ConditionalTrueBlock172632
UpdateLaser_localfailed173426
	jmp UpdateLaser_elseblock172633
UpdateLaser_ConditionalTrueBlock172632: ;Main true block ;keep 
	; LineNumber: 3486
	jmp UpdateLaser_elsedoneblock172634
UpdateLaser_elseblock172633
	; LineNumber: 3487
	; LineNumber: 3488
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_elsedoneblock173434
UpdateLaser_ConditionalTrueBlock173432: ;Main true block ;keep 
	; LineNumber: 3488
	; LineNumber: 3489
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_waitRelease,x 
	; cmp #$00 ignored
	beq UpdateLaser_elsedoneblock173486
UpdateLaser_ConditionalTrueBlock173484: ;Main true block ;keep 
	; LineNumber: 3489
	; LineNumber: 3490
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_release,x 
	; cmp #$00 ignored
	beq UpdateLaser_elseblock173511
UpdateLaser_ConditionalTrueBlock173510: ;Main true block ;keep 
	; LineNumber: 3489
	
; // do nothin
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	jmp UpdateLaser_elsedoneblock173512
UpdateLaser_elseblock173511
	; LineNumber: 3490
	; LineNumber: 3492
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	beq UpdateLaser_elsedoneblock173526
UpdateLaser_ConditionalTrueBlock173524: ;Main true block ;keep 
	; LineNumber: 3491
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_release,x
UpdateLaser_elsedoneblock173526
	; LineNumber: 3493
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3494
UpdateLaser_elsedoneblock173512
	; LineNumber: 3495
UpdateLaser_elsedoneblock173486
	; LineNumber: 3496
UpdateLaser_elsedoneblock173434
	; LineNumber: 3498
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateLaser_exit
	; cmp #$00 ignored
	bne UpdateLaser_localfailed173876
	jmp UpdateLaser_ConditionalTrueBlock173530
UpdateLaser_localfailed173876
	jmp UpdateLaser_elsedoneblock173532
UpdateLaser_ConditionalTrueBlock173530: ;Main true block ;keep 
	; LineNumber: 3498
	; LineNumber: 3499
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3500
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174047
UpdateLaser_localsuccess174048: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174047
UpdateLaser_localsuccess174049: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateLaser_localfailed174047
	jmp UpdateLaser_ConditionalTrueBlock173879
UpdateLaser_localfailed174047: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateLaser_localfailed174046
	jmp UpdateLaser_ConditionalTrueBlock173879
UpdateLaser_localfailed174046
	jmp UpdateLaser_elseblock173880
UpdateLaser_ConditionalTrueBlock173879: ;Main true block ;keep 
	; LineNumber: 3500
	; LineNumber: 3501
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateLaser_elsedoneblock174054
UpdateLaser_ConditionalTrueBlock174052: ;Main true block ;keep 
	; LineNumber: 3500
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174054
	; LineNumber: 3502
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3503
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
	; LineNumber: 3504
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3505
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3507
	jmp UpdateLaser_elsedoneblock173881
UpdateLaser_elseblock173880
	; LineNumber: 3506
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174137
UpdateLaser_localsuccess174138: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174137
UpdateLaser_localsuccess174139: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174137
	jmp UpdateLaser_ConditionalTrueBlock174059
UpdateLaser_localfailed174137: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateLaser_localfailed174136
	jmp UpdateLaser_ConditionalTrueBlock174059
UpdateLaser_localfailed174136
	jmp UpdateLaser_elseblock174060
UpdateLaser_ConditionalTrueBlock174059: ;Main true block ;keep 
	; LineNumber: 3507
	; LineNumber: 3508
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateLaser_elsedoneblock174144
UpdateLaser_ConditionalTrueBlock174142: ;Main true block ;keep 
	; LineNumber: 3507
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174144
	; LineNumber: 3509
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3510
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
	; LineNumber: 3511
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3512
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3514
	jmp UpdateLaser_elsedoneblock174061
UpdateLaser_elseblock174060
	; LineNumber: 3513
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174182
UpdateLaser_localsuccess174183: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174182
UpdateLaser_localsuccess174184: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_localfailed174182
	jmp UpdateLaser_ConditionalTrueBlock174149
UpdateLaser_localfailed174182: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174181
	jmp UpdateLaser_ConditionalTrueBlock174149
UpdateLaser_localfailed174181
	jmp UpdateLaser_elseblock174150
UpdateLaser_ConditionalTrueBlock174149: ;Main true block ;keep 
	; LineNumber: 3514
	; LineNumber: 3515
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateLaser_elsedoneblock174189
UpdateLaser_ConditionalTrueBlock174187: ;Main true block ;keep 
	; LineNumber: 3514
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174189
	; LineNumber: 3516
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3517
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
	; LineNumber: 3518
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3519
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3521
	jmp UpdateLaser_elsedoneblock174151
UpdateLaser_elseblock174150
	; LineNumber: 3520
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174204
UpdateLaser_localsuccess174205: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174204
UpdateLaser_localsuccess174206: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateLaser_localfailed174204
	jmp UpdateLaser_ConditionalTrueBlock174194
UpdateLaser_localfailed174204: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateLaser_elsedoneblock174196
UpdateLaser_ConditionalTrueBlock174194: ;Main true block ;keep 
	; LineNumber: 3521
	; LineNumber: 3522
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateLaser_elsedoneblock174211
UpdateLaser_ConditionalTrueBlock174209: ;Main true block ;keep 
	; LineNumber: 3521
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174211
	; LineNumber: 3523
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3524
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
	; LineNumber: 3525
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3526
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3527
UpdateLaser_elsedoneblock174196
UpdateLaser_elsedoneblock174151
UpdateLaser_elsedoneblock174061
UpdateLaser_elsedoneblock173881
	; LineNumber: 3528
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateLaser_elsedoneblock174217
UpdateLaser_ConditionalTrueBlock174215: ;Main true block ;keep 
	; LineNumber: 3527
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_elsedoneblock174217
	; LineNumber: 3529
UpdateLaser_elsedoneblock173532
	; LineNumber: 3530
UpdateLaser_elsedoneblock172634
	; LineNumber: 3531
	rts
end_procedure_UpdateLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateObject
	;    Procedure type : User-defined procedure
	; LineNumber: 3537
	; LineNumber: 3536
localVariable_UpdateObject_controlId	dc.b	0
	; LineNumber: 3534
localVariable_UpdateObject_id	dc.b	0
UpdateObject_block174220
UpdateObject
	; LineNumber: 3538
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
	bne UpdateObject_elsedoneblock174224
UpdateObject_ConditionalTrueBlock174222: ;Main true block ;keep 
	; LineNumber: 3537
	; LineNumber: 3539
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_id
	jsr UpdateLaser
	; LineNumber: 3540
UpdateObject_elsedoneblock174224
	; LineNumber: 3541
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
	bne UpdateObject_elsedoneblock174230
UpdateObject_ConditionalTrueBlock174228: ;Main true block ;keep 
	; LineNumber: 3540
	; LineNumber: 3542
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_id
	jsr UpdateFontaine
	; LineNumber: 3543
UpdateObject_elsedoneblock174230
	; LineNumber: 3545
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne UpdateObject_localfailed174324
	jmp UpdateObject_ConditionalTrueBlock174234
UpdateObject_localfailed174324
	jmp UpdateObject_elseblock174235
UpdateObject_ConditionalTrueBlock174234: ;Main true block ;keep 
	; LineNumber: 3545
	; LineNumber: 3546
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
	bne UpdateObject_elsedoneblock174329
UpdateObject_ConditionalTrueBlock174327: ;Main true block ;keep 
	; LineNumber: 3546
	; LineNumber: 3547
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_id
	jsr UpdatePhysics
	; LineNumber: 3548
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3549
UpdateObject_elsedoneblock174329
	; LineNumber: 3550
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
	bne UpdateObject_elsedoneblock174335
UpdateObject_ConditionalTrueBlock174333: ;Main true block ;keep 
	; LineNumber: 3549
	; LineNumber: 3551
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_id
	jsr UpdateFloater
	; LineNumber: 3552
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3553
UpdateObject_elsedoneblock174335
	; LineNumber: 3555
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
	bne UpdateObject_localfailed174366
	jmp UpdateObject_ConditionalTrueBlock174339
UpdateObject_localfailed174366
	jmp UpdateObject_elsedoneblock174341
UpdateObject_ConditionalTrueBlock174339: ;Main true block ;keep 
	; LineNumber: 3555
	; LineNumber: 3556
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3557
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc UpdateObject_elseblock174370
UpdateObject_localsuccess174381: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	bne UpdateObject_elseblock174370
UpdateObject_ConditionalTrueBlock174369: ;Main true block ;keep 
	; LineNumber: 3556
	lda #$1
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	jmp UpdateObject_elsedoneblock174371
UpdateObject_elseblock174370
	; LineNumber: 3558
	; LineNumber: 3559
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_elsedoneblock174387
UpdateObject_localsuccess174389: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_elsedoneblock174387
UpdateObject_ConditionalTrueBlock174385: ;Main true block ;keep 
	; LineNumber: 3559
	; LineNumber: 3561
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+8
	sty psnd+9
	; LineNumber: 3561
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$4
	; LineNumber: 3561
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$4
	; LineNumber: 3562
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3563
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3564
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3566
UpdateObject_elsedoneblock174387
	; LineNumber: 3568
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3569
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3570
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3571
UpdateObject_elsedoneblock174371
	; LineNumber: 3572
UpdateObject_elsedoneblock174341
	; LineNumber: 3574
	jmp UpdateObject_elsedoneblock174236
UpdateObject_elseblock174235
	; LineNumber: 3573
	; LineNumber: 3575
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
	bne UpdateObject_elsedoneblock174395
UpdateObject_ConditionalTrueBlock174393: ;Main true block ;keep 
	; LineNumber: 3575
	; LineNumber: 3576
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3577
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_elsedoneblock174408
UpdateObject_localsuccess174410: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_elsedoneblock174408
UpdateObject_ConditionalTrueBlock174406: ;Main true block ;keep 
	; LineNumber: 3577
	; LineNumber: 3579
	lda #<sndDamage
	ldy #>sndDamage
	; Calling storevariable on generic assign expression
	sta psnd+8
	sty psnd+9
	; LineNumber: 3579
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$4
	; LineNumber: 3579
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$4
	; LineNumber: 3580
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3581
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3582
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3584
UpdateObject_elsedoneblock174408
	; LineNumber: 3586
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3587
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3588
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3589
UpdateObject_elsedoneblock174395
	; LineNumber: 3590
UpdateObject_elsedoneblock174236
	; LineNumber: 3591
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 3592
	rts
end_procedure_UpdateObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Update
	;    Procedure type : User-defined procedure
	; LineNumber: 3598
	; LineNumber: 3596
localVariable_Update_i	dc.b	0
	; LineNumber: 3597
localVariable_Update_id	dc.b	0
Update_block174412
Update
	; LineNumber: 3599
	jsr ClearAllLaser
	; LineNumber: 3600
	lda 197
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
	; LineNumber: 3601
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_elsedoneblock174416
Update_ConditionalTrueBlock174414: ;Main true block ;keep 
	; LineNumber: 3601
	; LineNumber: 3603
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne Update_elsedoneblock174428
Update_ConditionalTrueBlock174426: ;Main true block ;keep 
	; LineNumber: 3603
	; LineNumber: 3605
	
; //Key::Read();
	lda #<sndPlayerChange
	ldy #>sndPlayerChange
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3605
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3605
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3606
	jsr SwapActiveChar
	; LineNumber: 3607
Update_elsedoneblock174428
	; LineNumber: 3608
Update_elsedoneblock174416
	; LineNumber: 3609
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$3f;keep
	bne Update_elsedoneblock174434
Update_ConditionalTrueBlock174432: ;Main true block ;keep 
	; LineNumber: 3609
	; LineNumber: 3610
	lda #$1
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 3611
Update_elsedoneblock174434
	; LineNumber: 3612
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne Update_elseblock174439
Update_localsuccess174443: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda needExtraCycle
	; cmp #$00 ignored
	beq Update_elseblock174439
Update_ConditionalTrueBlock174438: ;Main true block ;keep 
	; LineNumber: 3611
	lda #$1
	; Calling storevariable on generic assign expression
	sta cycle
	jmp Update_elsedoneblock174440
Update_elseblock174439
	; LineNumber: 3611
	lda #$0
	; Calling storevariable on generic assign expression
	sta cycle
Update_elsedoneblock174440
	; LineNumber: 3618
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
Update_forloop174446
	; LineNumber: 3614
	; LineNumber: 3615
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Update_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Update_id
	; LineNumber: 3616
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_id
	jsr UpdateObject
	; LineNumber: 3617
Update_loopstart174447
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Update_i
	lda countDyn
	cmp localVariable_Update_i ;keep
	bne Update_forloop174446
Update_loopdone174451: ;keep
Update_loopend174448
	; LineNumber: 3619
	; Binary clause Simplified: EQUALS
	lda cycle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_elsedoneblock174455
Update_ConditionalTrueBlock174453: ;Main true block ;keep 
	; LineNumber: 3618
	lda #$0
	; Calling storevariable on generic assign expression
	sta needExtraCycle
Update_elsedoneblock174455
	; LineNumber: 3621
	rts
end_procedure_Update
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitAnimations
	;    Procedure type : User-defined procedure
	; LineNumber: 3629
	; LineNumber: 3627
localVariable_InitAnimations_pa	= $72
InitAnimations_block174458
InitAnimations
	; LineNumber: 3662
	
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
	; LineNumber: 3663
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$80
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3664
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$84
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3665
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$88
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3666
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$8c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3667
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3668
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3669
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3670
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3672
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$08
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3673
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$90
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3674
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$94
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3675
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$98
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3676
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$9c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3677
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3678
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3679
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3680
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3682
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$10
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3683
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3684
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3685
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3686
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3687
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3688
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3689
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3690
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3692
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$18
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3693
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3694
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3695
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3696
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3697
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3698
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3699
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3700
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3702
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$20
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3703
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3704
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3705
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3706
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3707
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3708
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3709
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3710
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3712
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$28
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3713
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$ac
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3714
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3715
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3716
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3717
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3718
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3719
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3720
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3722
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$30
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3723
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$b4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3724
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3725
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3726
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3727
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3728
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3729
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3730
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3732
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$38
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3733
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$6b
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3734
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$6c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3735
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$6d
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3736
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$6e
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3737
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3738
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3739
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3740
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3742
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$40
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3743
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$63
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3744
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3745
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3746
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3747
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3748
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3749
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3750
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3752
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$48
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3753
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$64
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3754
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3755
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3756
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3757
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3758
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3759
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3760
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3762
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$50
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3763
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$67
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3764
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3765
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3766
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3767
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3768
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3769
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3770
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3772
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$58
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3773
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$66
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3774
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3775
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3776
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3777
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3778
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3779
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3780
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3782
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$60
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3783
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3784
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3785
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3786
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3787
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3788
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3789
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3790
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3792
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$68
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3793
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3794
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3795
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3796
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3797
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3798
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3799
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3800
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3803
	rts
end_procedure_InitAnimations
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitialiseTables
	;    Procedure type : User-defined procedure
	; LineNumber: 3805
InitialiseTables
	; LineNumber: 3808
	
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
InitialiseTables_dtloop174473
	tay
	lda scr1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174474
	iny
InitialiseTables_dtnooverflow174474
	sta scr1,x
	tya
	sta scr1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174473
	; LineNumber: 3809
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$1e00
	lda #<$1e00
	ldx #0
	sta scr2,x   ; Address of table
	tya
	sta scr2+1,x
InitialiseTables_dtloop174475
	tay
	lda scr2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174476
	iny
InitialiseTables_dtnooverflow174476
	sta scr2,x
	tya
	sta scr2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174475
	; LineNumber: 3810
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9400
	lda #<$9400
	ldx #0
	sta col1,x   ; Address of table
	tya
	sta col1+1,x
InitialiseTables_dtloop174477
	tay
	lda col1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174478
	iny
InitialiseTables_dtnooverflow174478
	sta col1,x
	tya
	sta col1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174477
	; LineNumber: 3811
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9600
	lda #<$9600
	ldx #0
	sta col2,x   ; Address of table
	tya
	sta col2+1,x
InitialiseTables_dtloop174479
	tay
	lda col2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174480
	iny
InitialiseTables_dtnooverflow174480
	sta col2,x
	tya
	sta col2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174479
	; LineNumber: 3812
	rts
end_procedure_InitialiseTables
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 3815
InitScreen
	; LineNumber: 3817
	
; // set the screen and border colour
	; Assigning memory location
	lda #$94
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 3818
	
; // width
	; Assigning memory location
	lda #$26
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 3819
	
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
	; LineNumber: 3820
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
	; LineNumber: 3821
	; LineNumber: 3824
	; Assigning memory location
	lda #$e
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 3825
	; Assigning memory location
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 3826
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 3827
	jsr InitialiseTables
	; LineNumber: 3828
	rts
end_procedure_InitScreen
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
	; LineNumber: 3839
	; LineNumber: 3835
localVariable_UpdateMain_levStr		dc.b	"00"
	dc.b	0
	; LineNumber: 3836
localVariable_UpdateMain_levStr2		dc.b	"00"
	dc.b	0
	; LineNumber: 3837
localVariable_UpdateMain_pos	dc.b	0
	; LineNumber: 3838
localVariable_UpdateMain_len	dc.b	0
UpdateMain_block174482
UpdateMain
	; LineNumber: 3840
	; Assigning a string : localVariable_UpdateMain_levStr
	ldy #0
UpdateMain_stringassigncpy174483
	lda UpdateMain_stringassignstr174484,y
	sta localVariable_UpdateMain_levStr,y
	iny
	cmp #0 ;keep
	bne UpdateMain_stringassigncpy174483
	; LineNumber: 3841
	; Assigning a string : localVariable_UpdateMain_levStr2
	ldy #0
UpdateMain_stringassigncpy174485
	lda UpdateMain_stringassignstr174486,y
	sta localVariable_UpdateMain_levStr2,y
	iny
	cmp #0 ;keep
	bne UpdateMain_stringassigncpy174485
	; LineNumber: 3843
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdateMain_localfailed174717
	jmp UpdateMain_ConditionalTrueBlock174488
UpdateMain_localfailed174717
	jmp UpdateMain_elseblock174489
UpdateMain_ConditionalTrueBlock174488: ;Main true block ;keep 
	; LineNumber: 3843
	; LineNumber: 3844
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_elseblock174721
UpdateMain_ConditionalTrueBlock174720: ;Main true block ;keep 
	; LineNumber: 3843
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_elsedoneblock174722
UpdateMain_elseblock174721
	; LineNumber: 3843
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_elsedoneblock174722
	; LineNumber: 3845
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
	lda #$a
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 3846
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_elseblock174731
UpdateMain_ConditionalTrueBlock174730: ;Main true block ;keep 
	; LineNumber: 3845
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_elsedoneblock174732
UpdateMain_elseblock174731
	; LineNumber: 3845
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_elsedoneblock174732
	; LineNumber: 3847
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
	lda #$a
	; Calling storevariable on generic assign expression
	sta str_b
	jsr str_itoa
	; LineNumber: 3849
	
; //TODO
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_elsedoneblock174742
UpdateMain_ConditionalTrueBlock174740: ;Main true block ;keep 
	; LineNumber: 3849
	; LineNumber: 3850
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_localfailed174770
	jmp UpdateMain_ConditionalTrueBlock174766
UpdateMain_localfailed174770: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174768
UpdateMain_ConditionalTrueBlock174766: ;Main true block ;keep 
	; LineNumber: 3849
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
UpdateMain_elsedoneblock174768
	; LineNumber: 3851
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174775
UpdateMain_ConditionalTrueBlock174773: ;Main true block ;keep 
	; LineNumber: 3850
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
UpdateMain_elsedoneblock174775
	; LineNumber: 3852
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateMain_localfailed174783
	jmp UpdateMain_ConditionalTrueBlock174779
UpdateMain_localfailed174783: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174781
UpdateMain_ConditionalTrueBlock174779: ;Main true block ;keep 
	; LineNumber: 3851
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
UpdateMain_elsedoneblock174781
	; LineNumber: 3853
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3854
UpdateMain_elsedoneblock174742
	; LineNumber: 3855
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateMain_elsedoneblock174788
UpdateMain_ConditionalTrueBlock174786: ;Main true block ;keep 
	; LineNumber: 3855
	; LineNumber: 3856
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174806
UpdateMain_ConditionalTrueBlock174804: ;Main true block ;keep 
	; LineNumber: 3855
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_elsedoneblock174806
	; LineNumber: 3857
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174812
UpdateMain_ConditionalTrueBlock174810: ;Main true block ;keep 
	; LineNumber: 3856
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_elsedoneblock174812
	; LineNumber: 3858
UpdateMain_elsedoneblock174788
	; LineNumber: 3859
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174818
UpdateMain_ConditionalTrueBlock174816: ;Main true block ;keep 
	; LineNumber: 3859
	; LineNumber: 3860
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_elsedoneblock174836
UpdateMain_ConditionalTrueBlock174834: ;Main true block ;keep 
	; LineNumber: 3859
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_elsedoneblock174836
	; LineNumber: 3861
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_elsedoneblock174842
UpdateMain_ConditionalTrueBlock174840: ;Main true block ;keep 
	; LineNumber: 3860
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_elsedoneblock174842
	; LineNumber: 3862
UpdateMain_elsedoneblock174818
	; LineNumber: 3864
	lda #<localVariable_UpdateMain_levStr
	ldx #>localVariable_UpdateMain_levStr
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda #$f
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3865
	lda #<localVariable_UpdateMain_levStr2
	ldx #>localVariable_UpdateMain_levStr2
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3867
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3869
	jmp UpdateMain_elsedoneblock174490
UpdateMain_elseblock174489
	; LineNumber: 3869
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateMain_elsedoneblock174849
UpdateMain_ConditionalTrueBlock174847: ;Main true block ;keep 
	; LineNumber: 3870
	; LineNumber: 3871
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_elsedoneblock174901
UpdateMain_ConditionalTrueBlock174899: ;Main true block ;keep 
	; LineNumber: 3871
	; LineNumber: 3872
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_elseblock174926
UpdateMain_ConditionalTrueBlock174925: ;Main true block ;keep 
	; LineNumber: 3871
	lda #$1
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateMain_elsedoneblock174927
UpdateMain_elseblock174926
	; LineNumber: 3872
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_elsedoneblock174941
UpdateMain_ConditionalTrueBlock174939: ;Main true block ;keep 
	; LineNumber: 3872
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
UpdateMain_elsedoneblock174941
UpdateMain_elsedoneblock174927
	; LineNumber: 3874
UpdateMain_elsedoneblock174901
	; LineNumber: 3875
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3876
UpdateMain_elsedoneblock174849
UpdateMain_elsedoneblock174490
	; LineNumber: 3877
	rts
end_procedure_UpdateMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : OpenMain
	;    Procedure type : User-defined procedure
	; LineNumber: 3885
	; LineNumber: 3881
localVariable_OpenMain_i	dc.b	0
	; LineNumber: 3882
localVariable_OpenMain_levStr		dc.b	"00"
	dc.b	0
	; LineNumber: 3883
localVariable_OpenMain_pos	dc.b	0
	; LineNumber: 3884
localVariable_OpenMain_len	dc.b	0
OpenMain_block174944
OpenMain
	; LineNumber: 3887
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 3888
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 3889
	lda #$30
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_levStr+$0
	; LineNumber: 3890
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne OpenMain_localfailed175035
	jmp OpenMain_ConditionalTrueBlock174946
OpenMain_localfailed175035
	jmp OpenMain_elseblock174947
OpenMain_ConditionalTrueBlock174946: ;Main true block ;keep 
	; LineNumber: 3889
	; LineNumber: 3892
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne OpenMain_localfailed175063
	jmp OpenMain_ConditionalTrueBlock175038
OpenMain_localfailed175063
	jmp OpenMain_elseblock175039
OpenMain_ConditionalTrueBlock175038: ;Main true block ;keep 
	; LineNumber: 3892
	; LineNumber: 3893
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_elseblock175067
OpenMain_ConditionalTrueBlock175066: ;Main true block ;keep 
	; LineNumber: 3892
	
; //		InitLevel();
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_elsedoneblock175068
OpenMain_elseblock175067
	; LineNumber: 3892
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_elsedoneblock175068
	; LineNumber: 3894
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
	jmp OpenMain_elsedoneblock175040
OpenMain_elseblock175039
	; LineNumber: 3896
	; LineNumber: 3897
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_elseblock175078
OpenMain_ConditionalTrueBlock175077: ;Main true block ;keep 
	; LineNumber: 3896
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_elsedoneblock175079
OpenMain_elseblock175078
	; LineNumber: 3896
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_elsedoneblock175079
	; LineNumber: 3898
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
OpenMain_elsedoneblock175040
	; LineNumber: 3900
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
	; LineNumber: 3901
	lda #<localVariable_OpenMain_levStr
	ldx #>localVariable_OpenMain_levStr
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 3903
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
	; LineNumber: 3905
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
	; LineNumber: 3906
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
	; LineNumber: 3908
	lda #<txtPressDel
	ldx #>txtPressDel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3910
	lda #<sndEnd
	ldy #>sndEnd
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3910
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3910
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3911
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne OpenMain_elsedoneblock175089
OpenMain_ConditionalTrueBlock175087: ;Main true block ;keep 
	; LineNumber: 3910
	lda #<txtPressSpace
	ldx #>txtPressSpace
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_elsedoneblock175089
	; LineNumber: 3912
	; Binary clause Simplified: NOTEQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	beq OpenMain_elsedoneblock175095
OpenMain_ConditionalTrueBlock175093: ;Main true block ;keep 
	; LineNumber: 3912
	; LineNumber: 3913
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq OpenMain_elseblock175108
OpenMain_ConditionalTrueBlock175107: ;Main true block ;keep 
	; LineNumber: 3912
	lda #<txtBothMustComplete
	ldx #>txtBothMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$12
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	jmp OpenMain_elsedoneblock175109
OpenMain_elseblock175108
	; LineNumber: 3913
	lda #<txtOneMustComplete
	ldx #>txtOneMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$12
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_elsedoneblock175109
	; LineNumber: 3915
OpenMain_elsedoneblock175095
	; LineNumber: 3917
	lda #$7
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3919
	jmp OpenMain_elsedoneblock174948
OpenMain_elseblock174947
	; LineNumber: 3918
	; Binary clause Simplified: EQUALS
	clc
	lda state
	; cmp #$00 ignored
	bne OpenMain_localfailed175120
	jmp OpenMain_ConditionalTrueBlock175116
OpenMain_localfailed175120
	jmp OpenMain_elsedoneblock175118
OpenMain_ConditionalTrueBlock175116: ;Main true block ;keep 
	; LineNumber: 3919
	; LineNumber: 3921
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
	; LineNumber: 3923
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
	; LineNumber: 3924
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
	; LineNumber: 3925
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
	; LineNumber: 3927
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
	; LineNumber: 3928
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
	; LineNumber: 3932
	
; //PrintCenterStringColor(#txtAuthor,18,0);
	lda #$6
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3933
OpenMain_elsedoneblock175118
OpenMain_elsedoneblock174948
	; LineNumber: 3935
	rts
end_procedure_OpenMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : InitMap
	;    Procedure type : User-defined procedure
	; LineNumber: 3940
	; LineNumber: 3939
localVariable_InitMap_i	dc.b	0
	; LineNumber: 3939
localVariable_InitMap_x	dc.b	0
	; LineNumber: 3939
localVariable_InitMap_y	dc.b	0
	; LineNumber: 3939
localVariable_InitMap_varPrefixed_c	dc.b	0
InitMap_block175122
InitMap
	; LineNumber: 3941
	jsr ClearMap
	; LineNumber: 3942
	lda #$0
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 3943
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 3947
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175123
	; LineNumber: 3945
	; LineNumber: 3946
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
	; LineNumber: 3947
InitMap_loopstart175124
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$c8
	cmp localVariable_InitMap_i ;keep
	bne InitMap_forloop175123
InitMap_loopdone175128: ;keep
InitMap_loopend175125
	; LineNumber: 3963
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175129
	; LineNumber: 3949
	; LineNumber: 3950
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3951
	; Modulo
	lda #$14
InitMap_val_var175155 = $88
	sta InitMap_val_var175155
	lda localVariable_InitMap_i
	sec
InitMap_modulo175156
	sbc InitMap_val_var175155
	bcs InitMap_modulo175156
	adc InitMap_val_var175155
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3952
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
	; LineNumber: 3953
	lda #$5b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175160
	; LineNumber: 3953
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
	jmp InitMap_caseend175159
InitMap_casenext175160
	lda #$5d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175162
	; LineNumber: 3954
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
	jmp InitMap_caseend175159
InitMap_casenext175162
	lda #$28
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175164
	; LineNumber: 3955
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
	jmp InitMap_caseend175159
InitMap_casenext175164
	lda #$29
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175166
	; LineNumber: 3956
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
	jmp InitMap_caseend175159
InitMap_casenext175166
	lda #$31
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175168
	; LineNumber: 3957
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
	jmp InitMap_caseend175159
InitMap_casenext175168
	lda #$39
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175170
	; LineNumber: 3958
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
	jmp InitMap_caseend175159
InitMap_casenext175170
	lda #$37
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175172
	; LineNumber: 3959
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
	jmp InitMap_caseend175159
InitMap_casenext175172
	lda #$33
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175174
	; LineNumber: 3960
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
InitMap_casenext175174
InitMap_caseend175159
	; LineNumber: 3963
InitMap_loopstart175130
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175176
InitMap_loopnotdone175177
	jmp InitMap_forloop175129
InitMap_loopdone175176
InitMap_loopend175131
	; LineNumber: 4012
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175178
	; LineNumber: 3966
	; LineNumber: 3967
	; Load Unknown type array, assuming BYTE
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3968
	; Modulo
	lda #$14
InitMap_val_var175267 = $88
	sta InitMap_val_var175267
	lda localVariable_InitMap_i
	sec
InitMap_modulo175268
	sbc InitMap_val_var175267
	bcs InitMap_modulo175268
	adc InitMap_val_var175267
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3969
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
	; LineNumber: 3970
	lda #$40
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175272
	; LineNumber: 3970
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
	jmp InitMap_caseend175271
InitMap_casenext175272
	lda #$25
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175274
	; LineNumber: 3972
	; LineNumber: 3973
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitMap_localfailed175281
	jmp InitMap_ConditionalTrueBlock175277
InitMap_localfailed175281: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InitMap_elsedoneblock175279
InitMap_ConditionalTrueBlock175277: ;Main true block ;keep 
	; LineNumber: 3972
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
InitMap_elsedoneblock175279
	; LineNumber: 3974
	jmp InitMap_caseend175271
InitMap_casenext175274
	lda #$61
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175283
	; LineNumber: 3974
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_y
	jsr InitBrick
	jmp InitMap_caseend175271
InitMap_casenext175283
	lda #$62
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175285
	; LineNumber: 3975
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
	jmp InitMap_caseend175271
InitMap_casenext175285
	lda #$66
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175287
	; LineNumber: 3976
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
	jmp InitMap_caseend175271
InitMap_casenext175287
	lda #$3d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175289
	; LineNumber: 3977
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_y
	jsr InitWater
	jmp InitMap_caseend175271
InitMap_casenext175289
	lda #$27
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175291
	; LineNumber: 3978
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
	jmp InitMap_caseend175271
InitMap_casenext175291
	lda #$26
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175293
	; LineNumber: 3979
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
	jmp InitMap_caseend175271
InitMap_casenext175293
	lda #$7b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175295
	; LineNumber: 3980
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
	jmp InitMap_caseend175271
InitMap_casenext175295
	lda #$7d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175297
	; LineNumber: 3981
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
	jmp InitMap_caseend175271
InitMap_casenext175297
	lda #$73
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175299
	; LineNumber: 3982
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_y
	jsr InitSand
	jmp InitMap_caseend175271
InitMap_casenext175299
	lda #$5e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175301
	; LineNumber: 3983
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
	jmp InitMap_caseend175271
InitMap_casenext175301
	lda #$59
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175303
	; LineNumber: 3984
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
	jmp InitMap_caseend175271
InitMap_casenext175303
	lda #$3e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175305
	; LineNumber: 3985
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
	jmp InitMap_caseend175271
InitMap_casenext175305
	lda #$3c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175307
	; LineNumber: 3986
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
	jmp InitMap_caseend175271
InitMap_casenext175307
	lda #$68
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175309
	; LineNumber: 3987
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_y
	jsr InitLadder
	jmp InitMap_caseend175271
InitMap_casenext175309
	lda #$2d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175311
	; LineNumber: 3988
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
	jmp InitMap_caseend175271
InitMap_casenext175311
	lda #$5f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175313
	; LineNumber: 3989
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
	jmp InitMap_caseend175271
InitMap_casenext175313
	lda #$21
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175315
	; LineNumber: 3990
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
	jmp InitMap_caseend175271
InitMap_casenext175315
	lda #$7c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175317
	; LineNumber: 3991
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
	jmp InitMap_caseend175271
InitMap_casenext175317
	lda #$6f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175319
	; LineNumber: 3992
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
	jmp InitMap_caseend175271
InitMap_casenext175319
	lda #$63
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175321
	; LineNumber: 3993
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_y
	jsr InitPortalActivate
	jmp InitMap_caseend175271
InitMap_casenext175321
	lda #$38
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175323
	; LineNumber: 3994
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
	jmp InitMap_caseend175271
InitMap_casenext175323
	lda #$32
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175325
	; LineNumber: 3995
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
	jmp InitMap_caseend175271
InitMap_casenext175325
	lda #$34
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175327
	; LineNumber: 3996
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
	jmp InitMap_caseend175271
InitMap_casenext175327
	lda #$36
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175329
	; LineNumber: 3997
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
	jmp InitMap_caseend175271
InitMap_casenext175329
	lda #$6e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175331
	; LineNumber: 3998
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
	jmp InitMap_caseend175271
InitMap_casenext175331
	lda #$6d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175333
	; LineNumber: 3999
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
	jmp InitMap_caseend175271
InitMap_casenext175333
	lda #$67
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175335
	; LineNumber: 4000
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
	jmp InitMap_caseend175271
InitMap_casenext175335
	lda #$74
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175337
	; LineNumber: 4001
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_y
	jsr InitLaserTransport
	jmp InitMap_caseend175271
InitMap_casenext175337
	lda #$64
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175339
	; LineNumber: 4003
	
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
	jmp InitMap_caseend175271
InitMap_casenext175339
	lda #$65
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175341
	; LineNumber: 4004
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
	jmp InitMap_caseend175271
InitMap_casenext175341
	lda #$72
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175343
	; LineNumber: 4005
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_y
	jsr InitSwitchManual
	jmp InitMap_caseend175271
InitMap_casenext175343
	lda #$78
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175345
	; LineNumber: 4006
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_y
	jsr InitDoor
	jmp InitMap_caseend175271
InitMap_casenext175345
	lda #$58
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175347
	; LineNumber: 4007
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_y
	jsr InitExit
	jmp InitMap_caseend175271
InitMap_casenext175347
	lda #$2e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175349
	; LineNumber: 4008
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_y
	jsr InitWaypoint
InitMap_casenext175349
InitMap_caseend175271
	; LineNumber: 4011
InitMap_loopstart175179
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175351
InitMap_loopnotdone175352
	jmp InitMap_forloop175178
InitMap_loopdone175351
InitMap_loopend175180
	; LineNumber: 4012
	rts
end_procedure_InitMap
	; NodeProcedureDecl 4
	; ***********  Defining procedure : LoopMenu
	;    Procedure type : User-defined procedure
	; LineNumber: 4017
LoopMenu
	; LineNumber: 4018
LoopMenu_while175354
LoopMenu_loopstart175358
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne LoopMenu_localfailed175367
	jmp LoopMenu_ConditionalTrueBlock175355
LoopMenu_localfailed175367: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne LoopMenu_elsedoneblock175357
LoopMenu_ConditionalTrueBlock175355: ;Main true block ;keep 
	; LineNumber: 4018
	; LineNumber: 4019
	jsr callReadJoy1
	; LineNumber: 4020
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4021
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne LoopMenu_elsedoneblock175372
LoopMenu_ConditionalTrueBlock175370: ;Main true block ;keep 
	; LineNumber: 4021
	; LineNumber: 4022
	jsr UpdateMain
	; LineNumber: 4023
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4023
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4025
LoopMenu_elsedoneblock175372
	; LineNumber: 4026
	jmp LoopMenu_while175354
LoopMenu_elsedoneblock175357
LoopMenu_loopend175359
	; LineNumber: 4027
	rts
end_procedure_LoopMenu
	; NodeProcedureDecl 4
	; ***********  Defining procedure : LoopMenu1
	;    Procedure type : User-defined procedure
	; LineNumber: 4032
	; LineNumber: 4031
localVariable_LoopMenu1_exitOpen	dc.b	0
LoopMenu1_block175375
LoopMenu1
	; LineNumber: 4033
	jsr ClearFullScreen
	; LineNumber: 4034
	
; // clear screen
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_LoopMenu1_exitOpen
	; LineNumber: 4035
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4036
LoopMenu1_while175376
LoopMenu1_loopstart175380
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_LoopMenu1_exitOpen
	; cmp #$00 ignored
	bne LoopMenu1_elsedoneblock175379
LoopMenu1_ConditionalTrueBlock175377: ;Main true block ;keep 
	; LineNumber: 4036
	; LineNumber: 4038
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne LoopMenu1_elsedoneblock175393
LoopMenu1_ConditionalTrueBlock175391: ;Main true block ;keep 
	; LineNumber: 4038
	; LineNumber: 4039
	
; //waitnoraster(0);
	jsr OpenMain
	; LineNumber: 4040
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4041
	; Calling storevariable on generic assign expression
	sta localVariable_LoopMenu1_exitOpen
	; LineNumber: 4042
LoopMenu1_elsedoneblock175393
	; LineNumber: 4043
	jmp LoopMenu1_while175376
LoopMenu1_elsedoneblock175379
LoopMenu1_loopend175381
	; LineNumber: 4044
	rts
end_procedure_LoopMenu1
	; NodeProcedureDecl 4
	; ***********  Defining procedure : GameLoop
	;    Procedure type : User-defined procedure
	; LineNumber: 4049
GameLoop
	; LineNumber: 4050
GameLoop_while175397
GameLoop_loopstart175401
	; Binary clause Simplified: NOTEQUALS
	clc
	lda #$1
	; cmp #$00 ignored
	beq GameLoop_localfailed175437
	jmp GameLoop_ConditionalTrueBlock175398
GameLoop_localfailed175437
	jmp GameLoop_elsedoneblock175400
GameLoop_ConditionalTrueBlock175398: ;Main true block ;keep 
	; LineNumber: 4050
	; LineNumber: 4051
	jsr callReadJoy1
	; LineNumber: 4052
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4053
	lda #$0
	cmp state ;keep
	bne GameLoop_casenext175440
	; LineNumber: 4054
	jsr LoopMenu1
	jmp GameLoop_caseend175439
GameLoop_casenext175440
	lda #$2
	cmp state ;keep
	bne GameLoop_casenext175442
	; LineNumber: 4056
	; LineNumber: 4057
	jsr InitLevel
	; LineNumber: 4058
	jsr LoopMenu1
	; LineNumber: 4059
	jmp GameLoop_caseend175439
GameLoop_casenext175442
	lda #$6
	cmp state ;keep
	bne GameLoop_casenext175444
	; LineNumber: 4060
	jsr LoopMenu
	jmp GameLoop_caseend175439
GameLoop_casenext175444
	lda #$7
	cmp state ;keep
	bne GameLoop_casenext175446
	; LineNumber: 4062
	; LineNumber: 4063
	jsr LoopMenu
	; LineNumber: 4064
	jmp GameLoop_caseend175439
GameLoop_casenext175446
	lda #$1
	cmp state ;keep
	bne GameLoop_casenext175448
	; LineNumber: 4064
	jsr InitScene
	jmp GameLoop_caseend175439
GameLoop_casenext175448
	lda #$3
	cmp state ;keep
	bne GameLoop_casenext175450
	; LineNumber: 4066
	; LineNumber: 4068
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4069
	
; // will be updated in raster chain
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4070
GameLoop_while175452
GameLoop_loopstart175456
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GameLoop_elsedoneblock175455
GameLoop_ConditionalTrueBlock175453: ;Main true block ;keep 
	; LineNumber: 4070
	; LineNumber: 4071
	jsr callReadJoy1
	; LineNumber: 4072
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4073
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne GameLoop_elsedoneblock175469
GameLoop_ConditionalTrueBlock175467: ;Main true block ;keep 
	; LineNumber: 4073
	; LineNumber: 4074
	jsr Update
	; LineNumber: 4075
	jsr Animate
	; LineNumber: 4076
	jsr CycleWater
	; LineNumber: 4077
	jsr DecreaseTextTimer
	; LineNumber: 4078
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4078
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4080
GameLoop_elsedoneblock175469
	; LineNumber: 4081
	jmp GameLoop_while175452
GameLoop_elsedoneblock175455
GameLoop_loopend175457
	; LineNumber: 4082
GameLoop_casenext175450
GameLoop_caseend175439
	; LineNumber: 4084
	jmp GameLoop_while175397
GameLoop_elsedoneblock175400
GameLoop_loopend175402
	; LineNumber: 4085
	rts
end_procedure_GameLoop
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

