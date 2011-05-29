#------------------------------------------------------------
# chdir
#------------------------------------------------------------
function chpwd() {
  ls -G
  _reg_pwd_screennum
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

alias cd..='cd ..'
alias cdp='cd ${HOME}/python/prac'
alias cdr='cd ${HOME}/ruby/prac'
alias cdf='cd ${HOME}/fortran/prac'

alias pd="pushd"
alias po="popd"
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd -"${newdir}"'
alias sd='screen -X chdir ${PWD}'

#------------------------------------------------------------
# b back
# u up
#------------------------------------------------------------
alias back='cd -'
alias bk='cd -'
alias b='cd -'

alias u='cd ../'
alias uu='cd ../../'
alias uuu='cd ../../../'
alias uuuu='cd ../../../../'
alias uuuuu='cd ../../../../../'

#------------------------------------------------------------
# list
#------------------------------------------------------------
alias ls='ls -h  -G'
alias sl='ls -hF -G'
alias la='ls -A'
alias lt='ls -ltr'
alias ll='ls -l'
alias dir='ls -l'

#------------------------------------------------------------
# vim
#------------------------------------------------------------
alias vd='vimdiff'
alias vv='vi -O'
alias vh='vi -o'

#------------------------------------------------------------
# Grid Engine
#------------------------------------------------------------
alias qs='qstat'
alias qa='qstat -g t'
alias qu='qstat -u $USER'

#------------------------------------------------------------
# others
#------------------------------------------------------------
#alias mv='mv -i'
#alias cp='cp -i'
#alias cp='cp -p'
alias grep='egrep'

alias bc='bc -l'
alias h='history'
alias ha='history -E l'
alias j='jobs'
alias cls='clear'
alias rm='rm -i'
#alias rr="rm -rf"

alias ssh='ssh -Y'
#alias screen='screen -xR'
#alias screen='echo -ne "\033]0;[ USEING SCREEN ]@${HOST}\007" ; screen -xR'
#alias cl="make -f ~/Makefile clean"

#global
alias -g G='| egrep'
alias -g L='| $PAGER'
alias -g V='| vi -R -'
alias -g T='| tail'
alias -g H='| head'
alias -g W='| wc'

