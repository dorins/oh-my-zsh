
autoload -Uz colors && colors

local DIRNAMES_FILE="${DIRNAMES_FILE:-$HOME/.dirnames}"
function dirname {
    if [[ $# == 0 ]]; then
        NAME=$(basename "$PWD")
    else
        NAME="$@"
    fi
    NAME=$(echo $NAME | tr -dc "[:alnum:]_")
    echo "$NAME=\"$PWD\"" >> "$DIRNAMES_FILE"
    echo "$fg[green]$NAME$reset_color -> \"$PWD\""
}

function dirname_list {
    cat "$DIRNAMES_FILE"
}

[ -f "$DIRNAMES_FILE" ] && source "$DIRNAMES_FILE"
