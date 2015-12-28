# VIM CheatSheet

## Move on the current line
### Search for characters
    f{char}     # Go to the next occurence of char
    F{char}     # Go to the previous occurence of char (f backward)
    t{char} # Go just before the next occurence of char
    T{char} # Go just before the previous occurence of char (t backward)
    ;       # Move to next occurence on the line
    ,       # Move to previous occurence on the line

### Move to ends
    0       # Go to column 0
    ^<space>    # Go to the first character of the line
    $       # Go to the last column
    g_      # Go to the last character of the line

## Windows
    \<C - w\> + h/j/k/l # To Window (with direction)
    \<C - w\> + w   # To next Window 
    
## Buffers
    ,b  # Next Buffer
    :ls # List Buffers

## Plugins related
### NERDTree
    \<C - n\> # Toggle NerdTree
