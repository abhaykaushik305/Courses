
# Function open_file
# Signature : int open_file(char *name, int flags, int mode)
.text
.globl open_file
.globl stringClean
open_file:
    # $a0 - file_name
    # $a1 - flag : 0 is for reading
    # $a2 - mode (append,etc) : 0 is for ignore mode
    move $s0, $ra
    jal stringClean
    move $ra, $s0             # Clean the filename before opening
    li $v0, 13
    syscall
    # After syscall $v0 contains the fd
    jr $ra

stringClean:
    li $t0, 0                   # loop counter
    li $t1, 10                 # max_length
clean:
    beq $t0, $t1, L5
    addu $t2, $t0, $a0           # Compute variable offset in $t2
    lb $t3, ($t2)
    bne $t3, 0x0a, L6
    sb $zero, ($t2)
L6:
    addiu $t0, $t0, 1
    j clean
L5:
    jr $ra

# Function read_file
# Signature : int read_file(int fd, char *buf, int max_length)
# Returns : number of characters read
.text
.globl read_file
read_file:
    # $a0 - fd to open file
    # $a1 - Address to input buffer
    # $a2 - Max characters to read
    li $v0, 14
    syscall
    jr $ra

# Function write_file
# Signature : int write_file(int fd, char *buf, int len)
# Returns : number of characters written
.text
.globl write_file
write_file:
    # $a0 - fd to open file
    # $a1 - Address to output buffer
    # $a2 - num characters to write
    li $v0, 15
    syscall
    jr $ra

# Function close_file
# Signature : void close_file(int fd)
.text
.globl close_file
close_file:
    # $a0 - fd to close
    li $v0, 16
    syscall
    jr $ra
