PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up jest"

npm --prefix $PATH_ABS i --save-dev jest @testing-library/react @testing-library/dom

echo ":: Finished setting up jest"