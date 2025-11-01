DOTBOT:=./meta/dotbot/bin/dotbot
PARU:=./meta/plugins/dotbot-paru/paru.py 


update:
	git submodule update --init --recursive

base:
	${DOTBOT} -p ${PARU} -c ./meta/configs/base.packages.conf.yaml

setup-i3:
	#./meta/dotbot/bin/dotbot -p ./meta/plugins/dotbot-paru/paru.py -c ./meta/configs/sway.packages.conf.yaml
	#./install-standalone sway-config
	sudo qubes-dom0-update i3 i3-settings-qubes

setup-keyd:
	sudo ln -sf ${PWD}/keyd/* /etc/keyd/
