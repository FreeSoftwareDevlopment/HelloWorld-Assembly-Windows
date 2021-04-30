REM You need nasm installed and run this where link.exe is available!
REM CREATE OBJ FILE:
nasm.exe -f win32 test.asm -o test.obj
REM LINK IT TOGETHER, need user32 and Kernel32
link test.obj User32.lib Kernel32.lib /entry:main /subsystem:windows