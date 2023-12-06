@echo off
SET THEFILE=d:\pascal-pemrograman\kuliah\penjumlahan-1-sampai-10\penjumlahan1sampai10.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\kuliah\penjumlahan-1-sampai-10\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\kuliah\penjumlahan-1-sampai-10\penjumlahan1sampai10.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
