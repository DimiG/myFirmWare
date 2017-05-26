myFirmWare
==========
This repository dedicated to my OWN [firmware][fw-wiki] I have created for different [micro-controllers][mcu-wiki].  

These [firmware][fw-wiki] was made by different compilers with [C][c-wiki] or [Assembler][asm-wiki] languages.  
You can compile it yourself, but READ THE DESCRIPTION BELOW BEFORE DO IT.  
***Important:*** Not all [firmware][fw-wiki] was tested on real hardware, so I'm not responsible for any possible damages or loss. The firmware code may contain BUGs. You were WARNED. ;)  

Codes description
-------------------

### myFirmWare files (projects directory)

* `build.bat`: This `bat` file run build routine by [Emacs][emacs].  

###  myFirmWare folders

* `LED4PIC`: This [firmware][fw-wiki] has been created for [PIC16F84A][PIC16F84A] micro-controller (MCU) running at 4MHz. This [asm][asm-wiki] code I used as exercise and it BLINKS by 4 LEDs connected to RB4, RB5, RB6, RB7 ports. The circuit diagram and additional files located in the same folder.  
   ***Requires :*** [MPLAB® X][mplab-x] Integrated Development Environment (IDE).  
   **Note :** The `build.bat` helps to compile the [asm][asm-wiki] files created by [MPLAB® X][mplab-x]. The compilation to [hex][hex-wiki] is NOT POSSIBLE without the [MPLAB® X][mplab-x] pre-installed.  

* `LED4ATMEGA8`: This [firmware][fw-wiki] code has been created for [ATmega8][atmega8] micro-controller (MCU) running at 8MHz. This [C][clanguage] code I used as exercise and it SHOWS the numbers by seven segment LED indicator. The circuit diagram and additional files located in the same folder.  
   ***Requires :*** [Atmel Studio][atmelstudio] integrated development platform (IDP).  
   **Note :** The `build.bat` helps to compile the [C][clanguage] files created by [Atmel Studio][atmelstudio]. The compilation to [hex][hex-wiki] is NOT POSSIBLE without the [Atmel Studio][atmelstudio] pre-installed.  

* `All Applications`:  
   ***Requires :*** Compiler suitable for necessary tasks, Windows 7, 10  
   ***Important:*** To load [firmware][fw-wiki] in real [micro-controllers][mcu-wiki] you need the special programming devices.  

* `To be continued...`  

### License

These code may be COPYRIGHT PROTECTED by ©2017 DimiG  

[c-wiki]:https://en.wikipedia.org/wiki/C_(programming_language)
[asm-wiki]:https://en.wikipedia.org/wiki/Assembly_language
[fw-wiki]:https://en.wikipedia.org/wiki/Firmware
[emacs]:https://en.wikipedia.org/wiki/Emacs
[PIC16F84A]:http://www.microchip.com/wwwproducts/en/PIC16F84A
[mplab-x]:http://www.microchip.com/mplab/mplab-x-ide
[hex-wiki]:https://en.wikipedia.org/wiki/Intel_HEX
[compiler]:https://en.wikipedia.org/wiki/Compiler
[mcu-wiki]:https://en.wikipedia.org/wiki/Microcontroller
[atmega8]:http://www.atmel.com/products/microcontrollers/avr/megaavr.aspx
[atmelstudio]:http://www.atmel.com/tools/ATMELSTUDIO.aspx
[clanguage]:https://en.wikipedia.org/wiki/C_(programming_language)
