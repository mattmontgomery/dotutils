PAGER_STATE=$(gh config get pager)
gh config set pager "less -X -F"

while read -r line; do gh pr list -R $line; done < .repos

gh config set pager $PAGER_STATE