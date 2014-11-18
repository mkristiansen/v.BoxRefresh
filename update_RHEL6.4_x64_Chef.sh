#!/bin/sh

cd bento/packer
packer build -only=parallels-iso -var 'mirror=file:///Users/ieu94897/Downloads/' rhel-6.6-x86_64.json
cd ../..
vagrant box remove parallels/rhel-6.6
vagrant box add bento/builds/parallels/rhel-6.5_chef-latest.box --name "parallels/rhel-6.6"
rm bento/builds/parallels/rhel-6.6_chef-latest.box
