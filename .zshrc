
export ADOTDIR=$HOME/.config/zsh/antigen
source $HOME/.config/zsh/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle osx
antigen bundle brew
antigen bundle pyenv
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme denysdovhan/spaceship-prompt
antigen apply

# theme setup
# (~/.pyenv/versions/3.9.4/envs/cli/bin/wal -q --vte -R 1>/dev/null 2>&1 &)

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
