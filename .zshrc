# SPACESHIP_PROMPT_ORDER=(
#  time          # Time stampts section
#  user          # Username section
#  host
#  dir           # Current directory section
#  git           # Git section (git_branch + git_status)
#  package       # Package version
#  exec_time     # Execution time
#  exit_code
#  line_sep      # Line break
#  vi_mode       # Vi-mode indicator
#  jobs          # Background jobs indicator
#  char          # Prompt character
# )

# User Configuration
# SPACESHIP_HOST_SHOW='always'
# SPACESHIP_USER_SHOW='always'
# SPACESHIP_PROMPT_DEFAULT_SUFFIX=']'
# SPACESHIP_PROMPT_DEFAULT_PREFIX=$'╾╼['
# SPACESHIP_TIME_FORMAT='%t'
# SPACESHIP_DIR_PREFIX=$'╾╼['
# SPACESHIP_USER_PREFIX=$'╾╼['
# SPACESHIP_USER_SUFFIX=''
# SPACESHIP_CHAR_SYMBOL=$'╰╼'
# SPACESHIP_TIME_PREFIX='['
# SPACESHIP_TIME_SHOW=true
# SPACESHIP_HOST_PREFIX='@'
# SPACESHIP_EXIT_CODE_PREFIX=$'╾╼['
# SPACESHIP_EXIT_CODE_SUFFIX=']'
# SPACESHIP_EXIT_CODE_SYMBOL=''

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/celik/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status battery time)
POWERLEVEL9K_CONTEXT_TEMPLATE=$'\ue795'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='201'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='017'
POWERLEVEL9K_DIR_HOME_FOREGROUND='044'
POWERLEVEL9K_DIR_HOME_BACKGROUND='025'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='044'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='025'
POWERLEVEL9K_DIR_ETC_FOREGROUND='044'
POWERLEVEL9K_DIR_ETC_BACKGROUND='025'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='044'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='025'
POWERLEVEL9K_STATUS_OK_BACKGROUND='017'
POWERLEVEL9K_HISTORY_BACKGROUND='013'
POWERLEVEL9K_HISTORY_FOREGROUND='044'
POWERLEVEL9K_TIME_BACKGROUND='201'
POWERLEVEL9K_TIME_FOREGROUND='255'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH='1'
# POWERLEVEL9K_BATTERY_CHARGING='yellow'
# POWERLEVEL9K_BATTERY_CHARGED='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_BATTERY_ICON='\uf1e6 

#export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-md64
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk


alias upug='yay -Syy && yay -Syu'
alias ports='netstat -tulanp'
alias h='history'
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias explore='nautilus .'
alias suexplore='sudo nautilus .'
alias j='jobs -l'
alias untar='tar -zxvf '
alias getpass='openssl rand -base64 20'
alias lt='ls --human-readable --size -1 -S --classify'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias wget='wget -c'
alias svim='sudo vim'
alias hs='history | grep $1'
alias rm='rm -i'
alias ping='ping -c 5'
alias c='clear'

#git
alias gith='git for-each-ref --sort=committerdate refs/heads/'

#OC
alias ocdev='oc login --token=sha256~LLt4n6VIg_7o2S0OPDh9azKEkJEng-WORtu7dB6TPfU --server=https://api.ocp.preprod.sallinggroup.io'
alias ocprod='oc login --username=emil.celik@sallinggroup.com https://prod.dsdigital.cloud'

# apt
alias install='sudo apt install'
alias remove='sudo apt remove --purge'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias autorm='sudo apt autoremove'

# Maven clean install
alias mci='mvn clean install'
alias mcis='mvn clean install -DskipTests'
#alias sbr='mvn spring-boot:run'
alias sbr='mvn spring-boot:run -Drun.jvmArguments="-XX:+ShowCodeDetailsInExceptionMessages"'

# Docker
alias dup='docker-compose -f contrib/docker-compose.yml up'
alias ddown='docker-compose -f contrib/docker-compose.yml down'

# Slack
alias sp='slack --proxy-server=prx.dsg.dk:8080'

# TEAMS
alias tms='teams --proxy-server=prx.dsg.dk:8080'

# Workspace change directory
alias cdmc='cd ~/workspace/next/mc'
alias cdbasket='cd ~/workspace/next/basket'
alias cdprong='cd ~/workspace/next/pronghorn'
alias cdcom='cd ~/workspace/next/communication'
alias cdosenv='cd ~/workspace/next/stable-os-env'
alias cdi3env='cd ~/workspace/next/stable-i3-env'
alias cdcnc='cd ~/workspace/next/click-and-collect-v2'
alias cdbacko='cd ~/workspace/next/backoffice'
alias cdmagnolia='cd ~/workspace/next/magnolia-next'
alias cdstock='cd ~/workspace/next/stock'
alias cdfodel='cd ~/workspace/next/fo-delivery'
alias cdfobasket='cd ~/workspace/next/fo-basket'
alias cdfoorder='cd ~/workspace/next/fo-order'
alias cdfodeposit='cd ~/workspace/next/fo-deposit'

# java switch
alias switchjava='sudo update-alternatives --config java'
alias java8='export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64'
alias java11='export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64'
alias java14='export JAVA_HOME=/usr/lib/jvm/java-14-openjdk-amd64'
alias java15='export JAVA_HOME=/usr/lib/jvm/java-15-openjdk-amd64'
alias java16='export JAVA_HOME=/usr/lib/jvm/java-16-openjdk-amd64'
alias java17='export JAVA_HOME=/usr/lib/jvm/java-17-openjdk'

#rc's
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'

# power
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'

# lazygit
alias lg='lazygit'

function encode() { echo -n $@ | perl -pe's/([^-_.~A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg'; }
function google() { firefox http://www.google.com/search?hl=en#q="`encode $@`" ;}

export M2_HOME=/usr/local/apache-maven/apache-maven-3.8.6 
export M2=$M2_HOME/bin 
export PATH=$M2:$PATH

# Path
export PATH="$PATH:/home/celik/dev/flutter/bin"
export PATH=$PATH:~/go/bin

# Chrome
export CHROME_EXECUTABLE=/usr/sbin/google-chrome-stable

export ANDROID_HOME='/home/celik/Android/Sdk'
export ANDROID_SDK_ROOT='/home/celik/Android/Sdk'


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler zsh-autosuggestions zsh-syntax-highlighting pip pyenv k sudo dirhistory)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(thefuck --alias)
