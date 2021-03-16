export PATH="$PATH"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

### SHOPT
#shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control

export VISUAL=gedit
export EDITOR="$VISUAL"


#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### RANDOM COLOR SCRIPT ###
~/dev/tools/bash/shell-color-scripts/colorscript.sh random

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash)"

### ALIASES ####
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi



