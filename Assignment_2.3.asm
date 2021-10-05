# Program to simulate if equals flow control in assembly language
# Erik Sundblad
# CS2400
.text
main:
	# theoretical x, i, j variables so s0, s1, s2 respectively 
	li $s0, 0	#initialized to 0
	li $s1, 1
	li $s2, 1
	
	beq $s1, $s2, Do #branching if statement ie (i==j)
	j End #If not branched skip to outside block 
	Do:li $s0, 2
		li $v0, 1
		la $a0, ($s0)
		syscall	#Print call to confirm break statement
		
		
    	
    	
    	End:li $s0, 5
		li $v0, 1
		la $a0, ($s0)
		syscall  #Final print of value of x
		
		li $v0,10
		syscall		
