echo -e "\t${BASH_SOURCE}"
_load_remote_book "${OS}/zsh.sh"

_zsh_installed() {
  return `hash zsh 2>/dev/null`;
}

_zsh() {
  if _zsh_installed ; then
    echo -e "\talready installed."
  else
    _zsh_up
  fi
}
