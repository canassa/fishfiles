function git_refresh_tags --description 'Refresh all tags with remote'
    git tag -l | xargs git tag -d
    git fetch --tags
end
