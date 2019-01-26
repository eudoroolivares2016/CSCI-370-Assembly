##################################
#Eudoro Olivares and Jack Lewis	 #
#CSCI 370		 	 #
#Wen Chen Hu		 	 #
#Spring 2019		 	 #
#January 26 2019	 	 #
#String I/O Example	 	 #
##################################	
	
	.data ##Data Declaration Section.
## String to be printed:

prompt:		.asciiz		"Enter a string: " 
message: .asciiz  "You Entered: "
userInput: .space 20

	
	.text	##Assembly Language instructions go in text segment
main:		##Start of code section.
	
		# gets the users input as text 													
							
										
	# prints prompt asking for move
	li $v0, 4 
	la $a0, prompt  
	syscall
					
	# puts in the user input onto the a1 register 							
	li $v0, 8 
	la $a0, userInput 
	li $a1 , 20
	syscall
	
	# this will print out "You Entered: "
	li $v0, 4 
	la $a0, message  
	syscall
	
	# this will print out the user input
	li $v0, 4 
	la $a0, userInput  
	syscall							
	
	
	li	$v0,10 #terminate program
	syscall
	
	
