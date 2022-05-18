PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up Typescript in $PATH_ABS"

npm --prefix $PATH_ABS i --save typescript
npm --prefix $PATH_ABS exec tsc -- --init

echo "Finished setting up TYPESCRIPT"