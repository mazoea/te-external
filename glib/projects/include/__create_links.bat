mklink /j zlib ..\..\..\..\te-external\zlib\
mklink /j libffi ..\..\..\..\te-external\libffi\include

IF "%1"=="nopause" GOTO No1
    pause
:No1