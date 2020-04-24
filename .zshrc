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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'


source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/opt/android-sdk/platform-tools:/opt/android-sdk/tools
export PATH=$PATH:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/tools
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:$HOME/Development/android-sdk-macosx/tools:$HOME/Development/android-sdk-macosx/platform-tools
export PATH=$PATH:$HOME/Development/flutter/bin
export PATH=$PATH:/opt/eclipse
export PATH=$PATH:$HOME/.lein
export PATH=$PATH:/opt/RubyMine-7.1/bin
export PATH=$PATH:/opt/apache-maven-2.2.1/bin
export PATH=$PATH:$HOME/apps/apache-jmeter/bin
export PATH=/usr/local/bin:$PATH:.

export DEFAULT_USER=`whoami`

# ruby GC tuning
RUBY_HEAP_MIN_SLOTS=600000 
RUBY_GC_MALLOC_LIMIT=59000000
RUBY_FREE_MIN=100000

# Customize to your needs...
alias ll="ls -al --color"
alias co="git checkout"
alias nb="git checkout -b"
alias gg="git gui"
alias gk="gitk --all"
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

alias skip-time-reporting-tests="rename 's/\.rb/\.rbnope/' ~/workspace/intraop/spec/time_reporting/*"
alias add-time-reporting-tests="rename 's/\.rbnope/\.rb/' ~/workspace/intraop/spec/time_reporting/*"

alias sqlplus="sqlplus64"

alias sublhere="subl . -n &"

#alias npm-exec="PATH=$(npm bin):$PATH"

alias files="nautilus . &"

alias clean_omnibus="rm -rf /tmp/omnibus"
alias run_omnibus="cd ~/workspace/omnibus-web-services ; mvn jetty:run -Djava.library.path=$ORACLE_HOME/lib -Doracle.net.tns_admin=$TNS_ADMIN ; clean_omnibus"
alias run_omnibus_tests="cd ~/workspace/omnius-web-services ; mvn test -Djava.library.path=$ORACLE_HOME/lib -Doracle.net.tns_admin=$TNS_ADMIN"
alias run_utopia="cd ~/workspace/utopia ; ./run.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
