# .bashrc
xrandr --output VGA-1-2 --off

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export email_id=''
export email_passwd=''


export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export TERM=screen-256color

# User specific aliases and functions

alias d='deactivate'
alias c='clear'
alias p='cd /home/imack/Dropbox/projects/'

function duone()
{
    du -k --max-depth 1 $1 | sort -n
}

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

