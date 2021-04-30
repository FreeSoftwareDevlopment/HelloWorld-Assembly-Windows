;THIS EXAMPLE FILE GOT FROM https://en.wikipedia.org/wiki/Netwide_Assembler AND MODIFIED BY SHARKBYTEPROJECTS
global _main
extern _MessageBoxA@16
extern _ExitProcess@4

section code use32 class=code
_main:
	push	dword 0      ; UINT uType = MB_OK
	push	dword title  ; LPCSTR lpCaption
	push	dword banner ; LPCSTR lpText
	push	dword 0      ; HWND hWnd = NULL
	call	_MessageBoxA@16
	nop
	jmp exitp
	
exitp:
	push	dword 0      ; UINT uExitCode
	call	_ExitProcess@4

section data use32 class=data
	banner:	db 'Hello, World!', 0
	title:	db 'Hello', 0