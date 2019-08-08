function git_delete_local_branches_not_in_remote --description 'Deletes local git branches that are not in the remote'
    git branch --merged | grep -Ev '\*|master|develop' | xargs git branch -d
    and git fetch --prune
end