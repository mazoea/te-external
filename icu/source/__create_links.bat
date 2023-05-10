mklink /j vsprops-base ..\..\_vsprops-base

IF "%1"=="nopause" GOTO No1
    pause
:No1