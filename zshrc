# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

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
plugins=(git virtualenv)

# User configuration

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:"/cygdrive/c/Program Files/Sublime Text 3"
export PATH=$PATH:"/cygdrive/c/Program Files/Beyond Compare 4"
export PATH=.:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export EDITOR='vim'
export WORKSPACE='/cygdrive/d/Workspace'

alias e="explorer"
alias open="cygstart"
alias dl="cd /cygdrive/d/Downloads"
alias wk="cd $WORKSPACE"

# alias dox='ssh ben@107.170.234.74'
alias dox='ssh ben@128.199.133.186'
alias rpi='ssh pi@10.0.0.14'

alias locate='/cygdrive/C/bin/Wox-1.2.0-beta/Plugins/Wox.Plugin.Everything/PortableEverything/everything --search'

alias git-rm-all='git ls-files --deleted | xargs git rm'
alias git-add-all='git add -u .'
alias git-add-new='git add -A'

function subl2(){
    subl $(cygpath -w $1) "${@:2}"
}

function cowsay_fortune(){
    # cowfiledir="/usr/local/share/cows/"
    # files=( $(find $cowfiledir -maxdepth 1 -type f) )
    # randomfileindex=$((RANDOM%${#files[@]}+0))
    # randomcowfile=${files[$randomfileindex]}
    randomcowfile="tux"
    fortune | cowsay -f $randomcowfile
}
cowsay_fortune

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
# export PIP_DOWNLOAD_CACHE=/cygdrive/d/Cache/pip
export XDG_CACHE_HOME=/cygdrive/d/Cache
# virtualenvs setup
export WORKON_HOME="$WORKSPACE/virtualenvs"
if [ -f /bin/virtualenvwrapper.sh ]; then
    source /bin/virtualenvwrapper.sh
fi

syspip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
