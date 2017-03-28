#!/bin/bash

rm -R ~/.emacs.d
rm -R ~/.emacs

sudo apt-get purge --auto-remove emacs
sudo apt-get purge --auto-remove git

sudo apt-get install emacs git

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -R ~/keep/repos/emacs
git clone https://github.com/hackingjack/emacs-configuration.git ~/keep/repos/emacs

rm ~/.spacemacs
ln -s ~/keep/repos/emacs/.spacemacs ~/.spacemacs

rm -R ~/.emacs.d/private
ln -s ~/keep/repos/emacs/private-spacemacs-config ~/.emacs.d/private
