Auto Completion
--------------

- <C-n> <C-p> - scroll through matches based on 'wildmode'

Execution
---------------

- :python print 'test'
- :ruby puts 'test'

File Navigation
---------------

- :e - edit file in curent window
- :Explore - file browser
- :E - edit/explore current dir
- :q - quit

Help
---------------

- |topics| - please cursor and <C-]> to naviagte. <C-t> to return
- :help
- :help quickref
- :[letter][TAB] - cycle through commands

Exec Shell Console Commands
---------------

- :! COMMAND

Pause VIM
---------------

- <C-z> - pause and go to shell
- fg - return 

Windows
---------------

- <C-w>n - :new horizontal split (editing a new empty buffer)
- <C-w>s - :split window horizontally (editing current buffer)
- <C-w>v - :vsplit window vertically (editing current buffer)
- <C-w>c - :close window
- <C-w>o - close all windows, leaving :only the current window open
- <C-w>w - go to next window
- <C-w>p - go to previous window
- <C-w><Up> - go to window above
- <C-w><Down> - go to window below
- <C-w><Left> - go to window on left
- <C-w><Right> - go to window on right
- <C-w -N> - decrease by line
- <C-w +N> - increase by line
- :res +N - resize
- :res -N - resize
- <C-w_> - maximize window
- <C-w=> - make all equal

Tabs
---------------

- :tabnew
- :tabc[close]
- :tabc[close] index
- :tabo[nly]
- :tabn[ext] index
- :tabf[irst]
- :tabl[ast]
- [N] gt - go to tab N

Buffers
---------------

- :e - edit file 

- :hide - close current window
- :only - only keep this window open
- :ls - list all buffers
- :b[N] - open buffer N
- :bn - next buffer
- :bp - prev buffer
- :b [TAB] cycle through files in buffer by name

Navigation
---------------

- 0 -front
- $ - end
- [N]G - go to line
- :[N] - go line
- w - jump word
- ( - move block up
- ) - move block down
- [[ - move section up
- ]] - move section down
- <C-b> back one screen
- <C-f> forward one screen
- <C-u> - up half screen
- <C-d> - down one screen

Mark Lines
---------------

- m[k] - mark line
- '[k] - move to mark k

- 'a-z - same file
- 'A-Z - beteween files

Text Manip
---------------

- i - insert
- ci" or ci' - clear text within " and insert
- I - insert at beginning
- x - delete char
- a - append
- A - append to end
- o - open blank line below
- O - open blank line after
- ea - append end of word

Formatting
---------------

- [N]<< - shift line
- [N]>> - shift line
- v - select multi
- V - select lines
- > - shift
- < - shift
- d - delete marked
- ~ - switch case
- y - copy

Copy/Paste
---------------

- yy - copy a line
- [N]yy - copy N lines
- p - paste after cursor
- P - paste before cursor
- dd - cut
- [N]dd - cut next N lines
- . - repeast last command
- u - undo

Save
---------------

- :w - write
- :q - quit
- :wq - write and quit
- :q! - throw away changes

Search
---------------

- /pattern - search for pattern
- ?pattern - search backward for pattern
- n - repeat search in same direction
- N - repeat search in opposite direction
- :%s/old/new/g - replace all old with new throughout file
- :%s/old/new/gc - replace all old with new throughout file with confirmations

.vimrc
---------------

```
set shiftwidth=2
set number
set ignorecase
set autoindent
set nolist
syntax on
colorscheme jellybeans
filetype plugin on
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set foldlevel=10
```



