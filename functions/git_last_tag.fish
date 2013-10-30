function git_last_tag --description 'Returns the lastest git tag'
    git describe --tags (git rev-list --tags --max-count=1)
end
