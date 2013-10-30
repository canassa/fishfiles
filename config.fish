
# Initialize rbenv
if test -d ~/.rbenv
    set fish_user_paths ~/.rbenv/bin $fish_user_paths
    . (rbenv init -|psub)
end


# Prevents the Virtual Env activate.fish from messing with my prompt
set VIRTUAL_ENV_DISABLE_PROMPT 'yes'
