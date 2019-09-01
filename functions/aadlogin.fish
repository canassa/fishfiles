function aadlogin --description "New 10 AWS login"
    docker run -ti -v ~/.aws:/root/.aws dtjohnson/aws-azure-login --profile new10 $argv
end