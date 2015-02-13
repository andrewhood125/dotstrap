echo -e "\t${BASH_SOURCE}"
oh_my_zsh_deps=(zsh curl)
_load_books "oh-my-zsh" "${oh_my_zsh_deps[@]}"
deps=("${oh_my_zsh_deps[@]}" "${deps[@]}")

_oh_my_zsh_installed() {
  if [[ -d "${HOME}/.oh-my-zsh" ]] ; then
    return 0;
  fi
  return 1;
}

_oh_my_zsh_up() {
  `curl -L http://install.ohmyz.sh | sh`
}

_oh_my_zsh() {
  if _oh_my_zsh_installed ; then
    echo -e "\talready installed."
  else
    _oh_my_zsh_up
  fi
}
