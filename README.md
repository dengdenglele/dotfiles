## bash
```bash
# enable sway to start in TTY1
ln --symbolic $HOME/dotfiles/bash/bash_profile $HOME/.bash_profile
# custom aliases (extends aliases in ~/.bashrc)
ln --symbolic $HOME/dotfiles/bash/bash_aliases $HOME/.bash_aliases
```

## `~/.config` symbolic links
```bash
# dunst (notifications)
ln -s ~/dotfiles/dunst/ $HOME/.config/ 

# foot (terminal)
ln -s ~/dotfiles/foot/ ~/.config/

# fuzzel (fuzzy app launcher)
ln -s ~/dotfiles/fuzzel/ ~/.config/

# sway (window manager)
ln --symbolic ~/dotfiles/sway/ ~/.config/

# swaylock (lock screen)
ln -s ~/dotfiles/swaylock/ ~/.config/

## waybar (wayland bar)
ln -s ~/dotfiles/waybar/ ~/.config/

# revert changes
rm ~/.config/dunst
rm ~/.config/foot
rm ~/.config/fuzzel
rm ~/.config/sway
rm ~/.config/swaylock
rm ~/.config/waybar
```

## custom scripts
```bash
echo 'export PATH="$PATH:$HOME/dotfiles/bin"' >> ~/.bashrc 
```

## keyd (key remapper)
Install instructions from source are [here](https://github.com/rvaiya/keyd)
```bash
sudo mkdir -p /etc/keyd/
sudo ln --symbolic ~/dotfiles/keyd/default.conf /etc/keyd/default.conf
# revert changes
sudo rm /etc/keyd/default.conf
```

## vim
```bash
ln --symbolic $HOME/dotfiles/vim/vimrc $HOME/.vimrc
# revert changes
rm $HOME/.vimrc # Revert Vim changes
```