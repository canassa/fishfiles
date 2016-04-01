set -U fish_user_paths ~/bin ~/.local/bin

# Initialize rbenv
if test -d ~/.rbenv
    set fish_user_paths ~/.rbenv/bin $fish_user_paths
    . (rbenv init -|psub)
end

# Initialize pyenv
status --is-interactive; and . (pyenv init -|psub)

# Prevents the Virtual Env activate.fish from messing with my prompt
set VIRTUAL_ENV_DISABLE_PROMPT 'yes'

# Fix OS X broken locales
if test (uname) = Darwin
    set -x LANG en_US.UTF-8
    set -x LC_COLLATE en_US.UTF-8
    set -x LC_CTYPE en_US.UTF-8
    set -x LC_MESSAGES en_US.UTF-8
    set -x LC_MONETARY en_US.UTF-8
    set -x LC_NUMERIC en_US.UTF-8
    set -x LC_TIME en_US.UTF-8
end
