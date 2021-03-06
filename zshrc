source ~/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle history

antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell


# Tell antigen that you're done.
antigen apply

# Powerline
source /Users/antoinetoussaint/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

### VI binding
bindkey -v
# Fast Esc mode
bindkey jj vi-cmd-mode
bindkey kk vi-cmd-mode

export VISUAL=vim
export EDITOR="$VISUAL"


alias v="vim"
alias gv="/Applications/MacVim.app/Contents/bin/mvim"
alias c="clear"

alias cd="pushd > /dev/null"
alias bd="popd > /dev/null"

alias py="python"


#export KEYTIMEOUT=1
bindkey -M viins 'jj’ vi-cmd-mode
bindkey -M viins 'kk’ vi-cmd-mode

# set up for insert mode too
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

#bindkey -M viins "\e[A" history-beginning-search-backward
#bindkey -M viins "\e[B" history-beginning-search-forward
bindkey -M viins "$terminfo[kcuu1]" history-beginning-search-backward
bindkey -M viins "$terminfo[kcud1]" history-beginning-search-forward
