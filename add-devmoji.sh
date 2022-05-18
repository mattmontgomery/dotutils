PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up devmoji $PATH_ABS"

npm --prefix $PATH_ABS i --save-dev husky
npm --prefix $PATH_ABS i --save-dev devmoji &&
npx husky install $PATH_ABS/.husky
npx husky add $PATH_ABS/.husky/prepare-commit-msg "npx devmoji -e --lint"

echo ":: Finished setting up devmoji"