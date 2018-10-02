function aadlogin --description "New 10 AWS login"
    docker run -ti -v ~/.aws:/root/.aws new10/aadlogin --profile new10 $argv
end