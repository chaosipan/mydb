#!/bin/bash

git add .
if [ $# == 0 ]
then
comment="test"
else
for args in $@
do
	comment=${comment}","${args}
done
fi
git commit -m ${comment:1}
git push
