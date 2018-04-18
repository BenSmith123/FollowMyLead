///print_debug(string)

// adds another entry to the bottom of the array and pushes each array-item down
if global.debug
{
    
    for(i = global.error_log_size; i > 0; i--)
    {
        global.error_msg[i] = global.error_msg[i-1] // the current index becomes the index entered before it
    }
    
    if global.error_log_size != 36 // cap the size at 40 
    {global.error_log_size++} // increment array size
    
    global.error_msg[0] = argument0 // cast latest debug msg to string

}
