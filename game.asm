
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
raster	dc.b	0
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
sndFall	dc.b $81, $7, $20, $2, $43, $4, $0
	; Resuming memory block at $400
sndStep	dc.b $20, $8, $0
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
sndLadder	dc.b $44, $b, $85, $3, $20, $7, $0
	; Resuming memory block at $400
sndJump	dc.b $81, $3, $0
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
sndExplosion	dc.b $44, $3, $20, $6, $81, $5, $0
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
txtCharSwapRed		dc.b	"ACTIVE: WHITE"
	dc.b	0
	; Resuming memory block at $400
txtCharSwapGreen		dc.b	"ACTIVE: GREEN"
	dc.b	0
	; Resuming memory block at $400
txtPlayerExit		dc.b	"PLAYER EXITED"
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
txtLogo		dc.b	"F @ Z Z"
	dc.b	0
	; Resuming memory block at $400
txtAuthor		dc.b	"CODE: ANDY DAUMANN"
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
txtPressWasd		dc.b	"P2: USE 'WASD'+'J'"
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
simJoy	dc.b	0
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
	org $f00
StartBlockf00:
	org $f00
tilesetColors:
	incbin	 "C:/Users/mail/OneDrive/Source/fizz20///chr/tileset_color_split2.bin"
end_incbin_tilesetColors:
EndBlockf00:
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
	; LineNumber: 4178
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
	; LineNumber: 9
Key_keys	dc.b	 
	org Key_keys+8
	; LineNumber: 10
Key_keysLast	dc.b	 
	org Key_keysLast+8
	; LineNumber: 11
Key_keysPressed	dc.b	 
	org Key_keysPressed+8
	; LineNumber: 14
Key_keyState	dc.b	0
	; LineNumber: 18
Key_temp	dc.b	0
	; LineNumber: 20
Key_KeyRow = $9120
	; LineNumber: 21
Key_KeyRead = $9121
	; LineNumber: 23
Key_keyRowValues	dc.b $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f
	; LineNumber: 34
	; Ending memory block at $1210
	; LineNumber: 35
	; Ending memory block at $1210
	; LineNumber: 36
	; Ending memory block at $1210
	; LineNumber: 38
	; Ending memory block at $1210
	; LineNumber: 39
	; Ending memory block at $1210
	; LineNumber: 40
	; Ending memory block at $1210
	; LineNumber: 41
	; Ending memory block at $1210
	; LineNumber: 44
	; Ending memory block at $1210
	; LineNumber: 47
	; Ending memory block at $1210
	; LineNumber: 48
	; Ending memory block at $1210
	; LineNumber: 49
	; Ending memory block at $1210
	; LineNumber: 50
	; Ending memory block at $1210
	; LineNumber: 53
	; Ending memory block at $1210
	; LineNumber: 54
	; Ending memory block at $1210
	; LineNumber: 55
	; Ending memory block at $1210
	; LineNumber: 56
	; Ending memory block at $1210
	; LineNumber: 57
	; Ending memory block at $1210
	; LineNumber: 58
	; Ending memory block at $1210
	; LineNumber: 60
	; Ending memory block at $1210
	; LineNumber: 153
	; Ending memory block at $1210
	; LineNumber: 154
	; Ending memory block at $1210
	; LineNumber: 155
	; Ending memory block at $1210
	; LineNumber: 156
	; Ending memory block at $1210
	; LineNumber: 158
	; Ending memory block at $1210
	; LineNumber: 178
	; Ending memory block at $1210
	; LineNumber: 180
	; Ending memory block at $1210
	; LineNumber: 184
	; Ending memory block at $1210
	; LineNumber: 188
	; Ending memory block at $1210
	; LineNumber: 192
	; Ending memory block at $1210
	; LineNumber: 196
	; Ending memory block at $1210
	; LineNumber: 200
	; Ending memory block at $1210
	; LineNumber: 204
	; Ending memory block at $1210
	; LineNumber: 208
	; Ending memory block at $1210
	; LineNumber: 212
	; Ending memory block at $1210
	; LineNumber: 214
	; Ending memory block at $1210
	; LineNumber: 216
	; Ending memory block at $1210
	; LineNumber: 218
	; Ending memory block at $1210
	; LineNumber: 220
	; Ending memory block at $1210
	; LineNumber: 222
	; Ending memory block at $1210
	; LineNumber: 224
	; Ending memory block at $1210
	; LineNumber: 226
	; Ending memory block at $1210
	; LineNumber: 228
	; Ending memory block at $1210
	; LineNumber: 230
	; Ending memory block at $1210
	; LineNumber: 232
	; Ending memory block at $1210
	; LineNumber: 234
	; Ending memory block at $1210
	; LineNumber: 235
	; Ending memory block at $1210
	; LineNumber: 236
	; Ending memory block at $1210
	; LineNumber: 238
	; Ending memory block at $1210
	; LineNumber: 239
	; Ending memory block at $1210
	; LineNumber: 240
	; Ending memory block at $1210
	; LineNumber: 241
	; Ending memory block at $1210
	; LineNumber: 243
	; Ending memory block at $1210
	; LineNumber: 244
	; Ending memory block at $1210
	; LineNumber: 245
	; Ending memory block at $1210
	; LineNumber: 246
	; Ending memory block at $1210
	; LineNumber: 248
	; Ending memory block at $1210
	; LineNumber: 250
	; Ending memory block at $1210
	; LineNumber: 373
	; Ending memory block at $1210
	; LineNumber: 375
	; Ending memory block at $1210
	; LineNumber: 377
	; Ending memory block at $1210
	; LineNumber: 379
	; Ending memory block at $1210
	; LineNumber: 381
	; Ending memory block at $1210
	; LineNumber: 383
	; Ending memory block at $1210
	; LineNumber: 385
	; Ending memory block at $1210
	; LineNumber: 386
	; Ending memory block at $1210
	; LineNumber: 387
	; Ending memory block at $1210
	; LineNumber: 388
	; Ending memory block at $1210
	; LineNumber: 389
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
	; LineNumber: 397
	; Ending memory block at $1210
	; LineNumber: 398
	; Ending memory block at $1210
	; LineNumber: 399
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
	; LineNumber: 413
	; Ending memory block at $1210
	; LineNumber: 414
	; Ending memory block at $1210
	; LineNumber: 415
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
	; LineNumber: 422
	; Ending memory block at $1210
	; LineNumber: 423
	; Ending memory block at $1210
	; LineNumber: 424
	; Ending memory block at $1210
	; LineNumber: 425
	; Ending memory block at $1210
	; LineNumber: 438
	; Ending memory block at $1210
	; LineNumber: 469
	; Ending memory block at $1210
	; LineNumber: 470
	; Ending memory block at $1210
	; LineNumber: 471
	; Ending memory block at $1210
	; LineNumber: 477
	; Ending memory block at $1210
	; LineNumber: 480
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 514
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 513
	; Ending memory block at $1210
	; LineNumber: 558
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
str_strlen_block4
str_strlen
	; LineNumber: 42
	lda #$0
	; Calling storevariable on generic assign expression
	sta str_li
	; LineNumber: 43
str_strlen_while5
str_strlen_loopstart9
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load pointer array
	ldy str_li
	lda (str_p3),y
	; cmp #$00 ignored
	beq str_strlen_edblock8
str_strlen_ctb6: ;Main true block ;keep 
	; LineNumber: 43
	; Test Inc dec D
	inc str_li
	jmp str_strlen_while5
str_strlen_edblock8
str_strlen_loopend10
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
str_reverse_block13
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
str_reverse_while14
str_reverse_loopstart18
	; Binary clause Simplified: LESS
	lda str_i
	; Compare with pure num / var optimization
	cmp str_j;keep
	bcs str_reverse_edblock17
str_reverse_ctb15: ;Main true block ;keep 
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
	jmp str_reverse_while14
str_reverse_edblock17
str_reverse_loopend19
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
str_itoa_block22
str_itoa
	; LineNumber: 81
	lda #$0
	; Calling storevariable on generic assign expression
	sta str_i
	; LineNumber: 82
	; Binary clause INTEGER: EQUALS
	lda str_num+1   ; compare high bytes
	cmp #$00 ;keep
	bne str_itoa_edblock26
	lda str_num
	cmp #$00 ;keep
	bne str_itoa_edblock26
	jmp str_itoa_ctb24
str_itoa_ctb24: ;Main true block ;keep 
	; LineNumber: 83
	; LineNumber: 84
	lda #$30
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (str_p1),y
	; LineNumber: 85
	
; // Simply 0
	lda #$0
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$1
	sta (str_p1),y
	; LineNumber: 86
	rts
	; LineNumber: 87
str_itoa_edblock26
	; LineNumber: 88
str_itoa_while29
str_itoa_loopstart33
	; Binary clause INTEGER: NOTEQUALS
	lda str_num+1   ; compare high bytes
	cmp #$00 ;keep
	beq str_itoa_pass138
	jmp str_itoa_ctb30
str_itoa_pass138
	lda str_num
	cmp #$00 ;keep
	beq str_itoa_edblock32
	jmp str_itoa_ctb30
str_itoa_ctb30: ;Main true block ;keep 
	; LineNumber: 89
	; LineNumber: 90
	; Load Byte array
	; CAST type NADA
	; Modulo
	lda str_b
str_itoa_val_var40 = $88
	sta str_itoa_val_var40
	ldy str_num+1 ;keep
	lda str_num
	sec
str_itoa_modulo41
	sbc str_itoa_val_var40
	bcs str_itoa_modulo41
	adc str_itoa_val_var40
	tax
	lda str_chars,x 
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_i ; optimized, look out for bugs
	sta (str_p1),y
	; LineNumber: 91
	; Test Inc dec D
	inc str_i
	; LineNumber: 92
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
	; LineNumber: 93
	jmp str_itoa_while29
str_itoa_edblock32
str_itoa_loopend34
	; LineNumber: 94
	lda #$0
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy str_i ; optimized, look out for bugs
	sta (str_p1),y
	; LineNumber: 95
	
; // null-term string    
	lda str_p1
	ldx str_p1+1
	sta str_p2
	stx str_p2+1
	jsr str_reverse
	; LineNumber: 97
	rts
end_procedure_str_itoa
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Read
	;    Procedure type : User-defined procedure
	; LineNumber: 240
Key_Read
	; LineNumber: 242
	lda #$0
	; Calling storevariable on generic assign expression
	sta Key_keyState
	; LineNumber: 271
	
; // row to test
	; Calling storevariable on generic assign expression
	sta Key_temp
Key_Read_forloop43
	; LineNumber: 245
	; LineNumber: 247
	; Load Byte array
	; CAST type NADA
	ldx Key_temp
	lda Key_keyRowValues,x 
	; Calling storevariable on generic assign expression
	sta Key_KeyRow
	; LineNumber: 249
		lda Key_KeyRead ; get bits
		eor #$ff ; invert so the below works
		sta Key_keys,x
		eor Key_keysLast,x
		and Key_keys,x
		sta Key_keysPressed,x
		lda Key_keys,x
		sta Key_keysLast,x
		
		; record if no key pressed
		clc
		adc Key_keyState
		sta Key_keyState
		
		
	; LineNumber: 270
Key_Read_loopstart44
	; Compare is onpage
	; Test Inc dec D
	inc Key_temp
	lda #$8
	cmp Key_temp ;keep
	bne Key_Read_forloop43
Key_Read_loopdone48: ;keep
Key_Read_loopend45
	; LineNumber: 272
	rts
end_procedure_Key_Read
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Held
	;    Procedure type : User-defined procedure
	; LineNumber: 277
	; LineNumber: 276
Key_Held_block49
Key_Held
	; LineNumber: 279
	
	sty Key_temp
	lda Key_keys,x
	and Key_temp 	; contains column 
	
	
	; LineNumber: 287
	rts
end_procedure_Key_Held
	
; // Render
; // Physics
; // ShiftPlattform
; // Control
; // Animation
; // Portal
; // Laser, Fontaine
; // Mirror
; // PushPull  , Door, Exit, Switch
	; NodeProcedureDecl 3
	; Ending memory block at $1210
	; ***********  Defining procedure : vbl
	;    Procedure type : User-defined procedure
	; LineNumber: 4124
vbl
	; LineNumber: 4125
	; StartIRQ
	pha
	txa
	pha
	tya
	pha
	; LineNumber: 4126
	jsr UpdateSound
	; LineNumber: 4127
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175696
	jmp vbl_ctb175583
vbl_localfailed175696
	jmp vbl_edblock175585
vbl_ctb175583: ;Main true block ;keep 
	; LineNumber: 4127
	; LineNumber: 4128
	; Binary clause Simplified: EQUALS
	clc
	lda time
	; cmp #$00 ignored
	bne vbl_localfailed175754
	jmp vbl_ctb175699
vbl_localfailed175754
	jmp vbl_eblock175700
vbl_ctb175699: ;Main true block ;keep 
	; LineNumber: 4128
	; LineNumber: 4129
	jsr SwitchBank
	; LineNumber: 4133
	jmp vbl_edblock175701
vbl_eblock175700
	; LineNumber: 4132
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175783
vbl_localsuccess175784: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne vbl_localfailed175783
	jmp vbl_ctb175758
vbl_localfailed175783
	jmp vbl_eblock175759
vbl_ctb175758: ;Main true block ;keep 
	; LineNumber: 4132
	; LineNumber: 4134
	
; // if(state = 8) then state := 2;
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175786
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
	bne vbl_halfcopyloop175786
	; LineNumber: 4135
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175788
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
	bne vbl_halfcopyloop175788
	; LineNumber: 4137
	jmp vbl_edblock175760
vbl_eblock175759
	; LineNumber: 4136
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175800
vbl_localsuccess175801: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_localfailed175800
	jmp vbl_ctb175792
vbl_localfailed175800
	jmp vbl_edblock175794
vbl_ctb175792: ;Main true block ;keep 
	; LineNumber: 4137
	; LineNumber: 4138
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175803
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
	bne vbl_halfcopyloop175803
	; LineNumber: 4139
	; Copy half screen unrolled 500 bytes = 12.5*40
	ldx #00
vbl_halfcopyloop175805
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
	bne vbl_halfcopyloop175805
	; LineNumber: 4140
vbl_edblock175794
vbl_edblock175760
vbl_edblock175701
	; LineNumber: 4141
vbl_edblock175585
	; LineNumber: 4142
	; Binary clause Simplified: EQUALS
	lda time
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne vbl_edblock175810
vbl_ctb175808: ;Main true block ;keep 
	; LineNumber: 4142
	; LineNumber: 4143
	lda #$0
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4144
vbl_edblock175810
	; LineNumber: 4145
	; Binary clause Simplified: LESS
	lda time
	; Compare with pure num / var optimization
	cmp #$4;keep
	bcs vbl_eblock175815
vbl_ctb175814: ;Main true block ;keep 
	; LineNumber: 4144
	; Test Inc dec D
	inc time
	jmp vbl_edblock175816
vbl_eblock175815
	; LineNumber: 4145
	; Binary clause Simplified: EQUALS
	lda frameStatus
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne vbl_edblock175830
vbl_ctb175828: ;Main true block ;keep 
	; LineNumber: 4145
	; LineNumber: 4147
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4148
vbl_edblock175830
vbl_edblock175816
	; LineNumber: 4149
	; CloseIRQ
	pla
	tay
	pla
	tax
	pla
	 jmp $eabf     ; return to normal IRQ	
	; LineNumber: 4150
	rti
end_procedure_vbl
	; NodeProcedureDecl -1
	; ***********  Defining procedure : InitScene
	;    Procedure type : User-defined procedure
	; LineNumber: 4154
InitScene
	; LineNumber: 4156
	jsr InitMap
	; LineNumber: 4157
	jsr InitActors
	; LineNumber: 4157
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4159
	jsr ClearFullScreen
	; LineNumber: 4160
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4161
	jsr PrintFrame
	; LineNumber: 4162
	jsr ClearText
	; LineNumber: 4163
	jsr SwitchBank
	; LineNumber: 4164
	jsr ClearFullScreen
	; LineNumber: 4165
	
; // clear screen
	jsr PaintFull
	; LineNumber: 4166
	jsr PrintFrame
	; LineNumber: 4167
	jsr ClearText
	; LineNumber: 4169
	jsr InitAnimations
	; LineNumber: 4170
	lda #$3
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4172
	lda #<sndSceneStart
	ldy #>sndSceneStart
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 4172
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 4172
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 4174
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx raster ; optimized, look out for bugs
	lda #$0
	bne InitScene_viarasterirq_ntsc_timing175834
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp InitScene_viarasterirq_end175835
InitScene_viarasterirq_ntsc_timing175834
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
InitScene_viarasterirq_end175835
	; LineNumber: 4175
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
	; LineNumber: 4176
	rts
end_procedure_InitScene
block1
main_block_begin_
	; LineNumber: 4179
	; Binary clause Simplified: EQUALS
	lda $9000
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne MainProgram_eblock175838
MainProgram_ctb175837: ;Main true block ;keep 
	; LineNumber: 4178
	lda #$79
	; Calling storevariable on generic assign expression
	sta raster
	jmp MainProgram_edblock175839
MainProgram_eblock175838
	; LineNumber: 4178
	lda #$6b
	; Calling storevariable on generic assign expression
	sta raster
MainProgram_edblock175839
	; LineNumber: 4180
	jsr ClearFullScreen
	; LineNumber: 4181
	
; // clear screen
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175845
	ldy #>MainProgram_stringassignstr175845
	sta fileName
	sty fileName+1
	; LineNumber: 4182
	; Integer constant assigning
	; Load16bitvariable : #$400
	ldy #$04
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4183
	; Assigning a string : fileName
	;has array index
	lda #<MainProgram_stringassignstr175847
	ldy #>MainProgram_stringassignstr175847
	sta fileName
	sty fileName+1
	; LineNumber: 4184
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 4185
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 4186
	jsr InitScreen
	; LineNumber: 4187
	jsr SetupSound
	; LineNumber: 4189
	jsr ClearFullScreen
	; LineNumber: 4191
	
; // clear screen
	lda #$30
	; Calling storevariable on generic assign expression
	sta maxSingleLevels
	; LineNumber: 4192
	lda #$1e
	; Calling storevariable on generic assign expression
	sta maxMultiLevels
	; LineNumber: 4193
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_levCoop
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_InitGame_mode
	jsr InitGame
	; LineNumber: 4194
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 4196
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx raster ; optimized, look out for bugs
	lda #$0
	bne MainProgram_viarasterirq_ntsc_timing175848
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp MainProgram_viarasterirq_end175849
MainProgram_viarasterirq_ntsc_timing175848
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
MainProgram_viarasterirq_end175849
	; LineNumber: 4264
	
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
; //			@PLAY_SOUND("3","sndStep","150")
; //		end; 
; //		if (i = KEY_F3) then begin
; //			@PLAY_SOUND("3","sndFall","240")
; //		end; 
; //		if (i = KEY_F5) then begin
; //			@PLAY_SOUND("3","sndFall","240")
; //		end; 
; //		if (i = KEY_F7) then begin
; //			@PLAY_SOUND("3","sndExit","240")
; // 		end; 
; //		if (i = KEY_A) then begin
; //			@PLAY_SOUND("0","sndSwim","240")
; //		end; 
; //		if (i = KEY_B) then begin
; //			@PLAY_SOUND("3","sndGravActivate","240")
; //		end; 
; //		if (i = KEY_C) then begin
; //			@PLAY_SOUND("3","sndPlayerChange","240")
; // 		end; 
; //		if (i = KEY_D) then begin
; //			@PLAY_SOUND("3","sndSwitchOn","240")
; //		end; 
; //		if (i = KEY_E) then begin
; //			@PLAY_SOUND("3","sndSwitchOff","240")
; //		end;
; //		if(i = KEY_F) then begin
; //			@PLAY_SOUND("3","sndExitClose","240")
; //		end;
; //		if(i = KEY_G) then begin
; //			@PLAY_SOUND("3","sndEnd","240")
; //		end;
; //
; //
; //		
; //
; //	end;
; //	
	jsr GameLoop
	; LineNumber: 4265
	jmp * ; loop like (�/%
	; LineNumber: 4266
main_block_end_
	; End of program
	; Ending memory block at $1210
MainProgram_stringassignstr175845		dc.b	"VAR"
	dc.b	0
MainProgram_stringassignstr175847		dc.b	"COD"
	dc.b	0
EndBlock1210:
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
	; ***********  Defining procedure : ReadJoySim
	;    Procedure type : User-defined procedure
	; LineNumber: 564
ReadJoySim
	; LineNumber: 565
	jsr Key_Read
	; LineNumber: 566
	lda #$0
	; Calling storevariable on generic assign expression
	sta simJoy
	; LineNumber: 567
	; Binary clause Simplified: NOTEQUALS
	clc
	; Assigning to register
	; Assigning register : _xy
	ldx #$01
	ldy #$02
	jsr Key_Held
	; cmp #$00 ignored
	beq ReadJoySim_edblock54
ReadJoySim_ctb52: ;Main true block ;keep 
	; LineNumber: 566
	; 8 bit binop
	; Add/sub where right value is constant number
	lda simJoy
	ora #$2
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta simJoy
ReadJoySim_edblock54
	; LineNumber: 568
	; Binary clause Simplified: NOTEQUALS
	clc
	; Assigning to register
	; Assigning register : _xy
	ldx #$05
	ldy #$02
	jsr Key_Held
	; cmp #$00 ignored
	beq ReadJoySim_edblock60
ReadJoySim_ctb58: ;Main true block ;keep 
	; LineNumber: 567
	; 8 bit binop
	; Add/sub where right value is constant number
	lda simJoy
	ora #$4
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta simJoy
ReadJoySim_edblock60
	; LineNumber: 569
	; Binary clause Simplified: NOTEQUALS
	clc
	; Assigning to register
	; Assigning register : _xy
	ldx #$02
	ldy #$02
	jsr Key_Held
	; cmp #$00 ignored
	beq ReadJoySim_edblock66
ReadJoySim_ctb64: ;Main true block ;keep 
	; LineNumber: 568
	; 8 bit binop
	; Add/sub where right value is constant number
	lda simJoy
	ora #$8
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta simJoy
ReadJoySim_edblock66
	; LineNumber: 570
	; Binary clause Simplified: NOTEQUALS
	clc
	; Assigning to register
	; Assigning register : _xy
	ldx #$02
	ldy #$04
	jsr Key_Held
	; cmp #$00 ignored
	beq ReadJoySim_edblock72
ReadJoySim_ctb70: ;Main true block ;keep 
	; LineNumber: 569
	; 8 bit binop
	; Add/sub where right value is constant number
	lda simJoy
	ora #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta simJoy
ReadJoySim_edblock72
	; LineNumber: 571
	; Binary clause Simplified: NOTEQUALS
	clc
	; Assigning to register
	; Assigning register : _xy
	ldx #$02
	ldy #$10
	jsr Key_Held
	; cmp #$00 ignored
	beq ReadJoySim_edblock78
ReadJoySim_ctb76: ;Main true block ;keep 
	; LineNumber: 570
	; 8 bit binop
	; Add/sub where right value is constant number
	lda simJoy
	ora #$10
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta simJoy
ReadJoySim_edblock78
	; LineNumber: 572
	rts
end_procedure_ReadJoySim
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ColorLine
	;    Procedure type : User-defined procedure
	; LineNumber: 577
	; LineNumber: 576
localVariable_ColorLine_y	dc.b	0
	; LineNumber: 576
localVariable_ColorLine_col	dc.b	0
ColorLine_block81
ColorLine
	; LineNumber: 578
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ColorLine_eblock84
ColorLine_ctb83: ;Main true block ;keep 
	; LineNumber: 577
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ColorLine_y
	asl
	tax
	lda col1,x 
	ldy col1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp ColorLine_edblock85
ColorLine_eblock84
	; LineNumber: 577
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ColorLine_y
	asl
	tax
	lda col2,x 
	ldy col2+1,x 
	sta screenmemory
	sty screenmemory+1
ColorLine_edblock85
	; LineNumber: 579
	ldy #$13 ; optimized, look out for bugs
	lda localVariable_ColorLine_col
ColorLine_fill90
	sta (screenmemory),y
	dey
	bpl ColorLine_fill90
	; LineNumber: 580
	rts
end_procedure_ColorLine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintStringColor
	;    Procedure type : User-defined procedure
	; LineNumber: 585
	; LineNumber: 584
localVariable_PrintStringColor_len	dc.b	0
	; LineNumber: 582
localVariable_PrintStringColor_p1	= $72
	; LineNumber: 582
localVariable_PrintStringColor_x	dc.b	0
	; LineNumber: 582
localVariable_PrintStringColor_y	dc.b	0
	; LineNumber: 582
localVariable_PrintStringColor_varPrefixed_c	dc.b	0
PrintStringColor_block91
PrintStringColor
	; LineNumber: 590
	lda localVariable_PrintStringColor_p1
	ldx localVariable_PrintStringColor_p1+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_len
	; LineNumber: 591
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintStringColor_eblock94
PrintStringColor_ctb93: ;Main true block ;keep 
	; LineNumber: 590
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintStringColor_edblock95
PrintStringColor_eblock94
	; LineNumber: 590
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintStringColor_edblock95
	; LineNumber: 592
	lda screenmemory
	clc
	adc localVariable_PrintStringColor_x
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc PrintStringColor_WordAdd100
	inc screenmemory+1
PrintStringColor_WordAdd100
	; LineNumber: 593
	ldy localVariable_PrintStringColor_p1+1 ;keep
	lda localVariable_PrintStringColor_p1
	sta print_text+0
	sty print_text+1
	ldx localVariable_PrintStringColor_len ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 594
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintStringColor_eblock105
PrintStringColor_ctb104: ;Main true block ;keep 
	; LineNumber: 593
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda col1,x 
	ldy col1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintStringColor_edblock106
PrintStringColor_eblock105
	; LineNumber: 593
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_PrintStringColor_y
	asl
	tax
	lda col2,x 
	ldy col2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintStringColor_edblock106
	; LineNumber: 595
	lda screenmemory
	clc
	adc localVariable_PrintStringColor_x
	sta screenmemory+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc PrintStringColor_WordAdd111
	inc screenmemory+1
PrintStringColor_WordAdd111
	; LineNumber: 596
	ldy localVariable_PrintStringColor_len ; optimized, look out for bugs
	lda localVariable_PrintStringColor_varPrefixed_c
PrintStringColor_fill112
	sta (screenmemory),y
	dey
	bpl PrintStringColor_fill112
	; LineNumber: 598
	rts
end_procedure_PrintStringColor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintCenterStringColor
	;    Procedure type : User-defined procedure
	; LineNumber: 603
	; LineNumber: 602
localVariable_PrintCenterStringColor_len	dc.b	0
	; LineNumber: 602
localVariable_PrintCenterStringColor_x	dc.b	0
	; LineNumber: 600
localVariable_PrintCenterStringColor_p1	= $72
	; LineNumber: 600
localVariable_PrintCenterStringColor_y	dc.b	0
	; LineNumber: 600
localVariable_PrintCenterStringColor_varPrefixed_c	dc.b	0
PrintCenterStringColor_block113
PrintCenterStringColor
	; LineNumber: 608
	lda localVariable_PrintCenterStringColor_p1
	ldx localVariable_PrintCenterStringColor_p1+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_len
	; LineNumber: 609
	; Binary clause Simplified: LESS
	; Compare with pure num / var optimization
	cmp #$14;keep
	bcs PrintCenterStringColor_eblock116
PrintCenterStringColor_ctb115: ;Main true block ;keep 
	; LineNumber: 609
	; 8 bit binop
	; Add/sub right value is variable/expression
	; Right is PURE NUMERIC : Is word =0
	; 8 bit mul of power 2
	; Load16bitvariable : localVariable_PrintCenterStringColor_len
	lda localVariable_PrintCenterStringColor_len
	lsr
PrintCenterStringColor_rightvarAddSub_var122 = $88
	sta PrintCenterStringColor_rightvarAddSub_var122
	lda #$a
	sec
	sbc PrintCenterStringColor_rightvarAddSub_var122
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_x
	jmp PrintCenterStringColor_edblock117
PrintCenterStringColor_eblock116
	; LineNumber: 610
	; LineNumber: 612
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_x
	; LineNumber: 613
PrintCenterStringColor_edblock117
	; LineNumber: 614
	lda localVariable_PrintCenterStringColor_p1
	ldx localVariable_PrintCenterStringColor_p1+1
	sta localVariable_PrintStringColor_p1
	stx localVariable_PrintStringColor_p1+1
	lda localVariable_PrintCenterStringColor_x
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_x
	lda localVariable_PrintCenterStringColor_y
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_y
	lda localVariable_PrintCenterStringColor_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintStringColor_varPrefixed_c
	jsr PrintStringColor
	; LineNumber: 616
	rts
end_procedure_PrintCenterStringColor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintText
	;    Procedure type : User-defined procedure
	; LineNumber: 619
	; LineNumber: 618
localVariable_PrintText_x	dc.b	0
PrintText_block124
PrintText
	; LineNumber: 624
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintText_eblock127
PrintText_ctb126: ;Main true block ;keep 
	; LineNumber: 623
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintText_edblock128
PrintText_eblock127
	; LineNumber: 623
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintText_edblock128
	; LineNumber: 625
	ldy #$14 ; optimized, look out for bugs
	lda #$20
PrintText_fill133
	sta (screenmemory),y
	dey
	bpl PrintText_fill133
	; LineNumber: 626
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
	; LineNumber: 628
	rts
end_procedure_PrintText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PrintFrame
	;    Procedure type : User-defined procedure
	; LineNumber: 633
	; LineNumber: 632
localVariable_PrintFrame_i	dc.b	0
PrintFrame_block134
PrintFrame
	; LineNumber: 634
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintFrame_eblock137
PrintFrame_ctb136: ;Main true block ;keep 
	; LineNumber: 633
	; Load Integer array
	; CAST type INTEGER
	ldx #0 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintFrame_edblock138
PrintFrame_eblock137
	; LineNumber: 633
	; Load Integer array
	; CAST type INTEGER
	ldx #0 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintFrame_edblock138
	; LineNumber: 635
	ldy #$13 ; optimized, look out for bugs
	lda #$1e
PrintFrame_fill143
	sta (screenmemory),y
	dey
	bpl PrintFrame_fill143
	; LineNumber: 636
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_col
	jsr ColorLine
	; LineNumber: 637
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PrintFrame_eblock146
PrintFrame_ctb145: ;Main true block ;keep 
	; LineNumber: 636
	; Load Integer array
	; CAST type INTEGER
	ldx #26 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp PrintFrame_edblock147
PrintFrame_eblock146
	; LineNumber: 636
	; Load Integer array
	; CAST type INTEGER
	ldx #26 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
PrintFrame_edblock147
	; LineNumber: 638
	ldy #$13 ; optimized, look out for bugs
	lda #$1f
PrintFrame_fill152
	sta (screenmemory),y
	dey
	bpl PrintFrame_fill152
	; LineNumber: 639
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_y
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_col
	jsr ColorLine
	; LineNumber: 640
	rts
end_procedure_PrintFrame
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearText
	;    Procedure type : User-defined procedure
	; LineNumber: 643
ClearText
	; LineNumber: 645
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ClearText_eblock156
ClearText_ctb155: ;Main true block ;keep 
	; LineNumber: 644
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr1,x 
	ldy scr1+1,x 
	sta screenmemory
	sty screenmemory+1
	jmp ClearText_edblock157
ClearText_eblock156
	; LineNumber: 644
	; Load Integer array
	; CAST type INTEGER
	ldx #34 ; watch for bug, Integer array has max index of 128
	lda scr2,x 
	ldy scr2+1,x 
	sta screenmemory
	sty screenmemory+1
ClearText_edblock157
	; LineNumber: 646
	ldy #$13 ; optimized, look out for bugs
	lda #$20
ClearText_fill162
	sta (screenmemory),y
	dey
	bpl ClearText_fill162
	; LineNumber: 648
	rts
end_procedure_ClearText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearFullScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 651
ClearFullScreen
	; LineNumber: 651
	; Clear screen with offset
	lda #$20
	ldx #$fe
ClearFullScreen_clearloop164
	dex
	sta $0000+$1000,x
	sta $00fd+$1000,x
	bne ClearFullScreen_clearloop164
	; LineNumber: 652
	
; // clear screen
	; Clear screen with offset
	lda #$20
	ldx #$fe
ClearFullScreen_clearloop165
	dex
	sta $0000+$1e00,x
	sta $00fd+$1e00,x
	bne ClearFullScreen_clearloop165
	; LineNumber: 653
	
; // clear screen
	; Clear screen with offset
	lda #$91
	ldx #$fe
ClearFullScreen_clearloop166
	dex
	sta $0000+$9400,x
	sta $00fd+$9400,x
	bne ClearFullScreen_clearloop166
	; LineNumber: 654
	
; // set character colour memory to white
	; Clear screen with offset
	lda #$91
	ldx #$fe
ClearFullScreen_clearloop167
	dex
	sta $0000+$9600,x
	sta $00fd+$9600,x
	bne ClearFullScreen_clearloop167
	; LineNumber: 656
	rts
end_procedure_ClearFullScreen
	
; // set character colour memory to white
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwapActiveChar
	;    Procedure type : User-defined procedure
	; LineNumber: 660
SwapActiveChar
	; LineNumber: 661
	lda #$14
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 662
	; Binary clause Simplified: EQUALS
	clc
	lda activeChar
	; cmp #$00 ignored
	bne SwapActiveChar_eblock171
SwapActiveChar_localsuccess182: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq SwapActiveChar_eblock171
SwapActiveChar_ctb170: ;Main true block ;keep 
	; LineNumber: 661
	; LineNumber: 663
	lda #$1
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 664
	lda #<txtCharSwapGreen
	ldx #>txtCharSwapGreen
	sta sp
	stx sp+1
	; LineNumber: 665
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 666
	jmp SwapActiveChar_edblock172
SwapActiveChar_eblock171
	; LineNumber: 666
	; Binary clause Simplified: EQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne SwapActiveChar_edblock188
SwapActiveChar_localsuccess190: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq SwapActiveChar_edblock188
SwapActiveChar_ctb186: ;Main true block ;keep 
	; LineNumber: 666
	; LineNumber: 668
	lda #$0
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 669
	lda #<txtCharSwapRed
	ldx #>txtCharSwapRed
	sta sp
	stx sp+1
	; LineNumber: 670
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 671
SwapActiveChar_edblock188
SwapActiveChar_edblock172
	; LineNumber: 672
	rts
end_procedure_SwapActiveChar
	; NodeProcedureDecl 3
	; ***********  Defining procedure : LoadFile
	;    Procedure type : User-defined procedure
	; LineNumber: 678
	; LineNumber: 676
localVariable_LoadFile_len	dc.b	0
	; LineNumber: 677
localVariable_LoadFile_fn	dc.w	0
	; LineNumber: 674
localVariable_LoadFile_addr	dc.w	0
LoadFile_block192
LoadFile
	; LineNumber: 679
	lda fileName
	ldx fileName+1
	sta str_p3
	stx str_p3+1
	jsr str_strlen
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_len
	; LineNumber: 681
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
	
	; LineNumber: 706
	rts
end_procedure_LoadFile
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 712
	; LineNumber: 710
localVariable_InitLevel_i	dc.w	0
	; LineNumber: 711
localVariable_InitLevel_levStr		dc.b	"XFF"
	dc.b	0
InitLevel_block193
InitLevel
	; LineNumber: 713
	lda #$0
	; Calling storevariable on generic assign expression
	sta countObjects
	; LineNumber: 714
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 715
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 716
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 717
	; Calling storevariable on generic assign expression
	sta countLasers
	; LineNumber: 718
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 719
	lda #$1
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 720
	lda #$6
	; Calling storevariable on generic assign expression
	sta statusCol
	; LineNumber: 722
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$2
	; LineNumber: 723
	lda #$7f
	sta $912e ; disable and acknowledge interrupts
	sta $912d
	; LineNumber: 730
	; Integer constant assigning
	; Load16bitvariable : #$aecf
	ldy #$ae
	lda #$cf
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_i
	sty localVariable_InitLevel_i+1
InitLevel_forloop194
	; LineNumber: 726
	; LineNumber: 727
	
; // TODO: new mem pos
	ldy localVariable_InitLevel_i+1 ;keep
	lda localVariable_InitLevel_i
	sta sp
	sty sp+1
	; LineNumber: 728
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy #$0
	sta (sp),y
	; LineNumber: 729
InitLevel_loopstart195
	; Compare is onpage
	lda localVariable_InitLevel_i
	clc
	adc #$01
	sta localVariable_InitLevel_i+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc InitLevel_WordAdd200
	inc localVariable_InitLevel_i+1
InitLevel_WordAdd200
	; Executing integer comparison #$bff0
	; Binary clause INTEGER: NOTEQUALS
	lda localVariable_InitLevel_i+1   ; compare high bytes
	cmp #$bf ;keep
	beq InitLevel_pass1206
	jmp InitLevel_ctb202
InitLevel_pass1206
	lda localVariable_InitLevel_i
	cmp #$f0 ;keep
	beq InitLevel_edblock204
	jmp InitLevel_ctb202
InitLevel_ctb202: ;Main true block ;keep 
	; LineNumber: 725
	; LineNumber: 726
  jmp InitLevel_forloop194
InitLevel_edblock204
InitLevel_loopdone199: ;keep
InitLevel_loopend196
	; LineNumber: 731
	
; // TODO: Load 
; //		end;
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne InitLevel_localfailed223
	jmp InitLevel_ctb209
InitLevel_localfailed223
	jmp InitLevel_eblock210
InitLevel_ctb209: ;Main true block ;keep 
	; LineNumber: 731
	; LineNumber: 732
trse_breakpoint_1
	; LineNumber: 734
	
; //		if(nextLevel <> levelSingle) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 735
	lda #$53
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 736
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
	; LineNumber: 737
	lda #<localVariable_InitLevel_levStr
	ldx #>localVariable_InitLevel_levStr
	sta fileName
	stx fileName+1
	; LineNumber: 738
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 741
	jmp InitLevel_edblock211
InitLevel_eblock210
	; LineNumber: 741
	; LineNumber: 742
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitLevel_edblock230
InitLevel_ctb228: ;Main true block ;keep 
	; LineNumber: 741
	
; //		end;
	jsr SwapActiveChar
InitLevel_edblock230
	; LineNumber: 745
	
; //		if(nextLevel <> levelCoop) then begin
	lda nextLevel
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 746
	lda #$4d
	; Calling storevariable on generic assign expression
	sta localVariable_InitLevel_levStr+$0
	; LineNumber: 747
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
	; LineNumber: 748
	; INTEGER optimization: a=b+c 
	lda #<localVariable_InitLevel_levStr
	clc
	adc #$00
	sta fileName+0
	lda #>localVariable_InitLevel_levStr
	adc #$00
	sta fileName+1
	; LineNumber: 749
	; Integer constant assigning
	; Load16bitvariable : #$a000
	ldy #$a0
	lda #$00
	; Calling storevariable on generic assign expression
	sta localVariable_LoadFile_addr
	sty localVariable_LoadFile_addr+1
	jsr LoadFile
	; LineNumber: 752
InitLevel_edblock211
	; LineNumber: 753
	lda #<vbl
	sta $66
	lda #>vbl
	sta $67
	ldx raster ; optimized, look out for bugs
	lda #$0
	bne InitLevel_viarasterirq_ntsc_timing235
	lda #$86
	sta $64
	lda #$56
	sta $65
	jsr A0_vic_raster
	jmp InitLevel_viarasterirq_end236
InitLevel_viarasterirq_ntsc_timing235
	lda #$43
	sta $64
	lda #$42
	sta $65
	jsr A0_vic_raster
InitLevel_viarasterirq_end236
	; LineNumber: 754
	rts
end_procedure_InitLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetNextLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 757
SetNextLevel
	; LineNumber: 759
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne SetNextLevel_eblock240
SetNextLevel_ctb239: ;Main true block ;keep 
	; LineNumber: 759
	; LineNumber: 760
	; Binary clause Simplified: GREATEREQUAL
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelSingle
	clc
	adc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp maxSingleLevels;keep
	bcc SetNextLevel_eblock263
SetNextLevel_ctb262: ;Main true block ;keep 
	; LineNumber: 759
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_edblock264
SetNextLevel_eblock263
	; LineNumber: 761
	; LineNumber: 762
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelSingle
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 763
SetNextLevel_edblock264
	; LineNumber: 765
	jmp SetNextLevel_edblock241
SetNextLevel_eblock240
	; LineNumber: 765
	; LineNumber: 766
	; Binary clause Simplified: GREATEREQUAL
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelCoop
	clc
	adc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp maxMultiLevels;keep
	bcc SetNextLevel_eblock272
SetNextLevel_ctb271: ;Main true block ;keep 
	; LineNumber: 765
	lda #$0
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp SetNextLevel_edblock273
SetNextLevel_eblock272
	; LineNumber: 767
	; LineNumber: 768
	; 8 bit binop
	; Add/sub where right value is constant number
	lda levelCoop
	clc
	adc #$1
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta nextLevel
	; LineNumber: 769
SetNextLevel_edblock273
	; LineNumber: 770
SetNextLevel_edblock241
	; LineNumber: 771
	rts
end_procedure_SetNextLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 773
	; LineNumber: 773
localVariable_IncLevel_mode	dc.b	0
IncLevel_block278
IncLevel
	; LineNumber: 775
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_IncLevel_mode
	; cmp #$00 ignored
	bne IncLevel_eblock281
IncLevel_ctb280: ;Main true block ;keep 
	; LineNumber: 775
	; LineNumber: 776
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda maxSingleLevels
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp levelSingle;keep
	bcc IncLevel_edblock301
	beq IncLevel_edblock301
IncLevel_ctb299: ;Main true block ;keep 
	; LineNumber: 775
	; Test Inc dec D
	inc levelSingle
IncLevel_edblock301
	; LineNumber: 778
	jmp IncLevel_edblock282
IncLevel_eblock281
	; LineNumber: 778
	; LineNumber: 779
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda maxMultiLevels
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp levelCoop;keep
	bcc IncLevel_edblock308
	beq IncLevel_edblock308
IncLevel_ctb306: ;Main true block ;keep 
	; LineNumber: 778
	; Test Inc dec D
	inc levelCoop
IncLevel_edblock308
	; LineNumber: 780
IncLevel_edblock282
	; LineNumber: 781
	rts
end_procedure_IncLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecLevel
	;    Procedure type : User-defined procedure
	; LineNumber: 783
	; LineNumber: 783
localVariable_DecLevel_mode	dc.b	0
DecLevel_block311
DecLevel
	; LineNumber: 785
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DecLevel_mode
	; cmp #$00 ignored
	bne DecLevel_eblock314
DecLevel_ctb313: ;Main true block ;keep 
	; LineNumber: 785
	; LineNumber: 786
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_edblock334
DecLevel_ctb332: ;Main true block ;keep 
	; LineNumber: 785
	; Test Inc dec D
	dec levelSingle
DecLevel_edblock334
	; LineNumber: 788
	jmp DecLevel_edblock315
DecLevel_eblock314
	; LineNumber: 788
	; LineNumber: 789
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecLevel_edblock341
DecLevel_ctb339: ;Main true block ;keep 
	; LineNumber: 788
	; Test Inc dec D
	dec levelCoop
DecLevel_edblock341
	; LineNumber: 790
DecLevel_edblock315
	; LineNumber: 791
	rts
end_procedure_DecLevel
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGame
	;    Procedure type : User-defined procedure
	; LineNumber: 795
	; LineNumber: 794
localVariable_InitGame_levSingle	dc.b	0
	; LineNumber: 794
localVariable_InitGame_levCoop	dc.b	0
	; LineNumber: 794
localVariable_InitGame_mode	dc.b	0
InitGame_block344
InitGame
	; LineNumber: 796
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta levelSingle
	; LineNumber: 797
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta levelCoop
	; LineNumber: 798
	lda localVariable_InitGame_mode
	; Calling storevariable on generic assign expression
	sta gameMode
	; LineNumber: 799
	; Binary clause Simplified: EQUALS
	clc
	; cmp #$00 ignored
	bne InitGame_eblock347
InitGame_ctb346: ;Main true block ;keep 
	; LineNumber: 798
	lda localVariable_InitGame_levSingle
	; Calling storevariable on generic assign expression
	sta nextLevel
	jmp InitGame_edblock348
InitGame_eblock347
	; LineNumber: 798
	lda localVariable_InitGame_levCoop
	; Calling storevariable on generic assign expression
	sta nextLevel
InitGame_edblock348
	; LineNumber: 800
	lda #$0
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 801
	; Calling storevariable on generic assign expression
	sta cycle
	; LineNumber: 802
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	; LineNumber: 803
	rts
end_procedure_InitGame
	; NodeProcedureDecl 3
	; ***********  Defining procedure : print2x2block
	;    Procedure type : User-defined procedure
	; LineNumber: 807
	; LineNumber: 806
localVariable_print2x2block_x	dc.b	0
	; LineNumber: 806
localVariable_print2x2block_y	dc.b	0
	; LineNumber: 806
localVariable_print2x2block_varPrefixed_c	dc.b	0
	; LineNumber: 806
localVariable_print2x2block_col	dc.b	0
print2x2block_block353
print2x2block
	; LineNumber: 813
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_eblock356
print2x2block_ctb355: ;Main true block ;keep 
	; LineNumber: 812
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
	jmp print2x2block_edblock357
print2x2block_eblock356
	; LineNumber: 812
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
print2x2block_edblock357
	; LineNumber: 815
	lda localVariable_print2x2block_varPrefixed_c
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	; LineNumber: 816
	; Binary clause Simplified: EQUALS
	lda currentBank
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne print2x2block_eblock364
print2x2block_ctb363: ;Main true block ;keep 
	; LineNumber: 815
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
	jmp print2x2block_edblock365
print2x2block_eblock364
	; LineNumber: 815
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
print2x2block_edblock365
	; LineNumber: 817
	; Binary clause Simplified: GREATEREQUAL
	lda localVariable_print2x2block_varPrefixed_c
	; Compare with pure num / var optimization
	cmp #$80;keep
	bcc print2x2block_eblock372
print2x2block_ctb371: ;Main true block ;keep 
	; LineNumber: 817
	lda localVariable_print2x2block_col
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
	jmp print2x2block_edblock373
print2x2block_eblock372
	; LineNumber: 819
	; Load Byte array
	; CAST type NADA
	ldx localVariable_print2x2block_varPrefixed_c
	lda tilesetColors,x 
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_print2x2block_x ; optimized, look out for bugs
	sta (screenmemory),y
print2x2block_edblock373
	; LineNumber: 829
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
	; LineNumber: 831
CycleWater
	; LineNumber: 833
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
	
	; LineNumber: 878
	rts
end_procedure_CycleWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetZLayerPointer
	;    Procedure type : User-defined procedure
	; LineNumber: 881
	; LineNumber: 880
localVariable_GetZLayerPointer_z	dc.b	0
GetZLayerPointer_block379
GetZLayerPointer
	; LineNumber: 882
	lda #$3
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext381
	; LineNumber: 882
	lda #<mapback2
	ldx #>mapback2
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend380
GetZLayerPointer_casenext381
	lda #$2
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext383
	; LineNumber: 883
	lda #<mapback1
	ldx #>mapback1
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend380
GetZLayerPointer_casenext383
	lda #$1
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext385
	; LineNumber: 884
	lda #<mapmain
	ldx #>mapmain
	sta tempPointer
	stx tempPointer+1
	jmp GetZLayerPointer_caseend380
GetZLayerPointer_casenext385
	lda #$0
	cmp localVariable_GetZLayerPointer_z ;keep
	bne GetZLayerPointer_casenext387
	; LineNumber: 885
	lda #<mapfront
	ldx #>mapfront
	sta tempPointer
	stx tempPointer+1
GetZLayerPointer_casenext387
GetZLayerPointer_caseend380
	; LineNumber: 888
	rts
end_procedure_GetZLayerPointer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPosAnim
	;    Procedure type : User-defined procedure
	; LineNumber: 900
	; LineNumber: 892
localVariable_PaintPosAnim_x	dc.b	0
	; LineNumber: 892
localVariable_PaintPosAnim_y	dc.b	0
	; LineNumber: 893
localVariable_PaintPosAnim_animId	dc.b	0
	; LineNumber: 894
localVariable_PaintPosAnim_hideSprite	dc.b	0
	; LineNumber: 895
localVariable_PaintPosAnim_pa	= $72
	; LineNumber: 896
localVariable_PaintPosAnim_currentTile	dc.b	0
	; LineNumber: 897
localVariable_PaintPosAnim_gravity	dc.b	0
	; LineNumber: 898
localVariable_PaintPosAnim_shiftAnim	dc.b	0
	; LineNumber: 890
localVariable_PaintPosAnim_t	dc.b	0
	; LineNumber: 890
localVariable_PaintPosAnim_considerAnimation	dc.b	0
PaintPosAnim_block389
PaintPosAnim
	; LineNumber: 901
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_animId
	; LineNumber: 902
	; Generic 16 bit op
	lda #<animList
	ldy #>animList
PaintPosAnim_rightvarInteger_var392 = $88
	sta PaintPosAnim_rightvarInteger_var392
	sty PaintPosAnim_rightvarInteger_var392+1
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
	adc PaintPosAnim_rightvarInteger_var392
PaintPosAnim_wordAdd390
	sta PaintPosAnim_rightvarInteger_var392
	; High-bit binop
	tya
	adc PaintPosAnim_rightvarInteger_var392+1
	tay
	lda PaintPosAnim_rightvarInteger_var392
	sta localVariable_PaintPosAnim_pa
	sty localVariable_PaintPosAnim_pa+1
	; LineNumber: 903
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_PaintPosAnim_considerAnimation
	; cmp #$00 ignored
	beq PaintPosAnim_localfailed1224
PaintPosAnim_localsuccess1225: ;keep
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
	bne PaintPosAnim_localfailed1224
	jmp PaintPosAnim_ctb394
PaintPosAnim_localfailed1224
	jmp PaintPosAnim_eblock395
PaintPosAnim_ctb394: ;Main true block ;keep 
	; LineNumber: 903
	; LineNumber: 904
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; cmp #$00 ignored
	bne PaintPosAnim_eblock1229
PaintPosAnim_ctb1228: ;Main true block ;keep 
	; LineNumber: 903
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_edblock1230
PaintPosAnim_eblock1229
	; LineNumber: 904
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$4
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_edblock1464
PaintPosAnim_ctb1462: ;Main true block ;keep 
	; LineNumber: 905
	; LineNumber: 906
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
	; LineNumber: 907
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
	bne PaintPosAnim_edblock1580
PaintPosAnim_ctb1578: ;Main true block ;keep 
	; LineNumber: 906
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_gravity
PaintPosAnim_edblock1580
	; LineNumber: 908
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne PaintPosAnim_eblock1585
PaintPosAnim_ctb1584: ;Main true block ;keep 
	; LineNumber: 907
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_edblock1586
PaintPosAnim_eblock1585
	; LineNumber: 908
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_eblock1641
PaintPosAnim_ctb1640: ;Main true block ;keep 
	; LineNumber: 908
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_edblock1642
PaintPosAnim_eblock1641
	; LineNumber: 909
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne PaintPosAnim_eblock1669
PaintPosAnim_ctb1668: ;Main true block ;keep 
	; LineNumber: 909
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
	jmp PaintPosAnim_edblock1670
PaintPosAnim_eblock1669
	; LineNumber: 910
	; Binary clause Simplified: EQUALS
	lda localVariable_PaintPosAnim_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne PaintPosAnim_edblock1684
PaintPosAnim_ctb1682: ;Main true block ;keep 
	; LineNumber: 910
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_shiftAnim
PaintPosAnim_edblock1684
PaintPosAnim_edblock1670
PaintPosAnim_edblock1642
PaintPosAnim_edblock1586
	; LineNumber: 912
PaintPosAnim_edblock1464
PaintPosAnim_edblock1230
	; LineNumber: 913
	; Load pointer array
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
	tay
	lda (localVariable_PaintPosAnim_pa),y
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 914
	; 8 bit binop
	; Add/sub where right value is constant number
	clc
	adc localVariable_PaintPosAnim_shiftAnim
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
	; LineNumber: 916
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; cmp #$00 ignored
	bne PaintPosAnim_localfailed1871
	jmp PaintPosAnim_ctb1688
PaintPosAnim_localfailed1871
	jmp PaintPosAnim_eblock1689
PaintPosAnim_ctb1688: ;Main true block ;keep 
	; LineNumber: 915
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	jmp PaintPosAnim_edblock1690
PaintPosAnim_eblock1689
	; LineNumber: 916
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PaintPosAnim_localfailed1964
PaintPosAnim_localsuccess1965: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animFinish,x 
	; cmp #$00 ignored
	bne PaintPosAnim_localfailed1964
	jmp PaintPosAnim_ctb1875
PaintPosAnim_localfailed1964
	jmp PaintPosAnim_eblock1876
PaintPosAnim_ctb1875: ;Main true block ;keep 
	; LineNumber: 917
	; LineNumber: 918
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
PaintPosAnim_binary_clause_temp_var1981 = $88
	sta PaintPosAnim_binary_clause_temp_var1981
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_PaintPosAnim_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
PaintPosAnim_binary_clause_temp_2_var1982 = $8A
	sta PaintPosAnim_binary_clause_temp_2_var1982
	lda PaintPosAnim_binary_clause_temp_var1981
	cmp PaintPosAnim_binary_clause_temp_2_var1982;keep
	bne PaintPosAnim_eblock1969
PaintPosAnim_ctb1968: ;Main true block ;keep 
	; LineNumber: 918
	; LineNumber: 919
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
	; LineNumber: 920
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 922
	jmp PaintPosAnim_edblock1970
PaintPosAnim_eblock1969
	; LineNumber: 921
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_PaintPosAnim_pa),y
PaintPosAnim_val_var1990 = $88
	sta PaintPosAnim_val_var1990
	lda globaltime
	sec
PaintPosAnim_modulo1991
	sbc PaintPosAnim_val_var1990
	bcs PaintPosAnim_modulo1991
	adc PaintPosAnim_val_var1990
	; cmp #$00 ignored
	bne PaintPosAnim_edblock1988
PaintPosAnim_ctb1986: ;Main true block ;keep 
	; LineNumber: 921
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_edblock1988
PaintPosAnim_edblock1970
	; LineNumber: 924
	jmp PaintPosAnim_edblock1877
PaintPosAnim_eblock1876
	; LineNumber: 923
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$7
	lda (localVariable_PaintPosAnim_pa),y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne PaintPosAnim_edblock1997
PaintPosAnim_ctb1995: ;Main true block ;keep 
	; LineNumber: 924
	; LineNumber: 925
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_animPos,x 
PaintPosAnim_binary_clause_temp_var2040 = $88
	sta PaintPosAnim_binary_clause_temp_var2040
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_PaintPosAnim_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
PaintPosAnim_binary_clause_temp_2_var2041 = $8A
	sta PaintPosAnim_binary_clause_temp_2_var2041
	lda PaintPosAnim_binary_clause_temp_var2040
	cmp PaintPosAnim_binary_clause_temp_2_var2041;keep
	bne PaintPosAnim_eblock2028
PaintPosAnim_ctb2027: ;Main true block ;keep 
	; LineNumber: 925
	; LineNumber: 926
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_PaintPosAnim_t ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 927
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 929
	jmp PaintPosAnim_edblock2029
PaintPosAnim_eblock2028
	; LineNumber: 928
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_PaintPosAnim_pa),y
PaintPosAnim_val_var2049 = $88
	sta PaintPosAnim_val_var2049
	lda globaltime
	sec
PaintPosAnim_modulo2050
	sbc PaintPosAnim_val_var2049
	bcs PaintPosAnim_modulo2050
	adc PaintPosAnim_val_var2049
	; cmp #$00 ignored
	bne PaintPosAnim_edblock2047
PaintPosAnim_ctb2045: ;Main true block ;keep 
	; LineNumber: 928
	; Test Inc dec D
	ldx localVariable_PaintPosAnim_t
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
PaintPosAnim_edblock2047
PaintPosAnim_edblock2029
	; LineNumber: 930
PaintPosAnim_edblock1997
PaintPosAnim_edblock1877
PaintPosAnim_edblock1690
	; LineNumber: 932
	jmp PaintPosAnim_edblock396
PaintPosAnim_eblock395
	; LineNumber: 931
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPosAnim_t
	lda objectList_gobject_gobject_rendTilePos,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_currentTile
PaintPosAnim_edblock396
	; LineNumber: 934
	; LineNumber: 934
	lda localVariable_PaintPosAnim_currentTile
	rts
end_procedure_PaintPosAnim
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintPos
	;    Procedure type : User-defined procedure
	; LineNumber: 946
	; LineNumber: 938
localVariable_PaintPos_x	dc.b	0
	; LineNumber: 938
localVariable_PaintPos_y	dc.b	0
	; LineNumber: 939
localVariable_PaintPos_t	dc.b	0
	; LineNumber: 939
localVariable_PaintPos_tHide	dc.b	0
	; LineNumber: 940
localVariable_PaintPos_animId	dc.b	0
	; LineNumber: 941
localVariable_PaintPos_hideSprite	dc.b	0
	; LineNumber: 942
localVariable_PaintPos_pa	= $72
	; LineNumber: 943
localVariable_PaintPos_currentTile	dc.b	0
	; LineNumber: 944
localVariable_PaintPos_gravity	dc.b	0
	; LineNumber: 945
localVariable_PaintPos_shiftAnim	dc.b	0
	; LineNumber: 936
localVariable_PaintPos_pos	dc.b	0
	; LineNumber: 936
localVariable_PaintPos_considerAnimation	dc.b	0
	; LineNumber: 936
localVariable_PaintPos_col	dc.b	0
PaintPos_block2053
PaintPos
	; LineNumber: 951
	; Modulo
	lda #$14
PaintPos_val_var2054 = $88
	sta PaintPos_val_var2054
	lda localVariable_PaintPos_pos
	sec
PaintPos_modulo2055
	sbc PaintPos_val_var2054
	bcs PaintPos_modulo2055
	adc PaintPos_val_var2054
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_x
	; LineNumber: 952
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
	; LineNumber: 953
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 954
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 956
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_localfailed2112
	jmp PaintPos_ctb2059
PaintPos_localfailed2112
	jmp PaintPos_eblock2060
PaintPos_ctb2059: ;Main true block ;keep 
	; LineNumber: 956
	; LineNumber: 957
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 958
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 960
	jmp PaintPos_edblock2061
PaintPos_eblock2060
	; LineNumber: 959
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_eblock2117
PaintPos_ctb2116: ;Main true block ;keep 
	; LineNumber: 960
	; LineNumber: 961
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 962
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 964
	jmp PaintPos_edblock2118
PaintPos_eblock2117
	; LineNumber: 963
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_eblock2145
PaintPos_ctb2144: ;Main true block ;keep 
	; LineNumber: 964
	; LineNumber: 965
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 966
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 968
	jmp PaintPos_edblock2146
PaintPos_eblock2145
	; LineNumber: 967
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_edblock2160
PaintPos_ctb2158: ;Main true block ;keep 
	; LineNumber: 968
	; LineNumber: 969
	; Load Byte array
	; CAST type NADA
	ldx localVariable_PaintPos_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_t
	; LineNumber: 970
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_t
	lda localVariable_PaintPos_considerAnimation
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPosAnim_considerAnimation
	jsr PaintPosAnim
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_currentTile
	; LineNumber: 971
PaintPos_edblock2160
PaintPos_edblock2146
PaintPos_edblock2118
PaintPos_edblock2061
	; LineNumber: 973
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_PaintPos_t
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq PaintPos_eblock2165
PaintPos_ctb2164: ;Main true block ;keep 
	; LineNumber: 973
	; LineNumber: 974
	lda localVariable_PaintPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_x
	lda localVariable_PaintPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_y
	lda localVariable_PaintPos_currentTile
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_varPrefixed_c
	lda localVariable_PaintPos_col
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_col
	jsr print2x2block
	jmp PaintPos_edblock2166
PaintPos_eblock2165
	; LineNumber: 975
	lda localVariable_PaintPos_x
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_x
	lda localVariable_PaintPos_y
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_y
	lda #$20
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_varPrefixed_c
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_print2x2block_col
	jsr print2x2block
PaintPos_edblock2166
	; LineNumber: 977
	rts
end_procedure_PaintPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ConvertShift
	;    Procedure type : User-defined procedure
	; LineNumber: 982
	; LineNumber: 981
localVariable_ConvertShift_ret	dc.w	0
	; LineNumber: 979
localVariable_ConvertShift_gravity	dc.b	0
	; LineNumber: 979
localVariable_ConvertShift_pos	dc.b	0
ConvertShift_block2171
ConvertShift
	; LineNumber: 987
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ConvertShift_eblock2174
ConvertShift_ctb2173: ;Main true block ;keep 
	; LineNumber: 986
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
	jmp ConvertShift_edblock2175
ConvertShift_eblock2174
	; LineNumber: 987
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ConvertShift_eblock2230
ConvertShift_ctb2229: ;Main true block ;keep 
	; LineNumber: 987
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
	jmp ConvertShift_edblock2231
ConvertShift_eblock2230
	; LineNumber: 988
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne ConvertShift_eblock2258
ConvertShift_ctb2257: ;Main true block ;keep 
	; LineNumber: 988
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
	jmp ConvertShift_edblock2259
ConvertShift_eblock2258
	; LineNumber: 989
	; Binary clause Simplified: EQUALS
	lda localVariable_ConvertShift_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne ConvertShift_edblock2273
ConvertShift_ctb2271: ;Main true block ;keep 
	; LineNumber: 989
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
ConvertShift_edblock2273
ConvertShift_edblock2259
ConvertShift_edblock2231
ConvertShift_edblock2175
	; LineNumber: 991
	; LineNumber: 992
	ldy localVariable_ConvertShift_ret+1 ;keep
	lda localVariable_ConvertShift_ret
	rts
end_procedure_ConvertShift
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPosition
	;    Procedure type : User-defined procedure
	; LineNumber: 998
	; LineNumber: 997
localVariable_CalcPosition_destx	dc.b	0
	; LineNumber: 997
localVariable_CalcPosition_desty	dc.b	0
	; LineNumber: 995
localVariable_CalcPosition_startx	dc.b	0
	; LineNumber: 995
localVariable_CalcPosition_starty	dc.b	0
	; LineNumber: 995
localVariable_CalcPosition_pos	dc.b	0
CalcPosition_block2276
CalcPosition
	; LineNumber: 999
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
	; LineNumber: 1000
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
	; LineNumber: 1001
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_eblock2279
CalcPosition_ctb2278: ;Main true block ;keep 
	; LineNumber: 1000
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
	jmp CalcPosition_edblock2280
CalcPosition_eblock2279
	; LineNumber: 1001
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPosition_edblock2294
CalcPosition_ctb2292: ;Main true block ;keep 
	; LineNumber: 1001
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_destx
CalcPosition_edblock2294
CalcPosition_edblock2280
	; LineNumber: 1003
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPosition_eblock2299
CalcPosition_ctb2298: ;Main true block ;keep 
	; LineNumber: 1002
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
	jmp CalcPosition_edblock2300
CalcPosition_eblock2299
	; LineNumber: 1003
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPosition_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPosition_edblock2314
CalcPosition_ctb2312: ;Main true block ;keep 
	; LineNumber: 1003
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPosition_desty
CalcPosition_edblock2314
CalcPosition_edblock2300
	; LineNumber: 1005
	; LineNumber: 1006
	ldy localVariable_CalcPosition_destx ; optimized, look out for bugs
	lda localVariable_CalcPosition_desty
	rts
end_procedure_CalcPosition
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionMapPos
	;    Procedure type : User-defined procedure
	; LineNumber: 1012
	; LineNumber: 1011
localVariable_CalcPositionMapPos_npos	dc.w	0
	; LineNumber: 1009
localVariable_CalcPositionMapPos_startx	dc.b	0
	; LineNumber: 1009
localVariable_CalcPositionMapPos_starty	dc.b	0
	; LineNumber: 1009
localVariable_CalcPositionMapPos_pos	dc.b	0
CalcPositionMapPos_block2317
CalcPositionMapPos
	; LineNumber: 1013
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
	; LineNumber: 1015
	; LineNumber: 1015
	; 8 bit binop
	; Add/sub right value is variable/expression
	lda localVariable_CalcPositionMapPos_npos+1
CalcPositionMapPos_rightvarAddSub_var2318 = $88
	sta CalcPositionMapPos_rightvarAddSub_var2318
	; Load Byte array
	; CAST type BYTE
	ldx localVariable_CalcPositionMapPos_npos ; optimized, look out for bugs
	lda ystart,x 
	clc
	adc CalcPositionMapPos_rightvarAddSub_var2318
	rts
end_procedure_CalcPositionMapPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetObjectByPosFilterComp
	;    Procedure type : User-defined procedure
	; LineNumber: 1020
	; LineNumber: 1019
localVariable_GetObjectByPosFilterComp_mapPos	dc.b	0
	; LineNumber: 1019
localVariable_GetObjectByPosFilterComp_colId	dc.b	0
	; LineNumber: 1019
localVariable_GetObjectByPosFilterComp_ret	dc.b	0
	; LineNumber: 1019
localVariable_GetObjectByPosFilterComp_val	dc.b	0
	; LineNumber: 1017
localVariable_GetObjectByPosFilterComp_x	dc.b	0
	; LineNumber: 1017
localVariable_GetObjectByPosFilterComp_y	dc.b	0
	; LineNumber: 1017
localVariable_GetObjectByPosFilterComp_z	dc.b	0
	; LineNumber: 1017
localVariable_GetObjectByPosFilterComp_comp	dc.b	0
	; LineNumber: 1017
localVariable_GetObjectByPosFilterComp_compIdx	dc.b	0
GetObjectByPosFilterComp_block2319
GetObjectByPosFilterComp
	; LineNumber: 1021
	lda localVariable_GetObjectByPosFilterComp_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1022
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
	; LineNumber: 1023
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
	; LineNumber: 1028
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjectByPosFilterComp_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_colId
	; LineNumber: 1029
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjectByPosFilterComp_edblock2323
GetObjectByPosFilterComp_ctb2321: ;Main true block ;keep 
	; LineNumber: 1029
	; LineNumber: 1030
	lda #$0
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2342
	; LineNumber: 1030
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
	jmp GetObjectByPosFilterComp_caseend2341
GetObjectByPosFilterComp_casenext2342
	lda #$1
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2344
	; LineNumber: 1031
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
	jmp GetObjectByPosFilterComp_caseend2341
GetObjectByPosFilterComp_casenext2344
	lda #$2
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2346
	; LineNumber: 1032
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
	jmp GetObjectByPosFilterComp_caseend2341
GetObjectByPosFilterComp_casenext2346
	lda #$3
	cmp localVariable_GetObjectByPosFilterComp_compIdx ;keep
	bne GetObjectByPosFilterComp_casenext2348
	; LineNumber: 1033
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
GetObjectByPosFilterComp_casenext2348
GetObjectByPosFilterComp_caseend2341
	; LineNumber: 1036
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjectByPosFilterComp_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjectByPosFilterComp_comp;keep
	bne GetObjectByPosFilterComp_edblock2353
GetObjectByPosFilterComp_ctb2351: ;Main true block ;keep 
	; LineNumber: 1035
	lda localVariable_GetObjectByPosFilterComp_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjectByPosFilterComp_ret
GetObjectByPosFilterComp_edblock2353
	; LineNumber: 1037
GetObjectByPosFilterComp_edblock2323
	; LineNumber: 1040
	; LineNumber: 1040
	lda localVariable_GetObjectByPosFilterComp_ret
	rts
end_procedure_GetObjectByPosFilterComp
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetObjArea
	;    Procedure type : User-defined procedure
	; LineNumber: 1046
	; LineNumber: 1044
localVariable_GetObjArea_gravity	dc.b	0
	; LineNumber: 1045
localVariable_GetObjArea_mapPos	dc.b	0
	; LineNumber: 1045
localVariable_GetObjArea_colId	dc.b	0
	; LineNumber: 1045
localVariable_GetObjArea_ret	dc.b	0
	; LineNumber: 1045
localVariable_GetObjArea_val	dc.b	0
	; LineNumber: 1045
localVariable_GetObjArea_gpos	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_id	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_z	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_pos	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_comp	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_compIdx	dc.b	0
	; LineNumber: 1042
localVariable_GetObjArea_b_norm	dc.b	0
GetObjArea_block2356
GetObjArea
	; LineNumber: 1050
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
	; LineNumber: 1051
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_GetObjArea_b_norm
	; cmp #$00 ignored
	bne GetObjArea_eblock2359
GetObjArea_ctb2358: ;Main true block ;keep 
	; LineNumber: 1051
	; LineNumber: 1052
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
	bne GetObjArea_edblock2477
GetObjArea_ctb2475: ;Main true block ;keep 
	; LineNumber: 1051
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gravity
GetObjArea_edblock2477
	; LineNumber: 1054
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne GetObjArea_eblock2482
GetObjArea_ctb2481: ;Main true block ;keep 
	; LineNumber: 1053
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_edblock2483
GetObjArea_eblock2482
	; LineNumber: 1054
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne GetObjArea_eblock2538
GetObjArea_ctb2537: ;Main true block ;keep 
	; LineNumber: 1054
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaUp,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_edblock2539
GetObjArea_eblock2538
	; LineNumber: 1055
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GetObjArea_eblock2566
GetObjArea_ctb2565: ;Main true block ;keep 
	; LineNumber: 1055
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaLeft,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
	jmp GetObjArea_edblock2567
GetObjArea_eblock2566
	; LineNumber: 1056
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_id
	lda objectList_gobject_gobject_physGravity,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne GetObjArea_edblock2581
GetObjArea_ctb2579: ;Main true block ;keep 
	; LineNumber: 1056
	; Load Byte array
	; CAST type NADA
	ldx localVariable_GetObjArea_pos
	lda collAreaRight,x 
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
GetObjArea_edblock2581
GetObjArea_edblock2567
GetObjArea_edblock2539
GetObjArea_edblock2483
	jmp GetObjArea_edblock2360
GetObjArea_eblock2359
	; LineNumber: 1058
	lda localVariable_GetObjArea_pos
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_gpos
GetObjArea_edblock2360
	; LineNumber: 1061
	lda localVariable_GetObjArea_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1063
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
	; LineNumber: 1064
	; Load pointer array
	tay ; optimized y, look out for bugs L22 ORG 	ldy localVariable_GetObjArea_mapPos
	lda (tempPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_colId
	; LineNumber: 1065
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
	; LineNumber: 1066
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_GetObjArea_colId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq GetObjArea_edblock2588
GetObjArea_ctb2586: ;Main true block ;keep 
	; LineNumber: 1066
	; LineNumber: 1067
	lda #$0
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2607
	; LineNumber: 1067
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
	jmp GetObjArea_caseend2606
GetObjArea_casenext2607
	lda #$1
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2609
	; LineNumber: 1068
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
	jmp GetObjArea_caseend2606
GetObjArea_casenext2609
	lda #$2
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2611
	; LineNumber: 1069
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
	jmp GetObjArea_caseend2606
GetObjArea_casenext2611
	lda #$3
	cmp localVariable_GetObjArea_compIdx ;keep
	bne GetObjArea_casenext2613
	; LineNumber: 1070
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
GetObjArea_casenext2613
GetObjArea_caseend2606
	; LineNumber: 1073
	; Binary clause Simplified: EQUALS
	lda localVariable_GetObjArea_val
	; Compare with pure num / var optimization
	cmp localVariable_GetObjArea_comp;keep
	bne GetObjArea_edblock2618
GetObjArea_ctb2616: ;Main true block ;keep 
	; LineNumber: 1072
	lda localVariable_GetObjArea_colId
	; Calling storevariable on generic assign expression
	sta localVariable_GetObjArea_ret
GetObjArea_edblock2618
	; LineNumber: 1074
GetObjArea_edblock2588
	; LineNumber: 1076
	; LineNumber: 1076
	lda localVariable_GetObjArea_ret
	rts
end_procedure_GetObjArea
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionX
	;    Procedure type : User-defined procedure
	; LineNumber: 1081
	; LineNumber: 1080
localVariable_CalcPositionX_destx	dc.b	0
	; LineNumber: 1078
localVariable_CalcPositionX_startx	dc.b	0
	; LineNumber: 1078
localVariable_CalcPositionX_offsetx	dc.b	0
CalcPositionX_block2621
CalcPositionX
	; LineNumber: 1082
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionX_startx
	clc
	adc localVariable_CalcPositionX_offsetx
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	; LineNumber: 1083
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionX_eblock2624
CalcPositionX_ctb2623: ;Main true block ;keep 
	; LineNumber: 1082
	lda #$13
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
	jmp CalcPositionX_edblock2625
CalcPositionX_eblock2624
	; LineNumber: 1083
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionX_destx
	; Compare with pure num / var optimization
	cmp #$14;keep
	bne CalcPositionX_edblock2639
CalcPositionX_ctb2637: ;Main true block ;keep 
	; LineNumber: 1083
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_destx
CalcPositionX_edblock2639
CalcPositionX_edblock2625
	; LineNumber: 1086
	; LineNumber: 1086
	lda localVariable_CalcPositionX_destx
	rts
end_procedure_CalcPositionX
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcPositionY
	;    Procedure type : User-defined procedure
	; LineNumber: 1091
	; LineNumber: 1090
localVariable_CalcPositionY_desty	dc.b	0
	; LineNumber: 1088
localVariable_CalcPositionY_starty	dc.b	0
	; LineNumber: 1088
localVariable_CalcPositionY_offsety	dc.b	0
CalcPositionY_block2642
CalcPositionY
	; LineNumber: 1092
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_CalcPositionY_starty
	clc
	adc localVariable_CalcPositionY_offsety
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	; LineNumber: 1093
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcPositionY_eblock2645
CalcPositionY_ctb2644: ;Main true block ;keep 
	; LineNumber: 1092
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
	jmp CalcPositionY_edblock2646
CalcPositionY_eblock2645
	; LineNumber: 1093
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcPositionY_desty
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne CalcPositionY_edblock2660
CalcPositionY_ctb2658: ;Main true block ;keep 
	; LineNumber: 1093
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_desty
CalcPositionY_edblock2660
CalcPositionY_edblock2646
	; LineNumber: 1096
	; LineNumber: 1096
	lda localVariable_CalcPositionY_desty
	rts
end_procedure_CalcPositionY
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ChangeMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1103
	; LineNumber: 1100
localVariable_ChangeMapItem_oldpos	dc.b	0
	; LineNumber: 1101
localVariable_ChangeMapItem_pos	dc.b	0
	; LineNumber: 1102
localVariable_ChangeMapItem_col	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_id	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_oldx	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_oldy	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_x	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_y	dc.b	0
	; LineNumber: 1098
localVariable_ChangeMapItem_z	dc.b	0
ChangeMapItem_block2663
ChangeMapItem
	; LineNumber: 1104
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
	; LineNumber: 1105
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
	; LineNumber: 1106
	lda localVariable_ChangeMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1111
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_oldpos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1112
	lda localVariable_ChangeMapItem_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_ChangeMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1114
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ChangeMapItem_id
	lda objectList_gobject_gobject_controlId,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ChangeMapItem_eblock2666
ChangeMapItem_ctb2665: ;Main true block ;keep 
	; LineNumber: 1114
	; LineNumber: 1115
	
; // ##
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_col
	; LineNumber: 1117
	jmp ChangeMapItem_edblock2667
ChangeMapItem_eblock2666
	; LineNumber: 1117
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ChangeMapItem_col
ChangeMapItem_edblock2667
	; LineNumber: 1120
	lda localVariable_ChangeMapItem_oldpos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	lda localVariable_ChangeMapItem_col
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1121
	lda localVariable_ChangeMapItem_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	lda localVariable_ChangeMapItem_col
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1122
	rts
end_procedure_ChangeMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1129
	; LineNumber: 1126
localVariable_UpdateMapItem_oldpos	dc.b	0
	; LineNumber: 1127
localVariable_UpdateMapItem_pos	dc.b	0
	; LineNumber: 1128
localVariable_UpdateMapItem_col	dc.b	0
	; LineNumber: 1124
localVariable_UpdateMapItem_id	dc.b	0
	; LineNumber: 1124
localVariable_UpdateMapItem_x	dc.b	0
	; LineNumber: 1124
localVariable_UpdateMapItem_y	dc.b	0
UpdateMapItem_block2672
UpdateMapItem
	; LineNumber: 1130
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
	; LineNumber: 1134
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateMapItem_id
	lda objectList_gobject_gobject_controlId,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMapItem_eblock2675
UpdateMapItem_ctb2674: ;Main true block ;keep 
	; LineNumber: 1133
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_col
	jmp UpdateMapItem_edblock2676
UpdateMapItem_eblock2675
	; LineNumber: 1133
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMapItem_col
UpdateMapItem_edblock2676
	; LineNumber: 1136
	lda localVariable_UpdateMapItem_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	lda localVariable_UpdateMapItem_col
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1137
	rts
end_procedure_UpdateMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetPos
	;    Procedure type : User-defined procedure
	; LineNumber: 1143
	; LineNumber: 1141
localVariable_SetPos_pos	dc.b	0
	; LineNumber: 1142
localVariable_SetPos_waypointId	dc.b	0
	; LineNumber: 1142
localVariable_SetPos_lastWaypointId	dc.b	0
	; LineNumber: 1142
localVariable_SetPos_controlId	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_i	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_oldx	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_oldy	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_x	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_y	dc.b	0
	; LineNumber: 1139
localVariable_SetPos_z	dc.b	0
SetPos_block2681
SetPos
	; LineNumber: 1147
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
	; LineNumber: 1151
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SetPos_i
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_SetPos_controlId
	; LineNumber: 1151
	; Test Inc dec D
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1154
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq SetPos_localfailed2699
	jmp SetPos_ctb2683
SetPos_localfailed2699
	jmp SetPos_edblock2685
SetPos_ctb2683: ;Main true block ;keep 
	; LineNumber: 1154
	; LineNumber: 1155
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
	; LineNumber: 1156
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_edblock2704
SetPos_ctb2702: ;Main true block ;keep 
	; LineNumber: 1156
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
SetPos_edblock2704
	; LineNumber: 1158
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
	; LineNumber: 1159
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne SetPos_edblock2710
SetPos_ctb2708: ;Main true block ;keep 
	; LineNumber: 1159
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
SetPos_edblock2710
	; LineNumber: 1161
	lda localVariable_SetPos_waypointId
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_waypointId,x
	; LineNumber: 1162
	lda localVariable_SetPos_lastWaypointId
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1163
SetPos_edblock2685
	; LineNumber: 1165
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
	; LineNumber: 1166
	lda localVariable_SetPos_x
	; Calling storevariable on generic assign expression
	ldx localVariable_SetPos_i ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1167
	lda localVariable_SetPos_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1168
	rts
end_procedure_SetPos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetZLayer
	;    Procedure type : User-defined procedure
	; LineNumber: 1173
	; LineNumber: 1172
localVariable_SetZLayer_pos	dc.b	0
	; LineNumber: 1170
localVariable_SetZLayer_id	dc.b	0
	; LineNumber: 1170
localVariable_SetZLayer_oldz	dc.b	0
	; LineNumber: 1170
localVariable_SetZLayer_newz	dc.b	0
SetZLayer_block2713
SetZLayer
	; LineNumber: 1174
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
	; LineNumber: 1177
	; Test Inc dec D
	ldx localVariable_SetZLayer_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_moves,x
	; LineNumber: 1179
	lda localVariable_SetZLayer_oldz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1180
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1181
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1182
	lda localVariable_SetZLayer_id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_SetZLayer_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1183
	lda localVariable_SetZLayer_newz
	; Calling storevariable on generic assign expression
	ldx localVariable_SetZLayer_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1184
	lda localVariable_SetZLayer_pos
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1185
	rts
end_procedure_SetZLayer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1190
	; LineNumber: 1189
localVariable_AddMapItem_pos	dc.b	0
	; LineNumber: 1187
localVariable_AddMapItem_Id	dc.b	0
	; LineNumber: 1187
localVariable_AddMapItem_x	dc.b	0
	; LineNumber: 1187
localVariable_AddMapItem_y	dc.b	0
	; LineNumber: 1187
localVariable_AddMapItem_z	dc.b	0
AddMapItem_block2714
AddMapItem
	; LineNumber: 1191
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
	; LineNumber: 1192
	lda localVariable_AddMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1197
	lda localVariable_AddMapItem_Id
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_AddMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1198
	rts
end_procedure_AddMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearMap
	;    Procedure type : User-defined procedure
	; LineNumber: 1203
	; LineNumber: 1202
localVariable_ClearMap_m	dc.b	0
ClearMap_block2715
ClearMap
	; LineNumber: 1211
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearMap_m
ClearMap_forloop2716
	; LineNumber: 1205
	; LineNumber: 1206
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ClearMap_m ; optimized, look out for bugs
	sta mapback2,x
	; LineNumber: 1207
	; Calling storevariable on generic assign expression
	sta mapback1,x
	; LineNumber: 1208
	; Calling storevariable on generic assign expression
	sta mapmain,x
	; LineNumber: 1209
	; Calling storevariable on generic assign expression
	sta mapfront,x
	; LineNumber: 1210
ClearMap_loopstart2717
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearMap_m
	lda #$f0
	cmp localVariable_ClearMap_m ;keep
	bne ClearMap_forloop2716
ClearMap_loopdone2721: ;keep
ClearMap_loopend2718
	; LineNumber: 1211
	lda #$ff
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 1212
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 1213
	rts
end_procedure_ClearMap
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddDynItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1216
	; LineNumber: 1215
localVariable_AddDynItem_i	dc.b	0
AddDynItem_block2722
AddDynItem
	; LineNumber: 1217
	lda localVariable_AddDynItem_i
	; Calling storevariable on generic assign expression
	ldx countDyn ; optimized, look out for bugs
	sta dynObjectList,x
	; LineNumber: 1218
	; Test Inc dec D
	inc countDyn
	; LineNumber: 1219
	rts
end_procedure_AddDynItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : AddAnimItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1222
	; LineNumber: 1221
localVariable_AddAnimItem_i	dc.b	0
AddAnimItem_block2723
AddAnimItem
	; LineNumber: 1223
	lda localVariable_AddAnimItem_i
	; Calling storevariable on generic assign expression
	ldx countAnim ; optimized, look out for bugs
	sta animObjectList,x
	; LineNumber: 1224
	; Test Inc dec D
	inc countAnim
	; LineNumber: 1225
	rts
end_procedure_AddAnimItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetId
	;    Procedure type : User-defined procedure
	; LineNumber: 1229
	; LineNumber: 1228
localVariable_GetId_ret	dc.b	0
GetId_block2724
GetId
	; LineNumber: 1230
	; Binary clause Simplified: EQUALS
	lda countObjects
	; Compare with pure num / var optimization
	cmp #$c8;keep
	bne GetId_eblock2727
GetId_ctb2726: ;Main true block ;keep 
	; LineNumber: 1229
	; LineNumber: 1231
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetId_ret
	; LineNumber: 1233
	jmp GetId_edblock2728
GetId_eblock2727
	; LineNumber: 1232
	; LineNumber: 1234
	; Test Inc dec D
	inc countObjects
	; LineNumber: 1235
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
	; LineNumber: 1236
GetId_edblock2728
	; LineNumber: 1239
	; LineNumber: 1239
	lda localVariable_GetId_ret
	rts
end_procedure_GetId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : GetLaserEmitId
	;    Procedure type : User-defined procedure
	; LineNumber: 1244
	; LineNumber: 1243
localVariable_GetLaserEmitId_ret	dc.b	0
GetLaserEmitId_block2733
GetLaserEmitId
	; LineNumber: 1245
	; Binary clause Simplified: EQUALS
	lda countLasers
	; Compare with pure num / var optimization
	cmp #$c;keep
	bne GetLaserEmitId_eblock2736
GetLaserEmitId_ctb2735: ;Main true block ;keep 
	; LineNumber: 1244
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	jmp GetLaserEmitId_edblock2737
GetLaserEmitId_eblock2736
	; LineNumber: 1245
	; LineNumber: 1247
	; Test Inc dec D
	inc countLasers
	; LineNumber: 1248
	lda countLasers
	; Calling storevariable on generic assign expression
	sta localVariable_GetLaserEmitId_ret
	; LineNumber: 1249
GetLaserEmitId_edblock2737
	; LineNumber: 1252
	; LineNumber: 1252
	lda localVariable_GetLaserEmitId_ret
	rts
end_procedure_GetLaserEmitId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PaintFull
	;    Procedure type : User-defined procedure
	; LineNumber: 1257
	; LineNumber: 1256
localVariable_PaintFull_i	dc.b	0
PaintFull_block2742
PaintFull
	; LineNumber: 1262
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintFull_i
PaintFull_forloop2743
	; LineNumber: 1259
	; LineNumber: 1260
	lda localVariable_PaintFull_i
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_pos
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_considerAnimation
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1261
PaintFull_loopstart2744
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_PaintFull_i
	lda #$f0
	cmp localVariable_PaintFull_i ;keep
	bne PaintFull_forloop2743
PaintFull_loopdone2748: ;keep
PaintFull_loopend2745
	; LineNumber: 1262
	rts
end_procedure_PaintFull
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteMapItem
	;    Procedure type : User-defined procedure
	; LineNumber: 1267
	; LineNumber: 1266
localVariable_DeleteMapItem_pos	dc.b	0
	; LineNumber: 1264
localVariable_DeleteMapItem_id	dc.b	0
	; LineNumber: 1264
localVariable_DeleteMapItem_x	dc.b	0
	; LineNumber: 1264
localVariable_DeleteMapItem_y	dc.b	0
	; LineNumber: 1264
localVariable_DeleteMapItem_z	dc.b	0
DeleteMapItem_block2749
DeleteMapItem
	; LineNumber: 1268
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
	; LineNumber: 1269
	lda localVariable_DeleteMapItem_z
	; Calling storevariable on generic assign expression
	sta localVariable_GetZLayerPointer_z
	jsr GetZLayerPointer
	; LineNumber: 1270
	lda #$ff
	; Calling storevariable on generic assign expression
	; Storing to a pointer
	ldy localVariable_DeleteMapItem_pos ; optimized, look out for bugs
	sta (tempPointer),y
	; LineNumber: 1271
	rts
end_procedure_DeleteMapItem
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteDynObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1277
	; LineNumber: 1275
localVariable_DeleteDynObject_i	dc.b	0
	; LineNumber: 1275
localVariable_DeleteDynObject_j	dc.b	0
	; LineNumber: 1276
localVariable_DeleteDynObject_found	dc.b	0
	; LineNumber: 1273
localVariable_DeleteDynObject_id	dc.b	0
DeleteDynObject_block2750
DeleteDynObject
	; LineNumber: 1278
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_i
	; LineNumber: 1279
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	; LineNumber: 1280
DeleteDynObject_while2751
DeleteDynObject_loopstart2755
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
	bcc DeleteDynObject_edblock2754
	beq DeleteDynObject_edblock2754
DeleteDynObject_localsuccess2766: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DeleteDynObject_found
	; cmp #$00 ignored
	bne DeleteDynObject_edblock2754
DeleteDynObject_ctb2752: ;Main true block ;keep 
	; LineNumber: 1281
	; LineNumber: 1282
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteDynObject_i
	lda dynObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteDynObject_id;keep
	bne DeleteDynObject_eblock2770
DeleteDynObject_ctb2769: ;Main true block ;keep 
	; LineNumber: 1282
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_found
	jmp DeleteDynObject_edblock2771
DeleteDynObject_eblock2770
	; LineNumber: 1284
	; Test Inc dec D
	inc localVariable_DeleteDynObject_i
DeleteDynObject_edblock2771
	; LineNumber: 1286
	jmp DeleteDynObject_while2751
DeleteDynObject_edblock2754
DeleteDynObject_loopend2756
	; LineNumber: 1287
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteDynObject_found
	; cmp #$00 ignored
	beq DeleteDynObject_edblock2779
DeleteDynObject_ctb2777: ;Main true block ;keep 
	; LineNumber: 1287
	; LineNumber: 1287
	; Test Inc dec D
	dec countDyn
	; LineNumber: 1292
	lda localVariable_DeleteDynObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_j
DeleteDynObject_forloop2788
	; LineNumber: 1289
	; LineNumber: 1290
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
	; LineNumber: 1291
DeleteDynObject_loopstart2789
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteDynObject_j
	lda countDyn
	cmp localVariable_DeleteDynObject_j ;keep
	bne DeleteDynObject_forloop2788
DeleteDynObject_loopdone2793: ;keep
DeleteDynObject_loopend2790
	; LineNumber: 1292
DeleteDynObject_edblock2779
	; LineNumber: 1293
	rts
end_procedure_DeleteDynObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeleteAnimObject
	;    Procedure type : User-defined procedure
	; LineNumber: 1299
	; LineNumber: 1297
localVariable_DeleteAnimObject_i	dc.b	0
	; LineNumber: 1297
localVariable_DeleteAnimObject_j	dc.b	0
	; LineNumber: 1298
localVariable_DeleteAnimObject_found	dc.b	0
	; LineNumber: 1295
localVariable_DeleteAnimObject_id	dc.b	0
DeleteAnimObject_block2794
DeleteAnimObject
	; LineNumber: 1300
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_i
	; LineNumber: 1301
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	; LineNumber: 1302
DeleteAnimObject_while2795
DeleteAnimObject_loopstart2799
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
	bcc DeleteAnimObject_edblock2798
	beq DeleteAnimObject_edblock2798
DeleteAnimObject_localsuccess2810: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DeleteAnimObject_found
	; cmp #$00 ignored
	bne DeleteAnimObject_edblock2798
DeleteAnimObject_ctb2796: ;Main true block ;keep 
	; LineNumber: 1303
	; LineNumber: 1304
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DeleteAnimObject_i
	lda animObjectList,x 
	; Compare with pure num / var optimization
	cmp localVariable_DeleteAnimObject_id;keep
	bne DeleteAnimObject_eblock2814
DeleteAnimObject_ctb2813: ;Main true block ;keep 
	; LineNumber: 1304
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_found
	jmp DeleteAnimObject_edblock2815
DeleteAnimObject_eblock2814
	; LineNumber: 1306
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_i
DeleteAnimObject_edblock2815
	; LineNumber: 1308
	jmp DeleteAnimObject_while2795
DeleteAnimObject_edblock2798
DeleteAnimObject_loopend2800
	; LineNumber: 1309
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeleteAnimObject_found
	; cmp #$00 ignored
	beq DeleteAnimObject_edblock2823
DeleteAnimObject_ctb2821: ;Main true block ;keep 
	; LineNumber: 1309
	; LineNumber: 1309
	; Test Inc dec D
	dec countAnim
	; LineNumber: 1314
	lda localVariable_DeleteAnimObject_i
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_j
DeleteAnimObject_forloop2832
	; LineNumber: 1311
	; LineNumber: 1312
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
	; LineNumber: 1313
DeleteAnimObject_loopstart2833
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_DeleteAnimObject_j
	lda countAnim
	cmp localVariable_DeleteAnimObject_j ;keep
	bne DeleteAnimObject_forloop2832
DeleteAnimObject_loopdone2837: ;keep
DeleteAnimObject_loopend2834
	; LineNumber: 1314
DeleteAnimObject_edblock2823
	; LineNumber: 1315
	rts
end_procedure_DeleteAnimObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DeletePos
	;    Procedure type : User-defined procedure
	; LineNumber: 1320
	; LineNumber: 1319
localVariable_DeletePos_x	dc.b	0
	; LineNumber: 1319
localVariable_DeletePos_y	dc.b	0
	; LineNumber: 1317
localVariable_DeletePos_id	dc.b	0
	; LineNumber: 1317
localVariable_DeletePos_isDyn	dc.b	0
	; LineNumber: 1317
localVariable_DeletePos_isAnim	dc.b	0
DeletePos_block2838
DeletePos
	; LineNumber: 1321
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda countObjects
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DeletePos_localfailed2856
	jmp DeletePos_ctb2840
DeletePos_localfailed2856
	jmp DeletePos_edblock2842
DeletePos_ctb2840: ;Main true block ;keep 
	; LineNumber: 1321
	; LineNumber: 1322
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
	; LineNumber: 1323
	; Test Inc dec D
	dec countObjects
	; LineNumber: 1324
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
	; LineNumber: 1325
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isDyn
	; cmp #$00 ignored
	beq DeletePos_edblock2861
DeletePos_ctb2859: ;Main true block ;keep 
	; LineNumber: 1325
	; LineNumber: 1326
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteDynObject_id
	jsr DeleteDynObject
	; LineNumber: 1327
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1328
DeletePos_edblock2861
	; LineNumber: 1330
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DeletePos_isAnim
	; cmp #$00 ignored
	beq DeletePos_edblock2867
DeletePos_ctb2865: ;Main true block ;keep 
	; LineNumber: 1329
	lda localVariable_DeletePos_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeleteAnimObject_id
	jsr DeleteAnimObject
DeletePos_edblock2867
	; LineNumber: 1331
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1332
DeletePos_edblock2842
	; LineNumber: 1333
	rts
end_procedure_DeletePos
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchBank
	;    Procedure type : User-defined procedure
	; LineNumber: 1336
SwitchBank
	; LineNumber: 1337
	; Binary clause Simplified: EQUALS
	clc
	lda currentBank
	; cmp #$00 ignored
	bne SwitchBank_eblock2873
SwitchBank_ctb2872: ;Main true block ;keep 
	; LineNumber: 1338
	; LineNumber: 1339
	lda #$fe
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1340
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	ora #$80
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1341
	lda #$1
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1343
	jmp SwitchBank_edblock2874
SwitchBank_eblock2873
	; LineNumber: 1344
	; LineNumber: 1345
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 1346
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 1347
	lda #$0
	; Calling storevariable on generic assign expression
	sta currentBank
	; LineNumber: 1348
SwitchBank_edblock2874
	; LineNumber: 1349
	rts
end_procedure_SwitchBank
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CycleAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1356
	; LineNumber: 1353
localVariable_CycleAnimation_animId	dc.b	0
	; LineNumber: 1354
localVariable_CycleAnimation_pa	= $72
	; LineNumber: 1351
localVariable_CycleAnimation_id	dc.b	0
CycleAnimation_block2879
CycleAnimation
	; LineNumber: 1357
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CycleAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_animId
	; LineNumber: 1358
	; Generic 16 bit op
	lda #<animList
	ldy #>animList
CycleAnimation_rightvarInteger_var2882 = $88
	sta CycleAnimation_rightvarInteger_var2882
	sty CycleAnimation_rightvarInteger_var2882+1
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
	adc CycleAnimation_rightvarInteger_var2882
CycleAnimation_wordAdd2880
	sta CycleAnimation_rightvarInteger_var2882
	; High-bit binop
	tya
	adc CycleAnimation_rightvarInteger_var2882+1
	tay
	lda CycleAnimation_rightvarInteger_var2882
	sta localVariable_CycleAnimation_pa
	sty localVariable_CycleAnimation_pa+1
	; LineNumber: 1359
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_CycleAnimation_id
	lda objectList_gobject_gobject_animPos,x 
CycleAnimation_binary_clause_temp_var2897 = $88
	sta CycleAnimation_binary_clause_temp_var2897
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy #$5
	lda (localVariable_CycleAnimation_pa),y
	sec
	sbc #$1
	 ; end add / sub var with constant
CycleAnimation_binary_clause_temp_2_var2898 = $8A
	sta CycleAnimation_binary_clause_temp_2_var2898
	lda CycleAnimation_binary_clause_temp_var2897
	cmp CycleAnimation_binary_clause_temp_2_var2898;keep
	bne CycleAnimation_eblock2885
CycleAnimation_ctb2884: ;Main true block ;keep 
	; LineNumber: 1359
	; LineNumber: 1360
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_CycleAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1361
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1363
	jmp CycleAnimation_edblock2886
CycleAnimation_eblock2885
	; LineNumber: 1362
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	; Load pointer array
	ldy #$6
	lda (localVariable_CycleAnimation_pa),y
CycleAnimation_val_var2906 = $88
	sta CycleAnimation_val_var2906
	lda globaltime
	sec
CycleAnimation_modulo2907
	sbc CycleAnimation_val_var2906
	bcs CycleAnimation_modulo2907
	adc CycleAnimation_val_var2906
	; cmp #$00 ignored
	bne CycleAnimation_edblock2904
CycleAnimation_ctb2902: ;Main true block ;keep 
	; LineNumber: 1362
	; Test Inc dec D
	ldx localVariable_CycleAnimation_id
	; Optimize byte array inc 
	inc objectList_gobject_gobject_animPos,x
CycleAnimation_edblock2904
CycleAnimation_edblock2886
	; LineNumber: 1364
	rts
end_procedure_CycleAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SwitchAnimation
	;    Procedure type : User-defined procedure
	; LineNumber: 1367
	; LineNumber: 1366
localVariable_SwitchAnimation_id	dc.b	0
	; LineNumber: 1366
localVariable_SwitchAnimation_anim	dc.b	0
SwitchAnimation_block2909
SwitchAnimation
	; LineNumber: 1368
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SwitchAnimation_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp localVariable_SwitchAnimation_anim;keep
	beq SwitchAnimation_edblock2913
SwitchAnimation_ctb2911: ;Main true block ;keep 
	; LineNumber: 1368
	; LineNumber: 1369
	lda localVariable_SwitchAnimation_anim
	; Calling storevariable on generic assign expression
	ldx localVariable_SwitchAnimation_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1370
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1371
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1372
SwitchAnimation_edblock2913
	; LineNumber: 1373
	rts
end_procedure_SwitchAnimation
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearLaserWithTag
	;    Procedure type : User-defined procedure
	; LineNumber: 1379
	; LineNumber: 1377
localVariable_ClearLaserWithTag_i	dc.b	0
	; LineNumber: 1377
localVariable_ClearLaserWithTag_varPrefixed_c	dc.b	0
	; LineNumber: 1378
localVariable_ClearLaserWithTag_varPrefixed_d	dc.b	0
	; LineNumber: 1375
localVariable_ClearLaserWithTag_tag	dc.b	0
ClearLaserWithTag_block2916
ClearLaserWithTag
	; LineNumber: 1394
	;		c := mapback2[i];
; //		if(c <> $FF and (objectList[c].component0 & 32 = 32 and objectList[c].laserTag <> $FF)) then begin 
; //			DeletePos(c, false, false);
; //		end;
; //		
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_i
ClearLaserWithTag_forloop2917
	; LineNumber: 1380
	; LineNumber: 1382
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_varPrefixed_c
	; LineNumber: 1383
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearLaserWithTag_edblock2944
ClearLaserWithTag_localsuccess2952: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearLaserWithTag_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp localVariable_ClearLaserWithTag_tag;keep
	bne ClearLaserWithTag_edblock2944
ClearLaserWithTag_ctb2942: ;Main true block ;keep 
	; LineNumber: 1383
	; LineNumber: 1384
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
	bne ClearLaserWithTag_edblock2957
ClearLaserWithTag_ctb2955: ;Main true block ;keep 
	; LineNumber: 1383
	; LineNumber: 1385
	lda localVariable_ClearLaserWithTag_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1386
ClearLaserWithTag_edblock2957
	; LineNumber: 1387
ClearLaserWithTag_edblock2944
	; LineNumber: 1393
ClearLaserWithTag_loopstart2918
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ClearLaserWithTag_i
	lda #$f0
	cmp localVariable_ClearLaserWithTag_i ;keep
	bne ClearLaserWithTag_forloop2917
ClearLaserWithTag_loopdone2960: ;keep
ClearLaserWithTag_loopend2919
	; LineNumber: 1394
	rts
end_procedure_ClearLaserWithTag
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ClearAllLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 1401
	; LineNumber: 1399
localVariable_ClearAllLaser_i	dc.b	0
	; LineNumber: 1399
localVariable_ClearAllLaser_varPrefixed_c	dc.b	0
	; LineNumber: 1400
localVariable_ClearAllLaser_varPrefixed_d	dc.b	0
ClearAllLaser_block2961
ClearAllLaser
	; LineNumber: 1415
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_i
ClearAllLaser_forloop2962
	; LineNumber: 1402
	; LineNumber: 1404
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1405
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_edblock2999
ClearAllLaser_localsuccess3008: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_edblock2999
ClearAllLaser_ctb2997: ;Main true block ;keep 
	; LineNumber: 1405
	; LineNumber: 1406
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
	bne ClearAllLaser_localfailed3015
	jmp ClearAllLaser_ctb3011
ClearAllLaser_localfailed3015: ;keep
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
	bne ClearAllLaser_edblock3013
ClearAllLaser_ctb3011: ;Main true block ;keep 
	; LineNumber: 1405
	; LineNumber: 1407
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1408
ClearAllLaser_edblock3013
	; LineNumber: 1409
ClearAllLaser_edblock2999
	; LineNumber: 1410
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_i
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearAllLaser_varPrefixed_c
	; LineNumber: 1411
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_edblock3020
ClearAllLaser_localsuccess3022: ;keep
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
	bne ClearAllLaser_edblock3020
ClearAllLaser_localsuccess3023: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ClearAllLaser_varPrefixed_c
	lda objectList_gobject_gobject_laserTag,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ClearAllLaser_edblock3020
ClearAllLaser_ctb3018: ;Main true block ;keep 
	; LineNumber: 1410
	; LineNumber: 1412
	lda localVariable_ClearAllLaser_varPrefixed_c
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 1413
ClearAllLaser_edblock3020
	; LineNumber: 1414
ClearAllLaser_loopstart2963
	; Test Inc dec D
	inc localVariable_ClearAllLaser_i
	lda #$f0
	cmp localVariable_ClearAllLaser_i ;keep
	beq ClearAllLaser_loopdone3025
ClearAllLaser_loopnotdone3026
	jmp ClearAllLaser_forloop2962
ClearAllLaser_loopdone3025
ClearAllLaser_loopend2964
	; LineNumber: 1415
	rts
end_procedure_ClearAllLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DirectFire
	;    Procedure type : User-defined procedure
	; LineNumber: 1426
	; LineNumber: 1419
localVariable_DirectFire_laserEmitId	dc.b	0
	; LineNumber: 1420
localVariable_DirectFire_laserId	dc.b	0
	; LineNumber: 1421
localVariable_DirectFire_collideId	dc.b	0
	; LineNumber: 1421
localVariable_DirectFire_floaterId	dc.b	0
	; LineNumber: 1422
localVariable_DirectFire_collide	dc.b	0
	; LineNumber: 1423
localVariable_DirectFire_laserx	dc.b	0
	; LineNumber: 1423
localVariable_DirectFire_lasery	dc.b	0
	; LineNumber: 1423
localVariable_DirectFire_lastx	dc.b	0
	; LineNumber: 1423
localVariable_DirectFire_lasty	dc.b	0
	; LineNumber: 1424
localVariable_DirectFire_countLaser	dc.b	0
	; LineNumber: 1425
localVariable_DirectFire_dir	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_tileUp	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_tileDown	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_tileLeft	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_tileRight	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_z	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_comp0	dc.b	0
	; LineNumber: 1426
localVariable_DirectFire_comp2	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_id	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_xpos	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_ypos	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_xdir	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_ydir	dc.b	0
	; LineNumber: 1417
localVariable_DirectFire_bomb	dc.b	0
DirectFire_block3027
DirectFire
	; LineNumber: 1428
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_id
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_localfailed5094
	jmp DirectFire_ctb3029
DirectFire_localfailed5094
	jmp DirectFire_edblock3031
DirectFire_ctb3029: ;Main true block ;keep 
	; LineNumber: 1428
	; LineNumber: 1429
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserEmitId
	; LineNumber: 1430
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	beq DirectFire_eblock5098
DirectFire_ctb5097: ;Main true block ;keep 
	; LineNumber: 1430
	; LineNumber: 1431
	lda #$58
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1432
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1433
	lda #$59
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1434
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1435
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1436
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1437
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1439
	jmp DirectFire_edblock5099
DirectFire_eblock5098
	; LineNumber: 1439
	; LineNumber: 1440
	lda #$7e
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileLeft
	; LineNumber: 1441
	lda #$7f
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileRight
	; LineNumber: 1442
	lda #$7c
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileUp
	; LineNumber: 1443
	lda #$7d
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_tileDown
	; LineNumber: 1444
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_z
	; LineNumber: 1445
	lda #$22
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp0
	; LineNumber: 1446
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_comp2
	; LineNumber: 1447
DirectFire_edblock5099
	; LineNumber: 1449
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1450
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1451
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1452
	lda localVariable_DirectFire_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1453
	lda localVariable_DirectFire_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1454
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_countLaser
	; LineNumber: 1455
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
	; LineNumber: 1456
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
	; LineNumber: 1457
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_DirectFire_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_edblock5107
DirectFire_localsuccess5109: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_floaterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_edblock5107
DirectFire_ctb5105: ;Main true block ;keep 
	; LineNumber: 1456
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
DirectFire_edblock5107
	; LineNumber: 1458
DirectFire_while5111
DirectFire_loopstart5115
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_collide
	; cmp #$00 ignored
	bne DirectFire_localfailed6136
DirectFire_localsuccess6137: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: GREATER
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DirectFire_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp localVariable_DirectFire_countLaser;keep
	bcc DirectFire_localfailed6136
	beq DirectFire_localfailed6136
	jmp DirectFire_ctb5112
DirectFire_localfailed6136
	jmp DirectFire_edblock5114
DirectFire_ctb5112: ;Main true block ;keep 
	; LineNumber: 1458
	; LineNumber: 1459
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
	; LineNumber: 1460
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
	; LineNumber: 1461
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_DirectFire_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_localfailed6649
DirectFire_localsuccess6650: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_floaterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed6649
	jmp DirectFire_ctb6140
DirectFire_localfailed6649
	jmp DirectFire_eblock6141
DirectFire_ctb6140: ;Main true block ;keep 
	; LineNumber: 1461
	; LineNumber: 1462
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_collide
	; LineNumber: 1464
	jmp DirectFire_edblock6142
DirectFire_eblock6141
	; LineNumber: 1464
	; LineNumber: 1466
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
	bne DirectFire_localfailed6906
DirectFire_localsuccess6907: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	bne DirectFire_localfailed6906
	jmp DirectFire_ctb6654
DirectFire_localfailed6906: ;keep
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
	bne DirectFire_localfailed6905
DirectFire_localsuccess6908: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_DirectFire_bomb
	; cmp #$00 ignored
	beq DirectFire_localfailed6905
	jmp DirectFire_ctb6654
DirectFire_localfailed6905
	jmp DirectFire_edblock6656
DirectFire_ctb6654: ;Main true block ;keep 
	; LineNumber: 1466
	; LineNumber: 1467
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserId
	; LineNumber: 1468
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq DirectFire_localfailed7035
	jmp DirectFire_ctb6911
DirectFire_localfailed7035
	jmp DirectFire_edblock6913
DirectFire_ctb6911: ;Main true block ;keep 
	; LineNumber: 1467
	; LineNumber: 1469
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_localfailed7098
DirectFire_localsuccess7099: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_ydir
	; cmp #$00 ignored
	bne DirectFire_localfailed7098
	jmp DirectFire_ctb7038
DirectFire_localfailed7098
	jmp DirectFire_eblock7039
DirectFire_ctb7038: ;Main true block ;keep 
	; LineNumber: 1468
	; LineNumber: 1470
	lda localVariable_DirectFire_tileLeft
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1471
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1473
	jmp DirectFire_edblock7040
DirectFire_eblock7039
	; LineNumber: 1472
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_eblock7104
DirectFire_localsuccess7131: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_ydir
	; cmp #$00 ignored
	bne DirectFire_eblock7104
DirectFire_ctb7103: ;Main true block ;keep 
	; LineNumber: 1473
	; LineNumber: 1474
	lda localVariable_DirectFire_tileRight
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1475
	lda #$5
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1477
	jmp DirectFire_edblock7105
DirectFire_eblock7104
	; LineNumber: 1476
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_xdir
	; cmp #$00 ignored
	bne DirectFire_eblock7136
DirectFire_localsuccess7147: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DirectFire_eblock7136
DirectFire_ctb7135: ;Main true block ;keep 
	; LineNumber: 1477
	; LineNumber: 1478
	lda localVariable_DirectFire_tileUp
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1479
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1481
	jmp DirectFire_edblock7137
DirectFire_eblock7136
	; LineNumber: 1480
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_DirectFire_xdir
	; cmp #$00 ignored
	bne DirectFire_edblock7153
DirectFire_localsuccess7155: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_DirectFire_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne DirectFire_edblock7153
DirectFire_ctb7151: ;Main true block ;keep 
	; LineNumber: 1481
	; LineNumber: 1482
	lda localVariable_DirectFire_tileDown
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1483
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1484
DirectFire_edblock7153
DirectFire_edblock7137
DirectFire_edblock7105
DirectFire_edblock7040
	; LineNumber: 1485
	lda localVariable_DirectFire_comp0
	; Calling storevariable on generic assign expression
	ldx localVariable_DirectFire_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1486
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1487
	lda localVariable_DirectFire_comp2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1488
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1489
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1490
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1491
	lda localVariable_DirectFire_z
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1492
	lda localVariable_DirectFire_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 1493
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
	; LineNumber: 1494
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 1495
DirectFire_edblock6913
	; LineNumber: 1496
DirectFire_edblock6656
	; LineNumber: 1497
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lastx
	; LineNumber: 1498
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasty
	; LineNumber: 1499
	lda localVariable_DirectFire_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_DirectFire_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_laserx
	; LineNumber: 1500
	lda localVariable_DirectFire_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_DirectFire_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_DirectFire_lasery
	; LineNumber: 1501
	; Test Inc dec D
	inc localVariable_DirectFire_countLaser
	; LineNumber: 1502
DirectFire_edblock6142
	; LineNumber: 1503
	jmp DirectFire_while5111
DirectFire_edblock5114
DirectFire_loopend5116
	; LineNumber: 1504
DirectFire_edblock3031
	; LineNumber: 1505
	rts
end_procedure_DirectFire
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Animate
	;    Procedure type : User-defined procedure
	; LineNumber: 1511
	; LineNumber: 1509
localVariable_Animate_i	dc.b	0
	; LineNumber: 1510
localVariable_Animate_id	dc.b	0
Animate_block7157
Animate
	; LineNumber: 1512
	; Binary clause Simplified: NOTEQUALS
	clc
	lda countAnim
	; cmp #$00 ignored
	beq Animate_edblock7161
Animate_ctb7159: ;Main true block ;keep 
	; LineNumber: 1512
	; LineNumber: 1517
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_i
Animate_forloop7170
	; LineNumber: 1513
	; LineNumber: 1514
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Animate_i
	lda animObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Animate_id
	; LineNumber: 1515
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
	; LineNumber: 1516
Animate_loopstart7171
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Animate_i
	lda countAnim
	cmp localVariable_Animate_i ;keep
	bne Animate_forloop7170
Animate_loopdone7175: ;keep
Animate_loopend7172
	; LineNumber: 1517
Animate_edblock7161
	; LineNumber: 1518
	rts
end_procedure_Animate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SetupSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1527
SetupSound
	; LineNumber: 1528
	jsr StopSounds
	; LineNumber: 1529
	; Poke
	; Optimization: shift is zero
	lda #$f
	sta $900e
	; LineNumber: 1531
	rts
end_procedure_SetupSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : PlayNote
	;    Procedure type : User-defined procedure
	; LineNumber: 1534
	; LineNumber: 1533
localVariable_PlayNote_sindex	dc.b	0
	; LineNumber: 1533
localVariable_PlayNote_note	dc.b	0
PlayNote_block7177
PlayNote
	; LineNumber: 1535
	; Poke
	ldx localVariable_PlayNote_sindex ; optimized, look out for bugs
	lda localVariable_PlayNote_note
	sta $900a,x
	; LineNumber: 1536
	rts
end_procedure_PlayNote
	; NodeProcedureDecl 3
	; ***********  Defining procedure : StopSounds
	;    Procedure type : User-defined procedure
	; LineNumber: 1541
	; LineNumber: 1540
localVariable_StopSounds_i	dc.b	0
StopSounds_block7178
StopSounds
	; LineNumber: 1547
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_StopSounds_i
StopSounds_forloop7179
	; LineNumber: 1542
	; LineNumber: 1543
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_StopSounds_i ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1544
	; Calling storevariable on generic assign expression
	sta vsndTime,x
	; LineNumber: 1545
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
	; LineNumber: 1546
StopSounds_loopstart7180
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_StopSounds_i
	lda #$4
	cmp localVariable_StopSounds_i ;keep
	bne StopSounds_forloop7179
StopSounds_loopdone7184: ;keep
StopSounds_loopend7181
	; LineNumber: 1548
	; Poke
	; Optimization: shift is zero
	lda #$0
	sta $900a
	; LineNumber: 1549
	; Poke
	; Optimization: shift is zero
	sta $900b
	; LineNumber: 1550
	; Poke
	; Optimization: shift is zero
	sta $900c
	; LineNumber: 1551
	; Poke
	; Optimization: shift is zero
	sta $900d
	; LineNumber: 1552
	rts
end_procedure_StopSounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : SndTime
	;    Procedure type : User-defined procedure
	; LineNumber: 1555
	; LineNumber: 1554
localVariable_SndTime_s	dc.b	0
SndTime_block7185
SndTime
	; LineNumber: 1557
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SndTime_s
	lda vsndTime,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc SndTime_edblock7189
SndTime_ctb7187: ;Main true block ;keep 
	; LineNumber: 1556
	
; // decrease time
	; Test Inc dec D
	ldx localVariable_SndTime_s
	; Optimize byte array dec 
	dec vsndTime,x
SndTime_edblock7189
	; LineNumber: 1559
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_SndTime_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne SndTime_edblock7195
SndTime_ctb7193: ;Main true block ;keep 
	; LineNumber: 1558
	
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
SndTime_edblock7195
	; LineNumber: 1560
	rts
end_procedure_SndTime
	
; // goto next command
; // Play active sounds on voice 1
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSoundInternal
	;    Procedure type : User-defined procedure
	; LineNumber: 1566
	; LineNumber: 1565
localVariable_UpdateSoundInternal_duration	dc.b	0
	; LineNumber: 1563
localVariable_UpdateSoundInternal_s	dc.b	0
UpdateSoundInternal_block7200
UpdateSoundInternal
	; LineNumber: 1567
	; Load Integer array
	; CAST type NADA
	lda localVariable_UpdateSoundInternal_s
	asl
	tax
	lda psnd,x 
	ldy psnd+1,x 
	sta soundPointer
	sty soundPointer+1
	; LineNumber: 1569
	; Binary clause Simplified: EQUALS
	clc
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; cmp #$00 ignored
	bne UpdateSoundInternal_edblock7204
UpdateSoundInternal_ctb7202: ;Main true block ;keep 
	; LineNumber: 1570
	; LineNumber: 1572
	
; //poke(tempPointer[0], 0, 0);
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsnd,x 
	; cmp #$00 ignored
	beq UpdateSoundInternal_edblock7216
UpdateSoundInternal_ctb7214: ;Main true block ;keep 
	; LineNumber: 1573
	; LineNumber: 1574
	
; // idle
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsnd,x
	; LineNumber: 1575
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1577
UpdateSoundInternal_edblock7216
	; LineNumber: 1578
	rts
	; LineNumber: 1580
UpdateSoundInternal_edblock7204
	; LineNumber: 1582
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateSoundInternal_localfailed7254
	jmp UpdateSoundInternal_ctb7220
UpdateSoundInternal_localfailed7254: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateSoundInternal_edblock7222
UpdateSoundInternal_ctb7220: ;Main true block ;keep 
	; LineNumber: 1583
	; LineNumber: 1587
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_edblock7259
UpdateSoundInternal_ctb7257: ;Main true block ;keep 
	; LineNumber: 1588
	; LineNumber: 1589
	
; // play note
; //addbreakpoint(); nop(3);
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
	; LineNumber: 1590
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne UpdateSoundInternal_edblock7277
UpdateSoundInternal_ctb7275: ;Main true block ;keep 
	; LineNumber: 1590
	; LineNumber: 1591
	
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
	; LineNumber: 1592
UpdateSoundInternal_edblock7277
	; LineNumber: 1593
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateSoundInternal_edblock7283
UpdateSoundInternal_ctb7281: ;Main true block ;keep 
	; LineNumber: 1593
	; LineNumber: 1594
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1595
UpdateSoundInternal_edblock7283
	; LineNumber: 1596
UpdateSoundInternal_edblock7259
	; LineNumber: 1597
UpdateSoundInternal_edblock7222
	; LineNumber: 1600
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
	bne UpdateSoundInternal_edblock7289
UpdateSoundInternal_ctb7287: ;Main true block ;keep 
	; LineNumber: 1601
	; LineNumber: 1602
	
; // increment
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1603
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$80
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1605
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_edblock7301
UpdateSoundInternal_ctb7299: ;Main true block ;keep 
	; LineNumber: 1604
	
; // if time = 0 at start, then this is a new note command			
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_edblock7301
	; LineNumber: 1607
	
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
	; LineNumber: 1608
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1610
UpdateSoundInternal_edblock7289
	; LineNumber: 1613
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
	bne UpdateSoundInternal_edblock7307
UpdateSoundInternal_ctb7305: ;Main true block ;keep 
	; LineNumber: 1614
	; LineNumber: 1615
	
; // decrement
	; Load pointer array
	ldy #$0
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1616
	; Optimizer: a = a +/- b
	; Load16bitvariable : localVariable_UpdateSoundInternal_duration
	sec
	sbc #$40
	sta localVariable_UpdateSoundInternal_duration
	; LineNumber: 1617
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateSoundInternal_s
	lda vsndTime,x 
	; cmp #$00 ignored
	bne UpdateSoundInternal_edblock7319
UpdateSoundInternal_ctb7317: ;Main true block ;keep 
	; LineNumber: 1616
	; Load pointer array
	ldy #$1
	lda (soundPointer),y
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateSoundInternal_s ; optimized, look out for bugs
	sta vsndTime,x
UpdateSoundInternal_edblock7319
	; LineNumber: 1618
	
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
	; LineNumber: 1619
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_sindex
	; Load Byte array
	; CAST type NADA
	lda vsnd,x 
	; Calling storevariable on generic assign expression
	sta localVariable_PlayNote_note
	jsr PlayNote
	; LineNumber: 1621
UpdateSoundInternal_edblock7307
	; LineNumber: 1622
	lda localVariable_UpdateSoundInternal_s
	; Calling storevariable on generic assign expression
	sta localVariable_SndTime_s
	jsr SndTime
	; LineNumber: 1625
	rts
end_procedure_UpdateSoundInternal
	
; // ----------------------------------------------------------------------
; // Play active sounds
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateSound
	;    Procedure type : User-defined procedure
	; LineNumber: 1630
UpdateSound
	; LineNumber: 1631
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1632
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1633
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1634
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateSoundInternal_s
	jsr UpdateSoundInternal
	; LineNumber: 1636
	rts
end_procedure_UpdateSound
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DecreaseTextTimer
	;    Procedure type : User-defined procedure
	; LineNumber: 1639
DecreaseTextTimer
	; LineNumber: 1640
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda textTimer
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc DecreaseTextTimer_edblock7327
DecreaseTextTimer_ctb7325: ;Main true block ;keep 
	; LineNumber: 1640
	; LineNumber: 1641
	; Test Inc dec D
	dec textTimer
	; LineNumber: 1642
	; Binary clause Simplified: EQUALS
	clc
	lda textTimer
	; cmp #$00 ignored
	bne DecreaseTextTimer_edblock7339
DecreaseTextTimer_ctb7337: ;Main true block ;keep 
	; LineNumber: 1641
	jsr ClearText
DecreaseTextTimer_edblock7339
	; LineNumber: 1643
DecreaseTextTimer_edblock7327
	; LineNumber: 1644
	rts
end_procedure_DecreaseTextTimer
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Pos2ObjectId
	;    Procedure type : User-defined procedure
	; LineNumber: 1649
	; LineNumber: 1648
localVariable_Pos2ObjectId_varPrefixed_c	dc.b	0
	; LineNumber: 1646
localVariable_Pos2ObjectId_pos	dc.b	0
Pos2ObjectId_block7342
Pos2ObjectId
	; LineNumber: 1650
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	; LineNumber: 1651
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_Pos2ObjectId_pos
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_edblock7346
Pos2ObjectId_ctb7344: ;Main true block ;keep 
	; LineNumber: 1651
	; LineNumber: 1652
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_eblock7455
Pos2ObjectId_ctb7454: ;Main true block ;keep 
	; LineNumber: 1651
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback2,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_edblock7456
Pos2ObjectId_eblock7455
	; LineNumber: 1652
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_eblock7511
Pos2ObjectId_ctb7510: ;Main true block ;keep 
	; LineNumber: 1652
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapback1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_edblock7512
Pos2ObjectId_eblock7511
	; LineNumber: 1653
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_eblock7539
Pos2ObjectId_ctb7538: ;Main true block ;keep 
	; LineNumber: 1653
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapmain,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
	jmp Pos2ObjectId_edblock7540
Pos2ObjectId_eblock7539
	; LineNumber: 1654
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapfront,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Pos2ObjectId_edblock7554
Pos2ObjectId_ctb7552: ;Main true block ;keep 
	; LineNumber: 1654
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Pos2ObjectId_pos
	lda mapfront,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Pos2ObjectId_varPrefixed_c
Pos2ObjectId_edblock7554
Pos2ObjectId_edblock7540
Pos2ObjectId_edblock7512
Pos2ObjectId_edblock7456
	; LineNumber: 1656
Pos2ObjectId_edblock7346
	; LineNumber: 1658
	; LineNumber: 1658
	lda localVariable_Pos2ObjectId_varPrefixed_c
	rts
end_procedure_Pos2ObjectId
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitActors
	;    Procedure type : User-defined procedure
	; LineNumber: 1664
	; LineNumber: 1663
localVariable_InitActors_i	dc.b	0
	; LineNumber: 1663
localVariable_InitActors_j	dc.b	0
	; LineNumber: 1663
localVariable_InitActors_x	dc.b	0
	; LineNumber: 1663
localVariable_InitActors_y	dc.b	0
	; LineNumber: 1663
localVariable_InitActors_varPrefixed_c	dc.b	0
InitActors_block7557
InitActors
	; LineNumber: 1665
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_j
	; LineNumber: 1678
	; Calling storevariable on generic assign expression
	sta localVariable_InitActors_i
InitActors_forloop7558
	; LineNumber: 1667
	; LineNumber: 1668
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InitActors_i
	lda levActor,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_InitActors_j ; optimized, look out for bugs
	sta actorList_actorObject_actorObject_event,x
	; LineNumber: 1669
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
	; LineNumber: 1670
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
	; LineNumber: 1671
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
	; LineNumber: 1672
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
	; LineNumber: 1673
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
	; LineNumber: 1674
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
	; LineNumber: 1675
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
	; LineNumber: 1676
	; Test Inc dec D
	inc localVariable_InitActors_j
	; LineNumber: 1677
InitActors_loopstart7559
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
	beq InitActors_loopdone7563
InitActors_loopnotdone7564
	jmp InitActors_forloop7558
InitActors_loopdone7563
InitActors_loopend7560
	; LineNumber: 1678
	rts
end_procedure_InitActors
	; NodeProcedureDecl 3
	; ***********  Defining procedure : MenuMove
	;    Procedure type : User-defined procedure
	; LineNumber: 1684
	; LineNumber: 1683
localVariable_MenuMove_col	dc.b	0
	; LineNumber: 1681
localVariable_MenuMove_len	dc.b	0
	; LineNumber: 1681
localVariable_MenuMove_oldMenuItem	dc.b	0
MenuMove_block7565
MenuMove
	; LineNumber: 1685
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne MenuMove_eblock7568
MenuMove_ctb7567: ;Main true block ;keep 
	; LineNumber: 1685
	; LineNumber: 1686
	; Binary clause Simplified: GREATEREQUAL
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc MenuMove_edblock7600
MenuMove_ctb7598: ;Main true block ;keep 
	; LineNumber: 1685
	; Test Inc dec D
	dec menuItem
MenuMove_edblock7600
	; LineNumber: 1688
	jmp MenuMove_edblock7569
MenuMove_eblock7568
	; LineNumber: 1687
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne MenuMove_edblock7607
MenuMove_ctb7605: ;Main true block ;keep 
	; LineNumber: 1688
	; LineNumber: 1689
	; Binary clause Simplified: GREATER
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_MenuMove_len
	sec
	sbc #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp menuItem;keep
	bcc MenuMove_edblock7619
	beq MenuMove_edblock7619
MenuMove_ctb7617: ;Main true block ;keep 
	; LineNumber: 1688
	; Test Inc dec D
	inc menuItem
MenuMove_edblock7619
	; LineNumber: 1690
MenuMove_edblock7607
MenuMove_edblock7569
	; LineNumber: 1691
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
	; LineNumber: 1692
	; Binary clause Simplified: LESS
	; Modulo
	lda #$4
MenuMove_val_var7628 = $88
	sta MenuMove_val_var7628
	lda globaltime
	sec
MenuMove_modulo7629
	sbc MenuMove_val_var7628
	bcs MenuMove_modulo7629
	adc MenuMove_val_var7628
	; Compare with pure num / var optimization
	cmp #$2;keep
	bcs MenuMove_eblock7624
MenuMove_ctb7623: ;Main true block ;keep 
	; LineNumber: 1691
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_col
	jmp MenuMove_edblock7625
MenuMove_eblock7624
	; LineNumber: 1691
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_col
MenuMove_edblock7625
	; LineNumber: 1693
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$c
	clc
	adc menuItem
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_y
	lda localVariable_MenuMove_col
	; Calling storevariable on generic assign expression
	sta localVariable_ColorLine_col
	jsr ColorLine
	; LineNumber: 1694
	rts
end_procedure_MenuMove
	
; // @include "Sounds.ras"
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1699
	; LineNumber: 1699
localVariable_ActionOpenDoor_receiverId	dc.b	0
	; LineNumber: 1697
localVariable_ActionOpenDoor_actorId	dc.b	0
ActionOpenDoor_block7632
ActionOpenDoor
	; LineNumber: 1701
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_receiverId
	; LineNumber: 1702
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
	bne ActionOpenDoor_edblock7636
ActionOpenDoor_ctb7634: ;Main true block ;keep 
	; LineNumber: 1702
	; LineNumber: 1703
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenDoor_edblock7648
ActionOpenDoor_ctb7646: ;Main true block ;keep 
	; LineNumber: 1703
	; LineNumber: 1704
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
	; LineNumber: 1705
	lda localVariable_ActionOpenDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$a
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1706
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1707
ActionOpenDoor_edblock7648
	; LineNumber: 1708
ActionOpenDoor_edblock7636
	; LineNumber: 1709
	rts
end_procedure_ActionOpenDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 1713
	; LineNumber: 1713
localVariable_ActionCloseDoor_receiverId	dc.b	0
	; LineNumber: 1711
localVariable_ActionCloseDoor_actorId	dc.b	0
ActionCloseDoor_block7651
ActionCloseDoor
	; LineNumber: 1715
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_receiverId
	; LineNumber: 1716
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
	bne ActionCloseDoor_edblock7655
ActionCloseDoor_ctb7653: ;Main true block ;keep 
	; LineNumber: 1716
	; LineNumber: 1717
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseDoor_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseDoor_edblock7667
ActionCloseDoor_ctb7665: ;Main true block ;keep 
	; LineNumber: 1717
	; LineNumber: 1718
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
	; LineNumber: 1719
	lda localVariable_ActionCloseDoor_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$b
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1720
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseDoor_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1721
ActionCloseDoor_edblock7667
	; LineNumber: 1722
ActionCloseDoor_edblock7655
	; LineNumber: 1723
	rts
end_procedure_ActionCloseDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionOpenExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1727
	; LineNumber: 1727
localVariable_ActionOpenExit_receiverId	dc.b	0
	; LineNumber: 1725
localVariable_ActionOpenExit_actorId	dc.b	0
ActionOpenExit_block7670
ActionOpenExit
	; LineNumber: 1729
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_receiverId
	; LineNumber: 1730
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
	bne ActionOpenExit_edblock7674
ActionOpenExit_ctb7672: ;Main true block ;keep 
	; LineNumber: 1730
	; LineNumber: 1731
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionOpenExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ActionOpenExit_edblock7686
ActionOpenExit_ctb7684: ;Main true block ;keep 
	; LineNumber: 1731
	; LineNumber: 1732
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1733
	lda localVariable_ActionOpenExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1734
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionOpenExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1735
ActionOpenExit_edblock7686
	; LineNumber: 1736
ActionOpenExit_edblock7674
	; LineNumber: 1737
	rts
end_procedure_ActionOpenExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionCloseExit
	;    Procedure type : User-defined procedure
	; LineNumber: 1741
	; LineNumber: 1741
localVariable_ActionCloseExit_receiverId	dc.b	0
	; LineNumber: 1739
localVariable_ActionCloseExit_actorId	dc.b	0
ActionCloseExit_block7689
ActionCloseExit
	; LineNumber: 1743
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_receiverId
	; LineNumber: 1744
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
	bne ActionCloseExit_edblock7693
ActionCloseExit_ctb7691: ;Main true block ;keep 
	; LineNumber: 1744
	; LineNumber: 1745
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionCloseExit_receiverId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ActionCloseExit_edblock7705
ActionCloseExit_ctb7703: ;Main true block ;keep 
	; LineNumber: 1745
	; LineNumber: 1746
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1747
	lda localVariable_ActionCloseExit_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1748
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionCloseExit_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1749
ActionCloseExit_edblock7705
	; LineNumber: 1750
ActionCloseExit_edblock7693
	; LineNumber: 1751
	rts
end_procedure_ActionCloseExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1755
	; LineNumber: 1755
localVariable_ActionLaserCannonOn_receiverId	dc.b	0
	; LineNumber: 1753
localVariable_ActionLaserCannonOn_actorId	dc.b	0
ActionLaserCannonOn_block7708
ActionLaserCannonOn
	; LineNumber: 1757
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_receiverId
	; LineNumber: 1758
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
	bne ActionLaserCannonOn_edblock7712
ActionLaserCannonOn_ctb7710: ;Main true block ;keep 
	; LineNumber: 1758
	; LineNumber: 1759
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1760
ActionLaserCannonOn_edblock7712
	; LineNumber: 1761
	rts
end_procedure_ActionLaserCannonOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionLaserCannonOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1765
	; LineNumber: 1765
localVariable_ActionLaserCannonOff_receiverId	dc.b	0
	; LineNumber: 1763
localVariable_ActionLaserCannonOff_actorId	dc.b	0
ActionLaserCannonOff_block7715
ActionLaserCannonOff
	; LineNumber: 1767
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionLaserCannonOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_receiverId
	; LineNumber: 1768
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
	bne ActionLaserCannonOff_edblock7719
ActionLaserCannonOff_ctb7717: ;Main true block ;keep 
	; LineNumber: 1768
	; LineNumber: 1769
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionLaserCannonOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1770
ActionLaserCannonOff_edblock7719
	; LineNumber: 1771
	rts
end_procedure_ActionLaserCannonOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1775
	; LineNumber: 1775
localVariable_ActionFontaineOn_receiverId	dc.b	0
	; LineNumber: 1773
localVariable_ActionFontaineOn_actorId	dc.b	0
ActionFontaineOn_block7722
ActionFontaineOn
	; LineNumber: 1777
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_receiverId
	; LineNumber: 1778
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
	bne ActionFontaineOn_edblock7726
ActionFontaineOn_ctb7724: ;Main true block ;keep 
	; LineNumber: 1778
	; LineNumber: 1779
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1780
ActionFontaineOn_edblock7726
	; LineNumber: 1781
	rts
end_procedure_ActionFontaineOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionFontaineOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1785
	; LineNumber: 1785
localVariable_ActionFontaineOff_receiverId	dc.b	0
	; LineNumber: 1783
localVariable_ActionFontaineOff_actorId	dc.b	0
ActionFontaineOff_block7729
ActionFontaineOff
	; LineNumber: 1787
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionFontaineOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_receiverId
	; LineNumber: 1788
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
	bne ActionFontaineOff_edblock7733
ActionFontaineOff_ctb7731: ;Main true block ;keep 
	; LineNumber: 1788
	; LineNumber: 1789
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionFontaineOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1790
ActionFontaineOff_edblock7733
	; LineNumber: 1791
	rts
end_procedure_ActionFontaineOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionPrintText
	;    Procedure type : User-defined procedure
	; LineNumber: 1796
	; LineNumber: 1795
localVariable_ActionPrintText_textId	dc.b	0
	; LineNumber: 1795
localVariable_ActionPrintText_x	dc.b	0
	; LineNumber: 1793
localVariable_ActionPrintText_actorId	dc.b	0
ActionPrintText_block7736
ActionPrintText
	; LineNumber: 1797
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionPrintText_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_textId
	; LineNumber: 1798
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param1,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_x
	; LineNumber: 1799
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param2,x 
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 1800
	; Load Integer array
	; CAST type INTEGER
	lda localVariable_ActionPrintText_textId
	asl
	tax
	lda levStrings,x 
	ldy levStrings+1,x 
	sta sp
	sty sp+1
	; LineNumber: 1801
	lda localVariable_ActionPrintText_x
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 1802
	rts
end_procedure_ActionPrintText
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSetGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1806
	; LineNumber: 1806
localVariable_ActionSetGrav_receiverId	dc.b	0
	; LineNumber: 1804
localVariable_ActionSetGrav_actorId	dc.b	0
ActionSetGrav_block7737
ActionSetGrav
	; LineNumber: 1808
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSetGrav_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_receiverId
	; LineNumber: 1809
	; Load Byte array
	; CAST type NADA
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSetGrav_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1810
	rts
end_procedure_ActionSetGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOn
	;    Procedure type : User-defined procedure
	; LineNumber: 1814
	; LineNumber: 1814
localVariable_ActionSwitchOn_receiverId	dc.b	0
	; LineNumber: 1812
localVariable_ActionSwitchOn_actorId	dc.b	0
ActionSwitchOn_block7738
ActionSwitchOn
	; LineNumber: 1816
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOn_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_receiverId
	; LineNumber: 1817
	
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
	bne ActionSwitchOn_edblock7742
ActionSwitchOn_ctb7740: ;Main true block ;keep 
	; LineNumber: 1817
	; LineNumber: 1818
	lda localVariable_ActionSwitchOn_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1819
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOn_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1821
ActionSwitchOn_edblock7742
	; LineNumber: 1822
	rts
end_procedure_ActionSwitchOn
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionSwitchOff
	;    Procedure type : User-defined procedure
	; LineNumber: 1827
	; LineNumber: 1826
localVariable_ActionSwitchOff_receiverId	dc.b	0
	; LineNumber: 1824
localVariable_ActionSwitchOff_actorId	dc.b	0
ActionSwitchOff_block7745
ActionSwitchOff
	; LineNumber: 1829
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionSwitchOff_actorId
	lda actorList_actorObject_actorObject_receiverId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_receiverId
	; LineNumber: 1830
	
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
	bne ActionSwitchOff_edblock7749
ActionSwitchOff_ctb7747: ;Main true block ;keep 
	; LineNumber: 1830
	; LineNumber: 1831
	lda localVariable_ActionSwitchOff_receiverId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 1832
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionSwitchOff_receiverId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1834
ActionSwitchOff_edblock7749
	; LineNumber: 1835
	rts
end_procedure_ActionSwitchOff
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ActionBulkGrav
	;    Procedure type : User-defined procedure
	; LineNumber: 1839
	; LineNumber: 1839
localVariable_ActionBulkGrav_id	dc.b	0
	; LineNumber: 1839
localVariable_ActionBulkGrav_i	dc.b	0
	; LineNumber: 1837
localVariable_ActionBulkGrav_actorId	dc.b	0
ActionBulkGrav_block7752
ActionBulkGrav
	; LineNumber: 1847
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_i
ActionBulkGrav_forloop7753
	; LineNumber: 1841
	; LineNumber: 1842
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_id
	; LineNumber: 1843
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
	bne ActionBulkGrav_edblock7767
ActionBulkGrav_ctb7765: ;Main true block ;keep 
	; LineNumber: 1843
	; LineNumber: 1844
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ActionBulkGrav_actorId
	lda actorList_actorObject_actorObject_param0,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ActionBulkGrav_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1845
ActionBulkGrav_edblock7767
	; LineNumber: 1846
ActionBulkGrav_loopstart7754
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_ActionBulkGrav_i
	lda countDyn
	cmp localVariable_ActionBulkGrav_i ;keep
	bne ActionBulkGrav_forloop7753
ActionBulkGrav_loopdone7770: ;keep
ActionBulkGrav_loopend7755
	; LineNumber: 1847
	rts
end_procedure_ActionBulkGrav
	; NodeProcedureDecl 3
	; ***********  Defining procedure : DispatchEvent
	;    Procedure type : User-defined procedure
	; LineNumber: 1853
	; LineNumber: 1852
localVariable_DispatchEvent_i	dc.b	0
	; LineNumber: 1852
localVariable_DispatchEvent_action	dc.b	0
	; LineNumber: 1850
localVariable_DispatchEvent_event	dc.b	0
	; LineNumber: 1850
localVariable_DispatchEvent_senderId	dc.b	0
	; LineNumber: 1850
localVariable_DispatchEvent_p1	dc.b	0
	; LineNumber: 1850
localVariable_DispatchEvent_p2	dc.b	0
DispatchEvent_block7771
DispatchEvent
	; LineNumber: 1876
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_i
DispatchEvent_forloop7772
	; LineNumber: 1854
	; LineNumber: 1855
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne DispatchEvent_edblock7852
DispatchEvent_ctb7850: ;Main true block ;keep 
	; LineNumber: 1854
	jmp DispatchEvent_loopend7774
DispatchEvent_edblock7852
	; LineNumber: 1856
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_event,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_event;keep
	bne DispatchEvent_localfailed7889
DispatchEvent_localsuccess7890: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_senderId,x 
	; Compare with pure num / var optimization
	cmp localVariable_DispatchEvent_senderId;keep
	bne DispatchEvent_localfailed7889
	jmp DispatchEvent_ctb7856
DispatchEvent_localfailed7889
	jmp DispatchEvent_edblock7858
DispatchEvent_ctb7856: ;Main true block ;keep 
	; LineNumber: 1856
	; LineNumber: 1857
	; Load Byte array
	; CAST type NADA
	ldx localVariable_DispatchEvent_i
	lda actorList_actorObject_actorObject_action,x 
	; Calling storevariable on generic assign expression
	sta localVariable_DispatchEvent_action
	; LineNumber: 1858
	lda #$1
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7893
	; LineNumber: 1858
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenDoor_actorId
	jsr ActionOpenDoor
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7893
	lda #$2
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7895
	; LineNumber: 1859
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseDoor_actorId
	jsr ActionCloseDoor
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7895
	lda #$3
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7897
	; LineNumber: 1860
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionOpenExit_actorId
	jsr ActionOpenExit
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7897
	lda #$4
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7899
	; LineNumber: 1861
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionCloseExit_actorId
	jsr ActionCloseExit
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7899
	lda #$5
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7901
	; LineNumber: 1862
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionPrintText_actorId
	jsr ActionPrintText
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7901
	lda #$7
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7903
	; LineNumber: 1863
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOn_actorId
	jsr ActionLaserCannonOn
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7903
	lda #$8
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7905
	; LineNumber: 1864
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionLaserCannonOff_actorId
	jsr ActionLaserCannonOff
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7905
	lda #$9
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7907
	; LineNumber: 1865
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOn_actorId
	jsr ActionFontaineOn
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7907
	lda #$a
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7909
	; LineNumber: 1866
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionFontaineOff_actorId
	jsr ActionFontaineOff
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7909
	lda #$b
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7911
	; LineNumber: 1867
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSetGrav_actorId
	jsr ActionSetGrav
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7911
	lda #$d
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7913
	; LineNumber: 1868
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOff_actorId
	jsr ActionSwitchOff
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7913
	lda #$c
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7915
	; LineNumber: 1869
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionSwitchOn_actorId
	jsr ActionSwitchOn
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7915
	lda #$e
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7917
	; LineNumber: 1870
	lda localVariable_DispatchEvent_i
	; Calling storevariable on generic assign expression
	sta localVariable_ActionBulkGrav_actorId
	jsr ActionBulkGrav
	jmp DispatchEvent_caseend7892
DispatchEvent_casenext7917
	lda #$6
	cmp localVariable_DispatchEvent_action ;keep
	bne DispatchEvent_casenext7919
	; LineNumber: 1871
	jsr ClearText
DispatchEvent_casenext7919
DispatchEvent_caseend7892
	; LineNumber: 1874
DispatchEvent_edblock7858
	; LineNumber: 1875
DispatchEvent_loopstart7773
	; Test Inc dec D
	inc localVariable_DispatchEvent_i
	lda #$20
	cmp localVariable_DispatchEvent_i ;keep
	beq DispatchEvent_loopdone7921
DispatchEvent_loopnotdone7922
	jmp DispatchEvent_forloop7772
DispatchEvent_loopdone7921
DispatchEvent_loopend7774
	; LineNumber: 1876
	rts
end_procedure_DispatchEvent
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCharacter
	;    Procedure type : User-defined procedure
	; LineNumber: 1882
	; LineNumber: 1880
localVariable_InitCharacter_id	dc.b	0
	; LineNumber: 1881
localVariable_InitCharacter_laserEmitId	dc.b	0
	; LineNumber: 1878
localVariable_InitCharacter_x	dc.b	0
	; LineNumber: 1878
localVariable_InitCharacter_y	dc.b	0
	; LineNumber: 1878
localVariable_InitCharacter_controlId	dc.b	0
InitCharacter_block7923
InitCharacter
	; LineNumber: 1883
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_id
	; LineNumber: 1884
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCharacter_laserEmitId
	; LineNumber: 1885
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7929
InitCharacter_localsuccess7930: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCharacter_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCharacter_localfailed7929
	jmp InitCharacter_ctb7925
InitCharacter_localfailed7929
	jmp InitCharacter_edblock7927
InitCharacter_ctb7925: ;Main true block ;keep 
	; LineNumber: 1885
	; LineNumber: 1886
	lda #$80
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1887
	lda #$c3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1888
	lda #$48
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1889
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1890
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1891
	lda localVariable_InitCharacter_controlId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1892
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 1893
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 1894
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 1895
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 1896
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 1897
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1898
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_lastWaypointId,x
	; LineNumber: 1899
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 1900
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 1901
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 1902
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 1903
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 1904
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 1905
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 1906
	lda #$ff
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 1907
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 1908
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 1909
	lda localVariable_InitCharacter_x
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1910
	lda localVariable_InitCharacter_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1911
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1912
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1913
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1914
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1915
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1916
	lda localVariable_InitCharacter_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 1917
	lda #$a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 1918
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 1919
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 1920
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCharacter_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1921
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1922
	lda localVariable_InitCharacter_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 1923
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
	; LineNumber: 1924
InitCharacter_edblock7927
	; LineNumber: 1925
	rts
end_procedure_InitCharacter
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBrick
	;    Procedure type : User-defined procedure
	; LineNumber: 1930
	; LineNumber: 1929
localVariable_InitBrick_id	dc.b	0
	; LineNumber: 1927
localVariable_InitBrick_x	dc.b	0
	; LineNumber: 1927
localVariable_InitBrick_y	dc.b	0
InitBrick_block7932
InitBrick
	; LineNumber: 1931
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_id
	; LineNumber: 1932
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBrick_localfailed7938
	jmp InitBrick_ctb7934
InitBrick_localfailed7938
	jmp InitBrick_edblock7936
InitBrick_ctb7934: ;Main true block ;keep 
	; LineNumber: 1932
	; LineNumber: 1933
	lda #$40
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBrick_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1934
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1935
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1936
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1937
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1938
	lda localVariable_InitBrick_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1939
	lda localVariable_InitBrick_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1940
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1941
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1942
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 1943
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
	; LineNumber: 1944
InitBrick_edblock7936
	; LineNumber: 1945
	rts
end_procedure_InitBrick
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitStone
	;    Procedure type : User-defined procedure
	; LineNumber: 1951
	; LineNumber: 1949
localVariable_InitStone_pg	= $72
	; LineNumber: 1950
localVariable_InitStone_id	dc.b	0
	; LineNumber: 1947
localVariable_InitStone_tilen	dc.b	0
	; LineNumber: 1947
localVariable_InitStone_x	dc.b	0
	; LineNumber: 1947
localVariable_InitStone_y	dc.b	0
	; LineNumber: 1947
localVariable_InitStone_rollLeftRight	dc.b	0
InitStone_block7940
InitStone
	; LineNumber: 1952
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitStone_id
	; LineNumber: 1953
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitStone_localfailed7946
	jmp InitStone_ctb7942
InitStone_localfailed7946
	jmp InitStone_edblock7944
InitStone_ctb7942: ;Main true block ;keep 
	; LineNumber: 1953
	; LineNumber: 1954
	lda localVariable_InitStone_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitStone_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1955
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1956
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1957
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1958
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1959
	lda localVariable_InitStone_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1960
	lda localVariable_InitStone_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1961
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1962
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 1963
	lda localVariable_InitStone_rollLeftRight
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physRollLeftRight,x
	; LineNumber: 1964
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 1965
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 1966
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_controlId,x
	; LineNumber: 1967
	lda localVariable_InitStone_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 1968
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
	; LineNumber: 1969
InitStone_edblock7944
	; LineNumber: 1970
	rts
end_procedure_InitStone
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSand
	;    Procedure type : User-defined procedure
	; LineNumber: 1975
	; LineNumber: 1974
localVariable_InitSand_id	dc.b	0
	; LineNumber: 1972
localVariable_InitSand_x	dc.b	0
	; LineNumber: 1972
localVariable_InitSand_y	dc.b	0
InitSand_block7948
InitSand
	; LineNumber: 1976
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_id
	; LineNumber: 1977
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSand_edblock7952
InitSand_ctb7950: ;Main true block ;keep 
	; LineNumber: 1977
	; LineNumber: 1978
	lda #$62
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSand_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1979
	lda #$12
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1980
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1981
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 1982
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 1983
	lda localVariable_InitSand_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 1984
	lda localVariable_InitSand_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 1985
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 1986
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
	; LineNumber: 1987
InitSand_edblock7952
	; LineNumber: 1988
	rts
end_procedure_InitSand
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWater
	;    Procedure type : User-defined procedure
	; LineNumber: 1993
	; LineNumber: 1992
localVariable_InitWater_id	dc.b	0
	; LineNumber: 1990
localVariable_InitWater_x	dc.b	0
	; LineNumber: 1990
localVariable_InitWater_y	dc.b	0
InitWater_block7955
InitWater
	; LineNumber: 1994
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_id
	; LineNumber: 1995
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWater_localfailed7961
	jmp InitWater_ctb7957
InitWater_localfailed7961
	jmp InitWater_edblock7959
InitWater_ctb7957: ;Main true block ;keep 
	; LineNumber: 1995
	; LineNumber: 1996
	lda #$4a
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWater_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 1997
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 1998
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 1999
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2000
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2001
	lda localVariable_InitWater_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2002
	lda localVariable_InitWater_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2003
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2004
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2005
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
	; LineNumber: 2006
InitWater_edblock7959
	; LineNumber: 2007
	rts
end_procedure_InitWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaterFlow
	;    Procedure type : User-defined procedure
	; LineNumber: 2012
	; LineNumber: 2011
localVariable_InitWaterFlow_id	dc.b	0
	; LineNumber: 2009
localVariable_InitWaterFlow_x	dc.b	0
	; LineNumber: 2009
localVariable_InitWaterFlow_y	dc.b	0
	; LineNumber: 2009
localVariable_InitWaterFlow_tilen	dc.b	0
	; LineNumber: 2009
localVariable_InitWaterFlow_grav	dc.b	0
InitWaterFlow_block7963
InitWaterFlow
	; LineNumber: 2013
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaterFlow_id
	; LineNumber: 2014
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaterFlow_localfailed7969
	jmp InitWaterFlow_ctb7965
InitWaterFlow_localfailed7969
	jmp InitWaterFlow_edblock7967
InitWaterFlow_ctb7965: ;Main true block ;keep 
	; LineNumber: 2014
	; LineNumber: 2015
	lda localVariable_InitWaterFlow_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaterFlow_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2016
	lda #$22
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2017
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2018
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2019
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2020
	lda localVariable_InitWaterFlow_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2021
	lda localVariable_InitWaterFlow_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2022
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2023
	lda localVariable_InitWaterFlow_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2024
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2025
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
	; LineNumber: 2026
InitWaterFlow_edblock7967
	; LineNumber: 2027
	rts
end_procedure_InitWaterFlow
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitShiftPlattform
	;    Procedure type : User-defined procedure
	; LineNumber: 2033
	; LineNumber: 2032
localVariable_InitShiftPlattform_id	dc.b	0
	; LineNumber: 2030
localVariable_InitShiftPlattform_x	dc.b	0
	; LineNumber: 2030
localVariable_InitShiftPlattform_y	dc.b	0
	; LineNumber: 2030
localVariable_InitShiftPlattform_tilen	dc.b	0
	; LineNumber: 2030
localVariable_InitShiftPlattform_grav	dc.b	0
InitShiftPlattform_block7971
InitShiftPlattform
	; LineNumber: 2034
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitShiftPlattform_id
	; LineNumber: 2035
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitShiftPlattform_localfailed7977
	jmp InitShiftPlattform_ctb7973
InitShiftPlattform_localfailed7977
	jmp InitShiftPlattform_edblock7975
InitShiftPlattform_ctb7973: ;Main true block ;keep 
	; LineNumber: 2035
	; LineNumber: 2036
	lda localVariable_InitShiftPlattform_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitShiftPlattform_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2037
	lda #$6
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2038
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2039
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2040
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2041
	lda localVariable_InitShiftPlattform_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2042
	lda localVariable_InitShiftPlattform_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2043
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2044
	lda localVariable_InitShiftPlattform_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_shiftDir,x
	; LineNumber: 2045
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
	; LineNumber: 2046
InitShiftPlattform_edblock7975
	; LineNumber: 2047
	rts
end_procedure_InitShiftPlattform
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLadder
	;    Procedure type : User-defined procedure
	; LineNumber: 2052
	; LineNumber: 2051
localVariable_InitLadder_id	dc.b	0
	; LineNumber: 2049
localVariable_InitLadder_x	dc.b	0
	; LineNumber: 2049
localVariable_InitLadder_y	dc.b	0
InitLadder_block7979
InitLadder
	; LineNumber: 2053
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_id
	; LineNumber: 2054
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLadder_localfailed7985
	jmp InitLadder_ctb7981
InitLadder_localfailed7985
	jmp InitLadder_edblock7983
InitLadder_ctb7981: ;Main true block ;keep 
	; LineNumber: 2054
	; LineNumber: 2055
	lda #$57
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLadder_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2056
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2057
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2058
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2059
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2060
	lda localVariable_InitLadder_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2061
	lda localVariable_InitLadder_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2062
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2063
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2064
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
	; LineNumber: 2065
InitLadder_edblock7983
	; LineNumber: 2066
	rts
end_procedure_InitLadder
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitRobe
	;    Procedure type : User-defined procedure
	; LineNumber: 2071
	; LineNumber: 2070
localVariable_InitRobe_id	dc.b	0
	; LineNumber: 2068
localVariable_InitRobe_x	dc.b	0
	; LineNumber: 2068
localVariable_InitRobe_y	dc.b	0
	; LineNumber: 2068
localVariable_InitRobe_tilen	dc.b	0
	; LineNumber: 2068
localVariable_InitRobe_grav	dc.b	0
InitRobe_block7987
InitRobe
	; LineNumber: 2072
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitRobe_id
	; LineNumber: 2073
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitRobe_localfailed7993
	jmp InitRobe_ctb7989
InitRobe_localfailed7993
	jmp InitRobe_edblock7991
InitRobe_ctb7989: ;Main true block ;keep 
	; LineNumber: 2073
	; LineNumber: 2074
	lda localVariable_InitRobe_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitRobe_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2075
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2076
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2077
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2078
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2079
	lda localVariable_InitRobe_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2080
	lda localVariable_InitRobe_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2081
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2082
	lda localVariable_InitRobe_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2083
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
	; LineNumber: 2084
InitRobe_edblock7991
	; LineNumber: 2085
	rts
end_procedure_InitRobe
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortal
	;    Procedure type : User-defined procedure
	; LineNumber: 2090
	; LineNumber: 2089
localVariable_InitPortal_id	dc.b	0
	; LineNumber: 2087
localVariable_InitPortal_x	dc.b	0
	; LineNumber: 2087
localVariable_InitPortal_y	dc.b	0
	; LineNumber: 2087
localVariable_InitPortal_exitDir	dc.b	0
InitPortal_block7995
InitPortal
	; LineNumber: 2091
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortal_id
	; LineNumber: 2092
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_localfailed8027
	jmp InitPortal_ctb7997
InitPortal_localfailed8027
	jmp InitPortal_edblock7999
InitPortal_ctb7997: ;Main true block ;keep 
	; LineNumber: 2092
	; LineNumber: 2093
	lda #$6b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortal_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2094
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2095
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2096
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2097
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2098
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2099
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2100
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2101
	lda localVariable_InitPortal_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2102
	lda localVariable_InitPortal_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2103
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2104
	lda localVariable_InitPortal_exitDir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_portalFireExitDir,x
	; LineNumber: 2105
	lda #$ff
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2106
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_eblock8031
InitPortal_ctb8030: ;Main true block ;keep 
	; LineNumber: 2105
	; LineNumber: 2107
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$0
	; LineNumber: 2108
	lda #$0
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2110
	jmp InitPortal_edblock8032
InitPortal_eblock8031
	; LineNumber: 2109
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne InitPortal_edblock8046
InitPortal_ctb8044: ;Main true block ;keep 
	; LineNumber: 2109
	; LineNumber: 2111
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta portals+$1
	; LineNumber: 2112
	lda #$1
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 2113
InitPortal_edblock8046
InitPortal_edblock8032
	; LineNumber: 2114
	; Binary clause Simplified: NOTEQUALS
	lda lastPortal
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortal_edblock8052
InitPortal_ctb8050: ;Main true block ;keep 
	; LineNumber: 2114
	; LineNumber: 2115
	lda localVariable_InitPortal_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2116
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
	; LineNumber: 2117
InitPortal_edblock8052
	; LineNumber: 2118
InitPortal_edblock7999
	; LineNumber: 2119
	rts
end_procedure_InitPortal
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitGravPad
	;    Procedure type : User-defined procedure
	; LineNumber: 2124
	; LineNumber: 2123
localVariable_InitGravPad_id	dc.b	0
	; LineNumber: 2121
localVariable_InitGravPad_x	dc.b	0
	; LineNumber: 2121
localVariable_InitGravPad_y	dc.b	0
	; LineNumber: 2121
localVariable_InitGravPad_tilen	dc.b	0
	; LineNumber: 2121
localVariable_InitGravPad_grav	dc.b	0
InitGravPad_block8055
InitGravPad
	; LineNumber: 2125
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitGravPad_id
	; LineNumber: 2126
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitGravPad_localfailed8061
	jmp InitGravPad_ctb8057
InitGravPad_localfailed8061
	jmp InitGravPad_edblock8059
InitGravPad_ctb8057: ;Main true block ;keep 
	; LineNumber: 2126
	; LineNumber: 2127
	lda localVariable_InitGravPad_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitGravPad_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2128
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2129
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2130
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2131
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2132
	lda localVariable_InitGravPad_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2133
	lda localVariable_InitGravPad_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2134
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2135
	lda localVariable_InitGravPad_grav
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2136
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
	; LineNumber: 2137
InitGravPad_edblock8059
	; LineNumber: 2138
	rts
end_procedure_InitGravPad
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitMirror
	;    Procedure type : User-defined procedure
	; LineNumber: 2143
	; LineNumber: 2142
localVariable_InitMirror_id	dc.b	0
	; LineNumber: 2140
localVariable_InitMirror_x	dc.b	0
	; LineNumber: 2140
localVariable_InitMirror_y	dc.b	0
	; LineNumber: 2140
localVariable_InitMirror_tilen	dc.b	0
	; LineNumber: 2140
localVariable_InitMirror_turn	dc.b	0
InitMirror_block8063
InitMirror
	; LineNumber: 2144
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitMirror_id
	; LineNumber: 2145
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitMirror_localfailed8069
	jmp InitMirror_ctb8065
InitMirror_localfailed8069
	jmp InitMirror_edblock8067
InitMirror_ctb8065: ;Main true block ;keep 
	; LineNumber: 2145
	; LineNumber: 2146
	lda localVariable_InitMirror_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitMirror_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2147
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2148
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2149
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2150
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2151
	lda localVariable_InitMirror_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2152
	lda localVariable_InitMirror_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2153
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2154
	lda localVariable_InitMirror_turn
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_mirrorTurn,x
	; LineNumber: 2155
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
	; LineNumber: 2156
InitMirror_edblock8067
	; LineNumber: 2157
	rts
end_procedure_InitMirror
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitLaserTransport
	;    Procedure type : User-defined procedure
	; LineNumber: 2162
	; LineNumber: 2161
localVariable_InitLaserTransport_id	dc.b	0
	; LineNumber: 2159
localVariable_InitLaserTransport_x	dc.b	0
	; LineNumber: 2159
localVariable_InitLaserTransport_y	dc.b	0
InitLaserTransport_block8071
InitLaserTransport
	; LineNumber: 2163
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_id
	; LineNumber: 2164
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitLaserTransport_edblock8075
InitLaserTransport_ctb8073: ;Main true block ;keep 
	; LineNumber: 2164
	; LineNumber: 2165
	lda #$5b
	; Calling storevariable on generic assign expression
	ldx localVariable_InitLaserTransport_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2166
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2167
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2168
	lda #$4
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2169
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2170
	lda localVariable_InitLaserTransport_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2171
	lda localVariable_InitLaserTransport_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2172
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2173
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
	; LineNumber: 2174
InitLaserTransport_edblock8075
	; LineNumber: 2175
	rts
end_procedure_InitLaserTransport
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitBox
	;    Procedure type : User-defined procedure
	; LineNumber: 2200
	; LineNumber: 2199
localVariable_InitBox_id	dc.b	0
	; LineNumber: 2197
localVariable_InitBox_x	dc.b	0
	; LineNumber: 2197
localVariable_InitBox_y	dc.b	0
	; LineNumber: 2197
localVariable_InitBox_tilen	dc.b	0
	; LineNumber: 2197
localVariable_InitBox_dir	dc.b	0
InitBox_block8078
InitBox
	; LineNumber: 2201
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitBox_id
	; LineNumber: 2202
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitBox_localfailed8084
	jmp InitBox_ctb8080
InitBox_localfailed8084
	jmp InitBox_edblock8082
InitBox_ctb8080: ;Main true block ;keep 
	; LineNumber: 2202
	; LineNumber: 2203
	lda localVariable_InitBox_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitBox_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2204
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2205
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2206
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2207
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2208
	lda localVariable_InitBox_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2209
	lda localVariable_InitBox_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2210
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2211
	lda localVariable_InitBox_dir
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2212
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
	; LineNumber: 2213
InitBox_edblock8082
	; LineNumber: 2214
	rts
end_procedure_InitBox
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitPortalActivate
	;    Procedure type : User-defined procedure
	; LineNumber: 2219
	; LineNumber: 2218
localVariable_InitPortalActivate_id	dc.b	0
	; LineNumber: 2216
localVariable_InitPortalActivate_x	dc.b	0
	; LineNumber: 2216
localVariable_InitPortalActivate_y	dc.b	0
InitPortalActivate_block8086
InitPortalActivate
	; LineNumber: 2220
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_id
	; LineNumber: 2221
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitPortalActivate_edblock8090
InitPortalActivate_ctb8088: ;Main true block ;keep 
	; LineNumber: 2221
	; LineNumber: 2222
	lda #$68
	; Calling storevariable on generic assign expression
	ldx localVariable_InitPortalActivate_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2223
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2224
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2225
	lda #$10
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2226
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2227
	lda localVariable_InitPortalActivate_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2228
	lda localVariable_InitPortalActivate_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2229
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2230
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
	; LineNumber: 2231
InitPortalActivate_edblock8090
	; LineNumber: 2232
	rts
end_procedure_InitPortalActivate
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 2239
	; LineNumber: 2236
localVariable_InitFontaine_id	dc.b	0
	; LineNumber: 2237
localVariable_InitFontaine_laserId	dc.b	0
	; LineNumber: 2238
localVariable_InitFontaine_laserEmitId	dc.b	0
	; LineNumber: 2234
localVariable_InitFontaine_x	dc.b	0
	; LineNumber: 2234
localVariable_InitFontaine_y	dc.b	0
	; LineNumber: 2234
localVariable_InitFontaine_tilen	dc.b	0
	; LineNumber: 2234
localVariable_InitFontaine_grav	dc.b	0
InitFontaine_block8093
InitFontaine
	; LineNumber: 2240
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_id
	; LineNumber: 2241
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitFontaine_laserEmitId
	; LineNumber: 2242
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8099
InitFontaine_localsuccess8100: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitFontaine_laserId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitFontaine_localfailed8099
	jmp InitFontaine_ctb8095
InitFontaine_localfailed8099
	jmp InitFontaine_edblock8097
InitFontaine_ctb8095: ;Main true block ;keep 
	; LineNumber: 2242
	; LineNumber: 2243
	lda localVariable_InitFontaine_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2244
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2245
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2246
	lda #$20
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2247
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2248
	lda localVariable_InitFontaine_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2249
	lda localVariable_InitFontaine_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2250
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2251
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2252
	lda localVariable_InitFontaine_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2253
	lda localVariable_InitFontaine_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2254
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2255
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2256
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitFontaine_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2257
	lda localVariable_InitFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2258
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
	; LineNumber: 2259
InitFontaine_edblock8097
	; LineNumber: 2260
	rts
end_procedure_InitFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitCannon
	;    Procedure type : User-defined procedure
	; LineNumber: 2266
	; LineNumber: 2264
localVariable_InitCannon_id	dc.b	0
	; LineNumber: 2265
localVariable_InitCannon_laserEmitId	dc.b	0
	; LineNumber: 2262
localVariable_InitCannon_x	dc.b	0
	; LineNumber: 2262
localVariable_InitCannon_y	dc.b	0
	; LineNumber: 2262
localVariable_InitCannon_tilen	dc.b	0
	; LineNumber: 2262
localVariable_InitCannon_grav	dc.b	0
InitCannon_block8102
InitCannon
	; LineNumber: 2267
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_id
	; LineNumber: 2268
	jsr GetLaserEmitId
	; Calling storevariable on generic assign expression
	sta localVariable_InitCannon_laserEmitId
	; LineNumber: 2269
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_id
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8108
InitCannon_localsuccess8109: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_InitCannon_laserEmitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitCannon_localfailed8108
	jmp InitCannon_ctb8104
InitCannon_localfailed8108
	jmp InitCannon_edblock8106
InitCannon_ctb8104: ;Main true block ;keep 
	; LineNumber: 2269
	; LineNumber: 2270
	lda localVariable_InitCannon_tilen
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2271
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2272
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2273
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2274
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2275
	lda localVariable_InitCannon_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2276
	lda localVariable_InitCannon_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2277
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2278
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2279
	lda localVariable_InitCannon_laserEmitId
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserEmitId,x
	; LineNumber: 2280
	lda localVariable_InitCannon_grav
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserType,x
	; LineNumber: 2281
	lda #$ff
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 2282
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 2283
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InitCannon_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2284
	lda localVariable_InitCannon_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddDynItem_i
	jsr AddDynItem
	; LineNumber: 2285
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
	; LineNumber: 2286
InitCannon_edblock8106
	; LineNumber: 2287
	rts
end_procedure_InitCannon
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitSwitchManual
	;    Procedure type : User-defined procedure
	; LineNumber: 2292
	; LineNumber: 2291
localVariable_InitSwitchManual_id	dc.b	0
	; LineNumber: 2289
localVariable_InitSwitchManual_x	dc.b	0
	; LineNumber: 2289
localVariable_InitSwitchManual_y	dc.b	0
InitSwitchManual_block8111
InitSwitchManual
	; LineNumber: 2293
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_id
	; LineNumber: 2294
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitSwitchManual_localfailed8117
	jmp InitSwitchManual_ctb8113
InitSwitchManual_localfailed8117
	jmp InitSwitchManual_edblock8115
InitSwitchManual_ctb8113: ;Main true block ;keep 
	; LineNumber: 2294
	; LineNumber: 2295
	lda #$63
	; Calling storevariable on generic assign expression
	ldx localVariable_InitSwitchManual_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2296
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2297
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2298
	lda #$40
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2299
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2300
	lda localVariable_InitSwitchManual_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2301
	lda localVariable_InitSwitchManual_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2302
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2303
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2304
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2305
	
; // Push=off
	lda #$9
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2306
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2307
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2308
	lda localVariable_InitSwitchManual_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2309
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
	; LineNumber: 2310
InitSwitchManual_edblock8115
	; LineNumber: 2311
	rts
end_procedure_InitSwitchManual
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitWaypoint
	;    Procedure type : User-defined procedure
	; LineNumber: 2316
	; LineNumber: 2315
localVariable_InitWaypoint_id	dc.b	0
	; LineNumber: 2313
localVariable_InitWaypoint_x	dc.b	0
	; LineNumber: 2313
localVariable_InitWaypoint_y	dc.b	0
InitWaypoint_block8119
InitWaypoint
	; LineNumber: 2317
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_id
	; LineNumber: 2318
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitWaypoint_localfailed8125
	jmp InitWaypoint_ctb8121
InitWaypoint_localfailed8125
	jmp InitWaypoint_edblock8123
InitWaypoint_ctb8121: ;Main true block ;keep 
	; LineNumber: 2318
	; LineNumber: 2319
	lda #$20
	; Calling storevariable on generic assign expression
	ldx localVariable_InitWaypoint_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2320
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2321
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2322
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2323
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2324
	lda localVariable_InitWaypoint_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2325
	lda localVariable_InitWaypoint_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2326
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2327
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2328
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2329
	
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
	; LineNumber: 2330
InitWaypoint_edblock8123
	; LineNumber: 2331
	rts
end_procedure_InitWaypoint
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitDoor
	;    Procedure type : User-defined procedure
	; LineNumber: 2336
	; LineNumber: 2335
localVariable_InitDoor_id	dc.b	0
	; LineNumber: 2333
localVariable_InitDoor_x	dc.b	0
	; LineNumber: 2333
localVariable_InitDoor_y	dc.b	0
InitDoor_block8127
InitDoor
	; LineNumber: 2337
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_id
	; LineNumber: 2338
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitDoor_localfailed8133
	jmp InitDoor_ctb8129
InitDoor_localfailed8133
	jmp InitDoor_edblock8131
InitDoor_ctb8129: ;Main true block ;keep 
	; LineNumber: 2338
	; LineNumber: 2339
	lda #$66
	; Calling storevariable on generic assign expression
	ldx localVariable_InitDoor_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2340
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2341
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2342
	lda #$80
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2343
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2344
	lda localVariable_InitDoor_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2345
	lda localVariable_InitDoor_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2346
	lda #$1
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2347
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2348
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2349
	
; // Push= Off
	lda #$b
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2350
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2351
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2352
	lda localVariable_InitDoor_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2353
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
	; LineNumber: 2354
InitDoor_edblock8131
	; LineNumber: 2355
	rts
end_procedure_InitDoor
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitExit
	;    Procedure type : User-defined procedure
	; LineNumber: 2360
	; LineNumber: 2359
localVariable_InitExit_id	dc.b	0
	; LineNumber: 2357
localVariable_InitExit_x	dc.b	0
	; LineNumber: 2357
localVariable_InitExit_y	dc.b	0
InitExit_block8135
InitExit
	; LineNumber: 2361
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_id
	; LineNumber: 2362
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq InitExit_localfailed8141
	jmp InitExit_ctb8137
InitExit_localfailed8141
	jmp InitExit_edblock8139
InitExit_ctb8137: ;Main true block ;keep 
	; LineNumber: 2362
	; LineNumber: 2363
	lda #$4f
	; Calling storevariable on generic assign expression
	ldx localVariable_InitExit_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2364
	lda #$42
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2365
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2366
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2367
	lda #$3
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2368
	lda localVariable_InitExit_x
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2369
	lda localVariable_InitExit_y
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2370
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2371
	lda #$7
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2372
	lda #$ff
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2373
	
; // Push= Off
	lda #$d
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animId,x
	; LineNumber: 2374
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animPos,x
	; LineNumber: 2375
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_animFinish,x
	; LineNumber: 2376
	lda localVariable_InitExit_id
	; Calling storevariable on generic assign expression
	sta localVariable_AddAnimItem_i
	jsr AddAnimItem
	; LineNumber: 2377
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
	; LineNumber: 2378
InitExit_edblock8139
	; LineNumber: 2379
	rts
end_procedure_InitExit
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ReleaseKeys
	;    Procedure type : User-defined procedure
	; LineNumber: 2384
	; LineNumber: 2383
localVariable_ReleaseKeys_controlId	dc.b	0
	; LineNumber: 2381
localVariable_ReleaseKeys_id	dc.b	0
ReleaseKeys_block8143
ReleaseKeys
	; LineNumber: 2385
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ReleaseKeys_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_controlId
	; LineNumber: 2386
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ReleaseKeys_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
	; LineNumber: 2387
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressRight,x
	; LineNumber: 2388
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressDown,x
	; LineNumber: 2389
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressUp,x
	; LineNumber: 2390
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2391
	rts
end_procedure_ReleaseKeys
	; NodeProcedureDecl 3
	; ***********  Defining procedure : ProcessBackObj
	;    Procedure type : User-defined procedure
	; LineNumber: 2403
	; LineNumber: 2395
localVariable_ProcessBackObj_controlId	dc.b	0
	; LineNumber: 2396
localVariable_ProcessBackObj_defWalk	dc.b	0
	; LineNumber: 2397
localVariable_ProcessBackObj_gravity	dc.b	0
	; LineNumber: 2398
localVariable_ProcessBackObj_backObj	dc.b	0
	; LineNumber: 2398
localVariable_ProcessBackObj_backObj2	dc.b	0
	; LineNumber: 2399
localVariable_ProcessBackObj_portalHitObj	dc.b	0
	; LineNumber: 2400
localVariable_ProcessBackObj_pos	dc.b	0
	; LineNumber: 2400
localVariable_ProcessBackObj_v	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_robeAbleId	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_portalId	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_gravPadId	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_switchId	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_laserBeanId	dc.b	0
	; LineNumber: 2401
localVariable_ProcessBackObj_exitId	dc.b	0
	; LineNumber: 2402
localVariable_ProcessBackObj_newx	dc.b	0
	; LineNumber: 2402
localVariable_ProcessBackObj_newy	dc.b	0
	; LineNumber: 2393
localVariable_ProcessBackObj_id	dc.b	0
ProcessBackObj_block8144
ProcessBackObj
	; LineNumber: 2404
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2405
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
	bne ProcessBackObj_eblock8147
ProcessBackObj_ctb8146: ;Main true block ;keep 
	; LineNumber: 2405
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
	jmp ProcessBackObj_edblock8148
ProcessBackObj_eblock8147
	; LineNumber: 2407
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_controlId
ProcessBackObj_edblock8148
	; LineNumber: 2410
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc ProcessBackObj_localfailed9981
ProcessBackObj_localsuccess9982: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed9983
	jmp ProcessBackObj_ctb8154
ProcessBackObj_localfailed9983: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq ProcessBackObj_localfailed9981
	jmp ProcessBackObj_ctb8154
ProcessBackObj_localfailed9981
	jmp ProcessBackObj_edblock8156
ProcessBackObj_ctb8154: ;Main true block ;keep 
	; LineNumber: 2410
	; LineNumber: 2411
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
	; LineNumber: 2412
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
	; LineNumber: 2413
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
	; LineNumber: 2415
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
	beq ProcessBackObj_localfailed10805
ProcessBackObj_localsuccess10806: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed10805
	jmp ProcessBackObj_ctb9986
ProcessBackObj_localfailed10805
	jmp ProcessBackObj_eblock9987
ProcessBackObj_ctb9986: ;Main true block ;keep 
	; LineNumber: 2414
	; LineNumber: 2416
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2417
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2418
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2419
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2421
	jmp ProcessBackObj_edblock9988
ProcessBackObj_eblock9987
	; LineNumber: 2420
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_robeAbleId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11217
ProcessBackObj_localsuccess11218: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11217
	jmp ProcessBackObj_ctb10810
ProcessBackObj_localfailed11217
	jmp ProcessBackObj_eblock10811
ProcessBackObj_ctb10810: ;Main true block ;keep 
	; LineNumber: 2420
	; LineNumber: 2422
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_robeAbleId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11225 = $88
	sta ProcessBackObj_binary_clause_temp_var11225
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11226 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11226
	lda ProcessBackObj_binary_clause_temp_var11225
	cmp ProcessBackObj_binary_clause_temp_2_var11226;keep
	bne ProcessBackObj_edblock11223
ProcessBackObj_ctb11221: ;Main true block ;keep 
	; LineNumber: 2422
	; LineNumber: 2423
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2424
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2425
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2426
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2427
ProcessBackObj_edblock11223
	; LineNumber: 2429
	jmp ProcessBackObj_edblock10812
ProcessBackObj_eblock10811
	; LineNumber: 2428
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11426
ProcessBackObj_localsuccess11428: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11426
ProcessBackObj_localsuccess11427: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11429
	jmp ProcessBackObj_ctb11230
ProcessBackObj_localfailed11429: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlLastPortal,x 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_localfailed11426
	jmp ProcessBackObj_ctb11230
ProcessBackObj_localfailed11426
	jmp ProcessBackObj_eblock11231
ProcessBackObj_ctb11230: ;Main true block ;keep 
	; LineNumber: 2429
	; LineNumber: 2430
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2431
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2432
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11434
ProcessBackObj_localsuccess11456: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11434
ProcessBackObj_ctb11432: ;Main true block ;keep 
	; LineNumber: 2432
	; LineNumber: 2433
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_eblock11460
ProcessBackObj_ctb11459: ;Main true block ;keep 
	; LineNumber: 2433
	; LineNumber: 2434
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$1 ; array with const index optimization  ; optimized, look out for bugs
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2435
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2436
	lda localVariable_ProcessBackObj_portalId
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 2438
	jmp ProcessBackObj_edblock11461
ProcessBackObj_eblock11460
	; LineNumber: 2437
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_ProcessBackObj_portalId;keep
	bne ProcessBackObj_edblock11475
ProcessBackObj_ctb11473: ;Main true block ;keep 
	; LineNumber: 2438
	; LineNumber: 2439
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	ldx portals +$0 ; array with const index optimization  ; optimized, look out for bugs
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newx
	; LineNumber: 2440
	; Load Byte array
	; CAST type NADA
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_newy
	; LineNumber: 2441
	lda localVariable_ProcessBackObj_portalId
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
	; LineNumber: 2442
ProcessBackObj_edblock11475
ProcessBackObj_edblock11461
	; LineNumber: 2443
ProcessBackObj_edblock11434
	; LineNumber: 2444
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11492
	jmp ProcessBackObj_ctb11479
ProcessBackObj_localfailed11492
	jmp ProcessBackObj_edblock11481
ProcessBackObj_ctb11479: ;Main true block ;keep 
	; LineNumber: 2444
	; LineNumber: 2445
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
	; LineNumber: 2446
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11500
	jmp ProcessBackObj_ctb11495
ProcessBackObj_localfailed11500
	jmp ProcessBackObj_eblock11496
ProcessBackObj_ctb11495: ;Main true block ;keep 
	; LineNumber: 2446
	; LineNumber: 2448
	lda #<sndPortal
	ldy #>sndPortal
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2448
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2448
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2449
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
	; LineNumber: 2450
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
	; LineNumber: 2452
	jmp ProcessBackObj_edblock11497
ProcessBackObj_eblock11496
	; LineNumber: 2452
	; LineNumber: 2454
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2454
	lda #$3c
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2454
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2455
ProcessBackObj_edblock11497
	; LineNumber: 2456
ProcessBackObj_edblock11481
	; LineNumber: 2457
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2459
	jmp ProcessBackObj_edblock11232
ProcessBackObj_eblock11231
	; LineNumber: 2458
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
	beq ProcessBackObj_localfailed11565
	jmp ProcessBackObj_ctb11505
ProcessBackObj_localfailed11565
	jmp ProcessBackObj_eblock11506
ProcessBackObj_ctb11505: ;Main true block ;keep 
	; LineNumber: 2458
	; LineNumber: 2460
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
	bne ProcessBackObj_edblock11570
ProcessBackObj_ctb11568: ;Main true block ;keep 
	; LineNumber: 2460
	; LineNumber: 2461
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2462
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11596
ProcessBackObj_ctb11594: ;Main true block ;keep 
	; LineNumber: 2462
	; LineNumber: 2463
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq ProcessBackObj_edblock11609
ProcessBackObj_localsuccess11611: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_edblock11609
ProcessBackObj_ctb11607: ;Main true block ;keep 
	; LineNumber: 2462
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_edblock11609
	; LineNumber: 2464
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2465
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_defWalk
	; LineNumber: 2466
ProcessBackObj_edblock11596
	; LineNumber: 2468
ProcessBackObj_edblock11570
	jmp ProcessBackObj_edblock11507
ProcessBackObj_eblock11506
	; LineNumber: 2468
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_gravPadId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11617
ProcessBackObj_localsuccess11619: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_var11620 = $88
	sta ProcessBackObj_binary_clause_temp_var11620
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
ProcessBackObj_binary_clause_temp_2_var11621 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11621
	lda ProcessBackObj_binary_clause_temp_var11620
	cmp ProcessBackObj_binary_clause_temp_2_var11621;keep
	beq ProcessBackObj_edblock11617
ProcessBackObj_ctb11615: ;Main true block ;keep 
	; LineNumber: 2469
	; LineNumber: 2470
	lda #<sndGravActivate
	ldy #>sndGravActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2470
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2470
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2472
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_gravPadId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_physGravity,x
	; LineNumber: 2473
ProcessBackObj_edblock11617
ProcessBackObj_edblock11507
ProcessBackObj_edblock11232
ProcessBackObj_edblock10812
ProcessBackObj_edblock9988
	; LineNumber: 2475
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_ProcessBackObj_defWalk
	; cmp #$00 ignored
	beq ProcessBackObj_edblock11626
ProcessBackObj_localsuccess11648: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11626
ProcessBackObj_ctb11624: ;Main true block ;keep 
	; LineNumber: 2475
	; LineNumber: 2477
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq ProcessBackObj_edblock11653
ProcessBackObj_ctb11651: ;Main true block ;keep 
	; LineNumber: 2477
	; LineNumber: 2478
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; cmp #$00 ignored
	beq ProcessBackObj_edblock11666
ProcessBackObj_localsuccess11668: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_id
	lda objectList_gobject_gobject_animId,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq ProcessBackObj_edblock11666
ProcessBackObj_ctb11664: ;Main true block ;keep 
	; LineNumber: 2477
	lda localVariable_ProcessBackObj_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
ProcessBackObj_edblock11666
	; LineNumber: 2479
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2480
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2481
ProcessBackObj_edblock11653
	; LineNumber: 2482
ProcessBackObj_edblock11626
	; LineNumber: 2483
	; Binary clause Simplified: EQUALS
	lda localVariable_ProcessBackObj_portalId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_edblock11673
ProcessBackObj_localsuccess11675: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11673
ProcessBackObj_ctb11671: ;Main true block ;keep 
	; LineNumber: 2482
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlLastPortal,x
ProcessBackObj_edblock11673
	; LineNumber: 2485
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11744
	jmp ProcessBackObj_ctb11678
ProcessBackObj_localfailed11744
	jmp ProcessBackObj_edblock11680
ProcessBackObj_ctb11678: ;Main true block ;keep 
	; LineNumber: 2485
	; LineNumber: 2486
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_localfailed11778
ProcessBackObj_localsuccess11779: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed11778
	jmp ProcessBackObj_ctb11747
ProcessBackObj_localfailed11778
	jmp ProcessBackObj_eblock11748
ProcessBackObj_ctb11747: ;Main true block ;keep 
	; LineNumber: 2486
	; LineNumber: 2487
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
	; LineNumber: 2489
	jmp ProcessBackObj_edblock11749
ProcessBackObj_eblock11748
	; LineNumber: 2488
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_eblock11784
ProcessBackObj_localsuccess11796: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_eblock11784
ProcessBackObj_localsuccess11795: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
ProcessBackObj_binary_clause_temp_var11797 = $88
	sta ProcessBackObj_binary_clause_temp_var11797
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
ProcessBackObj_binary_clause_temp_2_var11798 = $8A
	sta ProcessBackObj_binary_clause_temp_2_var11798
	lda ProcessBackObj_binary_clause_temp_var11797
	cmp ProcessBackObj_binary_clause_temp_2_var11798;keep
	beq ProcessBackObj_eblock11784
ProcessBackObj_ctb11783: ;Main true block ;keep 
	; LineNumber: 2489
	; LineNumber: 2490
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
	; LineNumber: 2491
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
	; LineNumber: 2493
	jmp ProcessBackObj_edblock11785
ProcessBackObj_eblock11784
	; LineNumber: 2492
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_lastWaypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_edblock11804
ProcessBackObj_localsuccess11806: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_waypointId,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne ProcessBackObj_edblock11804
ProcessBackObj_ctb11802: ;Main true block ;keep 
	; LineNumber: 2493
	; LineNumber: 2494
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
	; LineNumber: 2495
ProcessBackObj_edblock11804
ProcessBackObj_edblock11785
ProcessBackObj_edblock11749
	; LineNumber: 2496
ProcessBackObj_edblock11680
	; LineNumber: 2497
ProcessBackObj_edblock8156
	; LineNumber: 2498
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed12948
	jmp ProcessBackObj_ctb11809
ProcessBackObj_localfailed12948
	jmp ProcessBackObj_edblock11811
ProcessBackObj_ctb11809: ;Main true block ;keep 
	; LineNumber: 2498
	; LineNumber: 2499
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
	; LineNumber: 2500
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
	; LineNumber: 2501
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_switchId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13519
	jmp ProcessBackObj_ctb12951
ProcessBackObj_localfailed13519
	jmp ProcessBackObj_eblock12952
ProcessBackObj_ctb12951: ;Main true block ;keep 
	; LineNumber: 2501
	; LineNumber: 2502
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13535
	jmp ProcessBackObj_ctb13522
ProcessBackObj_localfailed13535
	jmp ProcessBackObj_edblock13524
ProcessBackObj_ctb13522: ;Main true block ;keep 
	; LineNumber: 2502
	; LineNumber: 2503
	lda #$14
	; Calling storevariable on generic assign expression
	sta textTimer
	; LineNumber: 2504
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_switchId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed13543
	jmp ProcessBackObj_ctb13538
ProcessBackObj_localfailed13543
	jmp ProcessBackObj_eblock13539
ProcessBackObj_ctb13538: ;Main true block ;keep 
	; LineNumber: 2504
	; LineNumber: 2505
	lda #<txtDeactiveSwitch
	ldx #>txtDeactiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2506
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2507
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$9
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2508
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2509
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2510
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
	; LineNumber: 2512
	lda #<sndSwitchOn
	ldy #>sndSwitchOn
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2512
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2512
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2514
	jmp ProcessBackObj_edblock13540
ProcessBackObj_eblock13539
	; LineNumber: 2514
	; LineNumber: 2515
	lda #<txtActiveSwitch
	ldx #>txtActiveSwitch
	sta sp
	stx sp+1
	; LineNumber: 2516
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2517
	lda localVariable_ProcessBackObj_switchId
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 2518
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_switchId ; optimized, look out for bugs
	sta objectList_gobject_gobject_onOff,x
	; LineNumber: 2519
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2520
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
	; LineNumber: 2521
	lda #<sndSwitchOff
	ldy #>sndSwitchOff
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
	; LineNumber: 2523
ProcessBackObj_edblock13540
	; LineNumber: 2525
ProcessBackObj_edblock13524
	jmp ProcessBackObj_edblock12953
ProcessBackObj_eblock12952
	; LineNumber: 2525
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_exitId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13817
ProcessBackObj_localsuccess13818: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_ProcessBackObj_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq ProcessBackObj_localfailed13817
	jmp ProcessBackObj_ctb13548
ProcessBackObj_localfailed13817
	jmp ProcessBackObj_edblock13550
ProcessBackObj_ctb13548: ;Main true block ;keep 
	; LineNumber: 2526
	; LineNumber: 2527
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_controlId
	lda controlList_controlObject_controlObject_b_controlPressAction,x 
	; cmp #$00 ignored
	beq ProcessBackObj_localfailed13954
	jmp ProcessBackObj_ctb13821
ProcessBackObj_localfailed13954
	jmp ProcessBackObj_edblock13823
ProcessBackObj_ctb13821: ;Main true block ;keep 
	; LineNumber: 2527
	; LineNumber: 2528
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_ProcessBackObj_exitId
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne ProcessBackObj_localfailed14022
	jmp ProcessBackObj_ctb13957
ProcessBackObj_localfailed14022
	jmp ProcessBackObj_eblock13958
ProcessBackObj_ctb13957: ;Main true block ;keep 
	; LineNumber: 2528
	; LineNumber: 2529
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2531
	lda #<sndExit
	ldy #>sndExit
	; Calling storevariable on generic assign expression
	sta psnd+0
	sty psnd+1
	; LineNumber: 2531
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$0
	; LineNumber: 2531
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$0
	; LineNumber: 2532
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne ProcessBackObj_eblock14026
ProcessBackObj_ctb14025: ;Main true block ;keep 
	; LineNumber: 2531
	; LineNumber: 2533
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2534
	jsr SetNextLevel
	; LineNumber: 2535
	jmp ProcessBackObj_edblock14027
ProcessBackObj_eblock14026
	; LineNumber: 2536
	; LineNumber: 2537
	; Binary clause Simplified: EQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	bne ProcessBackObj_eblock14060
ProcessBackObj_ctb14059: ;Main true block ;keep 
	; LineNumber: 2536
	; LineNumber: 2538
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2539
	jsr SetNextLevel
	; LineNumber: 2541
	jmp ProcessBackObj_edblock14061
ProcessBackObj_eblock14060
	; LineNumber: 2541
	; LineNumber: 2542
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_eblock14077
ProcessBackObj_localsuccess14081: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne ProcessBackObj_eblock14077
ProcessBackObj_ctb14076: ;Main true block ;keep 
	; LineNumber: 2542
	; LineNumber: 2543
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 2544
	jsr SetNextLevel
	; LineNumber: 2546
	jmp ProcessBackObj_edblock14078
ProcessBackObj_eblock14077
	; LineNumber: 2546
	; LineNumber: 2547
	lda localVariable_ProcessBackObj_controlId
	; Calling storevariable on generic assign expression
	sta activeChar
	; LineNumber: 2548
	jsr SwapActiveChar
	; LineNumber: 2550
	
; //								DeletePos(id, true, true);
	lda #<txtPlayerExit
	ldx #>txtPlayerExit
	sta sp
	stx sp+1
	; LineNumber: 2551
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2552
ProcessBackObj_edblock14078
	; LineNumber: 2553
ProcessBackObj_edblock14061
	; LineNumber: 2554
ProcessBackObj_edblock14027
	; LineNumber: 2556
	jmp ProcessBackObj_edblock13959
ProcessBackObj_eblock13958
	; LineNumber: 2556
	; LineNumber: 2558
	lda #<sndExitClose
	ldy #>sndExitClose
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 2558
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 2558
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 2559
	lda #<txtExitClosed
	ldx #>txtExitClosed
	sta sp
	stx sp+1
	; LineNumber: 2560
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_PrintText_x
	jsr PrintText
	; LineNumber: 2561
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_ProcessBackObj_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2562
ProcessBackObj_edblock13959
	; LineNumber: 2564
ProcessBackObj_edblock13823
	; LineNumber: 2565
ProcessBackObj_edblock13550
ProcessBackObj_edblock12953
	; LineNumber: 2566
ProcessBackObj_edblock11811
	; LineNumber: 2568
	rts
end_procedure_ProcessBackObj
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InputControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2575
	; LineNumber: 2572
localVariable_InputControl_controlId	dc.b	0
	; LineNumber: 2572
localVariable_InputControl_joyShift	dc.b	0
	; LineNumber: 2573
localVariable_InputControl_gravity	dc.b	0
	; LineNumber: 2574
localVariable_InputControl_joy	dc.b	0
	; LineNumber: 2570
localVariable_InputControl_id	dc.b	0
InputControl_block14085
InputControl
	; LineNumber: 2576
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_controlId
	; LineNumber: 2578
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock14089
InputControl_ctb14087: ;Main true block ;keep 
	; LineNumber: 2578
	rts
InputControl_edblock14089
	; LineNumber: 2581
	lda localVariable_InputControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ReleaseKeys_id
	jsr ReleaseKeys
	; LineNumber: 2582
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_localfailed15036
InputControl_localsuccess15037: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_InputControl_controlId;keep
	beq InputControl_localfailed15036
	jmp InputControl_ctb14093
InputControl_localfailed15036
	jmp InputControl_eblock14094
InputControl_ctb14093: ;Main true block ;keep 
	; LineNumber: 2583
	jmp InputControl_edblock14095
InputControl_eblock14094
	; LineNumber: 2584
	; LineNumber: 2585
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InputControl_eblock15042
InputControl_localsuccess15046: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_controlId
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_eblock15042
InputControl_ctb15041: ;Main true block ;keep 
	; LineNumber: 2584
	; LineNumber: 2586
	
; // do nothin
	lda simJoy
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joy
	; LineNumber: 2587
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joyShift
	; LineNumber: 2589
	jmp InputControl_edblock15043
InputControl_eblock15042
	; LineNumber: 2588
	; LineNumber: 2590
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joy
	; LineNumber: 2591
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_joyShift
	; LineNumber: 2592
InputControl_edblock15043
	; LineNumber: 2593
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
	bne InputControl_eblock15051
InputControl_ctb15050: ;Main true block ;keep 
	; LineNumber: 2592
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
	jmp InputControl_edblock15052
InputControl_eblock15051
	; LineNumber: 2592
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_gravity
InputControl_edblock15052
	; LineNumber: 2594
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
	bne InputControl_edblock15060
InputControl_ctb15058: ;Main true block ;keep 
	; LineNumber: 2594
	; LineNumber: 2595
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc InputControl_edblock15072
InputControl_ctb15070: ;Main true block ;keep 
	; LineNumber: 2595
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_edblock15072
	; LineNumber: 2597
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2598
InputControl_edblock15060
	; LineNumber: 2600
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
	bne InputControl_edblock15078
InputControl_ctb15076: ;Main true block ;keep 
	; LineNumber: 2600
	; LineNumber: 2601
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InputControl_controlId
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; cmp #$00 ignored
	bne InputControl_edblock15096
InputControl_ctb15094: ;Main true block ;keep 
	; LineNumber: 2601
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
InputControl_edblock15096
	; LineNumber: 2603
	; Test Inc dec D
	ldx localVariable_InputControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2604
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_b_firePressed,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bcc InputControl_edblock15102
InputControl_ctb15100: ;Main true block ;keep 
	; LineNumber: 2604
	; LineNumber: 2605
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressAction,x
	; LineNumber: 2606
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_firePressed,x
	; LineNumber: 2607
InputControl_edblock15102
	; LineNumber: 2608
InputControl_edblock15078
	; LineNumber: 2610
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne InputControl_localfailed15543
	jmp InputControl_ctb15106
InputControl_localfailed15543
	jmp InputControl_eblock15107
InputControl_ctb15106: ;Main true block ;keep 
	; LineNumber: 2611
	jmp InputControl_edblock15108
InputControl_eblock15107
	; LineNumber: 2612
	; LineNumber: 2613
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne InputControl_edblock15549
InputControl_ctb15547: ;Main true block ;keep 
	; LineNumber: 2613
	; LineNumber: 2614
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15579
InputControl_ctb15577: ;Main true block ;keep 
	; LineNumber: 2613
	
; // ignore		
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15579
	; LineNumber: 2615
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15585
InputControl_ctb15583: ;Main true block ;keep 
	; LineNumber: 2614
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15585
	; LineNumber: 2616
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15591
InputControl_ctb15589: ;Main true block ;keep 
	; LineNumber: 2615
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15591
	; LineNumber: 2617
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15597
InputControl_ctb15595: ;Main true block ;keep 
	; LineNumber: 2616
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15597
	; LineNumber: 2618
InputControl_edblock15549
	; LineNumber: 2619
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	beq InputControl_edblock15603
InputControl_ctb15601: ;Main true block ;keep 
	; LineNumber: 2619
	; LineNumber: 2620
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15633
InputControl_ctb15631: ;Main true block ;keep 
	; LineNumber: 2619
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15633
	; LineNumber: 2621
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15639
InputControl_ctb15637: ;Main true block ;keep 
	; LineNumber: 2620
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15639
	; LineNumber: 2622
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15645
InputControl_ctb15643: ;Main true block ;keep 
	; LineNumber: 2621
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15645
	; LineNumber: 2623
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15651
InputControl_ctb15649: ;Main true block ;keep 
	; LineNumber: 2622
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15651
	; LineNumber: 2624
InputControl_edblock15603
	; LineNumber: 2625
	; Binary clause Simplified: NOTEQUALS
	clc
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; cmp #$00 ignored
	beq InputControl_edblock15657
InputControl_ctb15655: ;Main true block ;keep 
	; LineNumber: 2625
	; LineNumber: 2626
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15687
InputControl_ctb15685: ;Main true block ;keep 
	; LineNumber: 2625
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15687
	; LineNumber: 2627
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15693
InputControl_ctb15691: ;Main true block ;keep 
	; LineNumber: 2626
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15693
	; LineNumber: 2628
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15699
InputControl_ctb15697: ;Main true block ;keep 
	; LineNumber: 2627
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15699
	; LineNumber: 2629
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15705
InputControl_ctb15703: ;Main true block ;keep 
	; LineNumber: 2628
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15705
	; LineNumber: 2630
InputControl_edblock15657
	; LineNumber: 2631
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq InputControl_edblock15711
InputControl_ctb15709: ;Main true block ;keep 
	; LineNumber: 2631
	; LineNumber: 2632
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15741
InputControl_ctb15739: ;Main true block ;keep 
	; LineNumber: 2631
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15741
	; LineNumber: 2633
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15747
InputControl_ctb15745: ;Main true block ;keep 
	; LineNumber: 2632
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15747
	; LineNumber: 2634
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15753
InputControl_ctb15751: ;Main true block ;keep 
	; LineNumber: 2633
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15753
	; LineNumber: 2635
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15759
InputControl_ctb15757: ;Main true block ;keep 
	; LineNumber: 2634
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15759
	; LineNumber: 2636
InputControl_edblock15711
	; LineNumber: 2637
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InputControl_edblock15765
InputControl_ctb15763: ;Main true block ;keep 
	; LineNumber: 2637
	; LineNumber: 2638
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15795
InputControl_ctb15793: ;Main true block ;keep 
	; LineNumber: 2637
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15795
	; LineNumber: 2639
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15801
InputControl_ctb15799: ;Main true block ;keep 
	; LineNumber: 2638
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15801
	; LineNumber: 2640
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15807
InputControl_ctb15805: ;Main true block ;keep 
	; LineNumber: 2639
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15807
	; LineNumber: 2641
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15813
InputControl_ctb15811: ;Main true block ;keep 
	; LineNumber: 2640
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15813
	; LineNumber: 2642
InputControl_edblock15765
	; LineNumber: 2643
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq InputControl_edblock15819
InputControl_ctb15817: ;Main true block ;keep 
	; LineNumber: 2643
	; LineNumber: 2644
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15849
InputControl_ctb15847: ;Main true block ;keep 
	; LineNumber: 2643
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15849
	; LineNumber: 2645
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15855
InputControl_ctb15853: ;Main true block ;keep 
	; LineNumber: 2644
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15855
	; LineNumber: 2646
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15861
InputControl_ctb15859: ;Main true block ;keep 
	; LineNumber: 2645
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15861
	; LineNumber: 2647
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15867
InputControl_ctb15865: ;Main true block ;keep 
	; LineNumber: 2646
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15867
	; LineNumber: 2648
InputControl_edblock15819
	; LineNumber: 2649
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne InputControl_edblock15873
InputControl_ctb15871: ;Main true block ;keep 
	; LineNumber: 2649
	; LineNumber: 2650
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15903
InputControl_ctb15901: ;Main true block ;keep 
	; LineNumber: 2649
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15903
	; LineNumber: 2651
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15909
InputControl_ctb15907: ;Main true block ;keep 
	; LineNumber: 2650
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15909
	; LineNumber: 2652
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15915
InputControl_ctb15913: ;Main true block ;keep 
	; LineNumber: 2651
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15915
	; LineNumber: 2653
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15921
InputControl_ctb15919: ;Main true block ;keep 
	; LineNumber: 2652
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15921
	; LineNumber: 2654
InputControl_edblock15873
	; LineNumber: 2655
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_InputControl_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	beq InputControl_edblock15927
InputControl_ctb15925: ;Main true block ;keep 
	; LineNumber: 2655
	; LineNumber: 2656
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne InputControl_edblock15957
InputControl_ctb15955: ;Main true block ;keep 
	; LineNumber: 2655
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressDown,x
InputControl_edblock15957
	; LineNumber: 2657
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InputControl_edblock15963
InputControl_ctb15961: ;Main true block ;keep 
	; LineNumber: 2656
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressUp,x
InputControl_edblock15963
	; LineNumber: 2658
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne InputControl_edblock15969
InputControl_ctb15967: ;Main true block ;keep 
	; LineNumber: 2657
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressRight,x
InputControl_edblock15969
	; LineNumber: 2659
	; Binary clause Simplified: EQUALS
	lda localVariable_InputControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne InputControl_edblock15975
InputControl_ctb15973: ;Main true block ;keep 
	; LineNumber: 2658
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_InputControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_controlPressLeft,x
InputControl_edblock15975
	; LineNumber: 2660
InputControl_edblock15927
	; LineNumber: 2661
InputControl_edblock15108
	; LineNumber: 2662
InputControl_edblock14095
	; LineNumber: 2663
	rts
end_procedure_InputControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateControl
	;    Procedure type : User-defined procedure
	; LineNumber: 2678
	; LineNumber: 2667
localVariable_UpdateControl_controlId	dc.b	0
	; LineNumber: 2668
localVariable_UpdateControl_grounded	dc.b	0
	; LineNumber: 2669
localVariable_UpdateControl_isShift	dc.b	0
	; LineNumber: 2670
localVariable_UpdateControl_gravity	dc.b	0
	; LineNumber: 2671
localVariable_UpdateControl_oldx	dc.b	0
	; LineNumber: 2671
localVariable_UpdateControl_oldy	dc.b	0
	; LineNumber: 2671
localVariable_UpdateControl_newx	dc.b	0
	; LineNumber: 2671
localVariable_UpdateControl_newy	dc.b	0
	; LineNumber: 2671
localVariable_UpdateControl_moveDir	dc.b	0
	; LineNumber: 2673
localVariable_UpdateControl_shift	dc.w	0
	; LineNumber: 2674
localVariable_UpdateControl_laserEmitId	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_colObj	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_eraseObj	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_colObj2	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_eraseObj2	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_colObj3	dc.b	0
	; LineNumber: 2676
localVariable_UpdateControl_laserId	dc.b	0
	; LineNumber: 2677
localVariable_UpdateControl_shiftDir	dc.b	0
	; LineNumber: 2665
localVariable_UpdateControl_id	dc.b	0
UpdateControl_block15978
UpdateControl
	; LineNumber: 2679
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_controlId
	; LineNumber: 2680
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2681
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2682
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2683
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shift
	sty localVariable_UpdateControl_shift+1
	; LineNumber: 2684
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2685
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2686
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2687
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2689
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
	beq UpdateControl_localfailed16064
	jmp UpdateControl_ctb15980
UpdateControl_localfailed16064
	jmp UpdateControl_eblock15981
UpdateControl_ctb15980: ;Main true block ;keep 
	; LineNumber: 2689
	; LineNumber: 2690
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2691
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
	; LineNumber: 2692
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2694
	jmp UpdateControl_edblock15982
UpdateControl_eblock15981
	; LineNumber: 2694
	; LineNumber: 2695
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_gravity
	; LineNumber: 2696
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
	; LineNumber: 2697
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed16108
	jmp UpdateControl_ctb16068
UpdateControl_localfailed16108
	jmp UpdateControl_edblock16070
UpdateControl_ctb16068: ;Main true block ;keep 
	; LineNumber: 2696
	; LineNumber: 2698
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_grounded
	; LineNumber: 2699
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_shiftDir
	; LineNumber: 2700
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed16115
UpdateControl_localsuccess16116: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16115
	jmp UpdateControl_ctb16111
UpdateControl_localfailed16115: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_edblock16113
UpdateControl_localsuccess16117: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_edblock16113
UpdateControl_ctb16111: ;Main true block ;keep 
	; LineNumber: 2699
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_edblock16113
	; LineNumber: 2701
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16124
UpdateControl_localsuccess16125: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16124
	jmp UpdateControl_ctb16120
UpdateControl_localfailed16124: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_edblock16122
UpdateControl_localsuccess16126: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_edblock16122
UpdateControl_ctb16120: ;Main true block ;keep 
	; LineNumber: 2700
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_edblock16122
	; LineNumber: 2702
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed16133
UpdateControl_localsuccess16134: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16133
	jmp UpdateControl_ctb16129
UpdateControl_localfailed16133: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_edblock16131
UpdateControl_localsuccess16135: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_edblock16131
UpdateControl_ctb16129: ;Main true block ;keep 
	; LineNumber: 2701
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_edblock16131
	; LineNumber: 2703
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed16142
UpdateControl_localsuccess16143: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed16142
	jmp UpdateControl_ctb16138
UpdateControl_localfailed16142: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_edblock16140
UpdateControl_localsuccess16144: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_edblock16140
UpdateControl_ctb16138: ;Main true block ;keep 
	; LineNumber: 2702
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_isShift
UpdateControl_edblock16140
	; LineNumber: 2704
UpdateControl_edblock16070
	; LineNumber: 2705
UpdateControl_edblock15982
	; LineNumber: 2706
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed21379
	jmp UpdateControl_ctb16147
UpdateControl_localfailed21379
	jmp UpdateControl_eblock16148
UpdateControl_ctb16147: ;Main true block ;keep 
	; LineNumber: 2706
	; LineNumber: 2707
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_isShift
	; cmp #$00 ignored
	bne UpdateControl_localfailed21653
	jmp UpdateControl_ctb21382
UpdateControl_localfailed21653
	jmp UpdateControl_eblock21383
UpdateControl_ctb21382: ;Main true block ;keep 
	; LineNumber: 2707
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
	; LineNumber: 2709
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
	; LineNumber: 2710
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21661
	jmp UpdateControl_localsuccess21660
UpdateControl_localfailed21661: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21658
UpdateControl_localsuccess21660: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	bne UpdateControl_edblock21658
UpdateControl_localsuccess21663: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21658
UpdateControl_localsuccess21662: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21658
UpdateControl_ctb21656: ;Main true block ;keep 
	; LineNumber: 2709
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock21658
	; LineNumber: 2712
	
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
	; LineNumber: 2714
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21671
	jmp UpdateControl_localsuccess21670
UpdateControl_localfailed21671: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21668
UpdateControl_localsuccess21670: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21668
UpdateControl_localsuccess21672: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21668
UpdateControl_ctb21666: ;Main true block ;keep 
	; LineNumber: 2713
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock21668
	; LineNumber: 2716
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21773
	jmp UpdateControl_ctb21675
UpdateControl_localfailed21773
	jmp UpdateControl_edblock21677
UpdateControl_ctb21675: ;Main true block ;keep 
	; LineNumber: 2716
	; LineNumber: 2717
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
	; LineNumber: 2718
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
	; LineNumber: 2719
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
	; LineNumber: 2721
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21800
	jmp UpdateControl_localsuccess21799
UpdateControl_localfailed21800: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21778
UpdateControl_localsuccess21799: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21801
	jmp UpdateControl_ctb21776
UpdateControl_localfailed21801: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21778
UpdateControl_ctb21776: ;Main true block ;keep 
	; LineNumber: 2721
	; LineNumber: 2722
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21814
	jmp UpdateControl_ctb21804
UpdateControl_localfailed21814: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21806
UpdateControl_ctb21804: ;Main true block ;keep 
	; LineNumber: 2722
	; LineNumber: 2723
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21819
UpdateControl_ctb21817: ;Main true block ;keep 
	; LineNumber: 2722
	; LineNumber: 2724
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2725
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyLeft,x
	; LineNumber: 2726
UpdateControl_edblock21819
	; LineNumber: 2727
UpdateControl_edblock21806
	; LineNumber: 2728
UpdateControl_edblock21778
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
	; LineNumber: 2731
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
	; LineNumber: 2732
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
	; LineNumber: 2733
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21847
	jmp UpdateControl_localsuccess21846
UpdateControl_localfailed21847: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21825
UpdateControl_localsuccess21846: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21848
	jmp UpdateControl_ctb21823
UpdateControl_localfailed21848: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21825
UpdateControl_ctb21823: ;Main true block ;keep 
	; LineNumber: 2733
	; LineNumber: 2734
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_localfailed21861
	jmp UpdateControl_ctb21851
UpdateControl_localfailed21861: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlFollowKeyRight,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21853
UpdateControl_ctb21851: ;Main true block ;keep 
	; LineNumber: 2734
	; LineNumber: 2735
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21866
UpdateControl_ctb21864: ;Main true block ;keep 
	; LineNumber: 2734
	; LineNumber: 2736
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2737
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlFollowKeyRight,x
	; LineNumber: 2738
UpdateControl_edblock21866
	; LineNumber: 2739
UpdateControl_edblock21853
	; LineNumber: 2740
UpdateControl_edblock21825
	; LineNumber: 2741
UpdateControl_edblock21677
	; LineNumber: 2743
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21892
	jmp UpdateControl_ctb21870
UpdateControl_localfailed21892
	jmp UpdateControl_edblock21872
UpdateControl_ctb21870: ;Main true block ;keep 
	; LineNumber: 2743
	; LineNumber: 2744
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
	; LineNumber: 2745
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
	; LineNumber: 2747
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21900
	jmp UpdateControl_localsuccess21899
UpdateControl_localfailed21900: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21897
UpdateControl_localsuccess21899: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21897
UpdateControl_localsuccess21901: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21897
UpdateControl_ctb21895: ;Main true block ;keep 
	; LineNumber: 2746
	; LineNumber: 2748
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2749
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2750
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2751
UpdateControl_edblock21897
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
	; LineNumber: 2755
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21909
	jmp UpdateControl_localsuccess21908
UpdateControl_localfailed21909: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21906
UpdateControl_localsuccess21908: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21906
UpdateControl_localsuccess21910: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21906
UpdateControl_ctb21904: ;Main true block ;keep 
	; LineNumber: 2754
	; LineNumber: 2756
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2757
UpdateControl_edblock21906
	; LineNumber: 2758
UpdateControl_edblock21872
	; LineNumber: 2760
	jmp UpdateControl_edblock21384
UpdateControl_eblock21383
	; LineNumber: 2760
	; LineNumber: 2761
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
	; LineNumber: 2762
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
	; LineNumber: 2764
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed21919
	jmp UpdateControl_localsuccess21918
UpdateControl_localfailed21919: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock21916
UpdateControl_localsuccess21918: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock21916
UpdateControl_localsuccess21920: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdateControl_grounded
	; cmp #$00 ignored
	beq UpdateControl_edblock21916
UpdateControl_ctb21914: ;Main true block ;keep 
	; LineNumber: 2763
	; LineNumber: 2765
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2766
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2767
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2768
UpdateControl_edblock21916
	; LineNumber: 2769
UpdateControl_edblock21384
	; LineNumber: 2770
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed21935
	jmp UpdateControl_ctb21923
UpdateControl_localfailed21935: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_eblock21924
UpdateControl_ctb21923: ;Main true block ;keep 
	; LineNumber: 2769
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_edblock21925
UpdateControl_eblock21924
	; LineNumber: 2770
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed21943
	jmp UpdateControl_ctb21939
UpdateControl_localfailed21943: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_edblock21941
UpdateControl_ctb21939: ;Main true block ;keep 
	; LineNumber: 2770
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_edblock21941
UpdateControl_edblock21925
	; LineNumber: 2773
	jmp UpdateControl_edblock16149
UpdateControl_eblock16148
	; LineNumber: 2772
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_localfailed24279
	jmp UpdateControl_ctb21947
UpdateControl_localfailed24279
	jmp UpdateControl_eblock21948
UpdateControl_ctb21947: ;Main true block ;keep 
	; LineNumber: 2773
	; LineNumber: 2774
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed24521
	jmp UpdateControl_ctb24282
UpdateControl_localfailed24521
	jmp UpdateControl_eblock24283
UpdateControl_ctb24282: ;Main true block ;keep 
	; LineNumber: 2773
	
; // TODO: check for collideable?
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	jmp UpdateControl_edblock24284
UpdateControl_eblock24283
	; LineNumber: 2774
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed24643
	jmp UpdateControl_ctb24525
UpdateControl_localfailed24643: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed24642
	jmp UpdateControl_ctb24525
UpdateControl_localfailed24642
	jmp UpdateControl_edblock24527
UpdateControl_ctb24525: ;Main true block ;keep 
	; LineNumber: 2775
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
	; LineNumber: 2779
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24648
UpdateControl_localsuccess24651: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24652
	jmp UpdateControl_localsuccess24650
UpdateControl_localfailed24652: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24648
UpdateControl_localsuccess24650: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock24648
UpdateControl_ctb24646: ;Main true block ;keep 
	; LineNumber: 2778
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock24648
	; LineNumber: 2781
	
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
	; LineNumber: 2783
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
	; LineNumber: 2784
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24657
UpdateControl_localsuccess24660: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24661
	jmp UpdateControl_localsuccess24659
UpdateControl_localfailed24661: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24657
UpdateControl_localsuccess24659: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock24657
UpdateControl_ctb24655: ;Main true block ;keep 
	; LineNumber: 2783
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock24657
	; LineNumber: 2786
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24712
	jmp UpdateControl_ctb24664
UpdateControl_localfailed24712
	jmp UpdateControl_edblock24666
UpdateControl_ctb24664: ;Main true block ;keep 
	; LineNumber: 2786
	; LineNumber: 2787
	
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
	; LineNumber: 2788
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
	; LineNumber: 2789
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
	; LineNumber: 2790
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
	; LineNumber: 2791
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
	; LineNumber: 2792
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24726
	jmp UpdateControl_localsuccess24725
UpdateControl_localfailed24726: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24717
UpdateControl_localsuccess24725: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24728
	jmp UpdateControl_localsuccess24727
UpdateControl_localfailed24728: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24717
UpdateControl_localsuccess24727: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24717
UpdateControl_ctb24715: ;Main true block ;keep 
	; LineNumber: 2792
	; LineNumber: 2793
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock24733
UpdateControl_ctb24731: ;Main true block ;keep 
	; LineNumber: 2793
	; LineNumber: 2794
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2795
UpdateControl_edblock24733
	; LineNumber: 2796
UpdateControl_edblock24717
	; LineNumber: 2797
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
	; LineNumber: 2798
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
	; LineNumber: 2799
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
	; LineNumber: 2802
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24748
	jmp UpdateControl_localsuccess24747
UpdateControl_localfailed24748: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24739
UpdateControl_localsuccess24747: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed24750
	jmp UpdateControl_localsuccess24749
UpdateControl_localfailed24750: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24739
UpdateControl_localsuccess24749: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_colObj3
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock24739
UpdateControl_ctb24737: ;Main true block ;keep 
	; LineNumber: 2802
	; LineNumber: 2803
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock24755
UpdateControl_ctb24753: ;Main true block ;keep 
	; LineNumber: 2803
	; LineNumber: 2804
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2805
UpdateControl_edblock24755
	; LineNumber: 2806
UpdateControl_edblock24739
	; LineNumber: 2807
UpdateControl_edblock24666
	; LineNumber: 2808
UpdateControl_edblock24527
UpdateControl_edblock24284
	; LineNumber: 2809
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2810
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bcc UpdateControl_edblock24761
UpdateControl_ctb24759: ;Main true block ;keep 
	; LineNumber: 2809
	; LineNumber: 2811
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2812
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2813
UpdateControl_edblock24761
	; LineNumber: 2814
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed24791
	jmp UpdateControl_ctb24765
UpdateControl_localfailed24791: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_eblock24766
UpdateControl_ctb24765: ;Main true block ;keep 
	; LineNumber: 2813
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_edblock24767
UpdateControl_eblock24766
	; LineNumber: 2814
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed24806
	jmp UpdateControl_ctb24795
UpdateControl_localfailed24806: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_eblock24796
UpdateControl_ctb24795: ;Main true block ;keep 
	; LineNumber: 2814
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_edblock24797
UpdateControl_eblock24796
	; LineNumber: 2815
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_edblock24812
UpdateControl_ctb24810: ;Main true block ;keep 
	; LineNumber: 2815
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_edblock24812
UpdateControl_edblock24797
UpdateControl_edblock24767
	; LineNumber: 2817
	jmp UpdateControl_edblock21949
UpdateControl_eblock21948
	; LineNumber: 2817
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25715
	jmp UpdateControl_ctb24817
UpdateControl_localfailed25715: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed25714
	jmp UpdateControl_ctb24817
UpdateControl_localfailed25714: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed25713
	jmp UpdateControl_ctb24817
UpdateControl_localfailed25713
	jmp UpdateControl_eblock24818
UpdateControl_ctb24817: ;Main true block ;keep 
	; LineNumber: 2818
	; LineNumber: 2819
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
	; LineNumber: 2820
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
	; LineNumber: 2821
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25723
	jmp UpdateControl_localsuccess25722
UpdateControl_localfailed25723: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25720
UpdateControl_localsuccess25722: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressLeft,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock25720
UpdateControl_ctb25718: ;Main true block ;keep 
	; LineNumber: 2820
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock25720
	; LineNumber: 2823
	
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
	; LineNumber: 2824
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
	; LineNumber: 2825
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25731
	jmp UpdateControl_localsuccess25730
UpdateControl_localfailed25731: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25728
UpdateControl_localsuccess25730: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressRight,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock25728
UpdateControl_ctb25726: ;Main true block ;keep 
	; LineNumber: 2824
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock25728
	; LineNumber: 2827
	
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
	; LineNumber: 2828
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
	; LineNumber: 2829
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25739
	jmp UpdateControl_localsuccess25738
UpdateControl_localfailed25739: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25736
UpdateControl_localsuccess25738: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressUp,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock25736
UpdateControl_localsuccess25740: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	beq UpdateControl_edblock25736
UpdateControl_ctb25734: ;Main true block ;keep 
	; LineNumber: 2828
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock25736
	; LineNumber: 2831
	
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
	; LineNumber: 2832
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
	; LineNumber: 2833
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateControl_localfailed25748
	jmp UpdateControl_localsuccess25747
UpdateControl_localfailed25748: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25745
UpdateControl_localsuccess25747: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_b_controlPressDown,x 
	; cmp #$00 ignored
	beq UpdateControl_edblock25745
UpdateControl_ctb25743: ;Main true block ;keep 
	; LineNumber: 2832
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
UpdateControl_edblock25745
	; LineNumber: 2835
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25835
	jmp UpdateControl_ctb25751
UpdateControl_localfailed25835
	jmp UpdateControl_eblock25752
UpdateControl_ctb25751: ;Main true block ;keep 
	; LineNumber: 2835
	; LineNumber: 2836
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed25850
	jmp UpdateControl_ctb25838
UpdateControl_localfailed25850: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_eblock25839
UpdateControl_ctb25838: ;Main true block ;keep 
	; LineNumber: 2835
	
; //TODO: AnimationSwimR
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	jmp UpdateControl_edblock25840
UpdateControl_eblock25839
	; LineNumber: 2836
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed25858
	jmp UpdateControl_ctb25854
UpdateControl_localfailed25858: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_edblock25856
UpdateControl_ctb25854: ;Main true block ;keep 
	; LineNumber: 2836
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$4
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_edblock25856
UpdateControl_edblock25840
	; LineNumber: 2839
	jmp UpdateControl_edblock25753
UpdateControl_eblock25752
	; LineNumber: 2838
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_eblock25863
UpdateControl_ctb25862: ;Main true block ;keep 
	; LineNumber: 2839
	; LineNumber: 2840
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25895
UpdateControl_ctb25893: ;Main true block ;keep 
	; LineNumber: 2839
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_edblock25895
	; LineNumber: 2842
	jmp UpdateControl_edblock25864
UpdateControl_eblock25863
	; LineNumber: 2841
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_edblock25902
UpdateControl_ctb25900: ;Main true block ;keep 
	; LineNumber: 2842
	; LineNumber: 2843
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock25914
UpdateControl_ctb25912: ;Main true block ;keep 
	; LineNumber: 2842
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
UpdateControl_edblock25914
	; LineNumber: 2845
UpdateControl_edblock25902
UpdateControl_edblock25864
UpdateControl_edblock25753
	jmp UpdateControl_edblock24819
UpdateControl_eblock24818
	; LineNumber: 2845
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed26265
	jmp UpdateControl_ctb25919
UpdateControl_localfailed26265
	jmp UpdateControl_edblock25921
UpdateControl_ctb25919: ;Main true block ;keep 
	; LineNumber: 2846
	; LineNumber: 2847
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2848
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserEmitId
	; LineNumber: 2849
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; cmp #$00 ignored
	bne UpdateControl_localfailed26384
	jmp UpdateControl_ctb26268
UpdateControl_localfailed26384
	jmp UpdateControl_eblock26269
UpdateControl_ctb26268: ;Main true block ;keep 
	; LineNumber: 2848
	; LineNumber: 2850
	lda #$4
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	; LineNumber: 2851
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_moveDir
	; LineNumber: 2852
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 2853
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlCollideLaserTag,x 
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2854
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_laserId
	; LineNumber: 2855
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26391
	jmp UpdateControl_ctb26387
UpdateControl_localfailed26391
	jmp UpdateControl_edblock26389
UpdateControl_ctb26387: ;Main true block ;keep 
	; LineNumber: 2854
	; LineNumber: 2856
	lda #$5a
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 2857
	lda #$8
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 2858
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 2859
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 2860
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 2861
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 2862
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 2863
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 2864
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 2866
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
	; LineNumber: 2867
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 2868
UpdateControl_edblock26389
	; LineNumber: 2870
	jmp UpdateControl_edblock26270
UpdateControl_eblock26269
	; LineNumber: 2869
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_eblock26396
UpdateControl_ctb26395: ;Main true block ;keep 
	; LineNumber: 2869
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_edblock26397
UpdateControl_eblock26396
	; LineNumber: 2870
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_eblock26452
UpdateControl_ctb26451: ;Main true block ;keep 
	; LineNumber: 2870
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_edblock26453
UpdateControl_eblock26452
	; LineNumber: 2871
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_eblock26480
UpdateControl_ctb26479: ;Main true block ;keep 
	; LineNumber: 2871
	lda #$2
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
	jmp UpdateControl_edblock26481
UpdateControl_eblock26480
	; LineNumber: 2872
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_edblock26495
UpdateControl_ctb26493: ;Main true block ;keep 
	; LineNumber: 2872
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateControl_edblock26495
UpdateControl_edblock26481
UpdateControl_edblock26453
UpdateControl_edblock26397
UpdateControl_edblock26270
	; LineNumber: 2874
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
	; LineNumber: 2875
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
	; LineNumber: 2876
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
	; LineNumber: 2877
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
	; LineNumber: 2878
	; Test Inc dec D
	ldx localVariable_UpdateControl_controlId
	; Optimize byte array inc 
	inc controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2879
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlJumpStep,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bcc UpdateControl_localfailed26555
	jmp UpdateControl_ctb26499
UpdateControl_localfailed26555
	jmp UpdateControl_edblock26501
UpdateControl_ctb26499: ;Main true block ;keep 
	; LineNumber: 2879
	; LineNumber: 2880
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_ClearLaserWithTag_tag
	jsr ClearLaserWithTag
	; LineNumber: 2881
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
	; LineNumber: 2882
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2883
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
	; LineNumber: 2884
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateControl_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 2885
	lda #$8
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 2886
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne UpdateControl_eblock26559
UpdateControl_ctb26558: ;Main true block ;keep 
	; LineNumber: 2885
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_edblock26560
UpdateControl_eblock26559
	; LineNumber: 2887
	; LineNumber: 2888
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq UpdateControl_eblock26589
UpdateControl_ctb26588: ;Main true block ;keep 
	; LineNumber: 2887
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateControl_edblock26590
UpdateControl_eblock26589
	; LineNumber: 2889
	; LineNumber: 2890
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_edblock26605
UpdateControl_localsuccess26607: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda controlList_controlObject_controlObject_controlState +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateControl_edblock26605
UpdateControl_ctb26603: ;Main true block ;keep 
	; LineNumber: 2889
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
UpdateControl_edblock26605
	; LineNumber: 2891
UpdateControl_edblock26590
	; LineNumber: 2892
UpdateControl_edblock26560
	; LineNumber: 2893
UpdateControl_edblock26501
	; LineNumber: 2894
UpdateControl_edblock25921
UpdateControl_edblock24819
UpdateControl_edblock21949
UpdateControl_edblock16149
	; LineNumber: 2897
	
; // Do Moves
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldx
	; LineNumber: 2898
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_oldy
	; LineNumber: 2900
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_localfailed26675
	jmp UpdateControl_ctb26610
UpdateControl_localfailed26675
	jmp UpdateControl_edblock26612
UpdateControl_ctb26610: ;Main true block ;keep 
	; LineNumber: 2900
	; LineNumber: 2901
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed26709
	jmp UpdateControl_ctb26678
UpdateControl_localfailed26709
	jmp UpdateControl_eblock26679
UpdateControl_ctb26678: ;Main true block ;keep 
	; LineNumber: 2900
	; LineNumber: 2903
	lda #<sndSwim
	ldy #>sndSwim
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2903
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2903
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2905
	jmp UpdateControl_edblock26680
UpdateControl_eblock26679
	; LineNumber: 2904
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateControl_eblock26714
UpdateControl_ctb26713: ;Main true block ;keep 
	; LineNumber: 2905
	; LineNumber: 2907
	lda #<sndJump
	ldy #>sndJump
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2907
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2907
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2909
	jmp UpdateControl_edblock26715
UpdateControl_eblock26714
	; LineNumber: 2908
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed26735
	jmp UpdateControl_ctb26730
UpdateControl_localfailed26735: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateControl_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_eblock26731
UpdateControl_ctb26730: ;Main true block ;keep 
	; LineNumber: 2908
	; LineNumber: 2911
	lda #<sndLadder
	ldy #>sndLadder
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 2911
	lda #$80
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 2911
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 2913
	jmp UpdateControl_edblock26732
UpdateControl_eblock26731
	; LineNumber: 2912
	; LineNumber: 2915
	lda #<sndStep
	ldy #>sndStep
	; Calling storevariable on generic assign expression
	sta psnd+8
	sty psnd+9
	; LineNumber: 2915
	lda #$14
	; Calling storevariable on generic assign expression
	sta vsnd+$4
	; LineNumber: 2915
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$4
	; LineNumber: 2916
UpdateControl_edblock26732
UpdateControl_edblock26715
UpdateControl_edblock26680
	; LineNumber: 2917
UpdateControl_edblock26612
	; LineNumber: 2920
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateControl_localfailed27441
	jmp UpdateControl_ctb26739
UpdateControl_localfailed27441
	jmp UpdateControl_eblock26740
UpdateControl_ctb26739: ;Main true block ;keep 
	; LineNumber: 2920
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
	; LineNumber: 2922
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock27446
UpdateControl_ctb27444: ;Main true block ;keep 
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
UpdateControl_edblock27446
	; LineNumber: 2923
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
	; LineNumber: 2924
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2925
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2927
	jmp UpdateControl_edblock26741
UpdateControl_eblock26740
	; LineNumber: 2926
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateControl_localfailed27797
	jmp UpdateControl_ctb27451
UpdateControl_localfailed27797
	jmp UpdateControl_eblock27452
UpdateControl_ctb27451: ;Main true block ;keep 
	; LineNumber: 2927
	; LineNumber: 2928
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
	; LineNumber: 2929
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock27802
UpdateControl_ctb27800: ;Main true block ;keep 
	; LineNumber: 2928
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock27802
	; LineNumber: 2930
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
	; LineNumber: 2931
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2932
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2934
	jmp UpdateControl_edblock27453
UpdateControl_eblock27452
	; LineNumber: 2933
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateControl_moveDir
	; cmp #$00 ignored
	bne UpdateControl_localfailed27975
	jmp UpdateControl_ctb27807
UpdateControl_localfailed27975
	jmp UpdateControl_eblock27808
UpdateControl_ctb27807: ;Main true block ;keep 
	; LineNumber: 2934
	; LineNumber: 2935
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
	; LineNumber: 2937
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock27980
UpdateControl_ctb27978: ;Main true block ;keep 
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
UpdateControl_edblock27980
	; LineNumber: 2938
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock27986
UpdateControl_ctb27984: ;Main true block ;keep 
	; LineNumber: 2937
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock27986
	; LineNumber: 2939
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
	; LineNumber: 2940
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2941
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2943
	jmp UpdateControl_edblock27809
UpdateControl_eblock27808
	; LineNumber: 2942
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateControl_localfailed28067
	jmp UpdateControl_ctb27991
UpdateControl_localfailed28067
	jmp UpdateControl_eblock27992
UpdateControl_ctb27991: ;Main true block ;keep 
	; LineNumber: 2943
	; LineNumber: 2944
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
	; LineNumber: 2945
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
	; LineNumber: 2946
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock28072
UpdateControl_ctb28070: ;Main true block ;keep 
	; LineNumber: 2945
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock28072
	; LineNumber: 2947
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_eraseObj2
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock28078
UpdateControl_ctb28076: ;Main true block ;keep 
	; LineNumber: 2946
	lda localVariable_UpdateControl_eraseObj2
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock28078
	; LineNumber: 2948
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
	; LineNumber: 2949
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2950
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2952
	jmp UpdateControl_edblock27993
UpdateControl_eblock27992
	; LineNumber: 2951
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateControl_localfailed28113
	jmp UpdateControl_ctb28083
UpdateControl_localfailed28113
	jmp UpdateControl_eblock28084
UpdateControl_ctb28083: ;Main true block ;keep 
	; LineNumber: 2952
	; LineNumber: 2953
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
	; LineNumber: 2954
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock28118
UpdateControl_ctb28116: ;Main true block ;keep 
	; LineNumber: 2953
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock28118
	; LineNumber: 2955
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
	; LineNumber: 2956
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2957
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2959
	jmp UpdateControl_edblock28085
UpdateControl_eblock28084
	; LineNumber: 2958
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateControl_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateControl_localfailed28133
	jmp UpdateControl_ctb28123
UpdateControl_localfailed28133
	jmp UpdateControl_edblock28125
UpdateControl_ctb28123: ;Main true block ;keep 
	; LineNumber: 2959
	; LineNumber: 2960
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
	; LineNumber: 2961
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock28138
UpdateControl_ctb28136: ;Main true block ;keep 
	; LineNumber: 2960
	lda localVariable_UpdateControl_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateControl_edblock28138
	; LineNumber: 2962
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
	; LineNumber: 2963
	lda localVariable_UpdateControl_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateControl_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newx
	; LineNumber: 2964
	lda localVariable_UpdateControl_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateControl_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_newy
	; LineNumber: 2965
UpdateControl_edblock28125
UpdateControl_edblock28085
UpdateControl_edblock27993
UpdateControl_edblock27809
UpdateControl_edblock27453
UpdateControl_edblock26741
	; LineNumber: 2966
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateControl_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateControl_edblock28144
UpdateControl_ctb28142: ;Main true block ;keep 
	; LineNumber: 2965
	; LineNumber: 2967
	lda localVariable_UpdateControl_id
	; Calling storevariable on generic assign expression
	sta localVariable_CycleAnimation_id
	jsr CycleAnimation
	; LineNumber: 2968
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
	; LineNumber: 2969
UpdateControl_edblock28144
	; LineNumber: 2970
	rts
end_procedure_UpdateControl
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdatePhysics
	;    Procedure type : User-defined procedure
	; LineNumber: 2983
	; LineNumber: 2974
localVariable_UpdatePhysics_fall	dc.b	0
	; LineNumber: 2974
localVariable_UpdatePhysics_fallDown	dc.b	0
	; LineNumber: 2974
localVariable_UpdatePhysics_fallLeftDown	dc.b	0
	; LineNumber: 2974
localVariable_UpdatePhysics_fallRightDown	dc.b	0
	; LineNumber: 2975
localVariable_UpdatePhysics_colObj	dc.b	0
	; LineNumber: 2975
localVariable_UpdatePhysics_eraseObj	dc.b	0
	; LineNumber: 2975
localVariable_UpdatePhysics_destroyObj	dc.b	0
	; LineNumber: 2976
localVariable_UpdatePhysics_oldx	dc.b	$ff
	; LineNumber: 2976
localVariable_UpdatePhysics_oldy	dc.b	$ff
	; LineNumber: 2976
localVariable_UpdatePhysics_newx	dc.b	$ff
	; LineNumber: 2976
localVariable_UpdatePhysics_newy	dc.b	$ff
	; LineNumber: 2977
localVariable_UpdatePhysics_gravity	dc.b	0
	; LineNumber: 2978
localVariable_UpdatePhysics_shift	dc.w	0
	; LineNumber: 2979
localVariable_UpdatePhysics_shiftDir	dc.b	0
	; LineNumber: 2980
localVariable_UpdatePhysics_doPhys	dc.b	0
	; LineNumber: 2982
localVariable_UpdatePhysics_controlId	dc.b	0
	; LineNumber: 2972
localVariable_UpdatePhysics_id	dc.b	0
UpdatePhysics_block28147
UpdatePhysics
	; LineNumber: 2984
	
; //	c:boolean;
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_gravity
	; LineNumber: 2985
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	; LineNumber: 2986
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	; LineNumber: 2987
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
	; LineNumber: 2988
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 2989
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_doPhys
	; LineNumber: 2990
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_controlId
	; LineNumber: 2995
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_b_physFallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed45379
	jmp UpdatePhysics_ctb28149
UpdatePhysics_localfailed45379
	jmp UpdatePhysics_edblock28151
UpdatePhysics_ctb28149: ;Main true block ;keep 
	; LineNumber: 2995
	; LineNumber: 2996
	
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
	; LineNumber: 2997
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdatePhysics_localfailed45413
	jmp UpdatePhysics_ctb45382
UpdatePhysics_localfailed45413
	jmp UpdatePhysics_eblock45383
UpdatePhysics_ctb45382: ;Main true block ;keep 
	; LineNumber: 2996
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallDown
	jmp UpdatePhysics_edblock45384
UpdatePhysics_eblock45383
	; LineNumber: 2997
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
	bne UpdatePhysics_eblock45418
UpdatePhysics_localsuccess45431: ;keep
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
	bne UpdatePhysics_eblock45418
UpdatePhysics_localsuccess45430: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_eblock45418
UpdatePhysics_ctb45417: ;Main true block ;keep 
	; LineNumber: 2997
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallLeftDown
	jmp UpdatePhysics_edblock45419
UpdatePhysics_eblock45418
	; LineNumber: 2998
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
	bne UpdatePhysics_edblock45437
UpdatePhysics_localsuccess45440: ;keep
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
	bne UpdatePhysics_edblock45437
UpdatePhysics_localsuccess45439: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_b_physRollLeftRight,x 
	; cmp #$00 ignored
	beq UpdatePhysics_edblock45437
UpdatePhysics_ctb45435: ;Main true block ;keep 
	; LineNumber: 2998
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fallRightDown
UpdatePhysics_edblock45437
UpdatePhysics_edblock45419
UpdatePhysics_edblock45384
	; LineNumber: 3000
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_localfailed53661
	jmp UpdatePhysics_ctb45443
UpdatePhysics_localfailed53661
	jmp UpdatePhysics_edblock45445
UpdatePhysics_ctb45443: ;Main true block ;keep 
	; LineNumber: 3000
	; LineNumber: 3001
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock53666
UpdatePhysics_localsuccess53668: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	beq UpdatePhysics_edblock53666
UpdatePhysics_ctb53664: ;Main true block ;keep 
	; LineNumber: 3000
	; LineNumber: 3003
	lda #<sndFall
	ldy #>sndFall
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3003
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3003
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3004
UpdatePhysics_edblock53666
	; LineNumber: 3005
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_colObj
	lda objectList_gobject_gobject_shiftDir,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_shiftDir
	; LineNumber: 3006
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
	bne UpdatePhysics_localfailed57775
	jmp UpdatePhysics_ctb53671
UpdatePhysics_localfailed57775
	jmp UpdatePhysics_edblock53673
UpdatePhysics_ctb53671: ;Main true block ;keep 
	; LineNumber: 3005
	; LineNumber: 3007
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
	bne UpdatePhysics_localfailed59829
	jmp UpdatePhysics_ctb57778
UpdatePhysics_localfailed59829: ;keep
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
	beq UpdatePhysics_localfailed59828
	jmp UpdatePhysics_ctb57778
UpdatePhysics_localfailed59828
	jmp UpdatePhysics_edblock57780
UpdatePhysics_ctb57778: ;Main true block ;keep 
	; LineNumber: 3008
	; LineNumber: 3009
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed60855
UpdatePhysics_localsuccess60856: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed60855
	jmp UpdatePhysics_ctb59832
UpdatePhysics_localfailed60855
	jmp UpdatePhysics_eblock59833
UpdatePhysics_ctb59832: ;Main true block ;keep 
	; LineNumber: 3008
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock59834
UpdatePhysics_eblock59833
	; LineNumber: 3009
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed61369
UpdatePhysics_localsuccess61370: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed61369
	jmp UpdatePhysics_ctb60860
UpdatePhysics_localfailed61369
	jmp UpdatePhysics_eblock60861
UpdatePhysics_ctb60860: ;Main true block ;keep 
	; LineNumber: 3009
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock60862
UpdatePhysics_eblock60861
	; LineNumber: 3010
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed61626
UpdatePhysics_localsuccess61627: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_localfailed61626
	jmp UpdatePhysics_ctb61374
UpdatePhysics_localfailed61626
	jmp UpdatePhysics_eblock61375
UpdatePhysics_ctb61374: ;Main true block ;keep 
	; LineNumber: 3010
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock61376
UpdatePhysics_eblock61375
	; LineNumber: 3011
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_eblock61632
UpdatePhysics_localsuccess61755: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_eblock61632
UpdatePhysics_ctb61631: ;Main true block ;keep 
	; LineNumber: 3011
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock61633
UpdatePhysics_eblock61632
	; LineNumber: 3012
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_eblock61760
UpdatePhysics_localsuccess61819: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_eblock61760
UpdatePhysics_ctb61759: ;Main true block ;keep 
	; LineNumber: 3012
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock61761
UpdatePhysics_eblock61760
	; LineNumber: 3013
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_eblock61824
UpdatePhysics_localsuccess61851: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_eblock61824
UpdatePhysics_ctb61823: ;Main true block ;keep 
	; LineNumber: 3013
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock61825
UpdatePhysics_eblock61824
	; LineNumber: 3014
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_eblock61856
UpdatePhysics_localsuccess61867: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdatePhysics_eblock61856
UpdatePhysics_ctb61855: ;Main true block ;keep 
	; LineNumber: 3014
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	jmp UpdatePhysics_edblock61857
UpdatePhysics_eblock61856
	; LineNumber: 3015
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_gravity
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_edblock61873
UpdatePhysics_localsuccess61875: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_shiftDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_edblock61873
UpdatePhysics_ctb61871: ;Main true block ;keep 
	; LineNumber: 3015
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
UpdatePhysics_edblock61873
UpdatePhysics_edblock61857
UpdatePhysics_edblock61825
UpdatePhysics_edblock61761
UpdatePhysics_edblock61633
UpdatePhysics_edblock61376
UpdatePhysics_edblock60862
UpdatePhysics_edblock59834
	; LineNumber: 3017
UpdatePhysics_edblock57780
	; LineNumber: 3019
UpdatePhysics_edblock53673
	; LineNumber: 3020
UpdatePhysics_edblock45445
	; LineNumber: 3022
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallDown
	; cmp #$00 ignored
	beq UpdatePhysics_localfailed61973
	jmp UpdatePhysics_ctb61878
UpdatePhysics_localfailed61973
	jmp UpdatePhysics_eblock61879
UpdatePhysics_ctb61878: ;Main true block ;keep 
	; LineNumber: 3022
	; LineNumber: 3023
	lda localVariable_UpdatePhysics_id
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_id
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_SwitchAnimation_anim
	jsr SwitchAnimation
	; LineNumber: 3024
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3025
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock61978
UpdatePhysics_ctb61976: ;Main true block ;keep 
	; LineNumber: 3025
	; LineNumber: 3026
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3027
UpdatePhysics_edblock61978
	; LineNumber: 3029
	jmp UpdatePhysics_edblock61880
UpdatePhysics_eblock61879
	; LineNumber: 3028
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallLeftDown
	; cmp #$00 ignored
	beq UpdatePhysics_eblock61984
UpdatePhysics_ctb61983: ;Main true block ;keep 
	; LineNumber: 3029
	; LineNumber: 3030
	lda #$6
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3031
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62030
UpdatePhysics_ctb62028: ;Main true block ;keep 
	; LineNumber: 3031
	; LineNumber: 3032
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3033
UpdatePhysics_edblock62030
	; LineNumber: 3035
	jmp UpdatePhysics_edblock61985
UpdatePhysics_eblock61984
	; LineNumber: 3034
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_UpdatePhysics_fallRightDown
	; cmp #$00 ignored
	beq UpdatePhysics_eblock62036
UpdatePhysics_ctb62035: ;Main true block ;keep 
	; LineNumber: 3035
	; LineNumber: 3036
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_fall
	; LineNumber: 3037
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62056
UpdatePhysics_ctb62054: ;Main true block ;keep 
	; LineNumber: 3037
	; LineNumber: 3038
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3039
UpdatePhysics_edblock62056
	; LineNumber: 3040
	jmp UpdatePhysics_edblock62037
UpdatePhysics_eblock62036
	; LineNumber: 3041
	; LineNumber: 3042
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62063
UpdatePhysics_ctb62061: ;Main true block ;keep 
	; LineNumber: 3042
	; LineNumber: 3043
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdatePhysics_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_fallDown,x
	; LineNumber: 3044
UpdatePhysics_edblock62063
	; LineNumber: 3045
UpdatePhysics_edblock62037
UpdatePhysics_edblock61985
UpdatePhysics_edblock61880
	; LineNumber: 3047
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdatePhysics_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldx
	; LineNumber: 3048
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_oldy
	; LineNumber: 3049
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3050
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdatePhysics_localfailed62335
	jmp UpdatePhysics_ctb62067
UpdatePhysics_localfailed62335
	jmp UpdatePhysics_eblock62068
UpdatePhysics_ctb62067: ;Main true block ;keep 
	; LineNumber: 3050
	; LineNumber: 3051
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
	; LineNumber: 3055
	jmp UpdatePhysics_edblock62069
UpdatePhysics_eblock62068
	; LineNumber: 3054
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdatePhysics_localfailed62471
	jmp UpdatePhysics_ctb62339
UpdatePhysics_localfailed62471
	jmp UpdatePhysics_eblock62340
UpdatePhysics_ctb62339: ;Main true block ;keep 
	; LineNumber: 3055
	; LineNumber: 3056
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
	; LineNumber: 3060
	jmp UpdatePhysics_edblock62341
UpdatePhysics_eblock62340
	; LineNumber: 3059
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdatePhysics_localfailed62539
	jmp UpdatePhysics_ctb62475
UpdatePhysics_localfailed62539
	jmp UpdatePhysics_eblock62476
UpdatePhysics_ctb62475: ;Main true block ;keep 
	; LineNumber: 3059
	; LineNumber: 3061
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
	; LineNumber: 3062
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3063
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3065
	jmp UpdatePhysics_edblock62477
UpdatePhysics_eblock62476
	; LineNumber: 3064
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdatePhysics_localfailed62573
	jmp UpdatePhysics_ctb62543
UpdatePhysics_localfailed62573
	jmp UpdatePhysics_eblock62544
UpdatePhysics_ctb62543: ;Main true block ;keep 
	; LineNumber: 3064
	; LineNumber: 3066
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
	; LineNumber: 3067
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3068
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3069
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
	; LineNumber: 3071
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3071
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3071
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3072
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62578
UpdatePhysics_ctb62576: ;Main true block ;keep 
	; LineNumber: 3071
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_edblock62578
	; LineNumber: 3074
	jmp UpdatePhysics_edblock62545
UpdatePhysics_eblock62544
	; LineNumber: 3073
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdatePhysics_fall
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdatePhysics_localfailed62593
	jmp UpdatePhysics_ctb62583
UpdatePhysics_localfailed62593
	jmp UpdatePhysics_edblock62585
UpdatePhysics_ctb62583: ;Main true block ;keep 
	; LineNumber: 3073
	; LineNumber: 3075
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
	; LineNumber: 3076
	lda localVariable_UpdatePhysics_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdatePhysics_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newx
	; LineNumber: 3077
	lda localVariable_UpdatePhysics_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdatePhysics_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_newy
	; LineNumber: 3078
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
	; LineNumber: 3080
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3080
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3080
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3081
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62598
UpdatePhysics_ctb62596: ;Main true block ;keep 
	; LineNumber: 3080
	lda localVariable_UpdatePhysics_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdatePhysics_edblock62598
	; LineNumber: 3082
UpdatePhysics_edblock62585
UpdatePhysics_edblock62545
UpdatePhysics_edblock62477
UpdatePhysics_edblock62341
UpdatePhysics_edblock62069
	; LineNumber: 3084
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdatePhysics_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdatePhysics_edblock62604
UpdatePhysics_ctb62602: ;Main true block ;keep 
	; LineNumber: 3083
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
UpdatePhysics_edblock62604
	; LineNumber: 3085
UpdatePhysics_edblock28151
	; LineNumber: 3086
	rts
end_procedure_UpdatePhysics
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFloater
	;    Procedure type : User-defined procedure
	; LineNumber: 3095
	; LineNumber: 3090
localVariable_UpdateFloater_waterId	dc.b	0
	; LineNumber: 3091
localVariable_UpdateFloater_colObj	dc.b	0
	; LineNumber: 3091
localVariable_UpdateFloater_eraseObj	dc.b	0
	; LineNumber: 3091
localVariable_UpdateFloater_z	dc.b	0
	; LineNumber: 3092
localVariable_UpdateFloater_oldx	dc.b	0
	; LineNumber: 3092
localVariable_UpdateFloater_oldy	dc.b	0
	; LineNumber: 3092
localVariable_UpdateFloater_newx	dc.b	0
	; LineNumber: 3092
localVariable_UpdateFloater_newy	dc.b	0
	; LineNumber: 3092
localVariable_UpdateFloater_moveDir	dc.b	0
	; LineNumber: 3093
localVariable_UpdateFloater_shift	dc.w	0
	; LineNumber: 3094
localVariable_UpdateFloater_floatDir	dc.b	0
	; LineNumber: 3088
localVariable_UpdateFloater_id	dc.b	0
UpdateFloater_block62607
UpdateFloater
	; LineNumber: 3096
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
UpdateFloater_val_var63301 = $88
	sta UpdateFloater_val_var63301
	lda globaltime
	sec
UpdateFloater_modulo63302
	sbc UpdateFloater_val_var63301
	bcs UpdateFloater_modulo63302
	adc UpdateFloater_val_var63301
	; cmp #$00 ignored
	bne UpdateFloater_localfailed63300
	jmp UpdateFloater_ctb62609
UpdateFloater_localfailed63300
	jmp UpdateFloater_edblock62611
UpdateFloater_ctb62609: ;Main true block ;keep 
	; LineNumber: 3096
	; LineNumber: 3097
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
	; LineNumber: 3098
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
	; LineNumber: 3099
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_waterId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63307
UpdateFloater_ctb63305: ;Main true block ;keep 
	; LineNumber: 3098
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_waterId
	lda objectList_gobject_gobject_physGravity,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_floatDir
UpdateFloater_edblock63307
	; LineNumber: 3100
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_localfailed63652
	jmp UpdateFloater_ctb63311
UpdateFloater_localfailed63652
	jmp UpdateFloater_edblock63313
UpdateFloater_ctb63311: ;Main true block ;keep 
	; LineNumber: 3100
	; LineNumber: 3101
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
	; LineNumber: 3102
	ldy #0   ; Force integer assignment, set y = 0 for values lower than 255
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3103
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3104
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3105
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transZ,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_z
	; LineNumber: 3106
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
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63660
	jmp UpdateFloater_localsuccess63659
UpdateFloater_localfailed63660: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63657
UpdateFloater_localsuccess63659: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_edblock63657
UpdateFloater_ctb63655: ;Main true block ;keep 
	; LineNumber: 3107
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_edblock63657
	; LineNumber: 3110
	
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
	; LineNumber: 3111
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
	; LineNumber: 3112
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63668
	jmp UpdateFloater_localsuccess63667
UpdateFloater_localfailed63668: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63665
UpdateFloater_localsuccess63667: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_edblock63665
UpdateFloater_ctb63663: ;Main true block ;keep 
	; LineNumber: 3111
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_edblock63665
	; LineNumber: 3114
	
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
	; LineNumber: 3115
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
	; LineNumber: 3116
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63676
	jmp UpdateFloater_localsuccess63675
UpdateFloater_localfailed63676: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63673
UpdateFloater_localsuccess63675: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_edblock63673
UpdateFloater_ctb63671: ;Main true block ;keep 
	; LineNumber: 3115
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_edblock63673
	; LineNumber: 3118
	
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
	; LineNumber: 3119
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
	; LineNumber: 3120
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_colObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFloater_localfailed63684
	jmp UpdateFloater_localsuccess63683
UpdateFloater_localfailed63684: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_eraseObj
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63681
UpdateFloater_localsuccess63683: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_floatDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_edblock63681
UpdateFloater_ctb63679: ;Main true block ;keep 
	; LineNumber: 3119
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_moveDir
UpdateFloater_edblock63681
	; LineNumber: 3122
	
; //TODO: AnimationSwimR
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFloater_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldx
	; LineNumber: 3123
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_oldy
	; LineNumber: 3125
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFloater_localfailed63837
	jmp UpdateFloater_ctb63687
UpdateFloater_localfailed63837
	jmp UpdateFloater_eblock63688
UpdateFloater_ctb63687: ;Main true block ;keep 
	; LineNumber: 3125
	; LineNumber: 3126
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
	; LineNumber: 3127
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63842
UpdateFloater_ctb63840: ;Main true block ;keep 
	; LineNumber: 3126
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_edblock63842
	; LineNumber: 3128
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
	; LineNumber: 3129
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3130
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3132
	jmp UpdateFloater_edblock63689
UpdateFloater_eblock63688
	; LineNumber: 3131
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFloater_localfailed63917
	jmp UpdateFloater_ctb63847
UpdateFloater_localfailed63917
	jmp UpdateFloater_eblock63848
UpdateFloater_ctb63847: ;Main true block ;keep 
	; LineNumber: 3132
	; LineNumber: 3133
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
	; LineNumber: 3134
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63922
UpdateFloater_ctb63920: ;Main true block ;keep 
	; LineNumber: 3133
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_edblock63922
	; LineNumber: 3135
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
	; LineNumber: 3136
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3137
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3140
	jmp UpdateFloater_edblock63849
UpdateFloater_eblock63848
	; LineNumber: 3139
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFloater_localfailed63957
	jmp UpdateFloater_ctb63927
UpdateFloater_localfailed63957
	jmp UpdateFloater_eblock63928
UpdateFloater_ctb63927: ;Main true block ;keep 
	; LineNumber: 3140
	; LineNumber: 3141
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
	; LineNumber: 3142
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63962
UpdateFloater_ctb63960: ;Main true block ;keep 
	; LineNumber: 3141
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_edblock63962
	; LineNumber: 3143
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
	; LineNumber: 3144
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3145
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3147
	jmp UpdateFloater_edblock63929
UpdateFloater_eblock63928
	; LineNumber: 3146
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateFloater_moveDir
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFloater_localfailed63977
	jmp UpdateFloater_ctb63967
UpdateFloater_localfailed63977
	jmp UpdateFloater_edblock63969
UpdateFloater_ctb63967: ;Main true block ;keep 
	; LineNumber: 3147
	; LineNumber: 3148
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
	; LineNumber: 3149
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63982
UpdateFloater_ctb63980: ;Main true block ;keep 
	; LineNumber: 3148
	lda localVariable_UpdateFloater_eraseObj
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_id
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isDyn
	; Calling storevariable on generic assign expression
	sta localVariable_DeletePos_isAnim
	jsr DeletePos
UpdateFloater_edblock63982
	; LineNumber: 3150
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_gravity
	; Calling storevariable on generic assign expression
	sta localVariable_ConvertShift_pos
	jsr ConvertShift
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_shift
	sty localVariable_UpdateFloater_shift+1
	; LineNumber: 3151
	lda localVariable_UpdateFloater_oldx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_UpdateFloater_shift+1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newx
	; LineNumber: 3152
	lda localVariable_UpdateFloater_oldy
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_UpdateFloater_shift
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_newy
	; LineNumber: 3153
UpdateFloater_edblock63969
UpdateFloater_edblock63929
UpdateFloater_edblock63849
UpdateFloater_edblock63689
	; LineNumber: 3155
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateFloater_newx
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateFloater_edblock63988
UpdateFloater_ctb63986: ;Main true block ;keep 
	; LineNumber: 3154
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
UpdateFloater_edblock63988
	; LineNumber: 3156
UpdateFloater_edblock63313
	; LineNumber: 3157
UpdateFloater_edblock62611
	; LineNumber: 3158
	rts
end_procedure_UpdateFloater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentWater
	;    Procedure type : User-defined procedure
	; LineNumber: 3163
	; LineNumber: 3162
localVariable_IncCurrentWater_laserEmitId	dc.b	0
	; LineNumber: 3160
localVariable_IncCurrentWater_id	dc.b	0
IncCurrentWater_block63991
IncCurrentWater
	; LineNumber: 3164
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_laserEmitId
	; LineNumber: 3165
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentWater_edblock63995
IncCurrentWater_ctb63993: ;Main true block ;keep 
	; LineNumber: 3165
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentWater_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentWater_edblock63995
	; LineNumber: 3167
	rts
end_procedure_IncCurrentWater
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateFontaine
	;    Procedure type : User-defined procedure
	; LineNumber: 3175
	; LineNumber: 3172
localVariable_UpdateFontaine_id1	dc.b	0
	; LineNumber: 3172
localVariable_UpdateFontaine_i	dc.b	0
	; LineNumber: 3172
localVariable_UpdateFontaine_x	dc.b	0
	; LineNumber: 3172
localVariable_UpdateFontaine_y	dc.b	0
	; LineNumber: 3173
localVariable_UpdateFontaine_pos	dc.b	0
	; LineNumber: 3173
localVariable_UpdateFontaine_id2	dc.b	0
	; LineNumber: 3174
localVariable_UpdateFontaine_laserEmitId	dc.b	0
	; LineNumber: 3170
localVariable_UpdateFontaine_id	dc.b	0
UpdateFontaine_block63998
UpdateFontaine
	; LineNumber: 3176
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_laserEmitId
	; LineNumber: 3177
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3178
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateFontaine_localfailed64146
	jmp UpdateFontaine_ctb64000
UpdateFontaine_localfailed64146
	jmp UpdateFontaine_eblock64001
UpdateFontaine_ctb64000: ;Main true block ;keep 
	; LineNumber: 3178
	; LineNumber: 3179
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateFontaine_edblock64151
UpdateFontaine_ctb64149: ;Main true block ;keep 
	; LineNumber: 3178
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_edblock64151
	; LineNumber: 3180
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3181
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
	; LineNumber: 3182
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3183
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3185
	jmp UpdateFontaine_edblock64002
UpdateFontaine_eblock64001
	; LineNumber: 3184
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateFontaine_localfailed64224
	jmp UpdateFontaine_ctb64156
UpdateFontaine_localfailed64224
	jmp UpdateFontaine_eblock64157
UpdateFontaine_ctb64156: ;Main true block ;keep 
	; LineNumber: 3185
	; LineNumber: 3186
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateFontaine_edblock64229
UpdateFontaine_ctb64227: ;Main true block ;keep 
	; LineNumber: 3185
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_edblock64229
	; LineNumber: 3187
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3188
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
	; LineNumber: 3189
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3190
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3192
	jmp UpdateFontaine_edblock64158
UpdateFontaine_eblock64157
	; LineNumber: 3191
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateFontaine_localfailed64263
	jmp UpdateFontaine_ctb64234
UpdateFontaine_localfailed64263
	jmp UpdateFontaine_eblock64235
UpdateFontaine_ctb64234: ;Main true block ;keep 
	; LineNumber: 3192
	; LineNumber: 3193
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateFontaine_edblock64268
UpdateFontaine_ctb64266: ;Main true block ;keep 
	; LineNumber: 3192
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_edblock64268
	; LineNumber: 3194
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3195
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
	; LineNumber: 3196
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3197
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3199
	jmp UpdateFontaine_edblock64236
UpdateFontaine_eblock64235
	; LineNumber: 3198
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateFontaine_edblock64275
UpdateFontaine_ctb64273: ;Main true block ;keep 
	; LineNumber: 3199
	; LineNumber: 3200
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateFontaine_edblock64287
UpdateFontaine_ctb64285: ;Main true block ;keep 
	; LineNumber: 3199
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_edblock64287
	; LineNumber: 3201
	lda localVariable_UpdateFontaine_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentWater_id
	jsr IncCurrentWater
	; LineNumber: 3202
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
	; LineNumber: 3203
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3204
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3205
UpdateFontaine_edblock64275
UpdateFontaine_edblock64236
UpdateFontaine_edblock64158
UpdateFontaine_edblock64002
	; LineNumber: 3206
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateFontaine_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateFontaine_edblock64293
UpdateFontaine_ctb64291: ;Main true block ;keep 
	; LineNumber: 3205
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateFontaine_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateFontaine_edblock64293
	; LineNumber: 3207
	rts
end_procedure_UpdateFontaine
	; NodeProcedureDecl 3
	; ***********  Defining procedure : IncCurrentLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3212
	; LineNumber: 3211
localVariable_IncCurrentLaser_laserEmitId	dc.b	0
	; LineNumber: 3209
localVariable_IncCurrentLaser_id	dc.b	0
IncCurrentLaser_block64296
IncCurrentLaser
	; LineNumber: 3213
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_laserEmitId
	; LineNumber: 3214
	; Binary clause Simplified: LESS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$1e;keep
	bcs IncCurrentLaser_edblock64300
IncCurrentLaser_ctb64298: ;Main true block ;keep 
	; LineNumber: 3214
	; Optimizer: a = a +/- b
	; Load Byte array
	; CAST type NADA
	ldx localVariable_IncCurrentLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	clc
	adc #$4
	sta laserList_laserObject_laserObject_currentLaser,x
IncCurrentLaser_edblock64300
	; LineNumber: 3216
	rts
end_procedure_IncCurrentLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : CalcFireExitDir
	;    Procedure type : User-defined procedure
	; LineNumber: 3221
	; LineNumber: 3220
localVariable_CalcFireExitDir_ret	dc.b	0
	; LineNumber: 3218
localVariable_CalcFireExitDir_xdir	dc.b	0
	; LineNumber: 3218
localVariable_CalcFireExitDir_ydir	dc.b	0
CalcFireExitDir_block64303
CalcFireExitDir
	; LineNumber: 3222
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_eblock64306
CalcFireExitDir_localsuccess64373: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_eblock64306
CalcFireExitDir_ctb64305: ;Main true block ;keep 
	; LineNumber: 3222
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_edblock64307
CalcFireExitDir_eblock64306
	; LineNumber: 3223
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_eblock64378
CalcFireExitDir_localsuccess64409: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_ydir
	; cmp #$00 ignored
	bne CalcFireExitDir_eblock64378
CalcFireExitDir_ctb64377: ;Main true block ;keep 
	; LineNumber: 3224
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_edblock64379
CalcFireExitDir_eblock64378
	; LineNumber: 3225
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_eblock64414
CalcFireExitDir_localsuccess64427: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne CalcFireExitDir_eblock64414
CalcFireExitDir_ctb64413: ;Main true block ;keep 
	; LineNumber: 3226
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_edblock64415
CalcFireExitDir_eblock64414
	; LineNumber: 3227
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_CalcFireExitDir_xdir
	; cmp #$00 ignored
	bne CalcFireExitDir_eblock64432
CalcFireExitDir_localsuccess64436: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_CalcFireExitDir_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne CalcFireExitDir_eblock64432
CalcFireExitDir_ctb64431: ;Main true block ;keep 
	; LineNumber: 3228
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
	jmp CalcFireExitDir_edblock64433
CalcFireExitDir_eblock64432
	; LineNumber: 3230
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_CalcFireExitDir_ret
CalcFireExitDir_edblock64433
CalcFireExitDir_edblock64415
CalcFireExitDir_edblock64379
CalcFireExitDir_edblock64307
	; LineNumber: 3233
	; LineNumber: 3233
	lda localVariable_CalcFireExitDir_ret
	rts
end_procedure_CalcFireExitDir
	; NodeProcedureDecl 3
	; ***********  Defining procedure : FireLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3251
	; LineNumber: 3237
localVariable_FireLaser_laserEmitId	dc.b	0
	; LineNumber: 3238
localVariable_FireLaser_laserId	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_collideId	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_collideId2	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_mirrorId	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_destroyAbleId	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_portalId	dc.b	0
	; LineNumber: 3239
localVariable_FireLaser_waterId	dc.b	0
	; LineNumber: 3240
localVariable_FireLaser_collide	dc.b	0
	; LineNumber: 3241
localVariable_FireLaser_controlId	dc.b	0
	; LineNumber: 3242
localVariable_FireLaser_laserx	dc.b	0
	; LineNumber: 3242
localVariable_FireLaser_lasery	dc.b	0
	; LineNumber: 3242
localVariable_FireLaser_lastx	dc.b	0
	; LineNumber: 3242
localVariable_FireLaser_lasty	dc.b	0
	; LineNumber: 3243
localVariable_FireLaser_countLaser	dc.b	0
	; LineNumber: 3244
localVariable_FireLaser_turn	dc.b	0
	; LineNumber: 3245
localVariable_FireLaser_targetPortal	dc.b	0
	; LineNumber: 3246
localVariable_FireLaser_dir	dc.b	0
	; LineNumber: 3247
localVariable_FireLaser_portalIdMove	dc.b	0
	; LineNumber: 3248
localVariable_FireLaser_tempx	dc.b	0
	; LineNumber: 3248
localVariable_FireLaser_tempy	dc.b	0
	; LineNumber: 3248
localVariable_FireLaser_tempx2	dc.b	0
	; LineNumber: 3248
localVariable_FireLaser_tempy2	dc.b	0
	; LineNumber: 3248
localVariable_FireLaser_pos	dc.b	0
	; LineNumber: 3249
localVariable_FireLaser_laserType	dc.b	0
	; LineNumber: 3250
localVariable_FireLaser_collideControlId	dc.b	0
	; LineNumber: 3235
localVariable_FireLaser_id	dc.b	0
	; LineNumber: 3235
localVariable_FireLaser_xpos	dc.b	0
	; LineNumber: 3235
localVariable_FireLaser_ypos	dc.b	0
	; LineNumber: 3235
localVariable_FireLaser_xdir	dc.b	0
	; LineNumber: 3235
localVariable_FireLaser_ydir	dc.b	0
FireLaser_block64439
FireLaser
	; LineNumber: 3253
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_onOff,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed118577
	jmp FireLaser_ctb64441
FireLaser_localfailed118577
	jmp FireLaser_edblock64443
FireLaser_ctb64441: ;Main true block ;keep 
	; LineNumber: 3253
	; LineNumber: 3254
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserEmitId
	; LineNumber: 3255
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
	; LineNumber: 3256
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserType
	; LineNumber: 3257
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
	bne FireLaser_edblock118582
FireLaser_ctb118580: ;Main true block ;keep 
	; LineNumber: 3257
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_controlId
FireLaser_edblock118582
	; LineNumber: 3259
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	; LineNumber: 3260
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3261
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3262
	lda localVariable_FireLaser_xpos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3263
	lda localVariable_FireLaser_ypos
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3264
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_countLaser
	; LineNumber: 3265
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_edblock118588
FireLaser_localsuccess118590: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne FireLaser_edblock118588
FireLaser_ctb118586: ;Main true block ;keep 
	; LineNumber: 3265
	; LineNumber: 3267
	lda #<sndLaser
	ldy #>sndLaser
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3267
	lda #$ff
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3267
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3268
FireLaser_edblock118588
	; LineNumber: 3269
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
	; LineNumber: 3270
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
	; LineNumber: 3272
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_edblock118595
FireLaser_localsuccess118597: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_edblock118595
FireLaser_ctb118593: ;Main true block ;keep 
	; LineNumber: 3271
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
FireLaser_edblock118595
	; LineNumber: 3273
FireLaser_while118599
FireLaser_loopstart118603
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	bne FireLaser_localfailed145366
FireLaser_localsuccess145367: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: GREATER
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_laserEmitId
	lda laserList_laserObject_laserObject_currentLaser,x 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_countLaser;keep
	bcc FireLaser_localfailed145366
	beq FireLaser_localfailed145366
	jmp FireLaser_ctb118600
FireLaser_localfailed145366
	jmp FireLaser_edblock118602
FireLaser_ctb118600: ;Main true block ;keep 
	; LineNumber: 3273
	; LineNumber: 3274
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
	; LineNumber: 3275
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
	; LineNumber: 3277
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed158750
FireLaser_localsuccess158751: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed158750
	jmp FireLaser_ctb145370
FireLaser_localfailed158750
	jmp FireLaser_eblock145371
FireLaser_ctb145370: ;Main true block ;keep 
	; LineNumber: 3276
	
; // destroyAbleId := GetObjectByPosFilterComp(laserx, lasery, 1, 1, 2); and destroyAbleId = $FF 
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collide
	jmp FireLaser_edblock145372
FireLaser_eblock145371
	; LineNumber: 3278
	; LineNumber: 3279
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
	bne FireLaser_localfailed165443
	jmp FireLaser_ctb158755
FireLaser_localfailed165443
	jmp FireLaser_edblock158757
FireLaser_ctb158755: ;Main true block ;keep 
	; LineNumber: 3279
	; LineNumber: 3280
	jsr GetId
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserId
	; LineNumber: 3281
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed168672
	jmp FireLaser_ctb165446
FireLaser_localfailed168672
	jmp FireLaser_edblock165448
FireLaser_ctb165446: ;Main true block ;keep 
	; LineNumber: 3280
	; LineNumber: 3282
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_eblock168676
FireLaser_localsuccess168687: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_eblock168676
FireLaser_ctb168675: ;Main true block ;keep 
	; LineNumber: 3281
	lda #$74
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_edblock168677
FireLaser_eblock168676
	; LineNumber: 3282
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_edblock168693
FireLaser_localsuccess168695: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_edblock168693
FireLaser_ctb168691: ;Main true block ;keep 
	; LineNumber: 3282
	lda #$75
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock168693
FireLaser_edblock168677
	; LineNumber: 3284
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_eblock168699
FireLaser_ctb168698: ;Main true block ;keep 
	; LineNumber: 3284
	; LineNumber: 3285
	lda #$8
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
	; LineNumber: 3287
	jmp FireLaser_edblock168700
FireLaser_eblock168699
	; LineNumber: 3287
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component0,x
FireLaser_edblock168700
	; LineNumber: 3289
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_component1,x
	; LineNumber: 3290
	lda #$2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component2,x
	; LineNumber: 3291
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_component3,x
	; LineNumber: 3292
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3293
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3294
	lda #$0
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transZ,x
	; LineNumber: 3295
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_laserTag,x
	; LineNumber: 3297
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3298
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_mirrorId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed170276
	jmp FireLaser_ctb168706
FireLaser_localfailed170276
	jmp FireLaser_edblock168708
FireLaser_ctb168706: ;Main true block ;keep 
	; LineNumber: 3298
	; LineNumber: 3299
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_mirrorId
	lda objectList_gobject_gobject_mirrorTurn,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_turn
	; LineNumber: 3301
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed171062
FireLaser_localsuccess171063: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed171062
	jmp FireLaser_ctb170279
FireLaser_localfailed171062
	jmp FireLaser_eblock170280
FireLaser_ctb170279: ;Main true block ;keep 
	; LineNumber: 3301
	; LineNumber: 3302
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_eblock171067
FireLaser_ctb171066: ;Main true block ;keep 
	; LineNumber: 3302
	; LineNumber: 3303
	
; // laser left
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3304
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3305
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3306
	jmp FireLaser_edblock171068
FireLaser_eblock171067
	; LineNumber: 3306
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_eblock171095
FireLaser_ctb171094: ;Main true block ;keep 
	; LineNumber: 3307
	; LineNumber: 3308
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3309
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3310
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3312
	jmp FireLaser_edblock171096
FireLaser_eblock171095
	; LineNumber: 3311
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_edblock171110
FireLaser_ctb171108: ;Main true block ;keep 
	; LineNumber: 3311
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock171110
FireLaser_edblock171096
FireLaser_edblock171068
	; LineNumber: 3314
	jmp FireLaser_edblock170281
FireLaser_eblock170280
	; LineNumber: 3314
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_xdir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_localfailed171480
FireLaser_localsuccess171481: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_localfailed171480
	jmp FireLaser_ctb171115
FireLaser_localfailed171480
	jmp FireLaser_eblock171116
FireLaser_ctb171115: ;Main true block ;keep 
	; LineNumber: 3315
	; LineNumber: 3316
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_eblock171485
FireLaser_ctb171484: ;Main true block ;keep 
	; LineNumber: 3316
	; LineNumber: 3317
	
; // laser right
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3318
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3319
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3320
	jmp FireLaser_edblock171486
FireLaser_eblock171485
	; LineNumber: 3320
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_eblock171513
FireLaser_ctb171512: ;Main true block ;keep 
	; LineNumber: 3321
	; LineNumber: 3322
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3323
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3324
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3326
	jmp FireLaser_edblock171514
FireLaser_eblock171513
	; LineNumber: 3325
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_edblock171528
FireLaser_ctb171526: ;Main true block ;keep 
	; LineNumber: 3325
	lda #$76
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock171528
FireLaser_edblock171514
FireLaser_edblock171486
	; LineNumber: 3328
	jmp FireLaser_edblock171117
FireLaser_eblock171116
	; LineNumber: 3328
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_localfailed171689
FireLaser_localsuccess171690: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed171689
	jmp FireLaser_ctb171533
FireLaser_localfailed171689
	jmp FireLaser_eblock171534
FireLaser_ctb171533: ;Main true block ;keep 
	; LineNumber: 3329
	; LineNumber: 3330
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_eblock171694
FireLaser_ctb171693: ;Main true block ;keep 
	; LineNumber: 3330
	; LineNumber: 3331
	
; // laser up
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3332
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3333
	lda #$7a
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3334
	jmp FireLaser_edblock171695
FireLaser_eblock171694
	; LineNumber: 3334
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_eblock171722
FireLaser_ctb171721: ;Main true block ;keep 
	; LineNumber: 3335
	; LineNumber: 3336
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3337
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3338
	lda #$7b
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3340
	jmp FireLaser_edblock171723
FireLaser_eblock171722
	; LineNumber: 3339
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_edblock171737
FireLaser_ctb171735: ;Main true block ;keep 
	; LineNumber: 3339
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock171737
FireLaser_edblock171723
FireLaser_edblock171695
	; LineNumber: 3342
	jmp FireLaser_edblock171535
FireLaser_eblock171534
	; LineNumber: 3342
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_edblock171744
FireLaser_localsuccess171794: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_ydir
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_edblock171744
FireLaser_ctb171742: ;Main true block ;keep 
	; LineNumber: 3343
	; LineNumber: 3344
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_eblock171798
FireLaser_ctb171797: ;Main true block ;keep 
	; LineNumber: 3344
	; LineNumber: 3345
	
; // laser down
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3346
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3347
	lda #$78
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3348
	jmp FireLaser_edblock171799
FireLaser_eblock171798
	; LineNumber: 3348
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne FireLaser_eblock171826
FireLaser_ctb171825: ;Main true block ;keep 
	; LineNumber: 3349
	; LineNumber: 3350
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3351
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3352
	lda #$79
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	; LineNumber: 3354
	jmp FireLaser_edblock171827
FireLaser_eblock171826
	; LineNumber: 3353
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_turn
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_edblock171841
FireLaser_ctb171839: ;Main true block ;keep 
	; LineNumber: 3353
	lda #$77
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock171841
FireLaser_edblock171827
FireLaser_edblock171799
	; LineNumber: 3355
FireLaser_edblock171744
FireLaser_edblock171535
FireLaser_edblock171117
FireLaser_edblock170281
	; LineNumber: 3356
FireLaser_edblock168708
	; LineNumber: 3357
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
	; LineNumber: 3358
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_edblock171847
FireLaser_ctb171845: ;Main true block ;keep 
	; LineNumber: 3358
	; LineNumber: 3359
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	bne FireLaser_eblock171875
FireLaser_localsuccess171886: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	beq FireLaser_eblock171875
FireLaser_ctb171874: ;Main true block ;keep 
	; LineNumber: 3358
	lda #$4d
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
	jmp FireLaser_edblock171876
FireLaser_eblock171875
	; LineNumber: 3359
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_xdir
	; cmp #$00 ignored
	beq FireLaser_edblock171892
FireLaser_localsuccess171894: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_FireLaser_ydir
	; cmp #$00 ignored
	bne FireLaser_edblock171892
FireLaser_ctb171890: ;Main true block ;keep 
	; LineNumber: 3359
	lda #$4c
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_laserId ; optimized, look out for bugs
	sta objectList_gobject_gobject_rendTilePos,x
FireLaser_edblock171892
FireLaser_edblock171876
	; LineNumber: 3361
FireLaser_edblock171847
	; LineNumber: 3362
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
	; LineNumber: 3363
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 3364
FireLaser_edblock165448
	; LineNumber: 3366
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
	; LineNumber: 3367
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172013
FireLaser_localsuccess172014: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172013
FireLaser_localsuccess172015: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172013
	jmp FireLaser_ctb171897
FireLaser_localfailed172013
	jmp FireLaser_edblock171899
FireLaser_ctb171897: ;Main true block ;keep 
	; LineNumber: 3367
	; LineNumber: 3368
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp localVariable_FireLaser_portalId;keep
	bne FireLaser_eblock172019
FireLaser_ctb172018: ;Main true block ;keep 
	; LineNumber: 3367
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
	jmp FireLaser_edblock172020
FireLaser_eblock172019
	; LineNumber: 3368
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_targetPortal
FireLaser_edblock172020
	; LineNumber: 3370
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3371
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3372
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne FireLaser_eblock172027
FireLaser_ctb172026: ;Main true block ;keep 
	; LineNumber: 3372
	; LineNumber: 3373
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3374
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3376
	jmp FireLaser_edblock172028
FireLaser_eblock172027
	; LineNumber: 3375
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne FireLaser_eblock172083
FireLaser_ctb172082: ;Main true block ;keep 
	; LineNumber: 3376
	; LineNumber: 3377
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3378
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3380
	jmp FireLaser_edblock172084
FireLaser_eblock172083
	; LineNumber: 3379
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne FireLaser_eblock172111
FireLaser_ctb172110: ;Main true block ;keep 
	; LineNumber: 3380
	; LineNumber: 3381
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3382
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3384
	jmp FireLaser_edblock172112
FireLaser_eblock172111
	; LineNumber: 3383
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_targetPortal
	lda objectList_gobject_gobject_portalFireExitDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne FireLaser_edblock172126
FireLaser_ctb172124: ;Main true block ;keep 
	; LineNumber: 3384
	; LineNumber: 3385
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_xdir
	; LineNumber: 3386
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_ydir
	; LineNumber: 3388
FireLaser_edblock172126
FireLaser_edblock172112
FireLaser_edblock172084
FireLaser_edblock172028
FireLaser_edblock171899
	; LineNumber: 3390
FireLaser_edblock158757
	; LineNumber: 3391
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lastx
	; LineNumber: 3392
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasty
	; LineNumber: 3393
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_startx
	lda localVariable_FireLaser_xdir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionX_offsetx
	jsr CalcPositionX
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_laserx
	; LineNumber: 3394
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_starty
	lda localVariable_FireLaser_ydir
	; Calling storevariable on generic assign expression
	sta localVariable_CalcPositionY_offsety
	jsr CalcPositionY
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_lasery
	; LineNumber: 3395
	; Test Inc dec D
	inc localVariable_FireLaser_countLaser
	; LineNumber: 3396
FireLaser_edblock145372
	; LineNumber: 3397
	jmp FireLaser_while118599
FireLaser_edblock118602
FireLaser_loopend118604
	; LineNumber: 3401
	; Binary clause Simplified: NOTEQUALS
	clc
	lda localVariable_FireLaser_collide
	; cmp #$00 ignored
	beq FireLaser_localfailed172421
FireLaser_localsuccess172422: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_collideId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172421
	jmp FireLaser_ctb172130
FireLaser_localfailed172421
	jmp FireLaser_edblock172132
FireLaser_ctb172130: ;Main true block ;keep 
	; LineNumber: 3401
	; LineNumber: 3402
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	beq FireLaser_edblock172427
FireLaser_ctb172425: ;Main true block ;keep 
	; LineNumber: 3402
	; LineNumber: 3403
	
; // Collide Actions
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_collideControlId
	; LineNumber: 3404
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_edblock172440
FireLaser_localsuccess172442: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideControlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq FireLaser_edblock172440
FireLaser_ctb172438: ;Main true block ;keep 
	; LineNumber: 3404
	; LineNumber: 3406
	lda #<sndExplosion
	ldy #>sndExplosion
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3406
	lda #$c8
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3406
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3407
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3408
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideControlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3409
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3410
	lda localVariable_FireLaser_id
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlCollideLaserTag,x
	; LineNumber: 3411
FireLaser_edblock172440
	; LineNumber: 3413
FireLaser_edblock172427
	; LineNumber: 3417
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
	bne FireLaser_localfailed172478
	jmp FireLaser_ctb172445
FireLaser_localfailed172478
	jmp FireLaser_edblock172447
FireLaser_ctb172445: ;Main true block ;keep 
	; LineNumber: 3417
	; LineNumber: 3418
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$2
FireLaser_val_var172496 = $88
	sta FireLaser_val_var172496
	lda globaltime
	sec
FireLaser_modulo172497
	sbc FireLaser_val_var172496
	bcs FireLaser_modulo172497
	adc FireLaser_val_var172496
	; cmp #$00 ignored
	bne FireLaser_localfailed172495
	jmp FireLaser_ctb172481
FireLaser_localfailed172495
	jmp FireLaser_edblock172483
FireLaser_ctb172481: ;Main true block ;keep 
	; LineNumber: 3418
	; LineNumber: 3419
	
; // PushPull
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3420
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3421
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
	; LineNumber: 3422
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
	; LineNumber: 3423
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
	; LineNumber: 3424
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_edblock172506
FireLaser_ctb172504: ;Main true block ;keep 
	; LineNumber: 3424
	; LineNumber: 3426
	lda #<sndShift
	ldy #>sndShift
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3426
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3426
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3427
	lda localVariable_FireLaser_laserx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3428
	lda localVariable_FireLaser_lasery
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3429
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
	; LineNumber: 3431
FireLaser_edblock172506
FireLaser_edblock172483
	; LineNumber: 3432
FireLaser_edblock172447
	; LineNumber: 3435
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
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne FireLaser_localfailed172535
	jmp FireLaser_ctb172510
FireLaser_localfailed172535
	jmp FireLaser_edblock172512
FireLaser_ctb172510: ;Main true block ;keep 
	; LineNumber: 3435
	; LineNumber: 3436
	; Binary clause Simplified: EQUALS
	clc
	; Modulo
	lda #$4
FireLaser_val_var172550 = $88
	sta FireLaser_val_var172550
	lda globaltime
	sec
FireLaser_modulo172551
	sbc FireLaser_val_var172550
	bcs FireLaser_modulo172551
	adc FireLaser_val_var172550
	; cmp #$00 ignored
	bne FireLaser_localfailed172549
	jmp FireLaser_ctb172539
FireLaser_localfailed172549
	jmp FireLaser_edblock172541
FireLaser_ctb172539: ;Main true block ;keep 
	; LineNumber: 3436
	; LineNumber: 3437
	
; // SwitchPos
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_id
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3438
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3439
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_collideId
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx2
	; LineNumber: 3440
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy2
	; LineNumber: 3442
	lda localVariable_FireLaser_tempx2
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3443
	lda localVariable_FireLaser_tempy2
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3445
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
	; LineNumber: 3447
	lda localVariable_FireLaser_tempx
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_collideId ; optimized, look out for bugs
	sta objectList_gobject_gobject_transX,x
	; LineNumber: 3448
	lda localVariable_FireLaser_tempy
	; Calling storevariable on generic assign expression
	sta objectList_gobject_gobject_transY,x
	; LineNumber: 3450
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
	; LineNumber: 3451
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
	; LineNumber: 3454
	lda #<sndTransport
	ldy #>sndTransport
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3454
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3454
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3456
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_edblock172556
FireLaser_ctb172554: ;Main true block ;keep 
	; LineNumber: 3456
	; LineNumber: 3457
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3458
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3459
FireLaser_edblock172556
	; LineNumber: 3460
FireLaser_edblock172541
	; LineNumber: 3461
FireLaser_edblock172512
	; LineNumber: 3464
	; Binary clause Simplified: EQUALS
	lda localVariable_FireLaser_laserType
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne FireLaser_localfailed172636
FireLaser_localsuccess172637: ;keep
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
	bne FireLaser_localfailed172636
	jmp FireLaser_ctb172560
FireLaser_localfailed172636
	jmp FireLaser_edblock172562
FireLaser_ctb172560: ;Main true block ;keep 
	; LineNumber: 3464
	; LineNumber: 3465
	
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
	; LineNumber: 3466
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	tax ; optimized x, look out for bugs L22 ORG 	ldx localVariable_FireLaser_pos
	lda mapback1,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172676
FireLaser_localsuccess172677: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_pos
	lda mapmain,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne FireLaser_localfailed172676
	jmp FireLaser_ctb172640
FireLaser_localfailed172676
	jmp FireLaser_edblock172642
FireLaser_ctb172640: ;Main true block ;keep 
	; LineNumber: 3466
	; LineNumber: 3467
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172693
FireLaser_localsuccess172694: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_localfailed172693
	jmp FireLaser_ctb172680
FireLaser_localfailed172693
	jmp FireLaser_eblock172681
FireLaser_ctb172680: ;Main true block ;keep 
	; LineNumber: 3467
	; LineNumber: 3468
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Compare with pure num / var optimization
	cmp lastPortal;keep
	bne FireLaser_eblock172698
FireLaser_ctb172697: ;Main true block ;keep 
	; LineNumber: 3467
	; Load Byte array
	; CAST type NADA
	lda portals +$1 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
	jmp FireLaser_edblock172699
FireLaser_eblock172698
	; LineNumber: 3467
	; Load Byte array
	; CAST type NADA
	lda portals +$0 ; array with const index optimization 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_portalIdMove
FireLaser_edblock172699
	; LineNumber: 3469
	; Load Byte array
	; CAST type NADA
	ldx localVariable_FireLaser_portalIdMove
	lda objectList_gobject_gobject_transX,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempx
	; LineNumber: 3470
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_transY,x 
	; Calling storevariable on generic assign expression
	sta localVariable_FireLaser_tempy
	; LineNumber: 3471
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
	; LineNumber: 3472
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
	; LineNumber: 3473
	lda localVariable_FireLaser_portalIdMove
	; Calling storevariable on generic assign expression
	sta lastPortal
	; LineNumber: 3475
	jmp FireLaser_edblock172682
FireLaser_eblock172681
	; LineNumber: 3475
	; LineNumber: 3476
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
	; LineNumber: 3477
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
	lda #$91
	; Calling storevariable on generic assign expression
	sta localVariable_PaintPos_col
	jsr PaintPos
	; LineNumber: 3478
FireLaser_edblock172682
	; LineNumber: 3480
	lda #<sndPortalActivate
	ldy #>sndPortalActivate
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3480
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3480
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3481
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_FireLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq FireLaser_edblock172708
FireLaser_ctb172706: ;Main true block ;keep 
	; LineNumber: 3481
	; LineNumber: 3482
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_FireLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	; LineNumber: 3483
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_b_release,x
	; LineNumber: 3484
FireLaser_edblock172708
	; LineNumber: 3485
FireLaser_edblock172642
	; LineNumber: 3486
FireLaser_edblock172562
	; LineNumber: 3487
FireLaser_edblock172132
	; LineNumber: 3488
FireLaser_edblock64443
	; LineNumber: 3489
	rts
end_procedure_FireLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateLaser
	;    Procedure type : User-defined procedure
	; LineNumber: 3500
	; LineNumber: 3494
localVariable_UpdateLaser_id1	dc.b	0
	; LineNumber: 3494
localVariable_UpdateLaser_i	dc.b	0
	; LineNumber: 3494
localVariable_UpdateLaser_x	dc.b	0
	; LineNumber: 3494
localVariable_UpdateLaser_y	dc.b	0
	; LineNumber: 3495
localVariable_UpdateLaser_pos	dc.b	0
	; LineNumber: 3495
localVariable_UpdateLaser_id2	dc.b	0
	; LineNumber: 3496
localVariable_UpdateLaser_exit	dc.b	0
	; LineNumber: 3497
localVariable_UpdateLaser_controlId	dc.b	0
	; LineNumber: 3498
localVariable_UpdateLaser_joy	dc.b	0
	; LineNumber: 3499
localVariable_UpdateLaser_laserEmitId	dc.b	0
	; LineNumber: 3492
localVariable_UpdateLaser_id	dc.b	0
UpdateLaser_block172711
UpdateLaser
	; LineNumber: 3501
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3502
	lda joy1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
	; LineNumber: 3503
	lda #$ff
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3504
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_laserEmitId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_laserEmitId
	; LineNumber: 3505
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
	bne UpdateLaser_edblock172715
UpdateLaser_ctb172713: ;Main true block ;keep 
	; LineNumber: 3505
	; LineNumber: 3506
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_controlId
	; LineNumber: 3507
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_edblock172728
UpdateLaser_localsuccess172730: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_edblock172728
UpdateLaser_ctb172726: ;Main true block ;keep 
	; LineNumber: 3506
	lda simJoy
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_joy
UpdateLaser_edblock172728
	; LineNumber: 3508
UpdateLaser_edblock172715
	; LineNumber: 3509
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed173527
UpdateLaser_localsuccess173528: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda activeChar
	; Compare with pure num / var optimization
	cmp localVariable_UpdateLaser_controlId;keep
	beq UpdateLaser_localfailed173527
UpdateLaser_localsuccess173529: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_localfailed173527
	jmp UpdateLaser_ctb172733
UpdateLaser_localfailed173527
	jmp UpdateLaser_eblock172734
UpdateLaser_ctb172733: ;Main true block ;keep 
	; LineNumber: 3510
	jmp UpdateLaser_edblock172735
UpdateLaser_eblock172734
	; LineNumber: 3511
	; LineNumber: 3512
	; Binary clause Simplified: NOTEQUALS
	lda localVariable_UpdateLaser_controlId
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq UpdateLaser_edblock173535
UpdateLaser_ctb173533: ;Main true block ;keep 
	; LineNumber: 3512
	; LineNumber: 3513
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_waitRelease,x 
	; cmp #$00 ignored
	beq UpdateLaser_edblock173587
UpdateLaser_ctb173585: ;Main true block ;keep 
	; LineNumber: 3513
	; LineNumber: 3514
	; Binary clause Simplified: NOTEQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_controlId
	lda controlList_controlObject_controlObject_b_release,x 
	; cmp #$00 ignored
	beq UpdateLaser_eblock173612
UpdateLaser_ctb173611: ;Main true block ;keep 
	; LineNumber: 3513
	
; // do nothin
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_waitRelease,x
	jmp UpdateLaser_edblock173613
UpdateLaser_eblock173612
	; LineNumber: 3514
	; LineNumber: 3516
	; Binary clause Simplified: NOTEQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	beq UpdateLaser_edblock173627
UpdateLaser_ctb173625: ;Main true block ;keep 
	; LineNumber: 3515
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_b_release,x
UpdateLaser_edblock173627
	; LineNumber: 3517
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_exit
	; LineNumber: 3518
UpdateLaser_edblock173613
	; LineNumber: 3519
UpdateLaser_edblock173587
	; LineNumber: 3520
UpdateLaser_edblock173535
	; LineNumber: 3522
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_UpdateLaser_exit
	; cmp #$00 ignored
	bne UpdateLaser_localfailed173977
	jmp UpdateLaser_ctb173631
UpdateLaser_localfailed173977
	jmp UpdateLaser_edblock173633
UpdateLaser_ctb173631: ;Main true block ;keep 
	; LineNumber: 3522
	; LineNumber: 3523
	lda #$ff
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3524
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174148
UpdateLaser_localsuccess174149: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174148
UpdateLaser_localsuccess174150: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateLaser_localfailed174148
	jmp UpdateLaser_ctb173980
UpdateLaser_localfailed174148: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateLaser_localfailed174147
	jmp UpdateLaser_ctb173980
UpdateLaser_localfailed174147
	jmp UpdateLaser_eblock173981
UpdateLaser_ctb173980: ;Main true block ;keep 
	; LineNumber: 3524
	; LineNumber: 3525
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$3;keep
	beq UpdateLaser_edblock174155
UpdateLaser_ctb174153: ;Main true block ;keep 
	; LineNumber: 3524
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_edblock174155
	; LineNumber: 3526
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3527
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
	; LineNumber: 3528
	lda #$3
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3529
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3531
	jmp UpdateLaser_edblock173982
UpdateLaser_eblock173981
	; LineNumber: 3530
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174238
UpdateLaser_localsuccess174239: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174238
UpdateLaser_localsuccess174240: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174238
	jmp UpdateLaser_ctb174160
UpdateLaser_localfailed174238: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	bne UpdateLaser_localfailed174237
	jmp UpdateLaser_ctb174160
UpdateLaser_localfailed174237
	jmp UpdateLaser_eblock174161
UpdateLaser_ctb174160: ;Main true block ;keep 
	; LineNumber: 3531
	; LineNumber: 3532
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateLaser_edblock174245
UpdateLaser_ctb174243: ;Main true block ;keep 
	; LineNumber: 3531
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_edblock174245
	; LineNumber: 3533
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3534
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
	; LineNumber: 3535
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3536
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3538
	jmp UpdateLaser_edblock174162
UpdateLaser_eblock174161
	; LineNumber: 3537
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174283
UpdateLaser_localsuccess174284: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174283
UpdateLaser_localsuccess174285: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$2
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateLaser_localfailed174283
	jmp UpdateLaser_ctb174250
UpdateLaser_localfailed174283: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateLaser_localfailed174282
	jmp UpdateLaser_ctb174250
UpdateLaser_localfailed174282
	jmp UpdateLaser_eblock174251
UpdateLaser_ctb174250: ;Main true block ;keep 
	; LineNumber: 3538
	; LineNumber: 3539
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	beq UpdateLaser_edblock174290
UpdateLaser_ctb174288: ;Main true block ;keep 
	; LineNumber: 3538
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_edblock174290
	; LineNumber: 3540
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3541
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
	; LineNumber: 3542
	lda #$1
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3543
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3545
	jmp UpdateLaser_edblock174252
UpdateLaser_eblock174251
	; LineNumber: 3544
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$a;keep
	bne UpdateLaser_localfailed174305
UpdateLaser_localsuccess174306: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateLaser_localfailed174305
UpdateLaser_localsuccess174307: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda localVariable_UpdateLaser_joy
	and #$4
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateLaser_localfailed174305
	jmp UpdateLaser_ctb174295
UpdateLaser_localfailed174305: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserType,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateLaser_edblock174297
UpdateLaser_ctb174295: ;Main true block ;keep 
	; LineNumber: 3545
	; LineNumber: 3546
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_lastLaserDir,x 
	; Compare with pure num / var optimization
	cmp #$7;keep
	beq UpdateLaser_edblock174312
UpdateLaser_ctb174310: ;Main true block ;keep 
	; LineNumber: 3545
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_edblock174312
	; LineNumber: 3547
	lda localVariable_UpdateLaser_id
	; Calling storevariable on generic assign expression
	sta localVariable_IncCurrentLaser_id
	jsr IncCurrentLaser
	; LineNumber: 3548
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
	; LineNumber: 3549
	lda #$7
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_laserDir,x
	; LineNumber: 3550
	; Load Byte array
	; CAST type NADA
	; Calling storevariable on generic assign expression
	sta laserList_laserObject_laserObject_lastLaserDir,x
	; LineNumber: 3551
UpdateLaser_edblock174297
UpdateLaser_edblock174252
UpdateLaser_edblock174162
UpdateLaser_edblock173982
	; LineNumber: 3552
	; Binary clause Simplified: EQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateLaser_laserEmitId
	lda laserList_laserObject_laserObject_laserDir,x 
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bne UpdateLaser_edblock174318
UpdateLaser_ctb174316: ;Main true block ;keep 
	; LineNumber: 3551
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateLaser_laserEmitId ; optimized, look out for bugs
	sta laserList_laserObject_laserObject_currentLaser,x
UpdateLaser_edblock174318
	; LineNumber: 3553
UpdateLaser_edblock173633
	; LineNumber: 3554
UpdateLaser_edblock172735
	; LineNumber: 3555
	rts
end_procedure_UpdateLaser
	; NodeProcedureDecl 3
	; ***********  Defining procedure : UpdateObject
	;    Procedure type : User-defined procedure
	; LineNumber: 3561
	; LineNumber: 3560
localVariable_UpdateObject_controlId	dc.b	0
	; LineNumber: 3558
localVariable_UpdateObject_id	dc.b	0
UpdateObject_block174321
UpdateObject
	; LineNumber: 3562
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
	bne UpdateObject_edblock174325
UpdateObject_ctb174323: ;Main true block ;keep 
	; LineNumber: 3561
	; LineNumber: 3563
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateLaser_id
	jsr UpdateLaser
	; LineNumber: 3564
UpdateObject_edblock174325
	; LineNumber: 3565
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
	bne UpdateObject_edblock174331
UpdateObject_ctb174329: ;Main true block ;keep 
	; LineNumber: 3564
	; LineNumber: 3566
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFontaine_id
	jsr UpdateFontaine
	; LineNumber: 3567
UpdateObject_edblock174331
	; LineNumber: 3569
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne UpdateObject_localfailed174425
	jmp UpdateObject_ctb174335
UpdateObject_localfailed174425
	jmp UpdateObject_eblock174336
UpdateObject_ctb174335: ;Main true block ;keep 
	; LineNumber: 3569
	; LineNumber: 3570
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
	bne UpdateObject_edblock174430
UpdateObject_ctb174428: ;Main true block ;keep 
	; LineNumber: 3570
	; LineNumber: 3571
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdatePhysics_id
	jsr UpdatePhysics
	; LineNumber: 3572
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3573
UpdateObject_edblock174430
	; LineNumber: 3574
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
	bne UpdateObject_edblock174436
UpdateObject_ctb174434: ;Main true block ;keep 
	; LineNumber: 3573
	; LineNumber: 3575
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateFloater_id
	jsr UpdateFloater
	; LineNumber: 3576
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3577
UpdateObject_edblock174436
	; LineNumber: 3579
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
	bne UpdateObject_localfailed174467
	jmp UpdateObject_ctb174440
UpdateObject_localfailed174467
	jmp UpdateObject_edblock174442
UpdateObject_ctb174440: ;Main true block ;keep 
	; LineNumber: 3579
	; LineNumber: 3580
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3581
	; Binary clause Simplified: GREATEREQUAL
	; Load Byte array
	; CAST type NADA
	lda objectList_gobject_gobject_moves,x 
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc UpdateObject_eblock174471
UpdateObject_localsuccess174482: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	clc
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_b_fallDown,x 
	; cmp #$00 ignored
	bne UpdateObject_eblock174471
UpdateObject_ctb174470: ;Main true block ;keep 
	; LineNumber: 3580
	lda #$1
	; Calling storevariable on generic assign expression
	sta needExtraCycle
	jmp UpdateObject_edblock174472
UpdateObject_eblock174471
	; LineNumber: 3582
	; LineNumber: 3583
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_edblock174488
UpdateObject_localsuccess174490: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_edblock174488
UpdateObject_ctb174486: ;Main true block ;keep 
	; LineNumber: 3583
	; LineNumber: 3585
	lda #<sndExplosion
	ldy #>sndExplosion
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3585
	lda #$c8
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3585
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3586
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3587
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3588
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3590
UpdateObject_edblock174488
	; LineNumber: 3592
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3593
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3594
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3595
UpdateObject_edblock174472
	; LineNumber: 3596
UpdateObject_edblock174442
	; LineNumber: 3598
	jmp UpdateObject_edblock174337
UpdateObject_eblock174336
	; LineNumber: 3597
	; LineNumber: 3599
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
	bne UpdateObject_edblock174496
UpdateObject_ctb174494: ;Main true block ;keep 
	; LineNumber: 3599
	; LineNumber: 3600
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_id
	lda objectList_gobject_gobject_controlId,x 
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_controlId
	; LineNumber: 3601
	
; //			retryPressed := $FF;
	; Binary clause Simplified: NOTEQUALS
	clc
	lda retryPressed
	; cmp #$00 ignored
	beq UpdateObject_edblock174509
UpdateObject_localsuccess174511: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	; Load Byte array
	; CAST type NADA
	ldx localVariable_UpdateObject_controlId
	lda controlList_controlObject_controlObject_controlState,x 
	; Compare with pure num / var optimization
	cmp #$5;keep
	beq UpdateObject_edblock174509
UpdateObject_ctb174507: ;Main true block ;keep 
	; LineNumber: 3601
	; LineNumber: 3603
	lda #<sndExplosion
	ldy #>sndExplosion
	; Calling storevariable on generic assign expression
	sta psnd+6
	sty psnd+7
	; LineNumber: 3603
	lda #$c8
	; Calling storevariable on generic assign expression
	sta vsnd+$3
	; LineNumber: 3603
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$3
	; LineNumber: 3604
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_b_physFallDown,x
	; LineNumber: 3605
	lda #$5
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_controlId ; optimized, look out for bugs
	sta controlList_controlObject_controlObject_controlState,x
	; LineNumber: 3606
	lda #$0
	; Calling storevariable on generic assign expression
	sta controlList_controlObject_controlObject_controlJumpStep,x
	; LineNumber: 3608
UpdateObject_edblock174509
	; LineNumber: 3610
	
; //ProcessDestroyObj(id);
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_InputControl_id
	jsr InputControl
	; LineNumber: 3611
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateControl_id
	jsr UpdateControl
	; LineNumber: 3612
	lda localVariable_UpdateObject_id
	; Calling storevariable on generic assign expression
	sta localVariable_ProcessBackObj_id
	jsr ProcessBackObj
	; LineNumber: 3613
UpdateObject_edblock174496
	; LineNumber: 3614
UpdateObject_edblock174337
	; LineNumber: 3615
	lda #$0
	; Calling storevariable on generic assign expression
	ldx localVariable_UpdateObject_id ; optimized, look out for bugs
	sta objectList_gobject_gobject_moves,x
	; LineNumber: 3616
	rts
end_procedure_UpdateObject
	; NodeProcedureDecl 3
	; ***********  Defining procedure : Update
	;    Procedure type : User-defined procedure
	; LineNumber: 3622
	; LineNumber: 3620
localVariable_Update_i	dc.b	0
	; LineNumber: 3621
localVariable_Update_id	dc.b	0
Update_block174513
Update
	; LineNumber: 3623
	jsr ClearAllLaser
	; LineNumber: 3624
	lda 197
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
	; LineNumber: 3625
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_edblock174517
Update_ctb174515: ;Main true block ;keep 
	; LineNumber: 3625
	; LineNumber: 3627
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$20;keep
	bne Update_edblock174529
Update_ctb174527: ;Main true block ;keep 
	; LineNumber: 3627
	; LineNumber: 3629
	
; //Key::Read();
	lda #<sndPlayerChange
	ldy #>sndPlayerChange
	; Calling storevariable on generic assign expression
	sta psnd+4
	sty psnd+5
	; LineNumber: 3629
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$2
	; LineNumber: 3629
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$2
	; LineNumber: 3630
	jsr SwapActiveChar
	; LineNumber: 3631
Update_edblock174529
	; LineNumber: 3632
Update_edblock174517
	; LineNumber: 3633
	; Binary clause Simplified: EQUALS
	lda localVariable_Update_i
	; Compare with pure num / var optimization
	cmp #$3f;keep
	bne Update_edblock174535
Update_ctb174533: ;Main true block ;keep 
	; LineNumber: 3633
	; LineNumber: 3634
	lda #$1
	; Calling storevariable on generic assign expression
	sta retryPressed
	; LineNumber: 3635
Update_edblock174535
	; LineNumber: 3636
	; Binary clause Simplified: EQUALS
	clc
	lda cycle
	; cmp #$00 ignored
	bne Update_eblock174540
Update_localsuccess174544: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: NOTEQUALS
	clc
	lda needExtraCycle
	; cmp #$00 ignored
	beq Update_eblock174540
Update_ctb174539: ;Main true block ;keep 
	; LineNumber: 3635
	lda #$1
	; Calling storevariable on generic assign expression
	sta cycle
	jmp Update_edblock174541
Update_eblock174540
	; LineNumber: 3635
	lda #$0
	; Calling storevariable on generic assign expression
	sta cycle
Update_edblock174541
	; LineNumber: 3642
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_Update_i
Update_forloop174547
	; LineNumber: 3638
	; LineNumber: 3639
	; Load Byte array
	; CAST type NADA
	ldx localVariable_Update_i
	lda dynObjectList,x 
	; Calling storevariable on generic assign expression
	sta localVariable_Update_id
	; LineNumber: 3640
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateObject_id
	jsr UpdateObject
	; LineNumber: 3641
Update_loopstart174548
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_Update_i
	lda countDyn
	cmp localVariable_Update_i ;keep
	bne Update_forloop174547
Update_loopdone174552: ;keep
Update_loopend174549
	; LineNumber: 3643
	; Binary clause Simplified: EQUALS
	lda cycle
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne Update_edblock174556
Update_ctb174554: ;Main true block ;keep 
	; LineNumber: 3642
	lda #$0
	; Calling storevariable on generic assign expression
	sta needExtraCycle
Update_edblock174556
	; LineNumber: 3645
	rts
end_procedure_Update
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitAnimations
	;    Procedure type : User-defined procedure
	; LineNumber: 3653
	; LineNumber: 3651
localVariable_InitAnimations_pa	= $72
InitAnimations_block174559
InitAnimations
	; LineNumber: 3686
	
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
	; LineNumber: 3687
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$80
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3688
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$84
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3689
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$88
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3690
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$8c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3691
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3692
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3693
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3694
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3696
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$08
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3697
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$90
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3698
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$94
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3699
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$98
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3700
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$9c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3701
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3702
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3703
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3704
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3706
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$10
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3707
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3708
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3709
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3710
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3711
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3712
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3713
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3714
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3716
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$18
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3717
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3718
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3719
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3720
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3721
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3722
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3723
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3724
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3726
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$20
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3727
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$a8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3728
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3729
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3730
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3731
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3732
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3733
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3734
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3736
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$28
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3737
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$ac
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3738
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3739
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3740
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3741
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3742
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3743
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3744
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3746
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$30
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3747
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$b4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3748
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$b8
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3749
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3750
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3751
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3752
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3753
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3754
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$3
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3756
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$38
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3757
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$6b
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3758
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$6c
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3759
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$6d
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3760
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$6e
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3761
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3762
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3763
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3764
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$2
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3766
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$40
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3767
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$63
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3768
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3769
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3770
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3771
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3772
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3773
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3774
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3776
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$48
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3777
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$64
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3778
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3779
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3780
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3781
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3782
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3783
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3784
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3786
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$50
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3787
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$67
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3788
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3789
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3790
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3791
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3792
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3793
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3794
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3796
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$58
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3797
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$66
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3798
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$ff
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3799
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3800
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3801
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3802
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3803
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3804
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3806
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$60
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3807
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3808
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3809
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3810
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3811
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3812
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3813
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3814
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3816
	; INTEGER optimization: a=b+c 
	lda #<animList
	clc
	adc #$68
	sta localVariable_InitAnimations_pa+0
	lda #>animList
	adc #$00
	sta localVariable_InitAnimations_pa+1
	; LineNumber: 3817
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$0 ; optimized, look out for bugs
	lda #$51
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3818
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$1 ; optimized, look out for bugs
	lda #$50
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3819
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$2 ; optimized, look out for bugs
	lda #$4f
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3820
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$3 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3821
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$4 ; optimized, look out for bugs
	lda #$0
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3822
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$5 ; optimized, look out for bugs
	lda #$4
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3823
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$6 ; optimized, look out for bugs
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3824
	; Store Variable simplified optimization : right-hand term is pure
	ldy #$7 ; optimized, look out for bugs
	lda #$1
	sta (localVariable_InitAnimations_pa),y
	; LineNumber: 3827
	rts
end_procedure_InitAnimations
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitialiseTables
	;    Procedure type : User-defined procedure
	; LineNumber: 3829
InitialiseTables
	; LineNumber: 3832
	
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
InitialiseTables_dtloop174574
	tay
	lda scr1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174575
	iny
InitialiseTables_dtnooverflow174575
	sta scr1,x
	tya
	sta scr1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174574
	; LineNumber: 3833
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$1e00
	lda #<$1e00
	ldx #0
	sta scr2,x   ; Address of table
	tya
	sta scr2+1,x
InitialiseTables_dtloop174576
	tay
	lda scr2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174577
	iny
InitialiseTables_dtnooverflow174577
	sta scr2,x
	tya
	sta scr2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174576
	; LineNumber: 3834
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9400
	lda #<$9400
	ldx #0
	sta col1,x   ; Address of table
	tya
	sta col1+1,x
InitialiseTables_dtloop174578
	tay
	lda col1,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174579
	iny
InitialiseTables_dtnooverflow174579
	sta col1,x
	tya
	sta col1+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174578
	; LineNumber: 3835
	; ----------
	; DefineAddressTable address, StartValue, IncrementValue, TableSize
	ldy #>$9600
	lda #<$9600
	ldx #0
	sta col2,x   ; Address of table
	tya
	sta col2+1,x
InitialiseTables_dtloop174580
	tay
	lda col2,x
	inx
	inx
	clc
	adc #$14
	bcc InitialiseTables_dtnooverflow174581
	iny
InitialiseTables_dtnooverflow174581
	sta col2,x
	tya
	sta col2+1,x
	cpx #$26
	bcc InitialiseTables_dtloop174580
	; LineNumber: 3836
	rts
end_procedure_InitialiseTables
	; NodeProcedureDecl 3
	; ***********  Defining procedure : InitScreen
	;    Procedure type : User-defined procedure
	; LineNumber: 3839
InitScreen
	; LineNumber: 3841
	
; // set the screen and border colour
	; Assigning memory location
	lda #$94
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 3842
	
; // width
	; Assigning memory location
	lda #$26
	; Calling storevariable on generic assign expression
	sta $9003
	; LineNumber: 3843
	
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
	; LineNumber: 3844
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
	; LineNumber: 3845
screenmemory =  $fd
colormemory =  $fb
	; LineNumber: 3849
	
; //	SCREEN_BG_COLOR := %00001110;
	; Assigning memory location
	lda #$8
	; Calling storevariable on generic assign expression
	sta $900f
	; LineNumber: 3850
	; Assigning memory location
	lda #$ce
	; Calling storevariable on generic assign expression
	sta $9005
	; LineNumber: 3851
	; Assigning memory location
	; 8 bit binop
	; Add/sub where right value is constant number
	lda $9002
	and #$7f
	 ; end add / sub var with constant
	; Calling storevariable on generic assign expression
	sta $9002
	; LineNumber: 3852
	jsr InitialiseTables
	; LineNumber: 3853
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
	; LineNumber: 3863
	; LineNumber: 3860
localVariable_UpdateMain_levStr		dc.b	"00"
	dc.b	0
	; LineNumber: 3861
localVariable_UpdateMain_levStr2		dc.b	"00"
	dc.b	0
	; LineNumber: 3862
localVariable_UpdateMain_pos	dc.b	0
	; LineNumber: 3863
localVariable_UpdateMain_len	dc.b	0
UpdateMain_block174583
UpdateMain
	; LineNumber: 3865
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne UpdateMain_localfailed174814
	jmp UpdateMain_ctb174585
UpdateMain_localfailed174814
	jmp UpdateMain_eblock174586
UpdateMain_ctb174585: ;Main true block ;keep 
	; LineNumber: 3865
	; LineNumber: 3866
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_eblock174818
UpdateMain_ctb174817: ;Main true block ;keep 
	; LineNumber: 3865
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_edblock174819
UpdateMain_eblock174818
	; LineNumber: 3865
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_edblock174819
	; LineNumber: 3867
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
	; LineNumber: 3868
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc UpdateMain_eblock174828
UpdateMain_ctb174827: ;Main true block ;keep 
	; LineNumber: 3867
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
	jmp UpdateMain_edblock174829
UpdateMain_eblock174828
	; LineNumber: 3867
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_UpdateMain_pos
UpdateMain_edblock174829
	; LineNumber: 3869
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
	; LineNumber: 3871
	
; //TODO
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_edblock174839
UpdateMain_ctb174837: ;Main true block ;keep 
	; LineNumber: 3871
	; LineNumber: 3872
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_localfailed174867
	jmp UpdateMain_ctb174863
UpdateMain_localfailed174867: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_edblock174865
UpdateMain_ctb174863: ;Main true block ;keep 
	; LineNumber: 3871
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
UpdateMain_edblock174865
	; LineNumber: 3873
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_edblock174872
UpdateMain_ctb174870: ;Main true block ;keep 
	; LineNumber: 3872
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
UpdateMain_edblock174872
	; LineNumber: 3874
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne UpdateMain_localfailed174880
	jmp UpdateMain_ctb174876
UpdateMain_localfailed174880: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_edblock174878
UpdateMain_ctb174876: ;Main true block ;keep 
	; LineNumber: 3873
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
UpdateMain_edblock174878
	; LineNumber: 3875
	lda #$2
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3876
UpdateMain_edblock174839
	; LineNumber: 3877
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$8
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$8;keep
	bne UpdateMain_edblock174885
UpdateMain_ctb174883: ;Main true block ;keep 
	; LineNumber: 3877
	; LineNumber: 3878
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_edblock174903
UpdateMain_ctb174901: ;Main true block ;keep 
	; LineNumber: 3877
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_edblock174903
	; LineNumber: 3879
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_edblock174909
UpdateMain_ctb174907: ;Main true block ;keep 
	; LineNumber: 3878
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_DecLevel_mode
	jsr DecLevel
UpdateMain_edblock174909
	; LineNumber: 3880
UpdateMain_edblock174885
	; LineNumber: 3881
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$1
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_edblock174915
UpdateMain_ctb174913: ;Main true block ;keep 
	; LineNumber: 3881
	; LineNumber: 3882
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne UpdateMain_edblock174933
UpdateMain_ctb174931: ;Main true block ;keep 
	; LineNumber: 3881
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_edblock174933
	; LineNumber: 3883
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne UpdateMain_edblock174939
UpdateMain_ctb174937: ;Main true block ;keep 
	; LineNumber: 3882
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_IncLevel_mode
	jsr IncLevel
UpdateMain_edblock174939
	; LineNumber: 3884
UpdateMain_edblock174915
	; LineNumber: 3886
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
	; LineNumber: 3887
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
	; LineNumber: 3889
	lda #$5
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3891
	jmp UpdateMain_edblock174587
UpdateMain_eblock174586
	; LineNumber: 3891
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne UpdateMain_edblock174946
UpdateMain_ctb174944: ;Main true block ;keep 
	; LineNumber: 3892
	; LineNumber: 3893
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	lda joy1
	and #$10
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$10;keep
	bne UpdateMain_edblock174998
UpdateMain_ctb174996: ;Main true block ;keep 
	; LineNumber: 3893
	; LineNumber: 3894
	; Binary clause Simplified: EQUALS
	clc
	lda menuItem
	; cmp #$00 ignored
	bne UpdateMain_eblock175023
UpdateMain_ctb175022: ;Main true block ;keep 
	; LineNumber: 3893
	lda #$1
	; Calling storevariable on generic assign expression
	sta state
	jmp UpdateMain_edblock175024
UpdateMain_eblock175023
	; LineNumber: 3894
	; Binary clause Simplified: EQUALS
	lda menuItem
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne UpdateMain_edblock175038
UpdateMain_ctb175036: ;Main true block ;keep 
	; LineNumber: 3894
	lda #$0
	; Calling storevariable on generic assign expression
	sta state
UpdateMain_edblock175038
UpdateMain_edblock175024
	; LineNumber: 3896
UpdateMain_edblock174998
	; LineNumber: 3897
	lda #$2
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_len
	lda menuItem
	; Calling storevariable on generic assign expression
	sta localVariable_MenuMove_oldMenuItem
	jsr MenuMove
	; LineNumber: 3898
UpdateMain_edblock174946
UpdateMain_edblock174587
	; LineNumber: 3899
	rts
end_procedure_UpdateMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : OpenMain
	;    Procedure type : User-defined procedure
	; LineNumber: 3907
	; LineNumber: 3903
localVariable_OpenMain_i	dc.b	0
	; LineNumber: 3904
localVariable_OpenMain_levStr		dc.b	"00"
	dc.b	0
	; LineNumber: 3905
localVariable_OpenMain_pos	dc.b	0
	; LineNumber: 3906
localVariable_OpenMain_len	dc.b	0
OpenMain_block175041
OpenMain
	; LineNumber: 3909
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 3910
	; Calling storevariable on generic assign expression
	sta menuItem
	; LineNumber: 3911
	lda #$30
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_levStr+$0
	; LineNumber: 3912
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne OpenMain_localfailed175138
	jmp OpenMain_ctb175043
OpenMain_localfailed175138
	jmp OpenMain_eblock175044
OpenMain_ctb175043: ;Main true block ;keep 
	; LineNumber: 3911
	; LineNumber: 3914
	; Binary clause Simplified: EQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	bne OpenMain_localfailed175166
	jmp OpenMain_ctb175141
OpenMain_localfailed175166
	jmp OpenMain_eblock175142
OpenMain_ctb175141: ;Main true block ;keep 
	; LineNumber: 3914
	; LineNumber: 3915
	; Binary clause Simplified: GREATEREQUAL
	lda levelSingle
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_eblock175170
OpenMain_ctb175169: ;Main true block ;keep 
	; LineNumber: 3914
	
; //		InitLevel();
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_edblock175171
OpenMain_eblock175170
	; LineNumber: 3914
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_edblock175171
	; LineNumber: 3916
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
	jmp OpenMain_edblock175143
OpenMain_eblock175142
	; LineNumber: 3918
	; LineNumber: 3919
	; Binary clause Simplified: GREATEREQUAL
	lda levelCoop
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcc OpenMain_eblock175181
OpenMain_ctb175180: ;Main true block ;keep 
	; LineNumber: 3918
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
	jmp OpenMain_edblock175182
OpenMain_eblock175181
	; LineNumber: 3918
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_OpenMain_pos
OpenMain_edblock175182
	; LineNumber: 3920
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
OpenMain_edblock175143
	; LineNumber: 3922
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
	; LineNumber: 3923
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
	; LineNumber: 3926
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
	; LineNumber: 3928
	; Binary clause Simplified: NOTEQUALS
	clc
	lda gameMode
	; cmp #$00 ignored
	beq OpenMain_edblock175192
OpenMain_ctb175190: ;Main true block ;keep 
	; LineNumber: 3928
	; LineNumber: 3929
	; Binary clause Simplified: NOTEQUALS
	clc
	lda levBothMustComplete
	; cmp #$00 ignored
	beq OpenMain_eblock175205
OpenMain_ctb175204: ;Main true block ;keep 
	; LineNumber: 3928
	lda #<txtBothMustComplete
	ldx #>txtBothMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	jmp OpenMain_edblock175206
OpenMain_eblock175205
	; LineNumber: 3929
	lda #<txtOneMustComplete
	ldx #>txtOneMustComplete
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$8
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_edblock175206
	; LineNumber: 3931
OpenMain_edblock175192
	; LineNumber: 3933
	lda #<txtStartLevel
	ldx #>txtStartLevel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3934
	lda #<txtMainMenu
	ldx #>txtMainMenu
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3936
	lda #<txtPressDel
	ldx #>txtPressDel
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3938
	lda #<sndEnd
	ldy #>sndEnd
	; Calling storevariable on generic assign expression
	sta psnd+2
	sty psnd+3
	; LineNumber: 3938
	lda #$f0
	; Calling storevariable on generic assign expression
	sta vsnd+$1
	; LineNumber: 3938
	lda #$0
	; Calling storevariable on generic assign expression
	sta vsndTime+$1
	; LineNumber: 3939
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne OpenMain_edblock175214
OpenMain_ctb175212: ;Main true block ;keep 
	; LineNumber: 3938
	lda #<txtPressSpace
	ldx #>txtPressSpace
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_edblock175214
	; LineNumber: 3940
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne OpenMain_edblock175220
OpenMain_ctb175218: ;Main true block ;keep 
	; LineNumber: 3939
	lda #<txtPressWasd
	ldx #>txtPressWasd
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$11
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
OpenMain_edblock175220
	; LineNumber: 3942
	lda #$7
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3944
	jmp OpenMain_edblock175045
OpenMain_eblock175044
	; LineNumber: 3943
	; Binary clause Simplified: EQUALS
	clc
	lda state
	; cmp #$00 ignored
	bne OpenMain_localfailed175229
	jmp OpenMain_ctb175225
OpenMain_localfailed175229
	jmp OpenMain_edblock175227
OpenMain_ctb175225: ;Main true block ;keep 
	; LineNumber: 3944
	; LineNumber: 3946
	lda #<txtLogo
	ldx #>txtLogo
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$7
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3952
	
; //		PrintCenterStringColor(#txtSelectGameMode,9,@GREEN);
; //		PrintCenterStringColor(#txtSelectGameMode,9,@GREEN);
	lda #<txtSinglePlayer
	ldx #>txtSinglePlayer
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$c
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3953
	lda #<txtSinglePlayer2Chars
	ldx #>txtSinglePlayer2Chars
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$d
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3954
	lda #<txtCoop
	ldx #>txtCoop
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$e
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3956
	lda #<txtSingleStart
	ldx #>txtSingleStart
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$f
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3957
	lda #<txtCoopStart
	ldx #>txtCoopStart
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$10
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$1
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3959
	lda #<txtAuthor
	ldx #>txtAuthor
	sta localVariable_PrintCenterStringColor_p1
	stx localVariable_PrintCenterStringColor_p1+1
	lda #$12
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_y
	lda #$3
	; Calling storevariable on generic assign expression
	sta localVariable_PrintCenterStringColor_varPrefixed_c
	jsr PrintCenterStringColor
	; LineNumber: 3961
	lda #$6
	; Calling storevariable on generic assign expression
	sta state
	; LineNumber: 3962
OpenMain_edblock175227
OpenMain_edblock175045
	; LineNumber: 3964
	rts
end_procedure_OpenMain
	; NodeProcedureDecl 4
	; ***********  Defining procedure : InitMap
	;    Procedure type : User-defined procedure
	; LineNumber: 3969
	; LineNumber: 3968
localVariable_InitMap_i	dc.b	0
	; LineNumber: 3968
localVariable_InitMap_x	dc.b	0
	; LineNumber: 3968
localVariable_InitMap_y	dc.b	0
	; LineNumber: 3968
localVariable_InitMap_varPrefixed_c	dc.b	0
InitMap_block175231
InitMap
	; LineNumber: 3970
	jsr ClearMap
	; LineNumber: 3971
	lda #$0
	; Calling storevariable on generic assign expression
	sta countDyn
	; LineNumber: 3972
	; Calling storevariable on generic assign expression
	sta countAnim
	; LineNumber: 3976
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175232
	; LineNumber: 3974
	; LineNumber: 3975
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
	; LineNumber: 3976
InitMap_loopstart175233
	; Compare is onpage
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$c8
	cmp localVariable_InitMap_i ;keep
	bne InitMap_forloop175232
InitMap_loopdone175237: ;keep
InitMap_loopend175234
	; LineNumber: 3992
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175238
	; LineNumber: 3978
	; LineNumber: 3979
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3980
	; Modulo
	lda #$14
InitMap_val_var175264 = $88
	sta InitMap_val_var175264
	lda localVariable_InitMap_i
	sec
InitMap_modulo175265
	sbc InitMap_val_var175264
	bcs InitMap_modulo175265
	adc InitMap_val_var175264
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3981
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
	; LineNumber: 3982
	lda #$5b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175269
	; LineNumber: 3982
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
	jmp InitMap_caseend175268
InitMap_casenext175269
	lda #$5d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175271
	; LineNumber: 3983
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
	jmp InitMap_caseend175268
InitMap_casenext175271
	lda #$28
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175273
	; LineNumber: 3984
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
	jmp InitMap_caseend175268
InitMap_casenext175273
	lda #$29
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175275
	; LineNumber: 3985
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
	jmp InitMap_caseend175268
InitMap_casenext175275
	lda #$31
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175277
	; LineNumber: 3986
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
	jmp InitMap_caseend175268
InitMap_casenext175277
	lda #$39
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175279
	; LineNumber: 3987
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
	jmp InitMap_caseend175268
InitMap_casenext175279
	lda #$37
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175281
	; LineNumber: 3988
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
	jmp InitMap_caseend175268
InitMap_casenext175281
	lda #$33
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175283
	; LineNumber: 3989
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
InitMap_casenext175283
InitMap_caseend175268
	; LineNumber: 3992
InitMap_loopstart175239
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175285
InitMap_loopnotdone175286
	jmp InitMap_forloop175238
InitMap_loopdone175285
InitMap_loopend175240
	; LineNumber: 4041
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_i
InitMap_forloop175287
	; LineNumber: 3995
	; LineNumber: 3996
	; Load Byte array
	; CAST type NADA
	ldx localVariable_InitMap_i
	lda lev,x 
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_varPrefixed_c
	; LineNumber: 3997
	; Modulo
	lda #$14
InitMap_val_var175376 = $88
	sta InitMap_val_var175376
	lda localVariable_InitMap_i
	sec
InitMap_modulo175377
	sbc InitMap_val_var175376
	bcs InitMap_modulo175377
	adc InitMap_val_var175376
	; Calling storevariable on generic assign expression
	sta localVariable_InitMap_x
	; LineNumber: 3998
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
	; LineNumber: 3999
	lda #$40
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175381
	; LineNumber: 3999
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
	jmp InitMap_caseend175380
InitMap_casenext175381
	lda #$25
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175383
	; LineNumber: 4001
	; LineNumber: 4002
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne InitMap_localfailed175390
	jmp InitMap_ctb175386
InitMap_localfailed175390: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda gameMode
	; Compare with pure num / var optimization
	cmp #$2;keep
	bne InitMap_edblock175388
InitMap_ctb175386: ;Main true block ;keep 
	; LineNumber: 4001
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
InitMap_edblock175388
	; LineNumber: 4003
	jmp InitMap_caseend175380
InitMap_casenext175383
	lda #$61
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175392
	; LineNumber: 4003
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitBrick_y
	jsr InitBrick
	jmp InitMap_caseend175380
InitMap_casenext175392
	lda #$62
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175394
	; LineNumber: 4004
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
	jmp InitMap_caseend175380
InitMap_casenext175394
	lda #$66
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175396
	; LineNumber: 4005
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
	jmp InitMap_caseend175380
InitMap_casenext175396
	lda #$3d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175398
	; LineNumber: 4006
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWater_y
	jsr InitWater
	jmp InitMap_caseend175380
InitMap_casenext175398
	lda #$27
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175400
	; LineNumber: 4007
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
	jmp InitMap_caseend175380
InitMap_casenext175400
	lda #$26
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175402
	; LineNumber: 4008
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
	jmp InitMap_caseend175380
InitMap_casenext175402
	lda #$7b
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175404
	; LineNumber: 4009
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
	jmp InitMap_caseend175380
InitMap_casenext175404
	lda #$7d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175406
	; LineNumber: 4010
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
	jmp InitMap_caseend175380
InitMap_casenext175406
	lda #$73
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175408
	; LineNumber: 4011
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSand_y
	jsr InitSand
	jmp InitMap_caseend175380
InitMap_casenext175408
	lda #$5e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175410
	; LineNumber: 4012
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
	jmp InitMap_caseend175380
InitMap_casenext175410
	lda #$59
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175412
	; LineNumber: 4013
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
	jmp InitMap_caseend175380
InitMap_casenext175412
	lda #$3e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175414
	; LineNumber: 4014
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
	jmp InitMap_caseend175380
InitMap_casenext175414
	lda #$3c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175416
	; LineNumber: 4015
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
	jmp InitMap_caseend175380
InitMap_casenext175416
	lda #$68
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175418
	; LineNumber: 4016
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLadder_y
	jsr InitLadder
	jmp InitMap_caseend175380
InitMap_casenext175418
	lda #$2d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175420
	; LineNumber: 4017
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
	jmp InitMap_caseend175380
InitMap_casenext175420
	lda #$5f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175422
	; LineNumber: 4018
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
	jmp InitMap_caseend175380
InitMap_casenext175422
	lda #$21
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175424
	; LineNumber: 4019
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
	jmp InitMap_caseend175380
InitMap_casenext175424
	lda #$7c
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175426
	; LineNumber: 4020
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
	jmp InitMap_caseend175380
InitMap_casenext175426
	lda #$6f
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175428
	; LineNumber: 4021
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
	jmp InitMap_caseend175380
InitMap_casenext175428
	lda #$63
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175430
	; LineNumber: 4022
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitPortalActivate_y
	jsr InitPortalActivate
	jmp InitMap_caseend175380
InitMap_casenext175430
	lda #$38
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175432
	; LineNumber: 4023
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
	jmp InitMap_caseend175380
InitMap_casenext175432
	lda #$32
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175434
	; LineNumber: 4024
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
	jmp InitMap_caseend175380
InitMap_casenext175434
	lda #$34
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175436
	; LineNumber: 4025
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
	jmp InitMap_caseend175380
InitMap_casenext175436
	lda #$36
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175438
	; LineNumber: 4026
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
	jmp InitMap_caseend175380
InitMap_casenext175438
	lda #$6e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175440
	; LineNumber: 4027
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
	jmp InitMap_caseend175380
InitMap_casenext175440
	lda #$6d
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175442
	; LineNumber: 4028
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
	jmp InitMap_caseend175380
InitMap_casenext175442
	lda #$67
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175444
	; LineNumber: 4029
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
	jmp InitMap_caseend175380
InitMap_casenext175444
	lda #$74
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175446
	; LineNumber: 4030
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitLaserTransport_y
	jsr InitLaserTransport
	jmp InitMap_caseend175380
InitMap_casenext175446
	lda #$64
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175448
	; LineNumber: 4032
	
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
	jmp InitMap_caseend175380
InitMap_casenext175448
	lda #$65
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175450
	; LineNumber: 4033
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
	jmp InitMap_caseend175380
InitMap_casenext175450
	lda #$72
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175452
	; LineNumber: 4034
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitSwitchManual_y
	jsr InitSwitchManual
	jmp InitMap_caseend175380
InitMap_casenext175452
	lda #$78
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175454
	; LineNumber: 4035
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitDoor_y
	jsr InitDoor
	jmp InitMap_caseend175380
InitMap_casenext175454
	lda #$58
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175456
	; LineNumber: 4036
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitExit_y
	jsr InitExit
	jmp InitMap_caseend175380
InitMap_casenext175456
	lda #$2e
	cmp localVariable_InitMap_varPrefixed_c ;keep
	bne InitMap_casenext175458
	; LineNumber: 4037
	lda localVariable_InitMap_x
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_x
	lda localVariable_InitMap_y
	; Calling storevariable on generic assign expression
	sta localVariable_InitWaypoint_y
	jsr InitWaypoint
InitMap_casenext175458
InitMap_caseend175380
	; LineNumber: 4040
InitMap_loopstart175288
	; Test Inc dec D
	inc localVariable_InitMap_i
	lda #$f0
	cmp localVariable_InitMap_i ;keep
	beq InitMap_loopdone175460
InitMap_loopnotdone175461
	jmp InitMap_forloop175287
InitMap_loopdone175460
InitMap_loopend175289
	; LineNumber: 4041
	rts
end_procedure_InitMap
	; NodeProcedureDecl 4
	; ***********  Defining procedure : LoopMenu
	;    Procedure type : User-defined procedure
	; LineNumber: 4046
LoopMenu
	; LineNumber: 4047
LoopMenu_while175463
LoopMenu_loopstart175467
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$6;keep
	bne LoopMenu_localfailed175476
	jmp LoopMenu_ctb175464
LoopMenu_localfailed175476: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$7;keep
	bne LoopMenu_edblock175466
LoopMenu_ctb175464: ;Main true block ;keep 
	; LineNumber: 4047
	; LineNumber: 4048
	jsr callReadJoy1
	; LineNumber: 4049
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4050
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne LoopMenu_edblock175481
LoopMenu_ctb175479: ;Main true block ;keep 
	; LineNumber: 4050
	; LineNumber: 4051
	jsr UpdateMain
	; LineNumber: 4052
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4052
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4054
LoopMenu_edblock175481
	; LineNumber: 4055
	jmp LoopMenu_while175463
LoopMenu_edblock175466
LoopMenu_loopend175468
	; LineNumber: 4056
	rts
end_procedure_LoopMenu
	; NodeProcedureDecl 4
	; ***********  Defining procedure : LoopMenu1
	;    Procedure type : User-defined procedure
	; LineNumber: 4061
	; LineNumber: 4060
localVariable_LoopMenu1_exitOpen	dc.b	0
LoopMenu1_block175484
LoopMenu1
	; LineNumber: 4062
	jsr ClearFullScreen
	; LineNumber: 4063
	
; // clear screen
	lda #$0
	; Calling storevariable on generic assign expression
	sta localVariable_LoopMenu1_exitOpen
	; LineNumber: 4064
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4065
LoopMenu1_while175485
LoopMenu1_loopstart175489
	; Binary clause Simplified: EQUALS
	clc
	lda localVariable_LoopMenu1_exitOpen
	; cmp #$00 ignored
	bne LoopMenu1_edblock175488
LoopMenu1_ctb175486: ;Main true block ;keep 
	; LineNumber: 4065
	; LineNumber: 4067
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne LoopMenu1_edblock175502
LoopMenu1_ctb175500: ;Main true block ;keep 
	; LineNumber: 4067
	; LineNumber: 4068
	
; //waitnoraster(0);
	jsr OpenMain
	; LineNumber: 4069
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4070
	; Calling storevariable on generic assign expression
	sta localVariable_LoopMenu1_exitOpen
	; LineNumber: 4071
LoopMenu1_edblock175502
	; LineNumber: 4072
	jmp LoopMenu1_while175485
LoopMenu1_edblock175488
LoopMenu1_loopend175490
	; LineNumber: 4073
	rts
end_procedure_LoopMenu1
	; NodeProcedureDecl 4
	; ***********  Defining procedure : GameLoop
	;    Procedure type : User-defined procedure
	; LineNumber: 4078
GameLoop
	; LineNumber: 4079
GameLoop_while175506
GameLoop_loopstart175510
	; Binary clause Simplified: NOTEQUALS
	clc
	lda #$1
	; cmp #$00 ignored
	beq GameLoop_localfailed175546
	jmp GameLoop_ctb175507
GameLoop_localfailed175546
	jmp GameLoop_edblock175509
GameLoop_ctb175507: ;Main true block ;keep 
	; LineNumber: 4079
	; LineNumber: 4080
	jsr callReadJoy1
	; LineNumber: 4082
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4083
	lda #$0
	cmp state ;keep
	bne GameLoop_casenext175549
	; LineNumber: 4084
	jsr LoopMenu1
	jmp GameLoop_caseend175548
GameLoop_casenext175549
	lda #$2
	cmp state ;keep
	bne GameLoop_casenext175551
	; LineNumber: 4086
	; LineNumber: 4087
	jsr ClearFullScreen
	; LineNumber: 4088
	jsr InitLevel
	; LineNumber: 4089
	jsr LoopMenu1
	; LineNumber: 4090
	jmp GameLoop_caseend175548
GameLoop_casenext175551
	lda #$6
	cmp state ;keep
	bne GameLoop_casenext175553
	; LineNumber: 4091
	jsr LoopMenu
	jmp GameLoop_caseend175548
GameLoop_casenext175553
	lda #$7
	cmp state ;keep
	bne GameLoop_casenext175555
	; LineNumber: 4093
	; LineNumber: 4094
	jsr LoopMenu
	; LineNumber: 4095
	jmp GameLoop_caseend175548
GameLoop_casenext175555
	lda #$1
	cmp state ;keep
	bne GameLoop_casenext175557
	; LineNumber: 4095
	jsr InitScene
	jmp GameLoop_caseend175548
GameLoop_casenext175557
	lda #$3
	cmp state ;keep
	bne GameLoop_casenext175559
	; LineNumber: 4097
	; LineNumber: 4099
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4100
	
; // will be updated in raster chain
	lda #$0
	; Calling storevariable on generic assign expression
	sta time
	; LineNumber: 4101
GameLoop_while175561
GameLoop_loopstart175565
	; Binary clause Simplified: EQUALS
	lda state
	; Compare with pure num / var optimization
	cmp #$3;keep
	bne GameLoop_edblock175564
GameLoop_ctb175562: ;Main true block ;keep 
	; LineNumber: 4101
	; LineNumber: 4102
	jsr callReadJoy1
	; LineNumber: 4103
	jsr ReadJoySim
	; LineNumber: 4104
	; Wait for no of raster lines
	lda #$0
	clc 
	adc $9004
	cmp $9004
	bne *-3
	; LineNumber: 4105
	; Binary clause Simplified: EQUALS
	clc
	lda frameStatus
	; cmp #$00 ignored
	bne GameLoop_edblock175578
GameLoop_ctb175576: ;Main true block ;keep 
	; LineNumber: 4105
	; LineNumber: 4106
	jsr Update
	; LineNumber: 4107
	jsr Animate
	; LineNumber: 4108
	jsr CycleWater
	; LineNumber: 4109
	jsr DecreaseTextTimer
	; LineNumber: 4110
	lda #$1
	; Calling storevariable on generic assign expression
	sta frameStatus
	; LineNumber: 4110
	; Test Inc dec D
	inc globaltime
	; LineNumber: 4112
GameLoop_edblock175578
	; LineNumber: 4113
	jmp GameLoop_while175561
GameLoop_edblock175564
GameLoop_loopend175566
	; LineNumber: 4114
GameLoop_casenext175559
GameLoop_caseend175548
	; LineNumber: 4116
	jmp GameLoop_while175506
GameLoop_edblock175509
GameLoop_loopend175511
	; LineNumber: 4117
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

