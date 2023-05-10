mklink /j cairo ..\..\..\..\te-external\cairo\src
mklink /j glib ..\..\..\..\te-external\glib
mklink /j freetype ..\..\..\..\te-external\freetype\include
mklink /j fontconfig ..\..\..\..\te-external\fontconfig
mklink /j harfbuzz ..\..\..\..\te-external\harfbuzz\src

IF "%1"=="nopause" GOTO No1
    pause
:No1