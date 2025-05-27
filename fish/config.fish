if status is-interactive
starship init fish | source
set fish_greeting
end

end

thefuck --alias | source

nvm use latest > /dev/null
