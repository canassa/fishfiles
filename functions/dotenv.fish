function dotenv --description 'Load environment variables from .env file'
  set -l envfile ".env"
  if [ (count $argv) -gt 0 ]
    set envfile $argv[1]
  end

  if test -e $envfile
    for line in (cat $envfile)
        # Splits the line in two on the equal sign
        set -l entry (string split -m 1 = $line)

        # Skips if the split did not generated two strings
        if test (count $entry) -eq 2
            # Skips if the variable name contains a # sign (comment)
            if test -z (string match -e '#' $entry[1])
                # echo "$entry[1]=$entry[2]"
                set -xg $entry[1] $entry[2]
            end
        end
      # set -xg (echo $line | cut -d = -f 1) (echo $line | cut -d = -f 2-)
    end
  end
end