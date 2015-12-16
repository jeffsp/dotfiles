# Dotfiles Checklist

* [install pathogen](https://github.com/tpope/vim-pathogen)
* [install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Make symbolic links to dot files.  (Do not link ~/dotfiles/.gitignore)

```
    ln -f ./dotfiles/.bashrc
    ln -f ./dotfiles/.zshrc
    ...
```

* Change default shell

```
    chsh -s /bin/zsh
```

* Restart shell
