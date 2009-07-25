# for GNU screen
# make screen title
if [ "$TERM" = "screen" ]; then
  function preexec() {
    emulate -L zsh
    local -a cmd; cmd=(${(z)2})
    case $cmd[1] in
      fg)
        if (( $#cmd == 1 )); then
          cmd=(builtin jobs -l %+)
        else
          cmd=(builtin jobs -l $cmd[2])
        fi
        ;;
      %*) 
        cmd=(builtin jobs -l $cmd[1])
        ;;
      ls)
        return
        ;; 
      cd|cdd)
        if (( $#cmd == 2)); then
          cmd[1]="D:$cmd[2]:t"
        else
          cmd[1]="~"
        fi
        change_status_title $cmd[1]
        return
        ;;
      view|vim|vi|gvim)
        if (( $#cmd == 2)); then
          cmd[1]="V:$cmd[2]:t"
        fi
        change_status_title $cmd[1]
        return
        ;;
      *)
        change_status_title $cmd[1]:t
        return
        ;;
    esac

    local -A jt; jt=(${(kv)jobtexts})

    $cmd >>(
      read num rest
      cmd=(${(z)${(e):-\$jt$num}})
      echo -n "k$cmd[1]:t\\"
    ) 2>/dev/null
  }
  change_status_title() {
    echo -n "k$1\\"
  }
fi
