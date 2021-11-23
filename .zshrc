# This disables the annoying warning on startup.
ZSH_DISABLE_COMPFIX=true

# Set terminal language to english
#LANG=en

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="trapd00r"
#ZSH_THEME="strug"
ZSH_THEME="arrow"

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
DISABLE_UPDATE_PROMPT="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

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

# hook direnv functionality
eval "$(direnv hook zsh)"

# Kubectl autocomplete
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell


# aliases
alias da="direnv allow"
alias tf="terraform"
alias tfc="terraform console"
alias tfi="terraform init"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfd="terraform destroy"
alias tfv="terraform validate"
alias k="kubectl"
alias kl="kubectl logs"
alias kp="kubectl port-forward"
alias kd="kubectl describe"
alias kg="kubectl get"
alias kx="kubectl exec"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kgs="kubectl get services"
alias d="docker"
alias gba="git branch -a" # shows all available branches
alias gc="git checkout"
unalias gca # git commit -v -a
alias gca="git commit --amend"
alias gdm="git diff main"
alias gdp="git diff HEAD^" # Soll etwa heißen "git diff previous".
alias gf="git fetch"
alias gfp="git fetch --prune"
unalias gl # per default, gl refers to 'git pull'
alias gl="git log"
alias glo="git log --oneline"
unalias gp # per default, gp refers to 'git push'
alias gp="git pull"
alias gpf="git push --force"
alias gpr="git pull --rebase"
unalias gr # per default, this is 'git remote'
alias gr="git rebase"
alias gri="git rebase -i"
alias gs="git status"
alias w="watson"
alias wa="watson add"
alias we="watson edit"
alias wl="watson log"
alias wp="watson projects"
alias wr="watson report"
alias wt="watson tags"

# this is so you can type "fuck" instead of "thefuck"
eval $(thefuck --alias)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# syntax highlighting:
source /Users/$USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

