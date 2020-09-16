# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# history
HISTSIZE=10000
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '
HISTCONTROL=ignoredups
# color
eval `dircolors ~/.colorrc`

#alias
alias grep='grep --color=auto'
alias la='ls -a --color=auto'
alias ls='ls -a --color=auto'
alias rm='rm -i'
#alias em='emacs -nw'

alias em='~/.linuxbrew/bin/emacs --user "" -nw'
#alias em='env TERM=xterm-256color emacs --user "" -nw'
alias simvision='simvision -WAVES &'

export GIT_EDITOR=vim
export SVN_EDITOR=vim


#export PS1='\[\e[32m\][\u@\h \W]\$ \[\e[0m\]'

source ~/local/git/.git-completion.bash
#GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWUPSTREAM=
#GIT_PS1_SHOWUNTRACKEDFILES=
#GIT_PS1_SHOWSTASHSTATE=1
source ~/local/git/.git-prompt.sh
export PS1='\[\e[32m\][\u@\h \W\[\e[36m\]$(__git_ps1)\[\e[32m\]]\$ \[\e[0m\]'

#export PS1='\[\e[42m\]\u\[\e[m\]\[\e[42m\]\h\[\e[m\]\[\e[44m\]\W\[\e[m\]\[\e[45m\]$(__git_ps1)\[\e[m\]\\$ '
#export PATH="$HOME/.linuxbrew/bin:$PATH"
#export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
#export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

