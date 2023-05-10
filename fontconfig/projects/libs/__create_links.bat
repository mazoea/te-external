mklink /j freetype "..\..\..\freetype\libs"
mklink /j libiconv "..\..\..\libiconv\libs"
mklink /j libxml2 "..\..\..\libxml2\libs"
mklink /j zlib "..\..\..\zlib\libs"

IF "%1"=="nopause" GOTO No1
    pause
:No1