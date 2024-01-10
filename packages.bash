BASEPATH=$HOME/bashlib
source $BASEPATH/bash-color.bash
source $BASEPATH/spinner.bash


# Check if the packages required for the installation is installed
# on the system.
# use like this to check and install if it is not there
# check_package_installed "git" -install
#
# Use like this to check
# check_package_installed "git"

check_package_installed()
{
  dpkg-query -s $1 > /dev/null 2>&1
  case $? in
  0)
    echo -e "${GREEN}$1 is installed$RESET"
    PKG_OK="ok"
    ;;
  1)
    echo -e "${RED}$1 is not installed$RESET"
    if [ $# -eq 1 ]; then
      PKG_OK=""
    else
      install_package $1
    fi
    ;;
  2)
    echo An error occurred
    ;;
  esac
}


install_package()
{
  echo "Installing "$1
  (sudo apt-get -y install $1 > /dev/null 2>&1) &
  spinner $!
}

update_repos()
{
  echo "Update repos..."
  (sudo apt-get update > /dev/null 2>&1) &
  spinner $!
}