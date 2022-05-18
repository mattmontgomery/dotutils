PWD="$(pwd)"

echo "Installing devmoji in $PWD"

npm --prefix $PWD i --save-dev husky
npm --prefix $PWD i --save-dev devmoji &&
npx husky install $PWD/.husky
npx husky add $PWD/.husky/prepare-commit-msg "npx devmoji -e --lint"