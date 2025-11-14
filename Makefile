DOTBOT:=./meta/dotbot/bin/dotbot
PARU:=./meta/plugins/dotbot-paru/paru.py 


update:
	git submodule update --init --recursive

base:
	${DOTBOT} -p ${PARU} -c ./meta/configs/base.packages.conf.yaml

install-starship:
	curl -sS https://starship.rs/install.sh | sh


setup-base:
	#./meta/dotbot/bin/dotbot -c ./meta/configs/base-config.yaml
	./install-standalone base-config



setup-i3:
	#./meta/dotbot/bin/dotbot -p ./meta/plugins/dotbot-paru/paru.py -c ./meta/configs/sway.packages.conf.yaml
	#./install-standalone sway-config
	sudo qubes-dom0-update i3 i3-settings-qubes i3lock ImageMagick picom
	ln -sf ${PWD}/i3 ${HOME}/.config/i3
	ln -sf ${PWD}/picom ${HOME}/.config/picom

setup-rofi:
	sudo qubes-dom0-update rofi
	ln -sf ${PWD}/rofi ${HOME}/.config/rofi
	
