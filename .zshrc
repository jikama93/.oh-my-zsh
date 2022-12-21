if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export ZSH="/Users/jikama/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
 brew
 bbedit
 betterbrew
 composer
 colorize
 fast-syntax-highlighting
 extract
 git
 globalias
 iterm2
 laravel
 history-substring-search
 mysql
 node
 npm
 osx
 pip
 urltools
 wp-cli
 zsh-autosuggestions
 sudo
 )

source $ZSH/oh-my-zsh.sh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
autoload -U compinit && compinit

############# ALIASES #############

alias sapt='sudo apt'
alias upd='sudo apt update -y'
alias upg='sudo apt upgrade -y'
alias rapt='sudo apt autoremove -y'
alias png="find . -iname '*.png' -print0 | xargs -0 optipng -o7 -preserve"
alias jpg="find . -iname '*.jpg' -print0 | xargs -0 jpegoptim --strip-all --preserve --totals --max=70 --all-progressive"
alias buscar='find . -type f -print0 | xargs -0 -n10 -P4 grep -m 1 -H -l'
alias unzipall='for z in *.zip; do unzip $z; done'
alias permissoes='sudo find . -type f -exec chmod 664 {} \; && sudo find . -type d -exec chmod 775 {} \;'
alias la='ls -lah'
alias Chown='sudo chown -R'
alias Chmod='sudo chmod -R'
alias own='sudo chown -R www-data.www-data'

hosts=(`hostname` server.majika.jp majika.jp)
[[ ! -f ~/.oh-my-zsh/.p10k.zsh ]] || source ~/.oh-my-zsh/.p10k.zsh
