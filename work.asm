data segment
    ; add your data here!
    rules db 'If the player touches the green blocks, they lose. If you touch the top part or the lower part of the screen, you loose too. The bird flaps upward each time    that the player click on the space key. If the space key is not tapped, The birdfalls because of gravity.', 13,10, '$'
    
    rules2 db  'each pair of blocks that he navigates   between earns the player one point.', 13,10,'$'
    
    rules3 db 'There was no variation or evolution in  gameplay throughout the game, as the    blocks always have the same gap between them and there is no end to the running track, having only the flap and ding    sounds and the rising score.', 13, 10, '' , 13, 10, 'press "r" to return', 13, 10, '$'
    
    game_over db 27,'[1;31H' ,'GAME OVER', 13,10,'$'
    
    new_player db ' To learn how to play type "i"', 13, 10, '$'
    
    empty_line db ' ', 13, 10 ,'$'
    
    empty_line2 db 27, '[1;0H', ' ', 13, 10 ,'$'
    
    wellcome db 27,'[2;0H',' Welcome player!',13, 10,13, 10,' Are you ready for the FLAPPY WORLD?', 13, 10, '$'
    
    newGame db ' Do you want to start a new game? (y/n)', 13, 10, '$'
    
    goodBye db ' Good bye!', 13, 10, '$'
    
    luck db ' Good luck!' , 13, 10, '$'
    
    row db 80
    
    col db 27
    
    blockCol dw 299
    
    randomNumber dw 0
   
    checkRandom dw 0
   
    col_for_screen dw 0
    
    for_screen dw 320
   
    checkRow dw 0
   
    fail_from_block db 0
   
    points db 0
   
    forScore db 0
   
    Seed dw ?
   
    loose_block_up db 0 
    
    right_col db 0
    
    right_row db 0
    
    left_col db 0
    
    left_row db 0
    
    left_col2 db 0
    
    left_row2 db 0
    
    top_col db 0
    
    top_row db 0
    
    top_col2 db 0
    
    top_row2 db 0
    
    bot_col db 0
    
    bot_row db 0
    
    bot_col2 db 0
    
    bot_row2 db 0
    
    bot_col3 db 0
    
    bot_row3 db 0
    
    top_left_col db 0
    
    top_left_row db 0
    
    bot_left_col db 0
    
    bot_left_row db 0
    
    top_top_col db 0
    
    top_top_row db 0
    
    bot_bot_col db 0
    
    bot_bot_row db 0
    
    fail db 0
    
    
    bird db 6 dup (0BH), 6 dup (0), 5 dup(0BH)    
    db 4 dup (0BH), 2 dup (0), 4 dup (0EH), 0, 0FH, 0, 4 dup (0Bh)
    db 3 dup (0BH), 0, 5 dup (0EH), 0, 3 dup (0FH), 0, 3 dup (0BH)
    db 0bh, 4 dup (0), 4 dup (0eh), 0, 2 dup (0Fh), dup (0), 0Fh,0, 2 dup (0Bh)
    db 0, 4 dup (0Fh), 0, 3 dup (0Eh), 0, 2 dup (0Fh),0, 0Fh, 0, 2 dup (0Bh)
    db 0, 5 dup (0fh), 0, 3 dup (0eh), 0, 3 dup (0fh), 0, 2 dup (0Bh)
    db 0, 0Eh, 3 dup (0Fh), 0Eh, 0, 4 dup (0Eh), 5 dup (0), 0Bh
    db 0Bh, 0, 3 dup (0Eh), 0, 4 dup (0Eh),0, 5 dup (0ch), 0 
    db 2 dup (0BH), 3 dup (0), 4 dup (0eh), 0, 0Ch, 5 dup (0), 0bh
    db 4 dup (0BH), 0, 5 dup (0Eh),0, 4 dup (0Ch),0, 0bh
    db 5 dup (0BH), 2 dup (0), 4 dup (0eh), 5 dup (0), 0bh
    db 7 dup (0BH), 4 dup (0), 6 dup (0Bh)   
    
    
    no_bird db 17 dup (0BH)
    db 17 dup (0BH)    
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    db 17 dup (0BH)
    
    
    
    block db 21 dup (02H) 
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    db 21 dup (02H)
    
    
    
    no_block db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)
    db 21 dup (0Bh)

     
     
stack segment
    
ends

code segment  
proc init_graphics
    
    push ax
    mov ax, 13H
    int 10H
    pop ax
    ret
    
endp init_graphics

PROC SETCHECK
    PUSHA
    xor bx, bx
mov bl,col
add bl,5
mov top_col,bl
mov bl, row
mov top_row,bl
              
mov bl,col
add bl,9
mov top_col2,bl
mov bl, row
dec bl
mov top_row2,bl                            

mov bl,col
add bl,9
mov bot_col,bl
mov bl,row
add bl,12
mov bot_row,bl

mov bl,col
add bl,8
mov bot_col2,bl
mov bl,row
add bl,12
mov bot_row2,bl

mov bl,col
add bl,7
mov bot_col3,bl
mov bl,row
add bl,12
mov bot_row3,bl

mov bl,col
inc bl
mov left_col,bl
mov bl,row
add bl,4
mov left_row,bl

mov bl,col
inc bl
mov left_col2,bl
mov bl,row
add bl,6
mov left_row2,bl

mov bl,col
add bl,17
mov right_col, bl
mov bl,row
add bl,7
mov right_row,bl

mov bl,col
add bl, 4
mov top_left_col,bl
mov bl,row
inc bl
mov top_left_row,bl


mov bl,col
add bl, 4
mov bot_left_col,bl
mov bl,row
add bl, 10
mov bot_left_row,bl

mov bl,col
add bl, 2
mov top_top_col,bl
mov bl, row
dec bl
mov top_top_row,bl

mov bl,col
add bl, 2
mov bot_bot_col,bl
mov bl, row
add bl, 12
mov bot_bot_row,bl


    POPA
    RET
ENDP



    
PROC CHECKHIT
    
    PUSHA
    xor cx, cx
    xor dx, dx
    CALL SETCHECK
    
    MOV AH,0DH
    MOV BH,0H
    MOV Cl,top_col
    MOV Dl,top_row
    INT 10h
    CMP AL,02h
    je ehit2
        MOV AH,0DH
    MOV BH,0H
    MOV Cl,top_top_col
    MOV Dl,top_top_row
    INT 10h
    CMP AL,02h
    je ehit2
        MOV AH,0DH
    MOV BH,0H
    MOV Cl,top_col2
    MOV Dl,top_row2
    INT 10h
    CMP AL,02h
    je ehit2
    MOV AH,0DH
    MOV BH,0H
    MOV Cl,bot_col
    MOV Dl,bot_row
    INT 10h
    CMP AL,2
    je ehit3
        MOV AH,0DH
    MOV BH,0H
    MOV Cl,bot_col2
    MOV Dl,bot_row2
    INT 10h
    CMP AL,2
    je ehit3
        MOV AH,0DH
    MOV BH,0H
    MOV Cl,bot_bot_col
    MOV Dl,bot_bot_row
    INT 10h
    CMP AL,2
    je ehit3
       MOV AH,0DH
    MOV BH,0H
    MOV Cl,bot_col3
    MOV Dl,bot_row3
    INT 10h
    CMP AL,2
    je ehit3
    
         MOV AH,0DH
    MOV BH,0H
    MOV Cl,right_col
    MOV Dl,right_row
    INT 10h
    CMP AL,2
    je ehit

     MOV AH,0DH
    MOV BH,0H
    MOV cl,left_col
    MOV dl,left_row
    INT 10h
    CMP AL,2
    je ehit2
    MOV AH,0DH
    MOV BH,0H
    MOV cl,left_col2
    MOV dl,left_row2
    INT 10h
    CMP AL,2
    je ehit3
    
    MOV AH,0DH
    MOV BH,0H
    MOV cl,top_left_col
    MOV dl,top_left_row
    INT 10h
    CMP AL,2
    je ehit2
    
    MOV AH,0DH
    MOV BH,0H
    MOV cl,bot_left_col
    MOV dl,bot_left_row
    INT 10h
    CMP AL,2
    je ehit3
    
    jmp enothit
ehit:
    inc fail_from_block
    inc fail
    jmp ENOTHIT
ehit2:
    inc fail_from_block
    mov loose_block_up, 2
    inc fail
    jmp ENOTHIT
ehit3:
    inc fail_from_block
    mov loose_block_up, 1
    inc fail
    jmp ENOTHIT   
        
ENOTHIT:
    POPA
    RET
ENDP




proc delay2
    pusha     
    mov cx, 9      ;HIGH WORD.
    mov dx, 0A120h ;LOW WORD.
    mov ah, 86h    ;WAIT.
    int 15h
    popa
    ret
endp
 
proc delay3
    pusha     
    mov cx, 36      ;HIGH WORD.
    mov dx, 0A120h ;LOW WORD.
    mov ah, 86h    ;WAIT.
    int 15h
    popa
    ret
endp
 
 
proc delay   
    pusha
    mov cx, 1      ;HIGH WORD.
    mov dx, 0A120h ;LOW WORD.
    mov ah, 86h    ;WAIT.
    int 15h
    popa
    ret
endp

     
proc print_blue_screen 
    ;print blue screen
again:
    pusha    
    push bx
    mov bx, offset no_block
    mov si, bx
    mov ax, col_for_screen
    push ax
    mov di, ax
    mov bp, sp        
    mov bx, [bp + 2]
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh, bh
    add ax, bx  
    mov AX, 0A000H
    mov es, ax
    mov cx, 200
drawScreen:
    push cx
    push di
    mov cx, 1
    rep movsb
    pop di
    add di, 320
    pop cx   
    loop drawScreen
    pop ax
    pop bx
    popa
    add col_for_screen, 1
    dec for_screen
    cmp for_screen, 0
    jnz again
    mov col_for_screen, 0
    mov for_screen, 320
    ret
    endp 
    
proc move_up
    ;move the bird up     
    pusha   
    sub row, 2
    cmp row, 0
    jnz bla
    ;mov bx, offset bird
;    push bx
;    mov al,col
;    mov ah, row
;    push ax
;    call print_bird
    mov fail, 1
bla:     
     popa
     ret    
     endp
        
        
proc print_bird
    ; print the bird  
    mov bp, sp
    pusha 
    mov bx, [bp + 2]
    mov si, [bp + 4]
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh, bh
    add ax, bx
    mov di, ax
    mov AX, 0A000H
    mov es, ax
    
    mov cx, 12
DRAW:
    push cx
    push di    
    mov cx, 17
    rep movsb
    pop di
    add di, 320
    pop cx
    loop DRAW 
   
    ;call checkhit
    popa
    ret
    endp
    
    
proc delete_bird 
             
    ; delete the bird
    mov bp, sp        
    pusha
    mov si, bx 
    mov bx, [bp+2]
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh, bh
    add ax, bx
    mov di, ax   
    mov AX, 0A000H
    mov es, ax
    mov cx, 12
    mov bx, offset no_bird
    DRAW1:
    push cx
    push di
    mov cx, 17
    rep movsb
    pop di
    add di, 320
    pop cx
    loop DRAW1 
    popa
    ret
    endp

    
proc lose_down
    pusha
    xor ax, ax
    mov al, row
    mov checkRow, ax
    mov ax, 188
    mov cx, 7
Checkk:    
    cmp checkRow, ax
    jz Checkkk
    add ax, 2    
    loop Checkk
    JMP NOOO
Checkkk:
    mov fail, 1
NOOO:        
    popa
    ret
    endp    
    
proc wait_to_start
    ;call print_block
    pusha
up:
    mov ah, 0
    int 16h
    cmp al, 32
    jnz up
    mov bx, offset no_bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call delete_bird
    pop ax
    pop bx
    
    call move_up
    mov bx, offset bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call print_bird
    pop ax
    pop bx
    
    mov bx, offset no_bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call delete_bird
    pop ax
    pop bx
    
    call move_up
    mov bx, offset bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call print_bird 
    pop ax
    pop bx
    
    popa
    ret
    endp
    
proc print_block    
    push ax
    push bx
    mov ax, randomNumber    
    mov checkRandom,ax
    
    pop ax    
    mov bx, offset block
    mov si, bx
    mov ax, blockCol
    push ax
    mov di, ax
    mov bp, sp        
    pusha
    mov bx, [bp+2]
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh , bh
    add ax, bx   
    mov AX, 0A000H
    mov es, ax
    mov cx, randomNumber
DRAWblock:
    push cx
    push di
    mov cx, 21
    rep movsb
    pop di
    add di, 320
    pop cx
    cmp checkRandom, 0
    jz space
    dec checkRandom    
    loop DRAWblock
space:
    mov cx, 200
    sub cx, randomNumber
    sub cx, 40
    add di,12800 ; 40*320 
after_space:    
    push cx
    push di
    mov cx, 21
    rep movsb
    pop di
    add di, 320
    pop cx
    loop after_space    
    pop ax
    pop bx
    
    
    popa
    call delay
    ret 2
    endp
    
proc delete_block
    
    
    push ax
    push bx
    mov ax, randomNumber    
    mov checkRandom,ax
    pop ax     
    mov bx, offset no_block
    mov si, bx
    mov ax, blockCol
    push ax
    mov di, ax
    mov bp, sp        
    pusha
    mov bx, [bp + 2]
    
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh, bh
    add ax, bx  
    mov AX, 0A000H
    mov es, ax
    mov cx, randomNumber

DELETEblock:
    push cx
    push di
    mov cx, 21
    rep movsb
    pop di
    add di, 320
    pop cx
    cmp checkRandom, 0
    jz space7
    dec checkRandom    
    loop DELETEblock
space7:
    mov cx, 200
    sub cx, randomNumber
    sub cx, 40
    add di,12800 ; 40*320
after_space7:    
    push cx
    push di
    mov cx, 21
    rep movsb
    pop di
    add di, 320
    pop cx
    loop after_space7
    pop ax
    pop bx
    popa
    ret
    endp

 
proc cleanScreen
    ;clean the screen    
    pusha
    mov ah,7
    xor al,al
    xor cx,cx
    mov dl,4fh
    mov dh,18h
    mov bh,0
    int 10h 
    popa
    ret
    endp cleanScreen


proc print
    ;printing the line
    mov ah, 9
    int 21h
    ret
    endp
    
proc generate_random  
    mov bp, sp
    pusha
    mov ah,0
    int 1AH 
    mov cx, SEED
    shl cx, 1
    mov SEED, cx
    add dx, cx

    mov [bp + 2], dx    
    popa
    
    ret
endp

proc getRandomNumber

    pusha
    mov ah, 0
    int 1AH 
    mov SEED, cx 
    xor SEED, dx
    mov ax, 0
    push ax
    call generate_random
    pop dx 
RANDOM_AGAIN1:
    push ax
    call generate_random
    pop cx 
    mov bx, cx
    sub bx, dx
    cmp bl, 15
    jb RANDOM_AGAIN1
    cmp bl, 145 
    ja RANDOM_AGAIN1
    
    xor bh, bh
    mov randomNumber, bx
    popa
    ret 2    
    
endp    

proc LASTscore
    cmp forScore, 0
    jz notscore
    mov al, 1
    mov bh, 0
    mov bl, 0011_1011b
    mov cx, msg2end1 - offset msg1 ; calculate message size.
    mov dl, 0
    mov dh, 40
    push cs
    pop es
    mov bp, offset msg1
    mov ah, 13h
    int 10h
    jmp msg2end1
    msg1 db "Your last score was: "
msg2end1:
    mov cl, points 
    xor ch,ch
    push cx      
    push bp
    mov bp, sp
    mov ax, [bp+2] ;Value of stepCounter
    mov cl, "$" 
    mov [bx], cl
divide:
    mov ah, 0
    mov cl, 10
    div cl         ; div number(in ax) by 10
    dec bx
    add ah, 48     ;Make into a character
    mov [bx], ah  
    cmp al, 0
    jne divide 
    mov dx, bx
    mov ah, 9h
    int 21h
    pop cx
    pop bp
notscore:     
    ret     
    endp LASTscore


proc score
    mov al, 1
    mov bh, 0
    mov bl, 0011_1011b
    mov cx, msg2end - offset msg2 ; calculate message size.
    mov dl, 16
    mov dh, 0
    push cs
    pop es
    mov bp, offset msg2
    mov ah, 13h
    int 10h
    jmp msg2end
    msg2 db "score: "
msg2end:
    mov cl, points 
    xor ch,ch
    push cx      
    push bp
    mov bp, sp
    mov ax, [bp+2] ;Value of stepCounter
    mov cl, "$" 
    mov [bx], cl
divide1:
    mov ah, 0
    mov cl, 10
    div cl         ; div number(in ax) by 10
    dec bx
    add ah, 48     ;Make into a character
    mov [bx], ah  
    cmp al, 0
    jne divide1 
    mov dx, bx
    mov ah, 9h
    int 21h
    pop cx
    pop bp 
    ret 
endp score


start:
    push ax      
    mov ax,data
    mov ds,ax
    mov es,ax   
    pop ax     
    call init_graphics    
main:

    call cleanScreen
    call LASTscore
    lea dx, empty_line
    call print
    lea dx, wellcome
    call print
    lea dx, empty_line
    call print
    lea dx, newGame
    call print
    lea dx, empty_line
    call print
    lea dx, new_player
    call print
    lea dx, empty_line
    call print
    
waitToStart:   
    mov ah, 0
    int 16h   
    cmp al, 'y'
    jnz y
    lea dx, empty_line
    call print
    lea dx, luck
    call print
    call delay2   
    jmp gameStart
y:        
    cmp al, 'n'
    jz gameEnd
    cmp al, 'i'
    jnz waitToStart
    call cleanScreen
    lea dx, empty_line2
    call print
    lea dx, rules
    call print
    lea dx, rules2
    call print
    lea dx, rules3
    call print
again21:
    mov ah, 0
    int 16h
    cmp al, 'r'
    jnz again21

    jmp main    

gameStart:
    mov forScore, 1
    mov points, 0
    
    call print_blue_screen
    call score

    call getRandomNumber
                                     
    mov bx, offset bird
    push bx
    mov al, col
    mov ah, row    
    push ax    
    call print_bird
    call print_block
    call wait_to_start
forever:
    mov al, 0   
    mov ah, 1
    int 16h   
    cmp al, 0
    jz here
    mov ah, 0
    int 16h
    cmp al, 32
    jnz here
    mov cx, 8
loop_up:

    call checkhit
    cmp fail, 1
    jz gameOver
    
    mov bx, offset no_bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call delete_bird
    call move_up
    cmp fail, 1
    jz gameOver
    mov bx, offset bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call print_bird
    loop loop_up
    mov al, 0
    jmp here1   
here:
    ;always down
    mov cx, 3
pppp:
    call checkhit
    cmp fail, 1
    je gameOver
    
    mov bx, offset no_bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call delete_bird
    add row, 2
    mov bx, offset bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call print_bird
    loop pppp
    call lose_down    
    cmp fail, 1
    je gameOver

here1:

    call score
    call delete_block
    call score
    sub blockCol, 17
    push bx
    mov bx, blockCol
    cmp blockCol, 27
    jnz nope
    inc points
nope:
    pop bx        
    ;check touch with the blocks
    
notOver:               
    call score        
    call print_block
    call score

    cmp blockCol, 0
    jnz check
    call score
    call delete_block
    call score
    mov blockCol,299
    
    call getRandomNumber
     
    
    call score
    call print_block
    call score
    popa
    
    jmp forever
check:
    call score
    cmp blockCol, 10
    jnz forever
    mov blockCol, 17 
    jmp forever
gameOver:


    cmp fail_from_block, 1
    jnz notBlock
   
    call score
    call delete_block
    call score
    
    cmp loose_block_up, 2
    jnz after7
    mov bx, offset bird
    push bx
    mov ax, randomNumber
    mov ah, al
    xor al, al
    mov al,col
    jmp not_down
after7:    
    cmp loose_block_up, 1
    jnz notBlock
    mov bx, offset bird
    push bx
    mov ax, randomNumber
    mov ah, al
    add ah, 28
    xor al, al
    mov al,col
not_down:    
    push ax    
    call print_bird
    jmp notBlock
    
after2:
    mov bx, offset bird
    push bx
    mov al,col
    mov ah, row
    push ax
    call print_bird
    

notBlock:
    call score
    
    call print_blue_screen
    
    call score
    
    lea dx, game_over
    call print 
    call delay3
    mov fail_from_block, 0
    mov loose_block_up, 0
    mov fail, 0
    mov row , 80
    mov col , 27
    mov blockCol , 299
    xor di, di
    xor si, si
    xor ax, ax
    xor bx, bx
    xor cx, cx
    xor dx, dx
    jmp main

gameEnd:
    lea dx, empty_line
    call print
    lea dx, empty_line
    call print
    lea dx, goodBye
    call print
    call delay2
    MOV AH, 0
    INT 21H

ends

end start ; set entry point and stop the assembler. 


;;;;;toby@smile.com