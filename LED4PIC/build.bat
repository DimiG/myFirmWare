@ECHO OFF

REM *** Enter the location of MPLAB X IDE on your system BELOW ***
SET PATH=C:\Program Files (x86)\Microchip\MPLABX\v3.61\gnuBins\GnuWin32\bin;%PATH%

ECHO.
ECHO -------- BEGIN the PIC Compilation --------
ECHO.
REM The line BELOW just for myself ;)
:: pushd "%~dp0\build\default\production"

REM ###############################################################################
REM ### 1. To use `make` comand below you MUST install MPLAB X IDE before       ###
REM ### 2. The MPLAB X project MUST BE created BEFORE use this `BAT` file       ###
REM ### 3. This file is good to use with E-macs if you prefer it as text editor ###
REM ###############################################################################

make -f nbproject/Makefile-default.mk SUBPROJECTS= .build-conf

REM The line BELOW just for myself
:: popd
ECHO.
ECHO --------  STOP the PIC Compilation  --------
ECHO.
