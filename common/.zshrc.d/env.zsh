# mise
eval "$(mise activate zsh)"

# go
export PATH="$PATH:$HOME/go/bin"

# oc
if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

