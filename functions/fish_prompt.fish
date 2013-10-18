function fish_prompt --description 'Write out the prompt'

    set last_status $status

    # python virtualenv
    if set -q VIRTUAL_ENV
        set_color $fish_color_match
        echo -n -s "[" (basename "$VIRTUAL_ENV") "] "
        set_color normal
    end

    # CWD
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)

    # Git
    set_color normal
    printf '%s ' (__fish_git_prompt)
    set_color normal

    # Separator
    set_color red
    # printf '🂡  '
    printf '♿  '
    set_color normal

    # Just calculate these once, to save a few cycles when displaying the prompt
    # if not set -q __fish_prompt_normal
    #     set -g __fish_prompt_normal (set_color normal)
    # end

    # switch $USER

    #     case root

    #     if not set -q __fish_prompt_cwd
    #         if set -q fish_color_cwd_root
    #             set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
    #         else
    #             set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    #         end
    #     end

    #     echo -n -s "$USER " "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '# '

    #     case '*'

    #     if not set -q __fish_prompt_cwd
    #         set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    #     end

    #     echo -n -s "$USER " "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '> '

    # end
end
