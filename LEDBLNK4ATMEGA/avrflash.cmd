@ECHO OFF

:: ########################################################################
:: # File:   avrflash.cmd
:: # Author: Dmitri G. (2017)
:: # E-mail: dimi615@pisem.net
:: ########################################################################

:: Flash Atmel AVR Microcontrollers by Avrdude program
:: HEX file location in `Release' folder
:: AVRDUDE is software for programming Atmel AVR Microcontrollers
:: http://savannah.nongnu.org/projects/avrdude

:: This BLOCK for annotation
CLS
ECHO.
ECHO .......................................
ECHO .  FLASH Atmel AVR Microcontrollers   .
ECHO .                                     .
ECHO .      Created By: DimiG (2017)       .
ECHO .......................................
ECHO.

:: Script Settings

:: Your PATH to avrdude.exe
:: SET PATH=yourpath2avrdude;%PATH%

:: Set the name of your HEX file
SET hexfile="LEDBLINK4ATMEGA.hex"

ECHO.
ECHO -------- BEGIN AVR FLASHING... --------
ECHO.
pushd Release

avrdude.exe -p m8 -c usbasp -P usb -U flash:w:%hexfile%:a

popd
ECHO.
ECHO --------  STOP AVR FLASHING  ----------
