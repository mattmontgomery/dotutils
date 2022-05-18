PWD="$(pwd)"

echo "Setting up dependabot in $PWD"

mkdir -p $PWD/.github
cp ./templates/dependabot.yml $PWD/.github/dependabot.yml