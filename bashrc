# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

###################################################################################
# User specific aliases and functions
#----------------------------------------------------------------------------------
# executing past commands 
alias reloadbashrc='. ~/.bashrc'

#----------------------------------------------------------------------------------
# testing functions on multiple files
function t () {
    rm a.out;
    g++ -std=c++11 $1;
    shift 1;
    for val in $@
    do
        echo "----------------------------------------------------------------------";
        echo "$val";
        ./a.out < $val;
    done
}

#----------------------------------------------------------------------------------
function isPrime(){
  echo " 
  bool isPrime(int n) 
  { 
      if (n <= 1)  return false; 
      if (n <= 3)  return true; 
      if (n%2 == 0 || n%3 == 0) return false; 
      for (int i=5; i*i<=n; i=i+6) 
          if (n%i == 0 || n%(i+2) == 0) 
             return false; 
      return true; 
  }"
}

#----------------------------------------------------------------------------------
function binPow(){
  echo "
  long long binpow(long long a, long long b, long long m) {
      a %= m;
      long long res = 1;
      while (b > 0) {
          if (b & 1)
              res = res * a % m;
          a = a * a % m;
          b >>= 1;
      }
      return res;
  }"
}

#----------------------------------------------------------------------------------
function fenwickTree(){
  echo "
  struct FenwickTree {
      vector<int> bit;  // binary indexed tree
      int n;
  
      FenwickTree(int n) {
          this->n = n;
          bit.assign(n, 0);
      }
  
      FenwickTree(vector<int> a) : FenwickTree(a.size()) {
          for (size_t i = 0; i < a.size(); i++)
              add(i, a[i]);
      }
  
      int sum(int r) {
          int ret = 0;
          for (; r >= 0; r = (r & (r + 1)) - 1)
              ret += bit[r];
          return ret;
      }
  
      int sum(int l, int r) {
          return sum(r) - sum(l - 1);
      }
  
      void add(int idx, int delta) {
          for (; idx < n; idx = idx | (idx + 1))
              bit[idx] += delta;
      }
  };"
}



