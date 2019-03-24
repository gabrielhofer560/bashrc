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

# User specific aliases and functions

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

# executing past commands 
alias 0='./a.out'
alias g='g++ -std=c++11 '
alias ls='ls -1'
alias reloadbashrc='. ~/.bashrc'


# TODO: replace aliases with function definitions
# prints template
function temp(){
  echo '#include <bits/stdc++.h>'
  echo 'typedef long long ll;'
  echo 'using namespace std;'
  echo 'll v0,v1,v2,v3,v4;'
  echo 'll n, i, j;'
  echo 'int main(){'
  echo 'ios_base::sync_with_stdio(false);'
  echo 'cin.tie(NULL);'
  echo '  return 0;'
  echo '}'
}

# binary exponentiation
function binpow(){
  echo 'll binpow (ll a, ll n) {'
  echo 'll res = 1;'
  echo 'while (n) {'
  echo '  if (n & 1)'
  echo '      res=((res*a)%mod);'
  echo '  a=((a*a)%mod);'
  echo '  n >>= 1;'
  echo '  }'
  echo '  return res;'
  echo '}'
}

# http://e-maxx.ru/algo/binomial_coeff
function C(){
  echo 'll C (ll n, ll k) {'
  echo '  ll res = 1;'
  echo '  for (ll i=n-k+1; i<=n; ++i)'
  echo '      res *= i;'
  echo '  for (ll i=2; i<=k; ++i)'
  echo '      res /= i;'
  echo '}'
}

# http://e-maxx.ru/algo/euler_function
function phi(){
  echo 'll phi (ll n) {'
  echo '  ll result = n;'
  echo '  for (ll i=2; i*i<=n; ++i)'
  echo '      if (n % i == 0) {'
  echo '          while (n % i == 0)'
  echo '              n /= i;'
  echo '          result -= result / i;'
  echo '      }'
  echo '  if (n > 1)'
  echo '      result -= result / n;'
  echo '  return result;'
  echo '}'
}

# http://e-maxx.ru/algo/modular_factorial
function facmod(){
  echo 'll factmod (ll n, ll p) {'
  echo '  ll res = 1;'
  echo '  while (n > 1) {'
  echo '      res = (res * ((n/p) % 2 ? p-1 : 1)) % p;'
  echo '      for (ll i=2; i<=n%p; ++i)'
  echo '          res = (res * i) % p;'
  echo '      n /= p;'
  echo '  }'
  echo '  return res % p;'
  echo '}'
}

# euclidean algorithm
# http://e-maxx.ru/algo/extended_euclid_algorithm
function euclidean(){
  echo 'll gcd (ll a, ll b, ll & x, ll & y) {'
  echo '  if (a == 0) {'
  echo '      x = 0; y = 1;'
  echo '      return b;'
  echo '  }'
  echo '  ll x1, y1;'
  echo '  ll d = gcd (b%a, a, x1, y1);'
  echo '  x = y1 - (b / a) * x1;'
  echo '  y = x1;'
  echo '  return d;'
  echo '}'
}

# checks primality of single integer n
function isprime(){
  echo 'bool isprime(ll n){ '
  echo '  if (n <= 1) return false; '
  echo '  if (n <= 3) return true; '
  echo '  if (n%2 == 0 || n%3 == 0) return false; '
  echo '  for (ll i=5; i*i<=n; i=i+6) '
  echo '    if (n%i == 0 || n%(i+2) == 0) '
  echo '      return false; '
  echo '  return true; '
  echo '} '
}





# BIT
# function fenwick(){
# echo 'vector <int> t;
# int n;
# 
# void init (int nn)
# {
# 	n = nn;
# 	t.assign (n, 0);
# }
# 
# int sum (int r)
# {
# 	int result = 0;
# 	for (; r> = 0; r = (r & (r + 1)) - 1)
# 		result + = t [r];
# 	return result;
# }
# 
# void inc (int i, int delta)
# {
# 	for (; i <n; i = (i | (i + 1)))
# 		t [i] + = delta;
# }
# 
# int sum (int l, int r)
# {
# 	return sum (r) - sum (l-1);
# }
# 
# void init (vector <int> a)
# {
# 	init ((int) a.size ());
# 	for (unsigned i = 0; i <a.size (); i ++)
# 		inc (i, a [i]);
# }'
# }
# 



