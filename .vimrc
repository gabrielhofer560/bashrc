" ------------------------------------- "
"               ESSENTIAL               "
inoremap df <Esc>
map <C-j> 6j
map <C-k> 6k
map <CR> O<Esc>
map ' dd
noremap m ZZ
noremap ZZ <Esc>
set expandtab                   
set tabstop=4
set softtabstop=4
set shiftwidth=4     
set autoindent
" ------------------------------------- "

" goto place in file where you were 
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  au BufReadPost * :syn match Keyword /N/ 
  au BufReadPost * :syn match Keyword /M/ 
  au BufReadPost * :syn match cType /ll/
  au BufReadPost * :syn match cType /ld/
endif

set syntax=on
set cursorline
set shiftround         
set number
set showcmd
filetype indent on
set hlsearch
set incsearch
set clipboard=unnamed
" set listchars=tab:\|\ 
" set list
" commands don't timeout
set notimeout
" style
" color koehler






