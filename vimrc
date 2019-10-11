imap df <Esc>
map <C-j> 6j
map <C-k> 6k
map <CR> O<Esc>
map ' dd
set cursorline


iabbrev temp #include <bits/stdc++.h><CR>#define nl '\n'<CR>using namespace std;<CR>typedef long long ll;<CR>int main(){<CR>ios_base::sync_with_stdio(false);<CR>cin.tie(NULL);<CR>return 0;<CR>}<CR><Esc>
set notimeout
set syntax=on
set expandtab                   "Always uses spaces instead of tabs
set tabstop=2                   "A tab is 4 spaces
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2               "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple
set number
set showcmd
"set cursorline
filetype indent on
"set showmatch
set hlsearch
set autoindent
set incsearch
