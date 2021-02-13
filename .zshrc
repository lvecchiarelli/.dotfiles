# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/lvecchiarelli/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias repos='cd  /mnt/c/Users/Tap/Source/Repos/tap'
alias db-dev="ssh -fNTC lvecchiarelli@3.129.112.87 \
	-L  localhost:5432:tap-sandbox-backend-database-serverless.cluster-csmn9wdcolho.us-east-2.rds.amazonaws.com:5432"
alias db-qa="ssh -fNTC lvecchiarelli@3.129.216.143 \
	-L  localhost:15432:tap-qa-backend-db.cluster-csynpwo2os4r.us-east-2.rds.amazonaws.com:5432"
alias db-prod="ssh -fNTC lvecchiarelli@3.227.98.97 \
	-L  localhost:18000:tap-prod-ledger-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18001:tap-prod-app-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18002:tap-prod-card-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18003:tap-prod-event-manager-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18004:tap-prod-monitoring-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18005:tap-prod-fiat-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18006:tap-prod-auth-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18007:tap-prod-invoice-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18008:tap-prod-promotion-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18009:tap-prod-lightning-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18010:tap-prod-loyalty-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432 \
	-L  localhost:18011:tap-prod-lifetest-gateway-db.cluster-c9lwmztua2pz.us-east-1.rds.amazonaws.com:5432"

eval `ssh-agent -s` > /dev/null
eval `ssh-add -q ~/.ssh/id_rsa` > /dev/null

export LANG=es_ES.UTF-8
