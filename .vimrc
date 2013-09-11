set shiftwidth=2
set number
set ignorecase
set autoindent
set list
syntax on
colorscheme jellybeans
filetype plugin on
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set foldlevel=10
