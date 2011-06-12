# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias ll='ls -lah'
alias la='ls -A'
#alias l='ls -CF'
alias l='ls -lh'
alias sl=ls # often screw this up

alias afind='ack-grep -il'
alias ff='find . -iname '
alias g='grep -i'

alias x=extract

alias e='$EDITOR'

# ask for confirmation and be verbose
alias rm='rm -v -I'
alias cp='cp -v -i'
alias mv='mv -v -i'

alias df='df -h'
alias ducks='du -cksh *' # Lists folders and files sizes in the current folder
alias free='free -m'

alias free='free -m'
if [ "$TERM" = "cygwin" ]; then
    alias o=cygstart
else
    alias o=xdg-open
fi
alias netstat.listening='netstat -tlnp'

