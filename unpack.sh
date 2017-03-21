#!/bin/bash

cd `pwd`
tar --preserve-permissions --verbose --gunzip --extract --xattrs --acl --selinux --file $1
