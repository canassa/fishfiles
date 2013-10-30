# https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
# Fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow

# Status Chars
# set __fish_git_prompt_char_dirtystate '⚡'
# set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'
# set __fish_git_prompt_char_cleanstate '✔'
# set __fish_git_prompt_char_dirtystate '✚'
# set __fish_git_prompt_char_invalidstate '✖'
# set __fish_git_prompt_char_stagedstate '●'
# set __fish_git_prompt_char_stateseparator '|'
# set __fish_git_prompt_char_untrackedfiles '…'
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'

set -U fish_user_paths ~/bin


# Initialize rbenv
if test -d ~/.rbenv
    set fish_user_paths ~/.rbenv/bin $fish_user_paths
    . (rbenv init -|psub)
end


# Prevents the Virtual Env activate.fish from messing with my prompt
set VIRTUAL_ENV_DISABLE_PROMPT 'yes'

# Fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showupstream 'informative'
# set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showcolorhints 'yes'

set __fish_git_prompt_char_stateseparator '┆'

# Git colors
# set __fish_git_prompt_color_branch yellow
# set __fish_git_prompt_color_dirtystate red
# set __fish_git_prompt_color_untrackedfiles cyan

# # Status Chars
set __fish_git_prompt_char_invalidstate '✗'
set __fish_git_prompt_char_cleanstate '✔'
set __fish_git_prompt_char_dirtystate '☂ '
set __fish_git_prompt_char_stagedstate '•'
set __fish_git_prompt_char_stashstate '↩ '
set __fish_git_prompt_char_untrackedfiles '…'
set __fish_git_prompt_char_upstream_ahead '⇡ '
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_equal ''
