#!/usr/bin/env zsh

setopt promptsubst

# Load required modules.
autoload -U add-zsh-hook
autoload -Uz vcs_info

# Add hook for calling vcs_info before each command.
add-zsh-hook precmd vcs_info

local reset="$FX[reset]"
local bold="$FX[bold]"

# Set vcs_info parameters.
zstyle ':vcs_info:*:*' enable hg bzr git svn
zstyle ':vcs_info:*:*' check-for-changes true
zstyle ':vcs_info:*:*' stagedstr "%{$fg_bold[green]%}●$reset"
zstyle ':vcs_info:*:*' unstagedstr "%{$fg_bold[yellow]%}●$reset"
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*:*' actionformats "%r/%s/%b %u%c (%a)"
zstyle ':vcs_info:*:*' formats "%r/%s/%b %u%c"


local return_code="%(?..$bold%{$FG[198]%}%? ↵${reset})"
local time="${bold}%{$FG[231]%}%*${reset}"

# translate hostnames into shortened, colorcoded strings
typeset -A host_repr
#host_repr=('theanine' "%{$fg_bold[green]%}home" 'dieter-p4sci-arch' "%{$fg_bold[blue]%}p4")
# Hostname part.  compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
local hostname="%m"
local hostname="${host_repr[${(%)hostname}]:-${(%)hostname}}"
#local host="${SSH_TTY:+[%n@%m]}"
#local host="${bold}$FG[206]%n$reset at $FG[206]$hostname${reset}"
local host="${bold}%{$FG[135]%}%n$reset at $bold$FG[135]$hostname${reset}"
local pwd="${bold}$FG[198]%5~${reset}"
local _in="in${reset}"
local jobs="%(1j.$bold$FG[208](j:%j).)"
local tty="${bold}%{$fg[white]%}%l"
local prompt_end="${bold}%{$fg[white]%}%(!.#.$)"

PROMPT="${time} ${host} $_in $pwd $jobs
%(?..$FG[198])${tty} ${prompt_end}${reset} "
RPROMPT="$return_code"'${vcs_info_msg_0_} ${vcs_info_msg_1_}'"$reset"

