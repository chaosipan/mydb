#!/bin/bash

git add .
if [ $# == 0 ]
then
comment="test"
else
for args in $@
do
	comment=${comment}" "${args}
done
fi
comment='"'${comment}'"'
echo $comment
git commit -m comment
git push
