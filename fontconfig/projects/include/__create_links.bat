junction freetype ..\..\..\freetype\
junction libiconv ..\..\..\libiconv\include
junction libxml2 ..\..\..\libxml2\include

IF "%1"=="nopause" GOTO No1
    pause
:No1