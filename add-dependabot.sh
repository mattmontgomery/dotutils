PWD="$(pwd)"
: "${INSTALL_DIR:=$(pwd)}"
PATH_ABS="$(readlink -f $INSTALL_DIR)"

echo "Setting up dependabot in $PATH_ABS"

mkdir -p $PATH_ABS/.github
cp ./templates/dependabot.yml $PATH_ABS/.github/dependabot.yml


echo "Finished setting up Dependabot"