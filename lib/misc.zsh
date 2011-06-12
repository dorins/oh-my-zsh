## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
if command -v vimpager &> /dev/null; then
    export PAGER=vimpager
else
    export PAGER=less
    export LESS=-R
fi
export LC_CTYPE=en_US.UTF-8

# suppose /foo/bar is a link to the directory /alt/rod.  Without this option
# set, `cd /foo/bar/..' changes to /foo; with it set, it changes to /alt.
setopt chasedots

#report elapsed time for commands that take longer than 10s
REPORTTIME=10
