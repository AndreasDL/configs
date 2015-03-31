# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/drew/.zshrc'

autoload -Uz compinit
autoload -U promptinit
compinit
# End of lines added by compinstall


# Aliases
alias ls='ls --color=never'
alias ll='ls -lh'
alias lla='ll -a'

alias pacClean='paccache -r; paccache -ruk0;sudo pacman -Rns $(pacman -Qqtd);sudo pacman-optimize && sync;'
alias cls='reset && clear'; #clear everything including scroll

alias dualscreen='xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1'
alias singlescreen='xrandr --output eDP1 --auto --output HDMI1 --off'

alias lock='xscreensaver-command -lock'
alias hibernate='xscreensaver-command -lock;systemctl hibernate'
alias suspend='xscreensaver-command -lock;systemctl suspend'
alias hybrid-sleep='xscreensaver-command -lock;systemctl hybrid-sleep'

alias rtorrent='screen rtorrent'
alias playfirst='mplayer "$(ls | head -n 1)"'
alias rmfirst='rm -i "$(ls | head -n 1)"'

alias orion='ssh user@orion'
alias berrypi='ssh pi@berrypi'
alias designRoot='ssh andlille@student-design4.intec.ugent.be'
alias designUser='ssh user@student-design4.intec.ugent.be'

export EDITOR="vim";
