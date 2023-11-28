#!/usr/bin/bash
clear

echo 'mon test di commit bene'
#take the commit
myCommit=${ github.event.head_commit.message }
echo $myCommit

#parametter commit input
commitGit=${myCommit%%/*}

#beforVersion v[0-9].[0-9].[0-9]
Major=${vars.MAJOR}
Minor=${vars.MINOR}
currentM=${vars.CURRENTM}

beforeVersion='v'${Major^^}'.'${Minor^^}'.'${currentM^^}

#echo "Major=$Major" >> $GITHUB_ENV
#echo "Minor=$Minor" >> $GITHUB_ENV
#echo "currentM=$currentM" >> $GITHUB_ENV


committags=(build/,ci/,feat/,fix/,chore/,refactor/,revert/,style/,minorRelease/,majorRelease/)
if echo "${committags[@]}" | grep -qw "$commitGit"; then
  echo "Found $commitGit!"
else
  echo "$commitGit not found." >> $GITHUB_ENV
fi

echo "salut " $beforeVersion
echo ${committags[*]}