# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="wezm"
ZSH_THEME="agnoster-kb-rvm"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Oracle stuff
export ORACLE_HOME=/Library/Oracle
export OCI_DIR=$ORACLE_HOME/instantclient_12_2
export TNS_ADMIN=$ORACLE_HOME/instantclient_12_2/network/admin
export TNSADMIN=$TNS_ADMIN
export CLASSPATH=$CLASSPATH:$ORACLE_HOME

# openssl stuff for ruby
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export ANDROID_HOME=$HOME/Library/Android/sdk

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/Library/Android/sdk/emulator
export PATH=$PATH:$ORACLE_HOME/instantclient_12_2
export PATH=$PATH:$HOME/Development/flutter/bin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/usr/local/opt/qt/bin
export PATH=$PATH:$JAVA_HOME/bin
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH:.

export DEFAULT_USER=`whoami`

# ruby GC tuning
RUBY_HEAP_MIN_SLOTS=600000
RUBY_GC_MALLOC_LIMIT=59000000
RUBY_FREE_MIN=100000

# Customize to your needs...
alias ll="ls -alG"
alias co="git checkout"
alias nb="git checkout -b"
alias gg="git gui"
alias gk="gitk --all"
alias gx="gitx"
alias gst="git status -s"
alias sd="passenger start"
alias parrot="rake parallel:prepare parallel:spec"
alias parrotcuke="rake parallel:prepare parallel:features"
alias spec6="rake 'parallel:spec[6]'"
alias spec8="rake 'parallel:spec[8]'"
alias prep8="rake 'parallel:prepare[8]'"
alias ber="bundle exec rake"
alias be="bundle exec"
alias pms="rake db:purge db:migrate && rake db:seed"
alias pmsc="rake db:purge db:migrate && rake db:seed && rake import:canon"
alias empms="rake app:db:purge app:db:migrate && rake app:db:seed"
alias rake='noglob rake'
alias expouat='API_HOST=https://demo.winnipegtransit.com expo start'

alias sublhere="subl . -n &"

alias mountefi="~/hackintosh/MountEFI/MountEFI.command"

# jenv for Java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export JAVA_HOME="$HOME/.jenv/versions/1.8"
export PATH="$PATH:$JAVA_HOME/bin"

# NVM for NodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
