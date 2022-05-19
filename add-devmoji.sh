PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up devmoji $PATH_ABS"

npm --prefix $PATH_ABS i --save-dev husky
npm --prefix $PATH_ABS i --save-dev devmoji

cd $PATH_ABS

npx husky install .husky
npx husky add .husky/prepare-commit-msg "npx devmoji -e --lint"

cd $PWD

echo ":: Finished setting up devmoji"