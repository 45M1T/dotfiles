PROMPT="[%n@%m %~]$ "

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -la'
alias l.='ls -dl .*' 

alias count='find . -type f | wc -l'

alias v='nvim'
alias vim='nvim'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias cal='cal -m'
alias bc='bc -l'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias xbps='sudo xbps-install'
alias update='xbps -Syu'

alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'

alias ping='ping -c 5'
