echo off
rem Ensure 7z.exe is in your path... ie. set PATH=%PATH%;C:\Program Files\7-Zip

set VER=1.2.8
set PACKAGE=zlib-%VER%.tar.gz
set URL="http://sourceforge.net/projects/libpng/files/zlib/%VER%/%PACKAGE%/download"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J zlib zlib-%VER%

set VER=1.6.13
set PACKAGE=libpng-%VER%.tar.gz
set URL="http://prdownloads.sourceforge.net/libpng/%PACKAGE%?download"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J libpng libpng-%VER%

set VER=2.5.3
set PACKAGE=freetype-%VER%.tar.gz
set URL="http://download.savannah.gnu.org/releases/freetype/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J freetype freetype-%VER%

set VER=5.1.0
set PACKAGE=giflib-%VER%.tar.gz
set URL="http://sourceforge.net/projects/giflib/files/%PACKAGE%/download"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J giflib giflib-%VER%

set VER=9a
set PACKAGE=jpegsrc.v%VER%.tar.gz
set URL="http://www.ijg.org/files/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J jpeg jpeg-%VER%

set VER=4.0.3
set PACKAGE=tiff-%VER%.tar.gz
set URL="http://download.osgeo.org/libtiff/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J libtiff tiff-%VER%


set VER=1.14.6
set PACKAGE=cairo-%VER%.tar.xz
set URL="https://cairographics.org/releases/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J cairo cairo-%VER%

set VER=2.12.0
set PACKAGE=fontconfig-%VER%.tar.bz2
set URL="http://www.freedesktop.org/software/fontconfig/release/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J fontconfig fontconfig-%VER%

set VER=2.49
set PACKAGE=glib-%VER%.4.tar.xz
set URL="http://ftp.gnome.org/pub/GNOME/sources/glib/%VER%/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J glib glib-%VER%.4

set VER=1.3.0
set PACKAGE=harfbuzz-%VER%.tar.bz2
set URL="https://www.freedesktop.org/software/harfbuzz/release/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J harfbuzz harfbuzz-%VER%

set VER=57_1
set PACKAGE=icu4c-%VER%-src.tgz
set URL="http://download.icu-project.org/files/icu4c/57.1/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mv icu icu-57_1
mklink /J icu icu-%VER%

set VER=3.2.1
set PACKAGE=libffi-%VER%.tar.gz
set URL="ftp://sourceware.org/pub/libffi/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J libffi libffi-%VER%

set VER=1.14
set PACKAGE=libiconv-%VER%.tar.gz
set URL="http://ftp.gnu.org/pub/gnu/libiconv/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J libiconv libiconv-%VER%

set VER=2.9.4
set PACKAGE=libxml2-%VER%.tar.gz
set URL="http://xmlsoft.org/sources/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J libxml2 libxml2-%VER%

set VER=1.40
set PACKAGE=pango-%VER%.1.tar.xz
set URL="http://ftp.gnome.org/pub/gnome/sources/pango/%VER%/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J pango pango-%VER%.1

set VER=0.34.0
set PACKAGE=pixman-%VER%.tar.gz
set URL="http://cairographics.org/releases/%PACKAGE%"
CALL :download_and_unpack %URL% %PACKAGE% %1
mklink /J pixman pixman-%VER%

IF "%1"=="nopause" GOTO No1
    pause
:No1
exit

::
:download_and_unpack
if "%3" == "nodownload" goto fine

echo Downloading %1
wget --no-check-certificate  %1
echo Unpacking %2
7z x -so %2 | tar -x
:fine

EXIT /B 0
