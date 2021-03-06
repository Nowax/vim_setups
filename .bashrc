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
alias scrum='sudo mount -t cifs //wrhstn10.emea.nsn-net.net/ee_groups_hst/RPOMSW/SCRUM/C1/ /home/wonowak/scrum/ -o uid=1001,domain=NSN-INTRA,user=wonowak,rw,sec=ntlm'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export mwrlinb126='sshfs wonowak@wrlinb126.emea.nsn-net.net:/work/wonowak /home/wonowak/Remote_Linb126/ -o nonempty'
export mwrn34work='sshfs wonowak@wrlinb34.emea.nsn-net.net:/work/wonowak /home/wonowak/remoteLinb34/ -o nonempty'
export PATH=~/bin/:$PATH
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
export HISTFILESIZE=20000
export wrl110='ssh -Y wonowak@wrling110.emea.nsn-net.net'
export wrn33='ssh -Y wonowak@wrlinb33.emea.nsn-net.net'
export mwrn33work='sshfs wonowak@wrlinb33.emea.nsn-net.net:/work/wonowak /home/wonowak/remoteLinb33/'
export mwrn34work='sshfs wonowak@wrlinb34.emea.nsn-net.net:/work/wonowak /home/wonowak/remoteLinb34/'
alias review="rbt post --server=http://10.154.49.54/reviewboard --target-groups=C1 --username=wonowak"

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

function setproxy() {
    export {http,https,ftp}_proxy='http://10.144.1.10:8080'
}

function unsetproxy() {
    unset {http,https,ftp}_proxy
}

setproxy
