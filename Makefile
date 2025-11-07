DOTBOT:=./meta/dotbot/bin/dotbot
PARU:=./meta/plugins/dotbot-paru/paru.py 


update:
	git submodule update --init --recursive

base:
	${DOTBOT} -p ${PARU} -c ./meta/configs/base.packages.conf.yaml

setup-i3:
	#./meta/dotbot/bin/dotbot -p ./meta/plugins/dotbot-paru/paru.py -c ./meta/configs/sway.packages.conf.yaml
	#./install-standalone sway-config
	sudo qubes-dom0-update i3 i3-settings-qubes i3lock ImageMagick picom
	ln -sf ${PWD}/i3 ${HOME}/.config/i3
	ln -sf ${PWD}/picom ${HOME}/.config/picom

setup-keyd:
	sudo ln -sf ${PWD}/keyd/* /etc/keyd/

setup-rofi:
	sudo qubes-dom0-update rofi
	ln -sf ${PWD}/rofi ${HOME}/.config/rofi
	
setup-rofi-powermenu:
	# sudo qubes-dom0-update rofi
	mkdir -p ${HOME}/.config/rofi-scripts
	ln -sf ${PWD}/rofi-scripts/power ${HOME}/.config/rofi-scripts/power
	ln -sf ${PWD}/rofi-scripts/fonts/* ${HOME}/.local/share/fonts/
	ln -sf ${PWD}/rofi-scripts/colors/ ${HOME}/.config/rofi-scripts/colors

