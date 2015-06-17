alias xclip="xclip -selection c"
export TERM=screen-256color

if [ `uname` != "Darwin" ];
then
    function nocolor {
        alias ls="ls --color=never"
    }

    function color {
        alias ls="ls --color=auto"
    }

    color
fi

alias serve="python -m SimpleHTTPServer > /dev/null 2>&1 &"
alias stopserve="ps | grep python | awk '{print \$1}' | xargs kill"

INNER_COLOR="\[\033[0;36m\]"
OUTER_COLOR="\[\033[0;35m\]"
NO_COLOR="\[\033[0m\]"
PS1="$OUTER_COLOR[$INNER_COLOR\u@\h:\w$OUTER_COLOR]>$NO_COLOR "

