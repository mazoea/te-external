junction zlib ..\..\..\..\te-external\zlib\libs
junction libffi ..\..\..\..\te-external\libffi\libs

IF "%1"=="nopause" GOTO No1
    pause
:No1