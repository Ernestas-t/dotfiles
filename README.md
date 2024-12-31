# Dotfiles

These are my personal dotfiles for my Arch Linux setup using Hyprland. The main goal of this setup is to be as minimal as possible and to make extensive use of the terminal.

## Features

- **Window Manager**: [Hyprland](https://github.com/hyprwm/Hyprland)
- **Theme**: [Gruvbox](https://github.com/morhetz/gruvbox)
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)
- **Shell**: [Zsh](https://www.zsh.org/) with [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
- **Editor**: [Neovim](https://neovim.io/)
- **Status Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Application Launcher**: [Wofi](https://hg.sr.ht/~scoopta/wofi)
- **File Manager**: [Ranger](https://github.com/ranger/ranger)
- **Other Tools**: 
  - [tmux](https://github.com/tmux/tmux) for terminal multiplexing
  - [dunst](https://github.com/dunst-project/dunst) for notifications
  - [calcurse](https://github.com/lfos/calcurse) for calendar management
  - [btop](https://github.com/aristocratos/btop) for system monitoring
  - [qBittorrent](https://www.qbittorrent.org/) for torrenting
  - [obsidian](https://obsidian.md/) for note-taking
  - [spicetify](https://github.com/khanhas/spicetify-cli) for Spotify customization

## Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
    ```

2. **Run the setup script:**
    ```sh
    cd ~/.dotfiles
    ./setup.sh
    ```

3. **Symlink configuration files:**
    ```sh
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/nvim ~/.config/nvim
    ln -s ~/.dotfiles/kitty ~/.config/kitty
    ln -s ~/.dotfiles/waybar ~/.config/waybar
    ln -s ~/.dotfiles/wofi ~/.config/wofi
    ln -s ~/.dotfiles/ranger ~/.config/ranger
    ln -s ~/.dotfiles/dunst ~/.config/dunst
    ```

4. **Install required packages:**
    ```sh
    sudo pacman -S zsh tmux neovim kitty waybar wofi ranger dunst calcurse btop qbittorrent
    ```

5. **Install additional tools:**
    - **Hyprland**: Follow the [installation guide](https://github.com/hyprwm/Hyprland/wiki/Installation)
    - **Powerlevel10k**: Follow the [installation guide](https://github.com/romkatv/powerlevel10k#installation)
    - **Spicetify**: Follow the [installation guide](https://github.com/khanhas/spicetify-cli#installation)

## Screenshots

_Add screenshots of your setup here._

## Customization

### Gruvbox Theme

To apply the Gruvbox theme to your terminal and other applications, follow these steps:

1. **Kitty Terminal:**
    - Copy the Gruvbox theme configuration to your Kitty config directory:
      ```sh
      cp ~/.dotfiles/kitty/gruvbox.conf ~/.config/kitty/
      ```

2. **Neovim:**
    - Install the Gruvbox theme plugin:
      ```sh
      :Plug 'morhetz/gruvbox'
      ```
    - Add the following lines to your `init.vim` or `init.lua`:
      ```vim
      syntax enable
      set background=dark
      colorscheme gruvbox
      ```

### Powerlevel10k

To configure Powerlevel10k, run the configuration wizard:
```sh
p10k configure
```

### Waybar

To customize Waybar, edit the configuration file located at `~/.config/waybar/config` and the style file at `~/.config/waybar/style.css`.

## Acknowledgements

- [Hyprland](https://github.com/hyprwm/Hyprland)
- [Gruvbox](https://github.com/morhetz/gruvbox)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/)
- [Waybar](https://github.com/Alexays/Waybar)
- [Wofi](https://hg.sr.ht/~scoopta/wofi)
- [Ranger](https://github.com/ranger/ranger)
- [tmux](https://github.com/tmux/tmux)
- [dunst](https://github.com/dunst-project/dunst)
- [calcurse](https://github.com/lfos/calcurse)
- [btop](https://github.com/aristocratos/btop)
- [qBittorrent](https://www.qbittorrent.org/)
- [obsidian](https://obsidian.md/)
- [spicetify](https://github.com/khanhas/spicetify-cli)

## License

This project is licensed under the MIT License.
