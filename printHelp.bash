# Print help text and exit.
# Format of the text should be like the following

# Usage: gitlog [options] [arg]
# Options:  -a          Use the --all flag for from  git.
#           -m          Use the master..<current branch> comparison.
#           -h [s/l]    Show help. arg=s show short help, arg=l show long help.
#           -g [1-4]    Layout option for the graph-view. arg=1-4
#           -s [string] Search for string in commits with --grep.
#           [arg]       Further arguments for the git log cammand ie. master..branch
#
# Print the git log graph view with different layout options
# The command used is 
#   git log --graph --abbrev-commit --decorate --format=format:
# where the fomat string is defined by the layout option.
# 
# To make the script runable an alias has been added to the alias file
# alias gl="gitlog.sh"
# And the path to the script has been added to $PATH in ~/.bashrc
# export PATH="$PATH:$BASHPATH/bashscript"
#
# Examples:
#
#   $gl -g1
#     Print the graph with layout option 1. 
#   $gl -ag2
#     Print the graph with layout option 2 and all branches.
#   $gl -g4 master..mybranch
#     Print the graph with layout option 2 and only show commits on mybranch.
#   $gl -g4 -a -s STC-41505


# Call the function like this
#    printHelp "-h"
# for short help. Print only Usage section
#    printHelp "--help"
# for entire help


function printHelp() {
  #if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    sed -ne '/^#/!q;s/^#$/# /;/^# /s/^# //p' < "$0" |
      awk -v f="${1#-h}" '!f && /^Usage:/ || u { u=!/^\s*$/; if (!u) exit } u || f'
    #exit 1
  #fi
}