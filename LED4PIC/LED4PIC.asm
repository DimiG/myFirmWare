;; #=#=#=#=#=#= PROJECT LED Flashing for PIC micro controller =#=#=#=#=#=#
;;
;; File:   LED4PIC.asm
;; Author: Dmitri G.
;; E-mail: dimi615@pisem.net
;; Assembly code for PIC16F84A running at 4MHz
;; Turns on LEDs connected to RB4, RB5, RB6, RB7

;; ///////////////////////////////////////////////////////////////////////
;;  Revision history
;; ///////////////////////////////////////////////////////////////////////
;;
;; Ver    Date          Comment
;; 0.01   16 May 2017   Start Project
;;
;; ///////////////////////////////////////////////////////////////////////

        LIST        p=16F84A
        __CONFIG    03FF1H

STATUS  equ         03h
PORTB   equ         06h
TRISB   equ         06h
REG_1   equ         10h
REG_2   equ         11h
REG_3   equ         12h

    ;; Start Program HERE

        org         0x00        ; Start at address 0x00

        bsf         STATUS,5    ; Change Memory Bank to 1
        clrf        TRISB       ; Change Port B to control LEDs
        bcf         STATUS,5    ; Change Memory Bank back to 0
start:  movlw       b'01010000' ; Main routine is here
        movwf       PORTB
        call        delay       ; Call delay subroutine
        movlw       b'10100000'
        movwf       PORTB
        call        delay       ; Call delay subroutine
        goto        start       ; Jump to begin
delay:                          ; Delay SUBROUTINE
        movlw       .221
        movwf       REG_1
        movlw       .130
        movwf       REG_2
        decfsz      REG_1,F
        goto        $-1
        decfsz      REG_2,F
        goto        $-3
        nop
        nop
        return
        end
    ;; End of program
