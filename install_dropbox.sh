#!/bin/bash

mkdir ~/dropbox
cd ~/dropbox
wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
wget -O dropbox.py http://www.dropbox.com/download?dl=packages/dropbox.py

~/.dropbox-dist/dropboxd &
