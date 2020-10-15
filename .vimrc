inoremap df <Esc>
map <C-j> 6j
map <C-k> 6k
map <CR> O<Esc>
map ' dd

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

iabbrev prn System.out.println(
iabbrev temp #include <bits/stdc++.h><CR>#define rep(i,a,n) for (int i=a;i<n;i++)<CR>#define per(i,a,n) for (int i=n-1;i>=a;i--)<CR>using namespace std;<CR><CR><CR><CR>int main(){<CR><CR><CR><CR>return 0;<CR>}<CR><Esc>

iabbrev pmat \begin{pmatrix}<CR><CR>\end{pmatrix}

:set completeopt=longest,menuone


color koehler
set notimeout
set expandtab                   
set tabstop=2                   
set softtabstop=2      
set shiftwidth=2          
set shiftround         
set number
set showcmd
filetype indent on
set hlsearch
set autoindent
set incsearch
set syntax=on







