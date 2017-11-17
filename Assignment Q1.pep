;Question 1

start:   STRO msg, d 
         DECI numOne, d
          
         BREQ end 
         
         DECI numTwo, d 
         LDA numTwo, d
         ADDA numOne, d
         STA sum, d 
         STRO sumMess, d
         DECO sum, d

         LDA numOne, d
         SUBA numTwo, d
         STA diff , d
         STRO diffMess, d
         DECO diff, d
         BR start

end:     STRO msg1, d 
   
STOP

msg:      .ASCII  "\nInput two numbers, or input 0 to terminate.\x00"
msg1:     .ASCII "Goodbye!\x00"
sumMess: .ASCII "The sum is: \x00"
diffMess: .ASCII "\nThe difference is: \x00"
numOne:   .BLOCK 2 
numTwo:   .BLOCK 2
sum:      .BLOCK 2
diff:    .BLOCK 2
.END