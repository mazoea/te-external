junction cairo ..\..\..\..\te-external\cairo\libs
junction libxml2 ..\..\..\..\te-external\libxml2\libs
junction glib ..\..\..\..\te-external\glib\\libs
junction freetype ..\..\..\..\te-external\freetype\libs
junction fontconfig ..\..\..\..\te-external\fontconfig\libs
junction harfbuzz ..\..\..\..\te-external\harfbuzz\libs
junction libiconv ..\..\..\..\te-external\libiconv\libs
junction pixman ..\..\..\..\te-external\pixman\libs

IF "%1"=="nopause" GOTO No1
    pause
:No1