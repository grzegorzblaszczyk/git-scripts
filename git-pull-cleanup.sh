#!/bin/bash

# It works with git 2.25+

AWK=`which awk`
GIT=`which git`
GREP=`which grep`
XARGS=`which xargs`

${GIT} pull --rebase --prune && ${GIT} branch --v | ${GREP} "\[gone\]" | ${AWK} '{print $1}' | ${XARGS} ${GIT} branch -D
