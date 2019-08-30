#!/usr/bin/zsh

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export GOPATH="$HOME/go"
export GPG_TTY=$(tty)
export LESS='-F -g -i -M -R -S -w -X -z-4'

typeset -gU cdpath fpath mailpath path
path+=("$HOME/dotfiles/bin" "$GOPATH/bin" "$HOME/.local/bin")

# Change default zim location
for template_file in ${ZDOTDIR:-${HOME}}/.zim/templates/*; do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  cat ${template_file} ${user_file}(.N) > ${user_file}.tmp && mv ${user_file}{.tmp,}
done

# Initialize zim
[[ -s ${ZIM_HOME}/login_init.zsh ]] && source ${ZIM_HOME}/login_init.zsh

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx > ${HOME}/.xoutput 2>&1
fi

