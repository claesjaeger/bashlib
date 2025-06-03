function checkIfFolderIsGitRepo()
{
  # 2>/dev/null redirect stderr to null to supress
  # fatal: not a git repository (or any of the parent directories): .git
  ISGITREPO=$(git rev-parse --is-inside-work-tree 2>/dev/null )
  if [[ "true" == "$ISGITREPO" ]]; then
    printf "true"
  else
    printf "false"
  fi
}

#function isRepoDirty()
#{
#  #https://unix.stackexchange.com/questions/155046/determine-if-git-working-directory-is-clean-from-a-script/155077#155077
#  #https://stackoverflow.com/questions/3878624/how-do-i-programmatically-determine-if-there-are-uncommitted-changes
#  
#  #https://stackoverflow.com/questions/2657935/checking-for-a-dirty-index-or-untracked-files-with-git
#  STAGEDCHANGES=$(git diff-index --quiet --cached HEAD --)
#  UNSTAGEDCHANGES=$()
#  UNTRACKED=$(git ls-files --exclude-standard --others)
#}


# https://superuser.com/questions/1718677/find-the-default-branch-name-for-a-git-repository
function getDefaultBranch()
{
  # sed command meaning
  # find HEAD branch - /HEAD branch
  # get what is after ": " - /s/.*: / 
  # print it - /p
  git remote show origin | sed -n '/HEAD branch/s/.*: //p'
}
