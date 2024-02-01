; golink /entry:Start user32.dll hello_world.obj
extern _MessageBoxA@16
extern _ExitProcess@4

global Start

section .data
 hello    db "Hello, World!", 0

section .text
Start:
 push  0
 push  0
 push  hello
 push  0
 call  _MessageBoxA@16
 