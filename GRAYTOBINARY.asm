	ORG 2000H
	MVI A, 08H
	STA 2050H
	LDA 2050H
	MVI C, 07H
	MOV B, A
	ANI 80H
JUMP:	RRC
	ANI 7FH
	XRA B
	DCR C
	JNZ JUMP
	STA 2060H
	HLT
