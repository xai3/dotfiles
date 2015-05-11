
# Charactor set

export LANG=ja_JP.UTF-8



# Vim like
bindkey -v



# Auto complete

autoload -Uz compinit
compinit

setopt auto_list
setopt auto_menu
setopt list_types
setopt auto_param_keys
setopt auto_param_slash
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'



# Change Directory
setopt auto_cd



#
# Prompt
#

PROMPT="%n@%m %F{green}%~%f$ "



#
# Right Prompt
#

setopt transient_rprompt

# Git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes ture
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats "[%b|%a]"
precmd() { vcs_info }

RPROMPT=$RPROMPT'${vcs_info_msg_0_}'



#
# Alias
#

# ls

alias .='ls'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -la'

