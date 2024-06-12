if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -U EDITOR vim
zoxide init fish | source
oh-my-posh init fish --config ~/warmdev.omp.json | source
#cat ~/.cache/wal/sequences


# alias
alias npr='npm run dev'
alias pacman='sudo pacman'
alias v='nvim'
alias vim='nvim'
alias reload='exec fish'
alias dev='cd ~/Workspace/'
alias home='cd ~'
alias home='cd ~'
alias confk='vim ~/.config/kitty/kitty.conf'
alias conff='vim ~/.config/fish/config.fish'
alias confn='vim ~/.config/nvim'
alias rm='rm -rf'
alias browser='~/dotfiles/.settings/browser.sh'

alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

alias shutdown='systemctl poweroff'
alias cls='clear'

alias nc='cd ~/.config/nvim'
alias dotfiles='cd ~/clone/dotfiles/'

# tmux quick sessions open
function ta
    tmux attach -t $argv
end

function tn
    tmux new -s $argv
end

function tl
    tmux ls
end

function hypr
    cd ~/dotfiles/hypr/conf/
end

function .settings
    cd ~/dotfiles/.settings/
end

function keybindings
    vim ~/dotfiles/hypr/conf/keybindings/warmdev-keybinding.conf
end

# git alias
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash
        git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"
function grt
    git remote add origin "https://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@github.com/$argv[1]/$argv[2]"
end

# wifi connect alias
alias wifi_list='nmcli device wifi list'
alias wifi_rescan='nmcli device wifi rescan'

function wifi_connect
    nmcli device wifi connect $argv[1] password $argv[2]
end

# brew
alias bi='brew install'
alias bu='brew upgrade'
alias bui='brew uninstall'
alias bri='brew reinstall'


# g++ build
function build
    g++ -o $argv[1] $argv[2]
end

# g++ build and run
function bar
    if test -e "$argv[1]"
        rm -rf $argv[1]
        g++ -o $argv[1] $argv[2]
        ./$argv[1]
    else
        g++ -o $argv[1] $argv[2]
        ./$argv[1]
    end
end

# java build and run
function jbr
    javac $argv[1] && java $argv[2]
end

# g++ build with lib
function buildwl
    g++ -o $argv[1] $argv[2] -l$argv[3] -l$argv[4] -l$argv[5]
end

function tfe
    if test -e "$argv"
        # The file exists, so do something here
        echo "File '$argv' exists."
    else
        # The file doesn't exist, so do something else here
        echo "File '$argv' does not exist."
    end
end

set -gx GTK_IM_MODULE ibus
set -gx XMODIFIERS @im=ibus
set -gx QT_IM_MODULE ibus

if not test (pidof ibus-daemon)
    ibus-daemon -drx
end

# chrome quick open
function chrome
    google-chrome-stable $argv[1] https://$argv[2]
end
alias youtube='google-chrome-stable https://youtube.com'
alias facebook='google-chrome-stable https://facebook.com'
alias github='google-chrome-stable https://github.com'
alias reddit='google-chrome-stable https://reddit.com'

function cd..
    for item in (seq $argv)
        cd ..
    end
end

# Created by `pipx` on 2024-04-15 12:20:04
set PATH $PATH /home/warmdev/.local/bin

# pip install
alias ppm='~/venv/bin/pip'

# yay
alias yi='yay -Sy'
alias yu='yay -R'

# pacman
alias pmi='sudo pacman -Sy'
alias pmu='sudo pacman -R'

alias monitor='v ~/dotfiles/hypr/conf/custom.conf'

# Set up fzf key bindings
fzf --fish | source
function cdfzf
    set -l dir (find $argv[1] -type d 2> /dev/null | fzf)
    if test -n "$dir"
        cd "$dir"
    end
end
