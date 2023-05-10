mklink /j zlib ..\..\..\..\te-external\zlib\libs
mklink /j libffi ..\..\..\..\te-external\libffi\libs

IF "%1"=="nopause" GOTO No1
    pause
:No1