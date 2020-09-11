**dotfiles_public**

## install neovim or build from source
### build from source
```bash
mkdir -p ~/github
cd ~/github
git clone https://github.com/neovim/neovim 
cd neovim
git checkout tags/v0.4.4
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## install stow
```bash
sudo apt install stow
```
## install latest nodejs
```bash
sudo apt-get install nodejs npm
```

## install theme, this takes a while
```bash
cd ~/github
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh DroidSansMono
```
## configure neovim
```bash
sudo apt install silversearcher-ag
git checkout https://github.com/realAP/dotfiles_public
cd dotfiles_public
stow vim
stow nvim
```
## run neovim
```bash
nvim
```
