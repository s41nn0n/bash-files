# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH:/home/f/Documents/Code/idea-IC-135.909/bin:/home/f/go/bin"
fi

export PATH="$PATH:/home/f/Documents/Code/golang/bin"
export PATH="$PATH:/home/f/.gvm/bin/"

#ln -s /media/f/Personal\ 750MB/Code/ /home/f/Code
#export GOPATH="/home/f/Documents/Code/golang:/home/f/Documents/Code"
#export GOPATH="/media/f/External 2TB (MiL)/Code/golang/src"
export GOPATH=/media/f/External\ 2TB\ \(MiL\)/Code/golang/src/
alias setGOPATHMil="export GOPATH=\"/media/f/External 2TB (MiL)/Code/golang/\""

alias settings="sudo gnome-control-center display"

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/home/f/Documents/Code/golang/pkg/linux_amd64/github.com/mattn/oci8.pc:/home/f/Documents/Code/golang/src/github.com/mattn/go-oci8"

export CGO_CFLAGS="-I/u01/app/oracle/product/11.2.0/xe/rdbms/public"
export CGO_LDFLAGS="-L/u01/app/oracle/product/11.2.0/xe/lib"
export ORACLE_HOME="/u01/app/oracle/"

alias sqlDevM="./media/f/Local Disk 3TB/Installers/Oracle/SQLDev/sqldeveloper-4.0.1.14.48-no-jre/sqldeveloper/sqldeveloper.sh"
alias sqlDev="cd /home/f/Documents/Code/sqldeveloper-4.0.2.15.21-1.noarch/opt/sqldeveloper/sqldeveloper/bin; ./sqldeveloper"


alias gs='git status '
alias gc='git commit -a -m '
alias gp='git pull '
alias gP='git push -u '
alias gA='git add *'
alias ga='git add '

alias jdev11117='/home/f/Oracle/Middleware11117/jdeveloper/jdev/bin/jdev'

alias liteidecd='cd /home/f/Documents/Code/liteide/bin'

alias xisveInstall='go install xisve/xisve-modules/xisve-admin & go install xisve/xisve-modules/xisve-advertising & go install xisve/xisve-modules/xisve-auth & go install xisve/xisve-modules/xisve-chat & go install xisve/xisve-modules/xisve-model & go install xisve/xisve-modules/xisve-model & go install xisve/xisve-modules/xisve-register & go install xisve/xisve-modules/xisve-socket-server & go install xisve/xisve-modules/xisve-template & go install xisve/xisve-modules/xisve-user-message ';

alias xisveI='go install xisve/xisve-modules/xisve-admin/xisve-admin-bi ; go install xisve/xisve-modules/xisve-admin/xisve-admin-chat ; go install xisve/xisve-modules/xisve-admin/xisve-admin-user ; go install xisve/xisve-modules/xisve-advertising ; go install xisve/xisve-modules/xisve-auth ; go install xisve/xisve-modules/xisve-chat ; go install xisve/xisve-modules/xisve-model ; go install xisve/xisve-modules/xisve-model ; go install xisve/xisve-modules/xisve-register ; go install xisve/xisve-modules/xisve-socket-server ; go install xisve/xisve-modules/xisve-template ; go install xisve/xisve-modules/xisve-user-message';

alias setUpAProject='mkdir documents; echo "(A) This is the todo" >> ./documents/todo.txt; echo "(A) This is the todo" >> ./documents/protocols.txt; mkdir modules; mkdir application; echo "package main" >> ./application/server.go';

alias sshToDoRoot='ssh -P root@154.127.61.117'
#alias ga='git add '

alias ssh_oracle_REDISA_IDM_Dev='ssh -X oracle@10.0.9.61'
alias ssh_root_REDISA_IDM_Dev='ssh -X oracle@10.0.9.61'
alias ssh_oracle_REDISA_IDM_Prod='ssh -X oracle@10.0.9.62'
alias ssh_root_REDISA_IDM_Prod='ssh -X root@10.0.9.62'

HISTSIZE=4500
HISTFILESIZE=4500
#export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTIGNORE="pwd:ls:ls -ltr:ll:history:"


#Auto "cd" when entering just a path
#shopt -s autocd

## ls ## {{{
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -st'                   # sort by date
alias lm='la | more'
alias viP='vi ~/.profile; source ~/.profile'

# }}}'

#Auto "cd" when entering just a path
shopt -s autocd

#GVM https://github.com/moovweb/gvm http://stackoverflow.com/questions/17480044/how-to-install-the-current-version-of-go-in-ubuntu
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

#source /etc/bash_completion.d/docker.io


alias cdCodeMil='cd /media/f/External\ 2TB\ \(MiL\)/Code/golang/src/github.com/'