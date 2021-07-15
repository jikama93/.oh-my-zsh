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

alias la="ls -lah"
alias buscar="find . -type f -print0 | xargs -0 -n10 -P4 grep -m 1 -H -l"
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias h='history'
alias grep='ugrep'
alias -g M='|more'
alias -g H='|head'
alias -g T='|tail'
alias rm-ds='rmdsstore'
alias sshm='ssh majika'

hosts=(`hostname` server.majika.jp majika.jp)
[[ ! -f ~/.oh-my-zsh/.p10k.zsh ]] || source ~/.oh-my-zsh/.p10k.zsh
