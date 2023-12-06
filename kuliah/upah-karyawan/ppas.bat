@echo off
SET THEFILE=d:\pascal-pemrograman\kuliah\upah-karyawan\upahkaryawan.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\kuliah\upah-karyawan\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\kuliah\upah-karyawan\upahkaryawan.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
