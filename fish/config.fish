if status is-interactive
and not set -q TMUX
    exec tmux
end

if status is-interactive
    fish_vi_key_bindings
end

if status is-interactive
starship init fish | source
set fish_greeting
end

if string match -q "Linux" (uname)
    nvm use latest > /dev/null
end
