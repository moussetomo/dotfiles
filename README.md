# Install pyenv

# Install nodenv
```
git clone https://github.com/nodenv/nodenv.git ~/.nodenv

```

# Install node-build
```
git clone https://github.com/nodenv/node-build.git
PREFIX=~/.local ./node-build/install.sh
```
# Install Nodejs
```
nodenv install -l
nodenv install $VERSION
```

# Install neovim
```
curl -LO https://github.com/neovim/neovim/releases/download/v0.3.8/nvim.appimage
chmod u+x nvim.appimage
Move to PATH directory
```

# Install vim-plug
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Install dotfiles

```
git clone https://github.com/moussetomo/dotfiles.git
ln -s dotfiles/vimfiles .vim
ln -s dotfiles/.vimrc .vimrc
```

Vim with lua capability is required.
check with
```
vim --version | grep lua
```

#Install Plugins
```
nvim ~/.config/nvim/init.nvim
:source %
:PlugInstall
```
