.section .data                      # initialize data

Numbers:                            # set numbers
.long 1
.long 15
.long 4
.long 2
.long 7
.long 9
.long 23
.long 7
.long 3
.long 11

Array_length:                       # set length
.long 10

.section .text
.global find_max                    # initialize function

#Call function
find_max:
    xor %ecx, %ecx                  # intialize count
    mov Numbers, %eax               # initialize return
    

#Loop function
max_loop:
    cmp Array_length, %ecx    # while count not reached, keep looping
    jge done

    movl Numbers(,%ecx,4), %ebx       # move index to base address

    cmp %ebx, %eax                  # if return is greater than current, skip change
    jg inc_next

    mov %ebx, %eax                  # else, do not skip change 

inc_next:                           #increment and loop 
    inc %ecx
    jmp max_loop                    # reset loop

#End function
done:
    ret

.section .note.GNU-stack,"",@progbits
