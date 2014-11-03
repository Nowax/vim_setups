#
# ~/.bashrc
#
#----------
# Aliases
#---------
alias vi='gvim'
alias vim='gvim'
alias eq='exit'
alias mlogs='sudo mount -t cifs //eseefsn50.emea.nsn-net.net/eefs00011209/ /home/wonowak/Logs/remote -o uid=1000,domain=NSN-INTRA,user=wonowak,rw,sec=ntlm'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export wrlinb126='sshfs -Y wonowak@wrlinb126.emea.nsn-net.net:/work/wonowak /home/wonowak/Remote_Linb126/ -o nonempty'
export linb126='ssh -Y wonowak@wrlinb126.emea.nsn-net.net'
export PATH=~/bin/:$PATH
export HISTFILESIZE=20000
#----------
# Prompt
#---------
alias ll='ls -lsa --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;36m\]\u\[\e[m\]\[\e[0;36m\]@\h\[\e[m\]  \[\e[0;32m\]\@\[\e[m\] \[\e[1;31m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

#-----------
# Directory colours
#-----------
LS_COLORS='di=1;32';
export LS_COLORS

#------------
# Directories
#------------
alias wwork='cd ~/c1'
alias ..='cd ..'
alias hhome='cd ~'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'

