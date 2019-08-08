if test -d ~/bin
    set -U fish_user_paths ~/bin $fish_user_paths
end

if test -d ~/.local/bin
    set -U fish_user_paths ~/.local/bin $fish_user_paths
end

# Homebrew paths
if test -d /usr/local/sbin
    set -U fish_user_paths /usr/local/sbin $fish_user_paths
end

# Initialize pyenv
if test -e /usr/local/bin/pyenv
    status --is-interactive; and . (pyenv init -|psub)
end

if test -e ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end

# Prevents the Virtual Env activate.fish from messing with my prompt
set VIRTUAL_ENV_DISABLE_PROMPT 'yes'

# New10 stuff
set -x AWS_PROFILE new10-dev
set -x AWS_DEFAULT_REGION eu-west-1
set -x AWS_SDK_LOAD_CONFIG 1

set -x -U GOPATH ~/code

# Fix OS X broken locales
if test (uname) = Darwin
    set -x LANG en_US.UTF-8
    set -x LC_COLLATE en_US.UTF-8
    set -x LC_CTYPE en_US.UTF-8
    set -x LC_MESSAGES en_US.UTF-8
    set -x LC_MONETARY en_US.UTF-8
    set -x LC_NUMERIC en_US.UTF-8
    set -x LC_TIME en_US.UTF-8

    # set -x LANG C
    # set -x LC_COLLATE C
    # set -x LC_CTYPE C
    # set -x LC_MESSAGES C
    # set -x LC_MONETARY C
    # set -x LC_NUMERIC C
    # set -x LC_TIME C
end

# Fix psycopg installtion
# https://stackoverflow.com/a/39244687/360829
set -gx LDFLAGS "-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"

# Python libarchive
set -gx LA_LIBRARY_FILEPATH "/usr/local/Cellar/libarchive/3.3.3/lib/libarchive.dylib"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -g fish_user_paths "/usr/local/opt/terraform@0.11/bin" $fish_user_paths
