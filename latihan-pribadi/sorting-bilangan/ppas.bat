@echo off
SET THEFILE=d:\pascal-pemrograman\latihan-pribadi\sorting-bilangan\sortingbilangan.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\latihan-pribadi\sorting-bilangan\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\latihan-pribadi\sorting-bilangan\sortingbilangan.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
