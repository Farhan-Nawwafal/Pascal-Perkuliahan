@echo off
SET THEFILE=d:\pascal-pemrograman\menghitung-biaya-parkir\menghitungbiayaparkir.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Pascal-Pemrograman\menghitung-biaya-parkir\rsrc.o -s   -b base.$$$ -o d:\pascal-pemrograman\menghitung-biaya-parkir\menghitungbiayaparkir.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
