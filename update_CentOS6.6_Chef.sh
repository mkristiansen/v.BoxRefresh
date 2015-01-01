#!/bin/sh

cd bento/packer
packer build -only=parallels-iso -var 'mirror=file:///Users/ieu94897/Downloads/' centos-6.6-x86_64.json
cd ../..
vagrant box remove parallels/centos-6.6
vagrant box add bento/builds/parallels/centos-6.6_chef-latest.box --name "parallels/centos-6.6"
rm bento/builds/parallels/centos-6.6_chef-latest.box
