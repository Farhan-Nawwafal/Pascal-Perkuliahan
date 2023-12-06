@echo off
SET THEFILE=d:\pascal-pemrograman\kuliah\seleksi-pemilu\seleksipemilu.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\kuliah\seleksi-pemilu\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\kuliah\seleksi-pemilu\seleksipemilu.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
