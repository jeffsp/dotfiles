# Dotfiles Checklist

1. [install pathogen](https://github.com/tpope/vim-pathogen)
2. [install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
3. Make symbolic links to dot files.  (Do not link ~/dotfiles/.gitignore)

```
    ln -f ./dotfiles/.bashrc
    ln -f ./dotfiles/.zshrc
    ...
```

4. Change default shell

```
    chsh -s /bin/zsh
```

5. Restart shell
