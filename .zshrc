function cd(){
        builtin cd $@ && ls
}


# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# list
alias ll="ls -l"
alias lh="ls -lh"
alias lr="ls -lr"
alias la="ls -a"
alias lra="ls -lra"
alias lar="ls -lra"
alias lha="ls -lah"
alias lah="ls -lah"
alias lt="ls -lrt"
alias lta="ls -lrta"

# browser
alias gc="google-chrome-stable"

# ipython
alias ipy="ipython"

export GITNET_DIR="$HOME/documents/gitnet"

export PATH="$PATH:$HOME/bin"

export LASTFM_PLAYER="default mplayer"
export TAGINFO="default taginfo"
export LASTFM_SUBMIT="default lastfmsubmit"
export SCROBBLER_ECHO="default true"
export DISPLAY_TRACK_INFO="default true"

# set environment variables


source /usr/share/doc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
