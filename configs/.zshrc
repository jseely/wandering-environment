# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR=vim

# Set the theme of the party!
ZSH_THEME="terminalparty"

# Who's joining in?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Quietly check for ssh agents
ssh-reagent () {
  for agent in /tmp/ssh-*/agent.*; do
    export SSH_AUTH_SOCK=$agent
    if ssh-add -l 2>&1 > /dev/null; then
      ssh-add -l
      return
    fi
  done
}
ssh-reagent
