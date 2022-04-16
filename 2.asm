.386
.model flat, stdcall

MessageBoxA PROTO, hWnd:DWORD, lpText:DWORD, lpCaption:DWORD, uType:DWORD
CreateProcessA PROTO, lpApplicationName:DWORD, bInheritHandles:DWORD, dwCreationFlags:DWORD, lpStartupInfo:DWORD, lpProcessInformation:DWORD
ExitProcess PROTO, ExitCode:DWORD

_data segment
	messageText db 'Some Text',0
	messageTitle db 'Some Title',0
	string db "cmd",0
	messageText1 db 'Some Text1',0
	messageTitle1 db 'Some Title1',0
	lpApplicationName db 'c:\windows\\system32\ñalc.exe',0
	bInheritHandles db 'FALSE',0
	lpStartupInfo db ñè
	lpProcessInformation db ïè
_data ends

_text segment
start:
	push 0
	push offset messageTitle
	push offset messageText
	push 0
	call MessageBoxA
	
	push offset lpApplicationName
	push offset bInheritHandles
	push 0
	push offset lpStartupInfo
	push offset lpProcessInformation
	call CreateProcessA


	push 0
	push offset messageTitle1
	push offset messageText1
	push 0
	call MessageBoxA

	push 0
	call ExitProcess
_text ends
end start