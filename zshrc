# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cabal command-not-found git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ==== Editor setup ====
EDITOR_META='emacsclient'

export EDITOR=$EDITOR_META

pgrep -f 'emacs --daemon' > /dev/null
if [ $? -ne 0 ]
then
    emacs --daemon
fi
# ========
export PATH=/usr/local/texlive/2013/bin/x86_64-linux/:~/.cabal/bin:~/install/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# ==== Editing shortcuts ====
alias e=$EDITOR' -t'
alias ec=$EDITOR' -c'
alias ez=$EDITOR' ~/.zshrc'
alias egc=$EDITOR' .git/config'

# ==== Configuration update ====
alias sz='source ~/.zshrc'

# ==== HSEnv management ====
alias hsa='source .hsenv/bin/activate'
alias hsd='deactivate_hsenv'

# ==== Package management ====
alias sagi='sudo apt-get install'
alias acs='apt-cache search'
alias afl='apt-file list'

# ==== Color enhancements ====
export TERM=xterm-256color
