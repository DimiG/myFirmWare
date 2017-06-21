@ECHO OFF

:: ########################################################################
:: # File:   avrcheck.cmd
:: # Author: Dmitri G. (2017)
:: # E-mail: dimi615@pisem.net
:: ########################################################################

:: Check Atmel AVR Microcontrollers by avrdude program
:: AVRDUDE is software for programming Atmel AVR Microcontrollers
:: http://savannah.nongnu.org/projects/avrdude

:: This BLOCK for annotation
CLS
ECHO.
ECHO .......................................
ECHO .  Check Atmel AVR Microcontrollers   .
ECHO .                                     .
ECHO .      Created By: DimiG (2017)       .
ECHO .......................................
ECHO.

:: Script Settings

:: Set Variables if necessary ;)
:: SET opt=""

:: DECISION BLOCK

IF [%1] EQU [/?] GOTO usage
IF [%1] EQU [] GOTO cmd2

GOTO cmd1

:: HELP ROUTINE

:usage
COLOR 06

ECHO.
ECHO USAGE:   %~n0 COM_PORT
ECHO WHERE:   COM_PORT - the port programmer connected to
ECHO.
ECHO EXAMPLE: %~n0 COM8
ECHO.

GOTO:EOF

:: The Code 1

:cmd1
ECHO.
ECHO Using STK500 programmer...
ECHO.
avrdude.exe -p m8 -c stk500 -P %1 -v

GOTO:EOF

:: The Code 2

:cmd2
ECHO.
ECHO Using USBasp programmer...
ECHO.
avrdude.exe -p m8 -c usbasp -P usb -v

:: PAUSE

:EOF
