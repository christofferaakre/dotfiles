if status is-interactive
and not set -q TMUX
    exec tmux
end

if status is-interactive
starship init fish | source
set fish_greeting
end

thefuck --alias | source

nvm use latest > /dev/null
