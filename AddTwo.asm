; Program 1 Assembly Language Arithmetic

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
A DWORD 30	;Variable A initialized to Double Word 30
B DWORD 20	;Variable B initialized to Double Word 20
C1 DWORD 10	;Variable C1 initialized to Double Word 10
D DWORD 5		;Variable D initialized to Double Word 5
.code		;Instructions via Code in Main Program
main proc
	mov	eax,A		;Variable A Data Moved to EAX Register		
	mov	ebx,B		;Variable B Data Moved to EBX Register	
	mov  ecx,C1		;Variable C1 Data Moved to ECX Register	
	mov  edx,D		;Variable D Data Moved to EDX Register	
	add  eax,ebx		;Memory From EBX Added to Register EAX
	add  ecx,edx		;Memory From EDX Added to Register ECX
	sub  eax,ecx		;Memory From ECX Subtracted From Register EAX
	mov  A,eax		;Memory From EAX Moved Back Into Variable A

	invoke ExitProcess,0
main endp
end main