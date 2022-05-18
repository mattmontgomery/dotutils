PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up Prettier in $PATH_ABS"

npm --prefix $PATH_ABS i --save-dev prettier
cp ./templates/.prettierrc $PATH_ABS/.github/.prettierrc

echo "Finished setting up Prettier"