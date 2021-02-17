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
bind -x '"\C-k":"if [ -f a.out ]; then rm a.out ; fi ; g++ main.cpp ; if [ -f a.out ]; then for i in in*; do ./a.out < $i; done ; fi "'

alias newmain='gabe > main.cpp'
alias p3='python3'
alias l='tree'




gabe(){ 
echo "#include <iostream>
#include <vector>
#include <utility>
#include <string>
using namespace std; 
#define ord(c) (c-'0') 
#define bit(x,i) (x&(1<<i)) 
#define show(v) for(auto z: v) cout<<z<<' ';printf(\"\n\")
#define showm(m) for(auto z: m) cout<<z.fi<<\" --> \"<<z.se<<'\n';printf(\"\n\")
#define here(c,x) ((c).find(x) != (c).end())
#define all(c) (c).begin(),(c).end() 
#define N for(int i=0;i<n;i++)
#define umap unordered_map
#define vt vector
typedef double d;
typedef long long ll;
typedef long double ld;
typedef vector<long long> vti;
typedef vector<double> vtd;
typedef vector<pair<long long,long long>> vtpi;
typedef vector<pair<double,double>> vtpd;


int main(){
  ll n;
  cin>>n;


}



"
}


