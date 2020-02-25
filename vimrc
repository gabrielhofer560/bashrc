inoremap df <Esc>
map <C-j> 6j
map <C-k> 6k
map <CR> O<Esc>
map ' dd

iabbrev temp #include <bits/stdc++.h><CR>#define LINE cerr<<__func__<<' '<<__LINE__<<endl;<CR>#define rep(i,a,n) for (int i=a;i<n;i++)<CR>#define per(i,a,n) for (int i=n-1;i>=a;i--)<CR>using namespace std;<CR><CR><CR><CR>int main(){<CR><CR><CR><CR>return 0;<CR>}<CR><Esc>

" #include <bits/stdc++.h>
" using namespace std;
" #define rep(i,a,n) for (int i=a;i<n;i++)
" #define per(i,a,n) for (int i=n-1;i>=a;i--)
" 

color koehler
" color delek
"color default

set notimeout
set syntax=on
set expandtab                   "Always uses spaces instead of tabs
set tabstop=2                   "A tab is 2 spaces
set softtabstop=2               "Insert 2 spaces when tab is pressed
set shiftwidth=2               "An indent is 2 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple
set number
set showcmd
filetype indent on
set hlsearch
set autoindent
set incsearch

