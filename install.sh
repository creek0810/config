curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim config
cp .vimrc ~/
# config of tmux
cp .tmux.conf ~/
tmux sourc-file ~/.tmux.conf
# add color scheme
mkdir -p ~/.vim/plugged/vim-colors-solarized
git clone https://github.com/altercation/vim-colors-solarized ~/.vim/plugged/vim-colors-solarized
# vim plugin 
vim +PlugInstall +qall
# install youcompleteme
cd ~/.vim/plugged/YouCompleteMe
./install.py
cd ~/

