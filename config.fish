if test -d ~/bin
    set PATH ~/bin $PATH
end

if test -d ~/.local/bin
    set PATH ~/.local/bin $PATH
end

# Go binaries
if test -d ~/.cargo/bin
    set PATH ~/.cargo/bin $PATH
end

# Cargo binaries
if test -d ~/code/bin
    set PATH ~/code/bin $PATH
end


# Initialize pyenv
if test -e /usr/local/bin/pyenv
    status --is-interactive; and . (pyenv init -|psub)
end

# jenv
if test -e ~/.jenv/bin
    set PATH ~/.jenv/bin $PATH
end

# if test -e ~/anaconda3/bin
#     set -U fish_user_paths $fish_user_paths ~/anaconda3/bin
# end

if test -e ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end

# Prevents the Virtual Env activate.fish from messing with my prompt
set VIRTUAL_ENV_DISABLE_PROMPT 'yes'

# New10 stuff
set AWS_PROFILE new10-dev
set AWS_DEFAULT_REGION eu-west-1
set AWS_SDK_LOAD_CONFIG 1

set -gx GOPATH ~/code

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

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

set -gx CLOUDSDK_PYTHON python3

# Required for psycopg, libxml, pyenv and gevent
set -gx LDFLAGS -L/usr/local/opt/openssl@1.1/lib -L/usr/local/opt/libevent/lib -L/usr/local/opt/libxml2/lib
set -gx CFLAGS -I/usr/local/opt/openssl@1.1/include -I/usr/local/opt/libevent/include -I/usr/local/opt/libxml2/include

# Python libarchive
set LA_LIBRARY_FILEPATH "/usr/local/Cellar/libarchive/3.3.3/lib/libarchive.dylib"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# set PATH "/usr/local/opt/terraform@0.11/bin" $PATH
set PATH "/usr/local/opt/gettext/bin" $PATH
