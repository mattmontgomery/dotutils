PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Creating Remix app in $PATH_ABS"

npx create-remix $PATH_ABS

echo "Finished creating Remix app"
