# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="daveverwer"


alias vi="nvim"

ENABLE_CORRECTION="true"

plugins=(git docker tmux docker-compose)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Zsh
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Kafka
export PATH=~/kafka/kafka_2.13-3.7.0/bin:$PATH


# Dotfiles
alias dotfiles="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Nvim Config
alias nvimconfig="nvim ~/.config/nvim"

#Alias
alias jadevpn="/opt/cisco/anyconnect/bin/vpnui"
alias wether="curl wttr.in/wilhelmshaven"
alias cppdoc="brave \[1\]\ SeidrTeranis/Allgemeine\ Projekte/programming/cpp/documentation/html_book_20190607/reference/en/Main_Page.html"

# SeidTeranis
alias projects="cd ~/\[1\]\ SeidrTeranis/Allgemeine\ Projekte"


# Man Pages Coloring
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'



export MODULAR_HOME="/home/jan/.modular"
export PATH="/home/jan/.modular/pkg/packages.modular.com_max/bin:$PATH"
