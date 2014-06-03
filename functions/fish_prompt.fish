# https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish

# Status Chars
set __fish_git_prompt_char_cleanstate '✓ '
set __fish_git_prompt_char_dirtystate '☂ '
set __fish_git_prompt_char_invalidstate '✗'
set __fish_git_prompt_char_stagedstate '•'
set __fish_git_prompt_char_stashstate '↩ '
set __fish_git_prompt_char_untrackedfiles '…'
set __fish_git_prompt_char_upstream_ahead '⇡ '
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_stateseparator '┆'

# Fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'


function fish_prompt --description 'Write out the prompt'

    set last_status $status

    # python virtualenv
    if set -q VIRTUAL_ENV
        set_color $fish_color_match
        echo -n -s "[" (basename "$VIRTUAL_ENV") "] "
    end

    # CWD
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)

    # Git
    set_color normal
    printf '%s ' (__fish_git_prompt)

    # Separator
    set_color red
    switch (hostname)
        case ghadamon
            printf 'g̵̡͢h̶ada͞m̡o͜n'
        case canassa-titans
            set_color --bold red
            printf 'Ƭ'
        case '*'
            printf '␦'
    end

    printf '  '

    set_color normal
end
