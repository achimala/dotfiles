# Path to your oh-my-zsh configuration.

ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

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
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git heroku osx python redis-cli sublime sbt scala brew ant golang history-substring-search itunes)

source $ZSH/oh-my-zsh.sh

globalias() {
    zle _expand_alias
    zle expand-word
    zle self-insert
}

zle -N globalias
bindkey " " globalias
bindkey "^ " magic-space
bindkey -M isearch " " magic-space

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/achimala/play:/usr/local/go/bin:/usr/local/Cellar/llvm/3.2/bin
export CLASSPATH=/usr/local/lib/antlr-complete-3.5.jar:/usr/local/lib/antlr-4.0-complete.jar:$CLASSPATH
export BLAZEPATH=/Users/achimala/Dropbox/Homework/cs164/final/blaze/lib

# alias it="itunes"
alias antlr="java org.antlr.Tool"
alias antlr4="java -jar /usr/local/lib/antlr-4.0-complete.jar"
alias grun="java org.antlr.v4.runtime.misc.TestRig"
alias 2ez="yes 'YOU ARE THE BEST'"
alias redis-lt="redis-cli -h squawfish.redistogo.com -p 9155 -a 40df02fbb5396b9790bb7e52c4ca9d46"
alias redis-lt-staging="redis-cli -h squawfish.redistogo.com -p 9153 -a 08cd9df4e6f68514926bceb676a473c6"
alias redis-lt-flush="redis-cli -h squawfish.redistogo.com -p 9155 -a 40df02fbb5396b9790bb7e52c4ca9d46 flushall"
alias watch-lt="watch -n .5 heroku ps -a lolteam-prod"
alias blaze='java -cp "/Users/achimala/Dropbox/Homework/cs164/final/blaze/target/dist/deploy/*:/Users/achimala/Dropbox/Homework/cs164/final/blaze/target/dist/lib/*" blaze.Blaze'
alias vim='/usr/local/Cellar/vim/7.3.923/bin/vim'
alias oo='open .'
alias ss='subl .'
