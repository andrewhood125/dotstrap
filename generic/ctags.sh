echo -e "\t${BASH_SOURCE}"
. "${OS}/ctags.sh"

_ctags_installed() {
  return `hash ctags 2>/dev/null`;
}

_ctags() {
  if _ctags_installed ; then
    echo -e "\talready installed."
  else
    _ctags_up
  fi
}
