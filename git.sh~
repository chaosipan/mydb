#!/bin/bash

git add .
if [ $# == 0 ]
then
comment="test"
else
for args in $@
do
	comment=${comment}"-"${args}
done
fi
echo $comment
echo git commit -m $comment
git commit -m $comment
git push
