#https://unix.stackexchange.com/questions/132338/header-function-with-increasing-number-in-bash
function _hashes() { printf %0$((${1}))d\\n | tr 0 \# ; }

# _hdr_inc counter 50 The headline
# counter counts how many times the function is called
# 50 is the number of # sent to -hashes
# The headline - everything after the second argument is considered as text to be printed
function _hdr_inc() { local _hinc=${1##*-} _hashc=${2##*[!0-9]}
    : ${_hinc:=$(set -- $3 ; printf %s_cnt\\n "${1-_hdr}")}
    ${1+shift} ${2+2}
    _hashes ${_hashc:=40}
    printf "%s #$((${_hinc}=${_hinc}+1)):${1+%b}" \
        ${1+"$*"} ${1+\\c}Default
    echo && _hashes $_hashc
}

function header() {
  if [ "$#" -gt 1 ]; then
    HASHNUMBER=$2
  else
    HASHNUMBER=60
  fi
  _hashes $HASHNUMBER
  echo \# "$1"
  _hashes $HASHNUMBER
}