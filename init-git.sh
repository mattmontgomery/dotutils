PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up git in path $PATH_ABS"

git init $PATH_ABS

cp ./templates/.gitignore $PATH_ABS/.gitignore

echo ":: Finished setting up git"