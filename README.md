# init.lua for things


just some stuff with lsp and completions etc

## quick start (because i'll forget this)

```shell
# get nvim
curl -Lfs https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz | tar -xzv
cp -r nvim-linux-x86_64/* ~/.local/
# directly clone this into nvim config? or not...
git clone https://github.com/parthpower/nvim-config.git ~/.config/nvim
nvim
```

## other things...

```shell
#!/bin/bash


# fd
ln -s $(which fdfind) ~/.local/bin/fd
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat


# Oh-My-Tmux
git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Oh-My-Fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fish -c "omf install lambda"
fish -c "omf install bass"

# install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
```

## yoinked stuff from

- https://github.com/ThePrimeagen/init.lua
- https://github.com/LazyVim/LazyVim

