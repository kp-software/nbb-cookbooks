#!/usr/bin/env bash

berks update
berks package cookbooks.tar.gz

tar -xvf cookbooks.tar.gz -C ../nbb-cookbooks

rm cookbooks.tar.gz

cd ../nbb-cookbooks
git add .
git commit -m "package update"
git push
