# VIM CheatSheet

## Edit

    t   # Insert blank line below
    T   # Insert blank line above

## Move on the current line
### Search for characters
    f{char}     # Go to the next occurence of char
    F{char}     # Go to the previous occurence of char (f backward)
    t{char}     # Go just before the next occurence of char
    T{char}     # Go just before the previous occurence of char (t backward)
    ;           # Move to next occurence on the line
    ,           # Move to previous occurence on the line
    w or W      # Move to the beginning of the following word/WORD
    e or E      # Move to the end of the current word/WORD

### Move to ends
    0           # Go to column 0
    ^<space>    # Go to the first character of the line
    $           # Go to the last column
    g_          # Go to the last character of the line
    
## Move with a buffer
### Play with opening/endings
    % # when pressed on a (, ", {, go to the corresponding character
    
### Search for strings
    /<string> # Search for <string> in the buffer
    * # Go to the next occurence of the word under the cursor
    # # Go to the previous occurence of the word under the cursor
    n or N # Go to the next (or previous) occurence of the searched <string>
    

## Tools

    ,;      # Search and replace word under the cursor
    ,a      # Select all text in current buffer
    < or >  # Indent / Outdent
    =       # Auto Indent
    jj      # In insert mode, escape

## Windows
    <C - h/j/k/l>   # To Window (with direction)
    <C - w> + w     # To next Window 
    
## Buffers
    ,b                      # Next Buffer
    <left> or <right>       # Previous/Next Buffer
    :ls                     # List Buffers
    ,s                      # equivalent to :w
    :saveas <path/to/file>  # save current buffer to <path/to/file>
    ZZ                      # save and quit, equivalent to :wq
    
## Files
    

## Plugins related
### NERDTree
    <C - n> # Toggle NerdTree
