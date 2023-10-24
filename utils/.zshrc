#ZSH_THEME
ZSH_THEME="kennethreitz"

#SOURCES
plugins=(git
     zsh-autosuggestions
     z
     copybuffer
     dirhistory
)


#EXPORTS
export ZSH="$HOME/.oh-my-zsh"
#OH-MY-ZSH PATH
source $ZSH/oh-my-zsh.sh

#ALIASES
alias ins="paru -S --disable-download-timeout"
alias del="paru -Rcsn"
alias c="clear; echo; fastfetch; echo"
alias ll="exa --long -all --icons"
alias cat="bat --theme="Catppuccin-mocha""
alias lg="lazygit"

#NVIM ALIASES
alias vi="nvim"
alias svi="sudo nvim"

#YT-DLP ALIAS
alias yd="yt-dlp"

#TMUX ALIASES
alias t="tmux"
alias tn="tmux new -s"
alias ta="tmux attach"
alias td="tmux detach"

#CARGO ALIASES
alias ca="cargo add"
alias cr="cargo run"
alias cc="cargo check"

# NAVIGATION
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#Execute fastfetch
echo
fastfetch
echo 
