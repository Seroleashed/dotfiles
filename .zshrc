# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/seroleashed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# fnm
FNM_PATH="/home/seroleashed/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/seroleashed/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

eval "$(starship init zsh)"

export PATH=~/.local/bin/:$PATH
export FZF_DEFAULT_COMMAND="find -type f"
export FZF_DEFAULT_OPTS='--height 40% --border top --preview "bat --color=always --style=numbers --line-range=:500 {}"'

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-syntax-highlighting-master/zsh-syntax-highlighting.zsh

alias e="eza -al --icons"

# source <(fzf)
eval "$(zoxide init zsh)"
