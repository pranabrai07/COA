	ORG 2000H
	MVI A,02H
	STA 2050H
	LDA 2050H
	RLC
	RLC
	RLC
	RLC
	STA 2060H
	HLT