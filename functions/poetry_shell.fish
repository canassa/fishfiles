function poetry_shell --description 'start poetry shell'
    . (dirname (poetry run which python))/activate.fish
end
