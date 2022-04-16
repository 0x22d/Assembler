.386
.model flat, stdcall
ExitProcess PROTO, ExitCode:DWORD
MessageBoxA PROTO, hWnd:DWORD, lpText:DWORD, lpCaption:DWORD, uType:DWORD
WinExec PROTO, lpCmdLine:DWORD, uCmdShow:DWORD
_data segment
messageText db 'Some Text',0
messageTitle db 'Some Title',0
lpCmdLine db 'calc.exe',0
uCmdShow db '5',0
_data ends
_text segment
start:

push 0
push offset messageTitle
push offset messageText
push 0
call MessageBoxA

push offset lpCmdLine
push offset uCmdShow
call WinExec

push 0
call ExitProcess

push 0
push offset messageTitle
push offset messageText
push 0
call MessageBoxA

_text ends
end start