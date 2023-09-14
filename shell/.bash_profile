
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(/opt/homebrew/bin/brew shellenv)"

HOST_NAME=omar

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

fortune | cowsay -f tux

function mkcd()
{
	mkdir $1 && cd $1
}

alias python=/usr/bin/python3

alias ec2e="ssh -i ~/.ssh/aws/id_rsa centos@ec2-54-81-14-98.compute-1.amazonaws.com"

alias lb1="ssh forge@168.119.226.30"
alias fs1="ssh forge@159.69.147.4"
alias fs2="ssh forge@116.203.219.11"
alias fs3="ssh forge@78.47.74.70"
alias fsd="ssh forge@49.12.229.204"

alias ends="ssh forge@142.132.239.125"
alias endaca="ssh forge@167.235.255.207"


#composer aliases
alias ci="composer install"
alias cu="composer update"
alias co="composer dump-autoload"
alias c="composer"
alias cr="composer require"

#php aliases
alias m="php artisan migrate"
alias s="php artisan db:seed"
alias ms="php artisan make:seeder"
alias pc="php artisan optimize:clear"
alias mm="php artisan make:migration"
alias mo="php artisan make:model"
alias a="php artisan"
alias p="php"
alias sail='bash vendor/bin/sail'

#git aliases
alias gc="git checkout"
alias gpl="git pull origin"
alias gps="git push origin"
alias gs="git status"
alias g="git"
alias gss="git stash save"
alias nah="git reset --hard;git clean -df"
alias neh="git reset --soft HEAD~1"
alias gpo="git push origin"
alias gss="git stash save"
alias gsl="git stash list"
alias gsp="git stash pop"

# PhpStorm
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'

# VSCode
alias code='open -a "/Applications/Visual Studio Code.app" "`pwd`"'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Fast open
alias o="open ."

alias flushdns="sudo killall -HUP mDNSResponder;"
export BASH_SILENCE_DEPRECATION_WARNING=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
