###########################################################################
RED='\033[0;31m'
GREEN='\033[1;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'
MAG='\033[1;35m'
BLUE='\033[1;34m'
LCYAN='\033[1;36m'

bind -x '"\C-j":" if [ -f main.cpp  ]; then vi main.cpp; fi "'
bind -x '"\C-k":"if [ -f a.out ]; then rm a.out ; fi ; g++ main.cpp ; if [ -f a.out ]; then for i in in*; do ./a.out < $i; done ; fi "'

alias main='gabe > main.cpp ; touch in '
alias python='python3'
alias p='python3'
alias l='tree'

alias in='vi in'
alias in2='vi in2'
alias in3='vi in3'
alias in4='vi in4'


function b(){
  cd
  sudo vim /sys/class/backlight/intel_backlight/brightness
}


#-----------------------------------------------------------
gabe(){ 
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
using namespace std; 
#define ord(c) (c-'0') 
#define fi first
#define se second
#define here(c,x) ((c).find(x) != (c).end())
#define all(c) (c).begin(),(c).end() 

#define show(vv) for(auto z: vv) cout<<z<<' '; cout<<'\n'
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


}







"
}


###  sudo service mysql stop
###  sudo systemctl stop apache2
###  docker-compose up











PATH=$PATH:/home/gabe/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 1B5B5185-6E54-C513-4B97-3A3BB73EC574

PATH=$PATH:/opt/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 BB8B3179-0F97-0963-9F58-146DD11938BE

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
