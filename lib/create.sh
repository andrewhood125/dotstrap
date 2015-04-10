# Show usage if incorrect number of args
if [ "$#" -lt 2 ] ; then
  echo "USAGE:";
  echo -e "\t`basename ${0}` create ${1:-package} {generic|debian|mac} [dependencies ...]\n"
  exit 1;
fi

PACKAGE=${1//-/_}
OS=${2}

# Remove the package and OS from the
# params and leave the package deps
shift
shift

BLOCK="
# ${PACKAGE} dependencies
${PACKAGE}_deps=($@)

# Is ${PACKAGE} installed?
_${PACKAGE}_installed() {
  # return \`hash ${PACKAGE} 2>/dev/null\`;
  # [ -d \"\${HOME}/.${PACKAGE}/\" ]
}

# Install ${PACKAGE}
_${PACKAGE}_up() {
  # git clone --quiet https://github.com/${PACKAGE}/${PACKAGE}
  # apt-get -qq install ${PACKAGE} > /dev/null
  # brew install ${PACKAGE} > /dev/null
}"

echo "${BLOCK}" > "${ESTABLISH_DIR}/${OS}/${PACKAGE}.sh"