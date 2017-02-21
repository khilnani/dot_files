
wget https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh
wget https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh

mv pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
mv async.zsh /usr/local/share/zsh/site-functions/async

echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
