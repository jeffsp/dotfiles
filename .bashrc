# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export PATH=~/bin:/usr/lib64/openmpi/bin:~/.matlab:~/Software/adt-bundle/sdk/tools:~/Software/adt-bundle/sdk/platform-tools:$PATH
export EDITOR="vim"
export OMP_NUM_THREADS=15
alias ls='ls --color=auto --classify'
alias h='history 10000'
alias lsa='ls -altrh'
alias df='df -h'
alias view='vim -R'
alias apt='sudo apt-get install'
alias pylab='ipython --pylab'
alias matlab='matlab -c ~/.matlab/license.dat'
alias tree2='tree -d -L 2'
alias tree3='tree -d -L 3'
alias tree4='tree -d -L 4'
alias tree5='tree -d -L 5'

# Make imagemagick use only 1 thread in order to avoid libgomp thread
# resource errors
export MAGICK_THREAD_LIMIT=1

# For Flask
export OAUTHLIB_INSECURE_TRANSPORT=1

activate()
{
    virtualenv v;
    . v/bin/activate;
    pip install -r requirements.txt;
}
