mklink /j freetype ..\..\..\..\te-external\freetype\include
mklink /j glib ..\..\..\..\te-external\glib

IF "%1"=="nopause" GOTO No1
    pause
:No1