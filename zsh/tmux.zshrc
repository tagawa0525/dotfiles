#! /bin/zsh

if [ -n "${TMUX}" ]; then
  function _tmux_create_window() {
    # Window作成が並列で行われるため、$CDD_WINDOWが適切に設定されない。
    # wait-forを使用して、$2にて指定したWindowの作成が終了まで待つ。
    # .zshenv -> .zshrc の順で呼ばれるため、.zshrcの最後にてlockを外している。
    # ~/.zshrc
    # if [ -n "${TMUX}" ]; then
    #   tmux wait-for -S ${CDD_WINDOW}
    # fi
    [ -n "$2" ] && tmux wait-for $2
    tmux new-window -t $1
  }

  function _tmux_detach_or_kill() {
    # duplicate sessionを抑えるため、基本的にはkill-sessionを行う。
    # 最後のsessionを削除すると、作業の再開ができないため、最後はdetachにする。
    group_name=`whoami`@`hostname`
    sg_size=$(tmux display -p "#{session_group_size}")
    if [ ${sg_size} = 1 ] ;then
      session_name=$(tmux display -p "#{session_name}")
      tmux detach-client -s ${session_name}
    else
      tmux kill-session
    fi
  }
else
  function _tmux_attach_or_create() {
    # tmuxを起動する関数(screen -xR 相当)
    # PuTTYのConnection -> SSH -> Remote commandから本関数を起動することを想定。
    # attachされていないsessionが残っている場合はそれを使用し、
    # 残っていない場合はduplicate sessionを作る。
    group_name=`whoami`@`hostname`
    # target_session=$(tmux ls | ruby -ne "puts \$1 if \$_.match(/(${group_name}-\\d+):.*attached/)" | sort | tail -n1)
    target_session=$(tmux ls | egrep "^${group_name}" | egrep -v 'attached' | sort | head -n1 | cut -d: -f1)
    if [ -n "${target_session}" ] ;then
      tmux attach-session -t ${target_session}
    else
      # num_next=$(tmux ls | ruby -ne "puts(\$1.to_i + 1) if \$_.match(/${group_name}-(\\d+):/)" | sort | tail -n1)
      num_max=$(tmux ls | egrep "^${group_name}" | sed s/^${group_name}-// | sort | tail -n1 | cut -d: -f1)
      num_next=$((${num_max}+1))
      session_name=${group_name}-${num_next}
      tmux new-session -t ${group_name} -s ${session_name}
    fi
  }
fi

