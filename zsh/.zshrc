autoload -Uz vcs_info

# ranger settings
export EDITOR=nvim;
export VISUAL=nvim;
export RANGER_LOAD_DEFAULT_RC=false

alias note="nvim $(date +%m-%d-%y).txt"

alias zeus="ssh jcarryer@zeus.vse.gmu.edu"
tabs -4 # tabstop

# set PROMPT and RPROMPT
setopt PROMPT_SUBST
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{magenta}>%f %F{green}(%b)%f '
PROMPT=$'%F{magenta}\U250C\U2500%f %F{cyan}%~%f ${vcs_info_msg_0_}\n%F{magenta}\U2514%f %F{red}%#%f '
RPROMPT='%F{cyan}%@%f'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
