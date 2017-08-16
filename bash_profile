
source ~/dotfiles/utils/git-prompt.sh
source ~/dotfiles/utils/git-completion.bash
export PATH=~/dotfiles/utils:/usr/local/bin:$PATH

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"

export  PS1='[\u@\h \[\e[1;32m\]\W\[\e[m\]\[\e[1;36m\]$(__git_ps1 " (%s)")\[\e[m\]]\[\e[1;32m\]\$ \[\e[m\]'

alias ls='ls -Ge'
alias la='ls -aG'
alias ll='ls -laG'

export EDITOR=/usr/bin/vi

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

