#!/bin/bash

rm test_repo*

echo "repo-add"
repo-add -n -R test_repo.db.tar.gz *.pkg.tar.zst
#repo-add -n -R test_repo.db.tar.gz *.pkg.tar.zst
sleep 5
mv -f test_repo.db.tar.gz test_repo.db
cp -f test_repo.db test_repo.db.tar.gz
echo "####################################"
echo "Repo Updated!!"
echo "####################################"
