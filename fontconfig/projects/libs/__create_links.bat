junction freetype "..\..\..\freetype\libs"
junction libiconv "..\..\..\libiconv\libs"
junction libxml2 "..\..\..\libxml2\libs"
junction zlib "..\..\..\zlib\libs"

IF "%1"=="nopause" GOTO No1
    pause
:No1