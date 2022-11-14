
# Charactor set

export LANG=ja_JP.UTF-8

# Path
export PATH=/bin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH="$HOME/.local/bin:$PATH"


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
# homebrew
#

eval "$(/opt/homebrew/bin/brew shellenv)"



#
# Alias
#

# ls

alias .='ls'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -la'

# Ruby

alias be='bundle exec'
alias bi='bundle install'
alias -s rb='ruby'

#
# Rbenv
#

eval "$(rbenv init -)"

#
# swirtenv
#

path=($HOME/.swiftenv/bin(N-/) $path)
if which swiftenv > /dev/null; then
  eval "$(swiftenv init - zsh)"
fi

#
# nodenv
#
eval "$(nodenv init - zsh)"

#
# direnv
#

eval "$(direnv hook zsh)"

