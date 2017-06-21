/**
 * File:    main.c
 * Created: 21.06.2017
 * Author:  Dmitri G.
 * E-mail:  dimi615@pisem.net
 *
 * Simple C code - "Hello World" program ;)
 * For ATmega8a micro-controller running at 1MHz
 * Blinking the LED connected to Port PD0
 *
 */

 #define F_CPU 1000000L
 #include <avr/io.h>
 #include <util/delay.h>

// NOTE(DimiG): Main code is starting HERE

 int main(void)
 {
	 DDRD = 0xFF;
	 PORTD = 0b00000000;
	 while(1)
	 {
		 PORTD |= (1<<(PORTD0));
		 _delay_ms(500);
		 PORTD &= ~(1<<(PORTD0));
		 _delay_ms(500);
	 }
 }
