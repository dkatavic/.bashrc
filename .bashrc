alias ll="ls -la"
alias docex="docker exec -it "


export CLICOLOR=1;
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx;

function parse_git_branch {
  echo -n $(git branch --no-color 2>/dev/null | awk -v out=$1 '/^*/ { if(out=="") print $2; else print out}')
}

PS1='️\[\e[m\]\[\e[1;32m\]¬ \[\e[4;32m\]\u\[\e[m\] \[\e[0;37m\]\w\[\e[m\] \[\e[0;33m\]$(parse_git_branch)\[\e[m\]\[\e[1;32m\] \$\[\e[m\] \[\e[0;37m\] ';
clear;

alias "ut"="npm run test:unit"

# Avoid duplicates
export HISTCONTROL=ignoreboth:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

eval $(thefuck --alias)
