# Path to your oh-my-zsh installation.
#export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="juanghurtado"
ZSH_THEME="miloshadzic"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
ZSH_CUSTOM=$MY_ENV/oh-my-zsh/custom/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git vi-mode osx brew brew-cask docker docker-compose)
plugins=(git vi-mode docker docker-compose)

# Load all of the plugins that were defined in ~/.zshrc
#for plugin ($plugins); do
  #if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    #source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  #elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    #source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  #fi
#done

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'
alias vim=nvim

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
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias tmux="tmux -2" # enable 256 colors

hrm () {
  LC_ALL=C sed -i "/$1/d" $HISTFILE
}

# TMUX
# if [ "$TMUX" = "" ]; then tmux new-session -A -s main; fi
# if [ "$TMUX" = "" ]; then tmux; fi
#
# this loads NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# kainat
export PATH="$PATH:$HOME/Workspace/projects/kainat/bin"

# Android
export ANDROID_HOME="$HOME/Android/Sdk"
if [ -d "$ANDROID_HOME" ];
then
  export PATH="$PATH:$ANDROID_HOME/tools"
  export PATH="$PATH:$ANDROID_HOME/platform-tools"
fi


