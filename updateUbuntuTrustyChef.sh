#!/bin/sh

cd bento/packer
packer build -only=virtualbox-iso ubuntu-14.04-amd64.json
cd ../..
vagrant box remove opscode_ubuntu-14.04_chef-latest
vagrant box add bento/builds/virtualbox/opscode_ubuntu-14.04_chef-latest.box --name opscode_ubuntu-14.04_chef-latest
rm bento/builds/virtualbox/opscode_ubuntu-14.04_chef-latest.box
