# Oh-my-zsh stuff
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
plugins=(mercurial)
source $ZSH/oh-my-zsh.sh


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
alias ipnb='ipython notebook --no-mathjax'
export PATH=~/bin:~/.local/bin:${PATH}
export EDITOR="vim"

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

autoload -U colors && colors
# PS1="%{$fg[red]%}$CONDA_DEFAULT_ENV %{$fg[green]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[blue]%}%~ %{$reset_color%}%% "


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

# More oh-my-zsh stuff
local ret_status="%(?:%{$fg_bold[green]%}● :%{$fg_bold[red]%}● %s)"
PROMPT='${ret_status}%{$fg[red]%}$CONDA_DEFAULT_ENV%{$fg_bold[green]%}%p%m%{$fg[cyan]%} %~ %{$fg_bold[blue]%}$(git_prompt_info)$(hg_prompt_info)%{$fg_bold[blue]%}%% %{$reset_color%}'
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg_bold[cyan]%}hg:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗ %{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[cyan]%}) %{$fg[yellow]%}✓ %{$reset_color%}"
