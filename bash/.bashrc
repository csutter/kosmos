# Set Bash options
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL='ignoreboth'

# Set up environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export CLICOLOR=1
export EDITOR=nvim
export VISUAL=nvim

# Load Bash completion
if [[ $PS1 && -f /usr/share/bash-completion/bash_completion ]]
then
  . /usr/share/bash-completion/bash_completion
fi

# Load Git prompt
# (openSUSE has this under `bash-completion` for historical reasons)
if ! type __git_ps1 &> /dev/null && [ -e /usr/share/bash-completion/completions/git-prompt.sh ]
then
  . /usr/share/bash-completion/completions/git-prompt.sh
fi

# Load fzf
if [ -f /usr/share/fzf/shell/key-bindings.bash ]
then
  . /usr/share/fzf/shell/key-bindings.bash
fi

# Set up prompt
if type __git_ps1 &> /dev/null
then
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export GIT_PS1_SHOWCOLORHINTS=1
  export GIT_PS1_SHOWCONFLICTSTATE="yes"
  export GIT_PS1_SHOWUPSTREAM="auto"
  export GIT_PS1_FORMAT=" (%s)"

  export PROMPT_COMMAND='__git_ps1 "\u@\h:\[\e[1m\]\w\[\e[0m\]" "> " " (%s)"'
else
  export PS1='\u@\h:\[\e[1m\]\w\[\e[0m\]]> '
fi
export PROMPT_DIRTRIM=2
