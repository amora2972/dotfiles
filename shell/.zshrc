# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HOST_NAME="Omar"
ZSH_DISABLE_COMPFIX=true
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/shell/oh-my-zsh/theme

ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER=`whoami`
plugins=(git zsh-autosuggestions zsh-syntax-highlighting extract)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/.dotfiles-custom/shell/.{aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# export PATH
export PATH=${PATH}:/usr/local/mysql/bin/

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PYENV_ROOT="$HOME/.pyenv"
