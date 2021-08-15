set -a

typeset -aU path
path=(
    $HOME/bin
    $HOME/.local/bin
    /usr/local/bin
    /usr/local/sbin
    $path
)

WORKON_HOME=$HOME/.ve
PROJECT_HOME=$HOME/Develop

KITTY_CONFIG_DIRECTORY=$HOME/.config/kitty

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
