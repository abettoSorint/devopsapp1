#!/bin/bash
clear

#parametter commit input
commitGit=$1

#beforVersion v[0-9].[0-9].[0-9]
Major=1
Minor=3
currentM=2

beforeVersion='v'${Major^^}'.'${Minor^^}'.'${currentM^^}

committags=(build/,ci/,feat/,fix/,chore/,refactor/,revert/,style/,minorRelease/,majorRelease/)
if echo "${committags[@]}" | grep -qw "$commitGit"; then
  echo "Found $commitGit!"
else
  echo "$commitGit not found."
fi

echo "salut " $beforeVersion
echo ${committags[*]}