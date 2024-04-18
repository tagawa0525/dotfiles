#! /bin/zsh

################################################################################
# キーバインド
################################################################################
bindkey -v
# history completion
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end  history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
#bindkey "^P" history-search-backward
#bindkey "^N" history-search-forward
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
# emacs like keybind
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^B' backward-char
bindkey '^F' forward-char
bindkey '^D' delete-char
bindkey '^U' kill-whole-line
bindkey '^K' kill-line
bindkey '^Y' yank
bindkey '^Q' push-line

#------------------------------------------------------------
# chdir
#------------------------------------------------------------
alias cd..='cd ..'
#alias cdp='cd ${HOME}/python/prac'
#alias cdr='cd ${HOME}/ruby/prac'
#alias cdf='cd ${HOME}/fortran/prac'

alias pd="pushd"
alias po="popd"
alias sd='screen -X chdir ${PWD}'
alias ccd='cdd' # ref zshrc_cdd
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd -"${newdir}"'

#------------------------------------------------------------
# back
#------------------------------------------------------------
alias b='cd -'

#------------------------------------------------------------
# custom cd
#------------------------------------------------------------
for cmd in edit data inp lst out rst run sum src tool sge bin lib mod dbg \
  tcx cax scx sdk pds res bak code \
  aegis scope2 sph xslib mvp casmo4 \
  ; do
  function ${cmd} ()
  {
    now=${PWD}
    for num in {1..6} ; do
      dir="${now}/${0}"
      if [ -d ${dir} ] ; then
        cd ${dir}
        unset now num dir
        return
      fi
      now=`dirname ${now}`
    done
    unset now num dir
  }
done
unset cmd

#------------------------------------------------------------
# up cd
#------------------------------------------------------------
cmd=''
for num in {1..6} ; do
  cmd+='u'
  function ${cmd} ()
  {
    now=${PWD}
    for up in {1..${#0}} ; do
      now=`dirname ${now}`
    done
    cd ${now}
    unset up now
    return
  }
  alias u${num}=${cmd}
  alias ${num}u=${cmd}
done
unset cmd num

#------------------------------------------------------------
# latest cd
#------------------------------------------------------------
function ct() {
if [ $# = 0 ]; then
  dir=`ls -dt */  | head -n1`
else          
  dir=`ls -dt $*/ | head -n1`
fi
[ ${dir} ] && cd ${dir}
unset dir
}

#------------------------------------------------------------
# sge cd
#------------------------------------------------------------
function cq() {
if [ $# = 1 ]; then
  dir=`qstat -j $1 | grep 'sge_o_workdir:' | perl -pe 's/sge_o_workdir:\s*//' | perl -pe 's/\/misc//'`
  [ ${dir} ] && cd ${dir}
else          
  echo "input sge's queue number."
fi
unset dir
}

#------------------------------------------------------------
# list
#------------------------------------------------------------
alias ls='ls -h  --color=auto'
alias sl='ls -hF --color=auto'
alias la='ls -A'
alias lt='ls -ltr'
alias ll='ls -lGh'
alias dir='ls -lGh'

#------------------------------------------------------------
# vim
#------------------------------------------------------------
alias view='vi -R'
alias vr='vi -R'
alias vv='vi -O'
alias vh='vi -o'
alias vd='vimdiff'
function vt() {
vi `ls -t $* | head -n1`
}

#------------------------------------------------------------
# grep
#------------------------------------------------------------
#alias grep='grep -i'
#alias grep='egrep'

#------------------------------------------------------------
# Grid Engine
#------------------------------------------------------------
alias qs="qstat"
alias qa="qstat -g t"
alias qu="qstat -u ${USER}"
alias qf="qstat -f"
#alias qd="qdel  -u ${USER}"

#------------------------------------------------------------
# others
#------------------------------------------------------------
#alias mv='mv -i'
#alias cp='cp -ip'
alias cp='cp -p' # time stamp

alias bc='bc -l'
alias h='history'
alias ha='history -E l'
alias j='jobs'
alias cls='clear'
alias rm='rm -i'
#alias rr="rm -rf"

#alias ssh='ssh -Y'
#alias screen='screen -xR'
#alias screen='echo -ne "\033]0;[ USEING SCREEN ]@${HOST}\007" ; screen -xR'
#alias cl="make -f ~/Makefile clean"
alias now='date +"%Y_%m%d_%H%M"'
alias today='date +"%Y_%m%d"'

#------------------------------------------------------------
# langage
#------------------------------------------------------------
#alias svn="LANG=C svn"
#alias git="LANG=C git"
#alias diff="LANG=C diff"

#------------------------------------------------------------
# global
#------------------------------------------------------------
#alias -g G='| egrep'
#alias -g L='| ${PAGER}'
alias -g V='| vi -R -'
alias -g T='| tail -n80'
alias -g H='| head -n80'
alias -g W='| wc'
alias -g S='| sort'
alias -g U='| uniq'

#alias chrome='"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"'

