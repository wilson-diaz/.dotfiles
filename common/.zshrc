# zsh history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000000

# editor
EDITOR=nvim
alias vi="vim"
alias vim="nvim"

# zsh vi mode
bindkey -v
KEYTIMEOUT=25

# default completions
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit; compinit

# arrow key interface
zstyle ':completion:*' menu select

# path
fpath+=(~/.local/share/sheldon/repos/github.com/sindresorhus/pure)
fpath+=~/.zfunc
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/sbin"

# sheldon
eval "$(sheldon source)"

# pure
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:path color cyan
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:prompt:success color yellow

# mise
eval "$(mise activate zsh)"

# go
PATH="$PATH:$HOME/go/bin"

# oc
if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

