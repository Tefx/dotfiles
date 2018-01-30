# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=~/.oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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

setopt RM_STAR_WAIT
setopt CORRECT

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux docker taskwarrior tmux vim virtualenvwrapper)


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

#source /usr/bin/virtualenvwrapper.sh

fuck () {
	TF_PREVIOUS=$(fc -ln -1 | tail -n 1);
        TF_CMD=$(
		TF_ALIAS=fuck
                TF_SHELL_ALIASES=$(alias)
                PYTHONIOENCODING=utf-8
                thefuck $TF_PREVIOUS THEFUCK_ARGUMENT_PLACEHOLDER $*
                ) && eval $TF_CMD;
        test -n "$TF_CMD" && print -s $TF_CMD
        }

stty -ixon

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

setopt rm_star_silent
source $ZSH/oh-my-zsh.sh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export SHELL=/usr/bin/zsh

alias vim='vim --servername vim'
alias fsrv='python -m http.server'

eval "`pip completion --zsh`"


POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='009'

POWERLEVEL9K_DIR_HOME_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='196'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232'

#POWERLEVEL9K_HOME_ICON='\UF015'
#POWERLEVEL9K_SUB_ICON='\UF07C'
#POWERLEVEL9K_FOLDER_ICON='\UF07B'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time battery time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='blue'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='46'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='178'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='235'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='88'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGED_ICON='/UF240'
POWERLEVEL9K_BATTERY_LOW_ICON='/UF240'
POWERLEVEL9K_BATTERY_CHARGING_ICON='/UF1E6'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='009'
POWERLEVEL9K_BATTERY_ICON='\UF1E6'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1 "
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="009"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="black"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"

