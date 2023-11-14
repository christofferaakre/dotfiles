if status is-interactive
starship init fish | source
set fish_greeting

if status is-interactive
and not set -q TMUX
    exec tmux
end

end

thefuck --alias | source
