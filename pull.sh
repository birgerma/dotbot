
#!/bin/sh

REPO="~/.config/dotfiles/"
BRANCH=qubes-dom0
AppVM=dotfiles

# init the repo on dom0
# git clone -b ${BRANCH} /tmp/git.bundle

qvm-run -u user --pass-io ${AppVM} "cd ${REPO} && git pull"
qvm-run -u user --pass-io ${AppVM} "cd ${REPO} && git bundle create - ${BRANCH}" > /tmp/git.bundle
git pull -r
