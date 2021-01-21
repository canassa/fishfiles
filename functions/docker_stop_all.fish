function docker_stop_all --description 'Stops all docker containers'
    docker kill (docker ps -q)
end
