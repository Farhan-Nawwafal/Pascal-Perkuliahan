@echo off
SET THEFILE=d:\pascal-pemrograman\kuliah\menghitung-angsuran-motor\menghitung_angsuran_motor.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o d:\pascal-pemrograman\kuliah\menghitung-angsuran-motor\menghitung_angsuran_motor.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
