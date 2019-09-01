# Requires installing this font and setting it to iTerm
# brew tap caskroom/fonts
# brew cask install font-hasklig-nerd-font

# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate yellow
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_cleanstate green
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate (printf "\Uf00c ")  # nf-fa-check
# set __fish_git_prompt_char_conflictedstate '⚠️'
# # set __fish_git_prompt_char_dirtystate ' 💩'
set __fish_git_prompt_char_dirtystate (printf "\Uf6f6 ")
# set __fish_git_prompt_char_invalidstate '🤮'
# set __fish_git_prompt_char_stagedstate (printf "\Uf916")
set __fish_git_prompt_char_stagedstate (printf "\Ufa2a")
# set __fish_git_prompt_char_stashstate '📦'
# set __fish_git_prompt_char_stateseparator '|'
set __fish_git_prompt_char_untrackedfiles (printf "\Uf128")  # nf-mdi-help_circle
# set __fish_git_prompt_char_upstream_ahead '☝️'
set __fish_git_prompt_char_upstream_behind \Ufc2c
# set __fish_git_prompt_char_upstream_diverged '🚧'
# set __fish_git_prompt_char_upstream_equal '💯' 


function fish_prompt --description 'Write out the prompt'

    set -l last_status $status
    set -l pathcolor $__fish_prompt_grey

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if test $VIRTUAL_ENV
        set_color green
        printf '(\Ue235 %s) ' (python --version 2>&1 | grep -o "\d*\.\d*\.\d*")
    end
    set_color normal

    set -l git_prompt (__fish_git_prompt)

    set_color $pathcolor
    # echo
    # printf '%s' (whoami)
    # printf '@'
    # printf '%s' (prompt_hostname)
    # printf ':'

    if test $git_prompt
        # Print the git repository
        printf '['
        set_color red
        printf '\Uf7a1'
        set_color normal
        printf ' %s]' (basename (git rev-parse --show-toplevel))

        printf '%s' $git_prompt

        set -l subdir (git rev-parse --show-prefix)
        if test $subdir
            printf ' %s' $subdir
        end
    else
        # If current dir is not writable display it in red
        if not [ -w (pwd) ]
            set_color red
        end
        # Using dirs instead of pwd as it replace the home with ~
        printf '%s' (dirs)        
    end

    # set_color normal
    
    if not test $last_status -eq 0
        set_color $fish_color_error
    end
    set_color $pathcolor

    # Display Java version if in a java project
    # echo
    # if test -f pom.xml \
    #         -o -f build.sbt \
    #         -o -f build.gradle \
    #         -o -f build.sc \
    #         -o (count *.java) -gt 0
    #     set_color blue
    #     printf '\Ue256 %s' (java -version 2>&1 | grep -Eo '"(.*?)"' | head -1 | cut -d '"' -f2)
    # else if test (count *.py) -gt 0
    #     set_color green
    #     printf '\Ue235 %s' (python --version 2>&1 | grep -o "\d*\.\d*\.\d*")
    # end

    printf ' \UE0B1 '
    set_color normal

end
