@echo off
SET THEFILE=d:\pascal-pemrograman\latihan-pribadi\konversi-satuan\konversisatuan.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\latihan-pribadi\konversi-satuan\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\latihan-pribadi\konversi-satuan\konversisatuan.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
