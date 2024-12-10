mov ecx, buffer_size ; get buffer size
mov eax, edi ; copy edi to eax to avoid modifying edi
mul DWORD 4 ; multiply eax by 4 to get offset
cmp eax, ecx ; compare offset with buffer size
jge overflow_error ; jump to error handler if offset exceeds buffer size
mov eax, [esi+eax] ; read data from the buffer
jmp continue ; jump to next instruction
overflow_error:
; Handle the overflow error (e.g., raise an exception or return an error code)
continue: