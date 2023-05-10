mklink /j zlib ..\..\..\..\te-external\zlib\libs
mklink /j jpeg ..\..\..\..\te-external\jpeg\libs
mklink /j libtiff ..\..\..\..\te-external\libtiff\libs
mklink /j libpng ..\..\..\..\te-external\libpng\libs
mklink /j giflib ..\..\..\..\te-external\giflib\libs
mklink /j pixman ..\..\..\..\te-external\pixman\libs
mklink /j fontconfig ..\..\..\..\te-external\fontconfig\libs
mklink /j freetype ..\..\..\..\te-external\freetype\libs

IF "%1"=="nopause" GOTO No1
    pause
:No1