mklink /j libiconv ..\..\..\libiconv\include

IF "%1"=="nopause" GOTO No1
    pause
:No1