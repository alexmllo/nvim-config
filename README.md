# Nvim Configuration Using LazyVim

This repository contains my personal Neovim configuration built on top of LazyVim.

![screenshot](./images/Screenshot.png)

## Installation

Before installing the new configuration, ensure to backup or remove your old Neovim configuration.

### Backup Old Configuration

```bash
mv ~/.config/nvim ~/.config/nvim-old
```

### Remove Old Configuration

```bash
rm -rf ~/.config/nvim
```

### Remove Local State and Share

```bash
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

### Clone Repository

Finally, clone this repository into your Neovim configuration directory and start Neovim:

```bash
git clone https://github.com/alexmllo/nvim-config ~/.config/nvim && nvim
