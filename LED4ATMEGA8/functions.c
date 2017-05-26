/*
 * functions.c
 *
 * Created: 25.04.2017
 * Author: Dmitri G.
 *
 */

 #include "functions.h"

 void setsegment(unsigned char byte){

 PORTD = ~byte;
 _delay_ms(500);

 }
