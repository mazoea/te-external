junction freetype ..\..\..\..\te-external\freetype\include
junction zlib ..\..\..\..\te-external\zlib\
junction jpeg ..\..\..\..\te-external\jpeg\
junction libtiff ..\..\..\..\te-external\libtiff\libtiff
junction libpng ..\..\..\..\te-external\libpng\
junction giflib ..\..\..\..\te-external\giflib\lib
junction pixman ..\..\..\..\te-external\pixman\pixman
junction fontconfig ..\..\..\..\te-external\fontconfig

IF "%1"=="nopause" GOTO No1
    pause
:No1