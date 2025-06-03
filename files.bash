function checkIfFileExists()
{
  if [[ -f "$1" ]]; then
    printf "true"
  else
    printf "false"
  fi
}

function createFile()
{
  touch $1
}