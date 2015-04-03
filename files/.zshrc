# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/drew/.zshrc'

# autocomplete
autoload -Uz compinit
compinit

# set prompt
autoload -U promptinit
promptinit
prompt adam2

#fish syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# remember last directories
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20
setopt autopushd pushdsilent pushdtohome
## Remove duplicate entries
setopt pushdignoredups
## This reverts the +/- operators.
setopt pushdminus

#-----------------------------
# Dircolors
#-----------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

# Aliases
alias ls='ls --color=auto --human-readable --group-directories-first --classify'
alias ll='ls -lh --color=auto --human-readable --group-directories-first --classify'
alias lla='ll -ahl --color=auto --group-directories-first --classify'
alias rcp='rsync -v --progress'
alias rmv='rsync -v --progress --remove-source-files'

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
export BROWSER="chromium";

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' "${terminfo[smkx]}"
    }
    function zle-line-finish () {
        printf '%s' "${terminfo[rmkx]}"
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi
