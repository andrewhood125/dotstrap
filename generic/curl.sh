echo -e "\t${BASH_SOURCE}"
_load_remote_book "${OS}/curl.sh"

_curl_installed() {
  return `hash curl 2>/dev/null`;
}

_curl() {
  if _curl_installed ; then
    echo -e "\talready installed."
  else
    _curl_up
  fi
}
