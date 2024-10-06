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

# path
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/sbin"

export fpath=(
  "$HOME/.zfunc"
  "$HOME/.local/share/sheldon/repos/github.com/sindresorhus/pure"
  $fpath
)

# default completions
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit; compinit

# arrow key interface
zstyle ':completion:*' menu select

# sheldon
eval "$(sheldon source)"

# pure
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:path color cyan
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:prompt:success color yellow

# more
for config_file in ~/.zshrc.d/*.zsh; do
  source "$config_file"
done

