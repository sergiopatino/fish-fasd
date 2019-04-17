function __fasd_init -e fish_postexec -d "fasd takes record of the directories changed into"
  set -lx RETVAL $status
  if test $RETVAL -eq 0 # if there was no error
    command fasd --proc (command fasd --sanitize (eval echo "$argv") | tr -s " " \n) > "/dev/null" 2>&1 &; disown
  end
end
