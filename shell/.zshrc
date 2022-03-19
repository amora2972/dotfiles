HOST_NAME="Omar"
ZSH_DISABLE_COMPFIX=true
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/shell/oh-my-zsh/theme

ZSH_THEME="robbyrussell"
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

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
