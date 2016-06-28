# My aliases
#alias sshBackstage="ssh believe@10.93.253.226"
#alias sshStatic="ssh static@10.93.253.167"
#alias sshPlayer="ssh believe@10.25.9.91"
#alias sshIntra="ssh  believe@10.93.253.135"
#alias sshCover="ssh believe@10.93.253.167"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias tmuxdev='tmux -f ~/.tmux/tmux-dev.conf attach'
alias updateSubmodules="git submodule foreach git pull origin master"
alias fetchAll="git fetch --all --prune"
alias ll='ls -lah'
#alias sepDock='defaults write com.apple.dock persistent-apps -array-add \'{"tile-type"="spacer-tile";}\' && killall Dock'

# GIT prompt configuration
if [ -f /Applications/Git/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-prompt.sh ]; then
    source /Applications/Git/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWUPSTREAM=verbose GIT_PS1_DESCRIBE_STYLE=branch
    export export PS1="\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;31m\]\$(__git_ps1)\[\033[00m\]$\[\033[00m\] "
fi

# Add my bin folder to the PATH
PATH=$PATH:~/bin

