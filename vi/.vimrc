"----------------------------------------------
" indentation 

filetype indent on    " turn on indenting
set shiftwidth=2
set autoindent    " auto indent. note - causes issues when pasting text with indents
set smarttab
set smartindent
set tabstop=2
set expandtab
set nowrap    " do not wrap
set linebreak   " wraplines at convinient points


"----------------------------------------------
" turn of swap files

set noswapfile
set nobackup
set nowb


"---------------------------------------------
" scrolling
" 
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


"----------------------------------------------
" code folding

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set foldenable        "dont fold by default
set foldlevel=10


"----------------------------------------------
" display

set ruler   " display the cursor at all times
set number    " display line numbers. note - selecting text will include the line numbers
set ignorecase    " ignore case when searching
set list listchars=tab:··,trail:·   " display tabs and trailing space$
set visualbell    " no audio
set showcmd   " show incomplete commands in status bar
set showmode    "show mode at the bottom
set noautoread    " do not auto load files if mofieid outside


"----------------------------------------------
" color schemes

syntax on
colorscheme jellybeans


"----------------------------------------------
" code completion

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


"----------------------------------------------
" filetype specific behaviors

filetype plugin on

autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType python set omnifunc=pythoncomplete#Complete

nmap <buffer> time :call nik#time()<CR>
nmap <F2> :echo 'Current time is ' . strftime('%c')<CR>

map <S-k> gT
map <S-l> gt
map <S-t> :tabnew

