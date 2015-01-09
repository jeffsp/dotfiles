# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# General
alias h='history'
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias lsa='ls -altr'
alias vi='vim'
export PATH=~/bin:${PATH}
export EDITOR="vim"

# MATLAB
alias matlab='matlab -c ~/.matlab/license.dat'
export PATH=~/.matlab:$PATH

# OMP / MPI
# Set this according to how many cores your machine has
export OMP_NUM_THREADS=15
export PATH=/usr/lib64/openmpi/bin:$PATH

# Android Development
export PATH=~/Software/adt-bundle/sdk/tools:~/Software/adt-bundle/sdk/platform-tools:$PATH

# Flask
export OAUTHLIB_INSECURE_TRANSPORT=1
activate()
{
    virtualenv v;
    . v/bin/activate;
    pip install -r requirements.txt;
}

# Conda
py27() {
    export PATH=/home/jperry/miniconda/bin:${PATH}
    source activate py27
}

py3() {
    export PATH=/home/jperry/miniconda/bin:${PATH}
    source activate py3
}

eval `dircolors ~/.dir_colors`
