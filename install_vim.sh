sudo apt update
sudo apt install vim git wget

#vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget --output-document ~/.vimrc https://raw.githubusercontent.com/AndreasDL/configs/work/.vimrc
vim -c PluginInstall

#YCM
sudo apt install vim-youcompleteme python3-dev cmake build-essential
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
