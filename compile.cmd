@echo off

set tasm=Z:\programs\development\rce\assemblers\tasm
set tasm_bin=%tasm%\bin

%tasm_bin%\tasm32 /ml /m9 /q w32_Voltage.asm
%tasm_bin%\tlink32 -Tpe -c -x -aa w32_Voltage.obj,,,%tasm%\lib\import32,,
del w32_Voltage.obj
pewrsec.exe w32_Voltage.exe