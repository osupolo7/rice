
export $ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$HOME/.zsh/bundles
source $HOME/.config/repos/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle pyenv
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

if [ "$(uname 2> /dev/null)" == "Darwin" ]; then
  antigen bundle osx
  antigen bundle brew
fi

antigen theme denysdovhan/spaceship-prompt
antigen apply

eval spaceship_vi_mode_enable
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  rust          # Rust section
  docker        # Docker section
  venv          # virtualenv section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
