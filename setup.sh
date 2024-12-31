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

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/kitty ~/.config/kitty
ln -sf ~/.dotfiles/waybar ~/.config/waybar
ln -sf ~/.dotfiles/wofi ~/.config/wofi
ln -sf ~/.dotfiles/ranger ~/.config/ranger
ln -sf ~/.dotfiles/dunst ~/.config/dunst

echo "Setup completed successfully!"
