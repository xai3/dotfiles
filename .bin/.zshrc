source ~/.zshrc.oh-my-zsh


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
# homebrew
#

eval "$(/opt/homebrew/bin/brew shellenv)"
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi


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
export PATH="$HOME/.nodenv/bin:$PATH"

#
# pyenv
#
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#
# direnv
#

eval "$(direnv hook zsh)"

