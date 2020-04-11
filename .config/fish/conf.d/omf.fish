# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set theme_color_scheme gruvbox
set -x EDITOR "nvim"
set -x TERMINAL alacritty

# replace vifm vifmrun
alias vifm='vifmrun'

# dotfile git alias
alias config='/usr/bin/git --git-dir=/home/stojshic/dotfiles --work-tree=/home/stojshic'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias grep='grep --colour=auto'

alias yt="youtube-dl --add-metadata -i" 
alias yta="yt -o '~/Music/%(title)s-%(id)s.%(ext)s' -x -f bestaudio/best"

# Replace vim with nvim
alias vim="nvim"

alias ex="extract"

# Git aliases
alias dotfiles='/usr/bin/git --git-dir=/home/stojshic/.dotfiles/ --work-tree=/home/stojshic'
alias dotapp='/usr/bin/git --git-dir=/home/stojshic/Apps/myApps/.git/ --work-tree=/home/stojshic/Apps/myApps'
