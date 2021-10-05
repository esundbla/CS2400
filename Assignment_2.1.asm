# Given values of a rectangle calculate the area and output to the termina
# Erik Sundblad
# CS2400

.data
	# String Data for output presentation
	str: .asciiz  "The area is: "
	
.text
	#initial string output
	la $a0, str
	li $v0, 4
	syscall
	
	#Calculate area using mul
	li $s0, 10
	li $s1, 5
	mul $s3, $s0, $s1
	
	#print results of calculation
	la $a0, ($s3)
	li $v0, 1
	syscall
	
	li $v0,10	#exit()
	syscall
