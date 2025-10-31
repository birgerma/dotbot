#!/bin/sh

REPO="~/.config/dotfiles/"
BRANCH=qubes-dom0
AppVM=dotfiles

# setup on the AppVM
# git remote add dom0 /tmp/dom0.bundle

git bundle create - origin/${BRANCH}..${BRANCH} | \
  qvm-run -u user --pass-io ${AppVM} "cat > /tmp/dom0.bundle"

qvm-run -u user --pass-io ${AppVM} "cd ${REPO} && git pull -r dom0 ${BRANCH}"
