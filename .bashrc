###########################################################################
RED='\033[0;31m'
GREEN='\033[1;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'
MAG='\033[1;35m'
BLUE='\033[1;34m'
LCYAN='\033[1;36m'

# removes a.out if it exists, compiles main.cpp, executes a.out for every input file
bind -x '"\C-j":" if [ -f main.cpp  ]; then vi main.cpp; fi "'
bind -x '"\C-k":" if [ -f a.out ]; then rm a.out ; fi ; g++ -g -O2 -std=gnu++17 -static main.cpp ; if [ -f a.out ]; then for i in in*; do ./a.out < $i; done ; fi "'
bind -x '"\C-f":" ls "'

alias main='tmp > main.cpp ; touch in '
alias in='vi in'
alias in2='vi in2'
alias in3='vi in3'
alias in4='vi in4'
alias in5='vi in5'
alias in6='vi in6'

alias a=' if [ -d a ]; then cd a ; fi ; if [ -d ../a ]; then cd ../a ; fi '
alias b=' if [ -d b ]; then cd b ; fi ; if [ -d ../b ]; then cd ../b ; fi '
alias c=' if [ -d c ]; then cd c ; fi ; if [ -d ../c ]; then cd ../c ; fi '
alias d=' if [ -d d ]; then cd d ; fi ; if [ -d ../d ]; then cd ../d ; fi '
alias e=' if [ -d e ]; then cd e ; fi ; if [ -d ../e ]; then cd ../e ; fi '
alias f=' if [ -d f ]; then cd f ; fi ; if [ -d ../f ]; then cd ../f ; fi '
alias g=' if [ -d g ]; then cd g ; fi ; if [ -d ../g ]; then cd ../g ; fi '
alias h=' if [ -d h ]; then cd h ; fi ; if [ -d ../h ]; then cd ../h ; fi '
alias i=' if [ -d i ]; then cd i ; fi ; if [ -d ../i ]; then cd ../i ; fi '
alias j=' if [ -d j ]; then cd j ; fi ; if [ -d ../j ]; then cd ../j ; fi '
alias k=' if [ -d k ]; then cd k ; fi ; if [ -d ../k ]; then cd ../k ; fi '
alias l=' if [ -d l ]; then cd l ; fi ; if [ -d ../l ]; then cd ../l ; fi '
alias m=' if [ -d m ]; then cd m ; fi ; if [ -d ../m ]; then cd ../m ; fi '



alias brc='vi ~/.bashrc'
alias python='python3'

#-----------------------------------------------------------
tmp(){ 
echo "#include <iostream>
#include <vector>
#include <utility>
#include <string>
#include <map>
#include <unordered_map>
#include <set>
#include <unordered_set>
#include <algorithm>
#include <cmath>
#include <iomanip>
using namespace std; 
#define ord(c) (c-'0') 
#define fi first
#define se second
#define here(c,x) ((c).find(x) != (c).end())
#define all(c) (c).begin(),(c).end() 

#define show(vv) for(auto z : vv) cout<<z<<' '; cout<<'\n'
#define showm(mm) for(auto z : mm) cout<<z.fi<<\" --> \"<<z.se<<'\n'
#define shows(ss) for(auto z : ss) cout<<z<<' '; cout<<'\n'

#define vt vector
#define uset unordered_set
#define umap unordered_map

typedef long long ll;
typedef long double ld;

ll n, m;
#define N for(int i=0;i<n;i++)
#define M for(int j=0;j<m;j++)

int main(){
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);



}







"
}


##   sudo service mysql stop
##   sudo systemctl stop apache2
##
##   (in the root directory:)
##   docker-compose exec django sh -c "python manage.py makemigrations && python manage.py migrate"
##
##   docker-compose exec django python manage.py createsuperuser
##   docker-compose build
##   docker-compose up
##   git clone [https...repo url]
##   cd student-information-dashboard/frontend
##   npm install
##   docker-compose build
##   docker-compose up


# spotify shortcuts: 
# Ctrl-9 --> prev track
# Ctrl-0 --> next track





