# Install pyenv
```
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv init --path)"' >> ~/.bash_profile
source ~/.bash_profile
sudo apt install zlib1g-dev libbz2-dev libreadline-dev libssl-dev libsqlite3-dev
pyenv install 3.6.0
pyenv versions
```

# Install nodenv
```
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(nodenv init -)"' >> ~/.bash_profile

```

# Install node-build
```
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
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
mkdir -p ~/.config
ln -s dotfiles/nvim .config/nvim
```

Add custom bashrc
```
echo 'source ~/dotfiles/my.bashrc' >> .bashrc
```

# Install Plugins
```
nvim ~/.config/nvim/init.nvim
:source %
:PlugInstall
:CocInstall coc-tsserver
```

#Install necessary binaries
```
# clangd 9.0.1
wget https://releases.llvm.org/9.0.0/clang+llvm-9.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
wget bear
```

# Create compile commands
```
pip install compiledb
compiledb make
```
