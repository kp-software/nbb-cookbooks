#!/usr/bin/env bash

berks update
berks package cookbooks.tar.gz

tar -xvf cookbooks.tar.gz -C ../

rm cookbooks.tar.gz

cd ../cookbooks
git add .
git commit -m "package update"
git push
