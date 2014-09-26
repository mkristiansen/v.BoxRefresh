#!/bin/sh

cd bento/packer
packer build -only=virtualbox-iso ubuntu-14.04-amd64-chef-latest.json
cd ../..
vagrant box remove ubuntu-14.04_chef-latest
vagrant box add bento/builds/virtualbox/ubuntu-14.04_chef-latest.box --name ubuntu-14.04_chef-latest
rm bento/builds/virtualbox/ubuntu-14.04_chef-latest.box
