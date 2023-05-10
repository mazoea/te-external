mklink /j zlib ..\..\..\zlib\

IF "%1"=="nopause" GOTO No1
    pause
:No1