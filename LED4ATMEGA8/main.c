/*
 * main.c
 *
 * File:    main.c
 * Created: 25.04.2017
 * Author:  Dmitri G.
 * E-mail:  dimi615@pisem.net
 *
 * Simple C code for ATmega8 microcontroller running at 8MHz
 * SHOWS the numbers by seven segment LED indicator
 *
 */

#include "main.h"

int main(void)
{

 DDRD = 0xFF;
 PORTD = 0b00000000;

 unsigned char s[] = {
	   0b00000110,
	   0b01011011,
	   0b01001111,
	   0b01100110,
	   0b01101101,
	   0b01111101,
	   0b00000111,
	   0b01111111,
	   0b01101111,
	   0b00111111
   };

 while(1)
 {
	 for (int n=0; n<10; n++)
	 {
	   setsegment(s[n]);
	 }
 }
}
