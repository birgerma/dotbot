set fish_greeting

# Custom commands in sudo mode:                                                                                                                                                                                                                
alias 'sudo'='sudo '

alias fpac='\pacman -Slq | fzf --multi --preview "\pacman -Si {1}" | xargs -ro sudo \pacman -S'
alias fyay='\yay -Slq | fzf --multi --preview "\yay -Si {1}" | xargs -ro \yay -S'
# Emacs shortcuts
# alias 'em'='emacsclient -create-frame --alternate-editor="" -nw'

export EMACS_USER_DIRECTORY=~/.config/emacs/
export ALTERNATE_EDITOR=""
export EDITOR="nvim"                  # $EDITOR opens in terminal
export VISUAL="nvim"         # $VISUAL opens in GUI mode      

# export BROWSER="nbrowser"
export TMUX_TMPDIR=/var/tmp

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin


function copypath
    set res (readlink -e $argv)
    wl-copy $res
    echo $res
end

#determines search program for fzf
if type rg &> /dev/null
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
end

# Zoxide setup
zoxide init fish --cmd cd| source

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
starship init fish | source

# if test -e ~/.config/fish/vm/$CONTAINER_ID/config.fish 
#     echo 'source container conf'
# 	source ~/.config/fish/vm/$CONTAINER_ID/config.fish
# end

# Source nix configuration
if test -e ~/.nix-profile/etc/profile.d/nix.fish
    source ~/.nix-profile/etc/profile.d/nix.fish
end # added by Nix installer

# Source nix configuration
if test -e ~/.nix-profile/etc/profile.d/nix.fish
    source ~/.nix-profile/etc/profile.d/nix.fish
end # added by Nix installer

direnv hook fish | source
