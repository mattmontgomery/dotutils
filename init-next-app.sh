PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Creating Next app in $PATH_ABS"

npx create-next-app $PATH_ABS --typescript

echo "Finished creating Next app"
