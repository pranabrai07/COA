	ORG 2000H
	MVI A, 09H
	STA 2050H
	MVI A, 08H
	STA 2051H
	MVI A, 05H
	STA 2052H
	LXI H, 2050H
	MOV A, M
	MOV B, A
	INX H
	MOV A, M
	CMP B
	JC NEXT
	MOV B, A
NEXT:	INX H
	MOV A, M
	INX H
	CMP B
	JC END
	MOV B, A
END:	MOV A, B
	STA 2053H
	HLT
