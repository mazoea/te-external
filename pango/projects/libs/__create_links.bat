mklink /j cairo ..\..\..\..\te-external\cairo\libs
mklink /j libxml2 ..\..\..\..\te-external\libxml2\libs
mklink /j glib ..\..\..\..\te-external\glib\\libs
mklink /j freetype ..\..\..\..\te-external\freetype\libs
mklink /j fontconfig ..\..\..\..\te-external\fontconfig\libs
mklink /j harfbuzz ..\..\..\..\te-external\harfbuzz\libs
mklink /j libiconv ..\..\..\..\te-external\libiconv\libs
mklink /j pixman ..\..\..\..\te-external\pixman\libs

IF "%1"=="nopause" GOTO No1
    pause
:No1