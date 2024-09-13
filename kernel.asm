[BITS 32]
global start
section .text

start:
    ; Initialize stack
    mov esp, 0x90000
    
    ; Initialize GDT here (not shown for brevity)
    ; You will set up memory paging or flat memory model

    ; Initialize terminal (basic output to screen)
    call terminal_init

    ; Show a login prompt
    call login_manager

hang:
    jmp hang

extern c_function   ; Declaring the external C function

start:
    call c_function  ; Calling the C function from the assembly
    jmp $
