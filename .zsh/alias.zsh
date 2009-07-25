#------------------------------------------------------------
# chdir
#------------------------------------------------------------
function chpwd() {
  ls -G
  _reg_pwd_screennum
}

alias back='cd -'
alias bk='back'
alias cd..='cd ..'
alias cdp='cd ${HOME}/python/prac'
alias cdr='cd ${HOME}/ruby/prac'
alias cdf='cd ${HOME}/fortran/prac'

alias pd="pushd"
alias po="popd"
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd -"${newdir}"'
alias sd='screen -X chdir ${PWD}'
alias ccd='cdd' # ref zshrc_cdd

#------------------------------------------------------------
# b back
# u up
#------------------------------------------------------------
alias b='cd -'
alias bb='cd -2'
alias bbb='cd -3'
alias bbbb='cd -4'
alias bbbbb='cd -5'

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
alias vv='view'
alias vd='vimdiff'

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
alias grep='grep -i'

alias bc='bc -l'
alias h='history'
alias ha='history -E l'
alias j='jobs'
alias cls='clear'
alias rm='rm -i'
#alias rr="rm -rf"

alias ssh='ssh -Y'
alias screen='screen -xR'
#alias screen='echo -ne "\033]0;[ USEING SCREEN ]@${HOST}\007" ; screen -xR'
alias cl="make -f ~/Makefile clean"

#global
alias -g G='| grep'
alias -g L='| $PAGER'
alias -g V='| vi -R -'
alias -g T='| tail'
alias -g H='| head'
alias -g W='| wc'

