if [[ ! -z $(grep "dotutils/.zshrc" ~/.zshrc) ]]
then
    echo "No action needed, .zshrc referenced"
else
    cat templates/link-zshrc >> ~/.zshrc
    echo "dotutils .zshrc reference added"
fi