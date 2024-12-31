#!/bin/bash

# Function to check and install a package if not already installed
install_package() {
    if ! pacman -Qi $1 &> /dev/null; then
        echo "Installing $1..."
        sudo pacman -S --noconfirm $1
    else
        echo "$1 is already installed."
    fi
}

# List of packages to install
packages=(
    zsh
    tmux
    neovim
    kitty
    waybar
    wofi
    ranger
    dunst
    calcurse
    btop
    qbittorrent
)

# Install necessary packages
for package in "${packages[@]}"; do
    install_package $package
done

# Create symlinks for configuration files
echo "Creating symlinks for configuration files..."

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.tmux ~/.tmux
ln -s ~/dotfiles/.themes ~/.themes
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/kitty ~/.config/kitty
ln -s ~/dotfiles/waybar ~/.config/waybar
ln -s ~/dotfiles/wofi ~/.config/wofi
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/btop ~/.config/btop
ln -s ~/dotfiles/calcurse ~/.config/calcurse
ln -s ~/dotfiles/qBittorrent ~/.config/qBittorrent
ln -s ~/dotfiles/spicetify ~/.config/spicetify
ln -s ~/dotfiles/hypr ~/.config/hypr

echo "Setup completed successfully!"
