# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# powerline
if command -v powerline-daemon 1>/dev/null 2>&1; then
    powerline-daemon -q
    . /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# aliases
alias autoremove="sudo pacman -Rs $(pacman -Qtdq)"
alias orphans="sudo pacman -Qtdq"
alias ls="ls --color=auto"