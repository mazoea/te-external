mklink /j freetype ..\..\..\freetype\
mklink /j libiconv ..\..\..\libiconv\include
mklink /j libxml2 ..\..\..\libxml2\include

IF "%1"=="nopause" GOTO No1
    pause
:No1