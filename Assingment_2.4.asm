# Program to simulate break if not equal in assembly code
# Erik Sundblad
# CS2400
.text

main:	#Initialize with testable values representing variables x, i, j
	li $s0, 0 #Initialize x = 0
	li $s1, 1
	li $s2, 2
	
	bne $s1, $s2, L2 #Break if not equal move to L2
L1: 
	li $s0, 2 #Code representing "Else" statement 
	j L3	  #Jump to skip "If" block 
L2:
	li $s0, 1
L3:	
	#L3 final block to print to terminal value of x 
	li $v0, 1
	la $a0, ($s0)
	syscall
	
	li $v0,10	#exit()
	syscall	
