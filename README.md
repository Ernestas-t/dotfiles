# Gruvbox Hyprland Arch Linux

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Arch%20Linux-blue.svg)

These are my personal dotfiles for my Arch Linux setup using Hyprland. The main goal of this setup is to be as minimal as possible and to make extensive use of the terminal.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
  - [Manual Setup](#manual-setup)
- [Screenshots](#screenshots)
- [Customization](#customization)
- [Acknowledgements](#acknowledgements)
- [Contributing](#contributing)
- [License](#license)

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
    git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
    ```

2. **Run the setup script:**
    ```sh
    cd ~/dotfiles
    ./setup.sh
    ```

### Manual Setup

If you prefer to set up the dotfiles manually, follow these steps:

1. **Symlink configuration files:**
    ```sh
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
    ```

2. **Install required packages:**
    ```sh
    sudo pacman -S zsh tmux neovim kitty waybar wofi ranger dunst calcurse btop qbittorrent
    ```

3. **Install additional tools:**
    - **Hyprland**: Follow the [installation guide](https://wiki.hyprland.org/Getting-Started/Installation/)
    - **Powerlevel10k**: Follow the [installation guide](https://github.com/romkatv/powerlevel10k#installation)
    - **Spicetify**: Follow the [installation guide](https://github.com/khanhas/spicetify-cli#installation)

## Screenshots

- **Desktop Overview:**
  ![Desktop Overview](screenshots/desktop_overview.png)
  *My minimal Hyprland desktop with Gruvbox theme.*

- **Terminal:**
  ![Terminal](screenshots/terminal.png)
  *Kitty terminal with Zsh and Powerlevel10k theme.*

- **Neovim:**
  ![Neovim](screenshots/neovim.png)
  *Neovim with Gruvbox theme and plugins.*

- **File Manager:**
  ![Ranger](screenshots/ranger.png)
  *Ranger file manager in action.*

- **Tmux:**
  ![Tmux](screenshots/tmux.png)
  *Tmux session with multiple panes.*

- **Dunst Notifications:**
  ![Dunst](screenshots/dunst.png)
  *Dunst notification style.*

- **Application Launcher:**
  ![Wofi](screenshots/wofi.png)
  *Wofi application launcher.*

- **System Monitoring:**
  ![Btop](screenshots/btop.png)
  *Btop system monitoring.*

- **Calendar Management:**
  ![Calcurse](screenshots/calcurse.png)
  *Calcurse calendar and task management.*

- **Spotify Customization:**
  ![Spicetify](screenshots/spicetify.png)
  *Spicetify with custom Spotify theme.*

- **Torrent Client:**
  ![qBittorrent](screenshots/qbittorrent.png)
  *qBittorrent interface.*

- **Note-taking with Obsidian:**
  ![Obsidian](screenshots/obsidian.png)
  *Obsidian note-taking setup.*

- **Note-taking with nvim:**
  ![Obsidian](screenshots/obsidian_nvim.png)
  *Obsidian note-taking setup using Obsidian nvim plugin.*

## Customization

### Powerlevel10k

To configure Powerlevel10k, run the configuration wizard:
```sh
p10k configure
```

### Waybar

To customize Waybar, edit the configuration file located at `~/.config/waybar/config` and the style file at `~/.config/waybar/style.css`.

### Kitty

To customize Kitty, edit the configuration file located at `~/.config/kitty/kitty.conf`. You can also add themes by including additional configuration files.

### Neovim

To customize Neovim, edit the configuration file located at `~/.config/nvim/init.lua`. You can add plugins using the Lazy plugin manager.

1. **Add plugins:**
    ```lua
    require("lazy").setup({
      -- Add your plugins here
      "morhetz/gruvbox",
      -- other plugins
    })
    ```
### Ranger

To customize Ranger, edit the configuration files located at `~/.config/ranger/rc.conf`, `~/.config/ranger/rifle.conf`, and `~/.config/ranger/scope.sh`.

### Dunst

To customize Dunst, edit the configuration file located at `~/.config/dunst/dunstrc`.

### Tmux

To customize Tmux, edit the configuration file located at `~/.tmux.conf`. You can add plugins using a plugin manager like [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).

### Zsh

To customize Zsh, edit the configuration file located at `~/.zshrc`. You can add plugins and themes using a plugin manager like [Oh My Zsh](https://ohmyz.sh/) or [zplug](https://github.com/zplug/zplug).

### Spicetify

To customize Spicetify, edit the configuration file located at `~/.config/spicetify/config.ini`. You can also add themes and extensions by placing them in the appropriate directories.

### Hyprland

To customize Hyprland, edit the configuration files located at `~/.config/hypr/hyprland.conf` and other related configuration files.

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

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
