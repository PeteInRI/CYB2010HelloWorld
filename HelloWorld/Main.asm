; Project Name:
; Author:

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data
Message BYTE "Hello World",0

.code
main proc
	MOV EDX, OFFSET message
	CALL WriteString
			

	invoke ExitProcess,0
main endp
end main