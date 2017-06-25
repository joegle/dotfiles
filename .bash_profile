
alias ll='ls -FGlAhp'

[ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ] && .  /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

function prompt_command {
    # Define PS1 variables here
    # https://stackoverflow.com/questions/3058325/what-is-the-difference-between-ps1-and-prompt-command

    # log commands
    if [ "$(id -u)" -ne 0 ]; then
	echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log;
    fi
}
export PROMPT_COMMAND=prompt_command


# uncomment below to get cv2 to work in python
#export PATH=/usr/local/bin:$PATH
#export PATH="$PATH:$HOME/bin"

EDITOR=emacs
VISUAL=emacs
CLICOLOR=1
LSCOLORS=ExFxCxDxBxegedabagacad

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWDIRTYSTATE=true

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
TERM=xterm-256color

GOPATH=`pwd`/opt/gopath
PATH=$PATH:$GOPATH/bin


alias config='/usr/bin/git --git-dir=$HOME/.dotfiles-git/ --work-tree=$HOME'

if [ $(uname) = "Darwin" ]; then
    source ~/.bash/bash-mac.sh
fi

