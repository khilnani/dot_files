
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

filetype plugin indent on
syntax on

" Then restart vim and run :PluginInstall
" To update the plugin to the latest version, you can run :PluginUpdate

Plugin 'Chiel92/vim-autoformat'
Plugin 'fatih/vim-go'
Plugin 'prettier/vim-prettier'
Plugin 'pseewald/vim-anyfold'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'


"------------------------
" https://github.com/airblade/vim-gitgutter
" :GitGutterEnable
" :GitGutterDisable
" :GitGutterToggle
" jump to next hunk (change): ]c
" jump to previous hunk (change): [c

let g:gitgutter_max_signs = 500  " default value
set updatetime=100

"------------------------
" https://github.com/tpope/vim-fugitive
" :Gdiff
" :Gstatus
" :Gcommit %
" :Gblame
" :Gmove
" :Gdelete
"
"------------------------
" https://github.com/pseewald/vim-anyfold
" [[ AND ]] - navigate

autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1

"----------------------------------------------
" code folding
" zo - opens all fold
" zO - opens single fold
" zc - close
" zm - reduces level of fold by one
" zM - closes all open folds
" zr - opens level of fold
" zR - opens all closed folds
" [z - move to start of open fold
" ]z - move to end of open fold

set foldmethod=indent   "fold based on indent, syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable          " disable folding
"set foldlevel=0

"------------------------
" https://github.com/Chiel92/vim-autoformat
" :Autoformat

let g:autoformat_verbosemode=1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1
let g:formatter_yapf_style = 'pep8'

"------------------------
" https://github.com/prettier/vim-prettier
" npm install -g prettier
" :Prettier
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#tab_width = 4
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#quickfix_enabled = 1
let g:prettier#quickfix_auto_focus = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.yml,*.yaml,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"------------------------
" https://github.com/fatih/vim-go

map <C-g>r :GoRun<CR>
map <C-g>l :GoLint<CR>
" gd OR ctrl-] - USE ctrl-t OR ctrl-o to go back
map <C-g>d :GoDef<CR>
map <C-g>h :GoDoc<CR>
map <C-g>i :GoImports<CR>
map <C-g>v :GoVet<CR>
map <C-g>b :GoBuild<CR>
map <C-g>i :GoInfo<CR>
map <C-g>c :GoCallstack<CR>
map <C-g>e :GoIfErr<CR>

map <C-g>n :cnext<CR>
map <C-g>m :cprevious<CR>
map <C-g>c :cclose<CR>

" https://github.com/fatih/vim-go-tutorial
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 0
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func,type"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
set updatetime=100

"------------------------


" Windows
"------------------------
" :split
" :vsplit
" <C-W>n new
" <C-W>s split
" <C-W>v vsplit
" <C-W>c close
" <C-W>o others
map <C-w>] <C-w>w
map <C-w>[ <C-w>p

" Tabs
" -------------------------
" :tabnew
" :tabedit NAME
" :tabn
" :tabp
" :tabc
" :tabo (others)
map <C-t>] :tabn<CR>
map <C-t>[ :tabp<CR>
map <C-t>n :tabnew<CR>
map <C-t>c :tabc<CR>
map <C-t>o :tabo<CR>

" Shell
"----------------------------
" :! COMMAND
" :! bash - exit to leave
" C-z  - shell
" fg  - return

" Shell
" "--------------------------
" :sh - enter
" C-d - return

"----------------------------------------------
" indentation 

filetype indent on    " turn on indenting
set shiftwidth=4
set autoindent    " auto indent. note - causes issues when pasting text with indents
set smarttab
set smartindent
set tabstop=4
set noexpandtab
set nowrap    " do not wrap
set linebreak   " wraplines at convinient points
set backspace=indent,eol,start


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
" display

set ruler   " display the cursor at all times
set number    " display line numbers. note - selecting text will include the line numbers
set ignorecase    " ignore case when searching
"set list listchars=tab:··,trail:·,eol:^   " display tabs and trailing space$
set list listchars=tab:··,trail:·   " display tabs and trailing space$
set visualbell    " no audio
set showcmd   " show incomplete commands in status bar
set showmode    "show mode at the bottom
set noautoread    " do not auto load files if mofieid outside


"----------------------------------------------
" color schemes

syntax on
set background=dark
" colorscheme solarized
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
" Terminal in a window setup
" See https://code.google.com/p/conque

let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_Color = 1
let g:ConqueTerm_EscKey = '<Esc>'

:cabbrev sh ConqueTermSplit bash

let g:vim_markdown_folding_disabled=1

"----------------------------------------------
" filetype specific behaviors

filetype plugin on

autocmd BufNewFile,BufRead *.json set ft=javascript

autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType ruby map <C-r> :! ruby %<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python map <C-r> :! python %<CR>

autocmd FileType sh map <C-r> :! sh %<CR>

autocmd FileType php map <C-r> :! php %<CR>

autocmd FileType scala map <C-r> :! scala %<CR>

nmap <buffer> time :call nik#time()<CR>
nmap <F2> :echo 'Current time is ' . strftime('%c')<CR>

map <S-k> gT
map <S-l> gt
map <S-t> :tabnew<CR>
map <S-s> :ConqueTermSplit bash<CR>

"----------------------------------------------
" on Vim Load. see :h startup and :h VimEnter

" autocmd VimEnter * ConqueTermSplit bash
" autocmd VimEnter * resize 20


" au BufNewFile *.py r ~/.vim/templates/script.py

