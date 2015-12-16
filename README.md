# Dotfiles checkfiles

1. [install pathogen](https://github.com/tpope/vim-pathogen)
1. [install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
1. Make symbolic links to dot files.  (Do not link ~/dotfiles/.gitignore)

    ln -f ./dotfiles/.bashrc
    ln -f ./dotfiles/.zshrc
    ...

1. Change default shell

    chsh -s /bin/zsh

1. Restart shell
