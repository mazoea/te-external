junction cairo ..\..\..\..\te-external\cairo\src
junction glib ..\..\..\..\te-external\glib
junction freetype ..\..\..\..\te-external\freetype\include
junction fontconfig ..\..\..\..\te-external\fontconfig
junction harfbuzz ..\..\..\..\te-external\harfbuzz\src

IF "%1"=="nopause" GOTO No1
    pause
:No1