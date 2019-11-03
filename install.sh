DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -sfn $DIR/ag/ignore $HOME/.agignore
ln -sfn $DIR/bash $HOME/.bash
ln -sfn $DIR/bin $HOME/.bin
ln -sfn $DIR/git/gitconfig $HOME/.gitconfig
ln -sfn $DIR/psql/psqlrc $HOME/.psqlrc
ln -sfn $DIR/rspec/rspec $HOME/.rspec
ln -sfn $DIR/tmux/tmux.conf $HOME/.tmux.conf
ln -sfn $DIR/pry/pryrc $HOME/.pryrc
ln -sfn $DIR/vim $HOME/.vim
echo 'Symlinks created'

echo 'export GOPATH="/home/$USER/go"' >> $HOME/.bash_profile
echo 'export PATH="$GOPATH/bin:$PATH"' >> $HOME/.bash_profile
echo 'GO path exported'

vim +PlugInstall +qall > /dev/null
echo 'Vim plugins installed'

echo 'Done'
