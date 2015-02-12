# The following lines were added by compinstall
zstyle :compinstall filename '/home/jperry/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -v
# End of lines configured by zsh-newuser-install

export JMAKE_SUPPORT_DIR="$HOME/repositories/downfrom-jmake"
export PATH="$JMAKE_SUPPORT_DIR/bin:$PATH"

alias h='history'
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias lsa='ls -altr'
alias vi='vim'
export PATH=~/bin:${PATH}
export EDITOR="vim"

autoload -U colors && colors
PS1="%{$fg[red]%}$CONDA_DEFAULT_ENV %{$fg[green]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[blue]%}%~ %{$reset_color%}%% "


# Conda
py27() {
    export PATH=/home/jperry/miniconda/bin:${PATH}
    source activate py27
    source ~/.zshrc
}

py34() {
    export PATH=/home/jperry/miniconda/bin:${PATH}
    source activate py34
    source ~/.zshrc
}
