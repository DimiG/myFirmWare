@ECHO OFF

:: ########################################################################
:: # File:   build.bat
:: # Author: Dmitri G. (2017)
:: # E-mail: dimi615@pisem.net
:: ########################################################################

:: Build the C code by Makefile created by Atmel Studio
:: http://www.atmel.com
:: Makefile location in `Debug' folder
:: Script Settings

:: Set your Atmel Studio PATHs
SET PATH=C:\Program Files (x86)\Atmel\Studio\7.0;C:\Program Files (x86)\Atmel\Studio\7.0\atbackend;C:\Program Files (x86)\Atmel\Studio\7.0\shellUtils;C:\Program Files (x86)\Atmel\Studio\7.0\shellUtils;C:\Program Files (x86)\Atmel\Studio\7.0\atpackmanager;C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin;C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avrassembler;%PATH%

ECHO.
ECHO -------- BEGIN AVR compilation --------
ECHO.
pushd Debug

:: make -f Makefile clean

make -f Makefile all

popd
ECHO.
ECHO --------  STOP AVR compilation  --------
