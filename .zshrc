# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/danielalegria/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Uncomment the following line and replace "_THEME_" with the theme you want
ZSH_THEME="ishmael"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git brew node npm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. `brew --prefix`/etc/profile.d/z.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Clone projects from Github 
# NOTE:This is Steven's Example, update:
# make () {
#  echo "Please select a project type \n( MEANLocal: 'ml' / SANELocal: 'sl' / SANEAuth0: 'sa0' / SANEAuth0Cart: 'sa0c' )"
#  vared -p 'Project type: ' -c TYPE
#  echo "\n"

#  if [[ "$TYPE" != "ml" && "$TYPE" != "sl" && "$TYPE" != "sa0" && "$TYPE" != "sa0c" ]];
#   then
#     echo "Type not available. Please try again with the provided types"
#  else
#   echo "If you would like to change the name of the destination folder, enter one now, else enter nothing"
#   vared -p 'Folder name: ' -c FOLDER
#   echo "\n"

#  if [[ "$TYPE" == "ml" ]]; then
#   if [[ $FOLDER == "" ]]; then
#    FOLDER="MEAN_Seed_Local_Auth"
#   fi
#   git clone "https://github.com/DevSeedlings/MEAN_Seed_Local_Auth" $FOLDER
#  fi

#  if [[ "$TYPE" == "sl" ]]; then
#   if [[ $FOLDER == "" ]];
#    then FOLDER="SANE_Seed_Local_Auth"
#   fi
#   git clone "https://github.com/DevSeedlings/SANE_Seed_Local_Auth" $FOLDER
#  fi

#  if [[ "$TYPE" == "sa0" ]]; then
#   if [[ $FOLDER == "" ]]; then
#    FOLDER="SANE_Seed_Auth0"
#   fi
#   git clone "https://github.com/DevSeedlings/SANE_Seed_Auth0" $FOLDER
#  fi

#  if [[ "$TYPE" == "sa0c" ]]; then
#   if [[ $FOLDER == "" ]]; then
#    FOLDER="SANE_Cart_Seed_Auth0"
#   fi
#   git clone "https://github.com/DevSeedlings/SANE_Cart_Seed_Auth0" $FOLDER
#  fi

#  cd $FOLDER
#  npm i
#  gulp build

#  fi

#  TYPE=""
#  FOLDER=""
# }

# Custom aliases:

alias :q='exit'

alias c='clear'

alias sni='sudo npm install'

alias snis='sudo npm install --save'

alias snig='sudo npm install -g'

alias config='/usr/bin/git --git-dir=/Users/danielalegria/.cfg/ --work-tree=/Users/danielalegria'

alias nope='git commit -m "ಠ_ಠ"'

alias quickcommit='git add . && git commit -m "Routine commit."'

# Custom functions:

function gi() {
  curl -L -s https://www.gitignore.io/api/$@ ;
}

function google() {
  open -a "Google Chrome" "https://www.google.com/search?q=$1";
}

function chrome() {
  open -a "Google Chrome" "http://$1";
}
