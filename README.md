**dotfiles_public**

## PREPARE: install neovim or build from source
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

## PREPARE: install stow and dependencies
```bash
sudo apt install stow curl
```
## PREPARE: install latest nodejs
(yes, really, I am sorry)
```bash
sudo apt-get install nodejs npm
```

## PREPARE: install theme, this takes a while
```bash
cd ~/github
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh DroidSansMono
```
## INSTALL: clone config
Please note that you have to clone the repository in your `$HOME` at the moment!
```bash
sudo apt install silversearcher-ag
git clone https://github.com/realAP/dotfiles_public
cd dotfiles_public
```

#### configure vim (optionally)
```bash
stow vim
```

#### configure neovim
```bash
stow nvim
```

## USE: run neovim
This will install all further dependencies on the first execution
```bash
nvim
```

## Handy shortcuts

- TODO

## TODO
 - explain all the changes being made (for example fuzzyfinder entry in .bashrc)
