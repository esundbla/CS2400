# Code to take in length and width of a rectangle from user and calculate the area
# Erik Sundblad
# CS2400
.data
	# String data to prompt input and define output
	greetL: .asciiz "Input Length: "
	greetW: .asciiz "Input Width: "
	conclude: .asciiz "\nThe area is: "
.text
	Main:
	
	#prompt and gather length value
	la, $a0, greetL
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	la $t0, ($v0) #store first value in t0 register
	
	#prompt and gether width value
	la, $a0, greetW
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	la $t1, ($v0) #store second value in t1 register
	
	#calculate area using mul then print conclude string and result 
	mul $t2, $t0, $t1
	la $a0, conclude
	li $v0, 4
	syscall
	
	
	la $a0, ($t2)
	li $v0, 1
	syscall
	
	li $v0,10	#exit()
	syscall
	
	
