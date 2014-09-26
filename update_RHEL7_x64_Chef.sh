#!/bin/sh

cd bento/packer
packer build -only=virtualbox-iso rhel-7.0-x86_64.json
cd ../..
vagrant box remove rhel-7.0-x86_64
vagrant box add bento/builds/virtualbox/rhel-7.0-x86_64.box --name rhel-7.0-x86_64
rm bento/builds/virtualbox/rhel-7.0-x86_64.box
