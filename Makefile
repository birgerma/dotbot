DOTBOT:=./meta/dotbot/bin/dotbot
PARU:=./meta/plugins/dotbot-paru/paru.py 


update:
	git submodule update --init --recursive

base:
	${DOTBOT} -p ${PARU} -c ./meta/configs/base.packages.conf.yaml

setup-sway:
	./meta/dotbot/bin/dotbot -p ./meta/plugins/dotbot-paru/paru.py -c ./meta/configs/sway.packages.conf.yaml
	./install-standalone sway-config

setup-keyd:
	sudo ln -sf ${PWD}/keyd/* /etc/keyd/
