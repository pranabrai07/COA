	ORG 0F900H
	MVI A, 45H
	STA 0FA00H
	MVI A, 0F8H
	STA 0FA01H
	MVI A, 9BH
	STA 0FA02H
	MVI A, 0FFH
	STA 0FA03H
	MVI A, 31H
	STA 0FA04H
	LXI H, 0FA00H
	MOV A, M
	MVI C, 04H
	MVI D, 00H
LOOP:	INX H
	MOV B, M
	ADD B
	JNC SKIP
	INR D
SKIP:	DCR C
	JNZ LOOP
	MOV E, A
	MOV A, D
	STA 0FA05H
	MOV A, E
	STA 0FA06H
	HLT