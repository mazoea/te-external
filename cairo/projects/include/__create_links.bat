mklink /j freetype ..\..\..\..\te-external\freetype\include
mklink /j zlib ..\..\..\..\te-external\zlib\
mklink /j jpeg ..\..\..\..\te-external\jpeg\
mklink /j libtiff ..\..\..\..\te-external\libtiff\libtiff
mklink /j libpng ..\..\..\..\te-external\libpng\
mklink /j giflib ..\..\..\..\te-external\giflib\lib
mklink /j pixman ..\..\..\..\te-external\pixman\pixman
mklink /j fontconfig ..\..\..\..\te-external\fontconfig

IF "%1"=="nopause" GOTO No1
    pause
:No1