	ORG 2000H
	MVI A, 7DH
	MVI C, 08H
	MVI B, 00H
LOOP:   RRC
	JNC X
	INR B
X:	DCR C
	JNZ LOOP
	HLT