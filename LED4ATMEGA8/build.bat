@ECHO OFF

REM *** Enter the location of Atmel Studio IDE on your system BELOW ***
SET PATH=C:\Program Files (x86)\Atmel\Studio\7.0;C:\Program Files (x86)\Atmel\Studio\7.0\atbackend;C:\Program Files (x86)\Atmel\Studio\7.0\shellUtils;C:\Program Files (x86)\Atmel\Studio\7.0\shellUtils;C:\Program Files (x86)\Atmel\Studio\7.0\atpackmanager;C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin;C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avrassembler;%PATH%

ECHO.
ECHO -------- BEGIN AVR compilation --------
ECHO.
pushd Debug

REM ###############################################################################
REM ### 1. To use `make` comand below you MUST install Atmel Studio IDE before  ###
REM ### 2. The Atmel Studio project MUST BE created BEFORE use this `BAT` file  ###
REM ### 3. This file is good to use with E-macs if you prefer as a text editor  ###
REM ###############################################################################

make -f Makefile all

:: make -f Makefile clean

ECHO.
ECHO --------  STOP AVR compilation  --------
ECHO.

popd
