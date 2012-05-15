#------------------------------------------------------------
# chdir
#------------------------------------------------------------
function chpwd()
{
  ls -G
  _reg_pwd_screennum
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
# back
#------------------------------------------------------------
alias back='cd -'
alias bk='cd -'
alias b='cd -'

#------------------------------------------------------------
# up
#------------------------------------------------------------
cmd=""
dir=""
for num in {1..10} ; do
  cmd+="u"
  dir+="../"
  alias ${cmd}="cd ${dir}"
  alias u${num}="cd ${dir}"
  alias ${num}u="cd ${dir}"
done
unset cmd dir num

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
alias qs="qstat"
alias qa="qstat -g t"
alias qu="qstat -u ${USER}"

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

#------------------------------------------------------------
# sudo
#------------------------------------------------------------
alias gem='sudo gem'

#------------------------------------------------------------
# global
#------------------------------------------------------------
alias -g G='| egrep'
alias -g L='| ${PAGER}'
alias -g V='| vi -R -'
alias -g T='| tail'
alias -g H='| head'
alias -g W='| wc'

