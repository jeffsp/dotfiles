# Dotfiles Checklist

* [Install pathogen](https://github.com/tpope/vim-pathogen)
* [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Make symbolic links to dot files.  (Do not link ~/dotfiles/.gitignore)

```
    ln -f ./dotfiles/.bashrc
    ln -f ./dotfiles/.dir_colors
    ln -f ./dotfiles/.git
    ln -f ./dotfiles/.gitconfig
    ln -f ./dotfiles/.gitignore_global
    ln -f ./dotfiles/.vim
    ln -f ./dotfiles/.vimrc
    ln -f ./dotfiles/.zshrc
```

* Change default shell

```
    chsh -s /bin/zsh
```

* Restart shell
