PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Creating React app in $PATH_ABS"

npx create-react-app $PATH_ABS --template typescript

echo "Finished creating react app"
