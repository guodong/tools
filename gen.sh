#!/bin/bash

lib=$1
version=$2
lib64=$3
lib32=$4
mkdir $lib
cd $lib
git init
git remote add origin https://github.com/reg-ret/$lib.git
scp gd@reg64:$lib64 ./
git add .
git commit -m "$version"
git tag $version-x86_64
git branch x86
git checkout x86
scp gd@reg32:$lib32 ./
git add .
git commit -m "$version"
git tag $version-x86
git push origin master
git push origin x86
git push origin $version-x86_64
git push origin $version-x86
cd ..
