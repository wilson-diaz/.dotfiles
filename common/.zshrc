# zsh history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000000

# editor
EDITOR=nvim
alias vi="nvim"

# zsh vi mode
bindkey -v
KEYTIMEOUT=25

# default completions
zstyle :compinstall filename '/home/wilson/.zshrc'
autoload -Uz compinit; compinit

# arrow key interface
zstyle ':completion:*' menu select

# path
fpath+=(~/.local/share/sheldon/repos/github.com/sindresorhus/pure)

# sheldon
eval "$(sheldon source)"

# pure
autoload -U promptinit; promptinit
prompt pure

# mise
eval "$(mise activate zsh)"

