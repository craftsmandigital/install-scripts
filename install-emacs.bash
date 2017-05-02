#!/bin/bash

rm -Rf ~/.emacs.d


sudo apt-get purge --auto-remove emacs
sudo apt-get purge --auto-remove git

sudo apt-get install emacs git

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -Rf ~/.emacs.d/private/*
rm -Rf ~/.emacs.d/private/.*
git clone https://github.com/hackingjack/emacs-configuration.git ~/.emacs.d/private

rm ~/.spacemacs
# mv ~/.emacs.d/private/.spacemacs ~/.spacemacs
ln -s ~/.emacs.d/private/.spacemacs ~/.spacemacs

# rm -Rf ~/.emacs.d/private
# ln -s ~/keep/repos/emacs/private-spacemacs-config ~/.emacs.d/private
