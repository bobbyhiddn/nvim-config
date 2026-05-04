# Installation Guide

## Fresh Install

On any new machine, run:

```bash
# Backup existing config (if any)
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup

# Clone and install
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim

# Launch Neovim
nvim
```

Plugins will auto-install on first launch! Wait for completion, then restart Neovim.

## Prerequisites

### macOS
```bash
brew install neovim toipe
```

### Ubuntu/Debian
```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && apt install neovim
cargo install toipe
```

### Arch Linux
```bash
sudo pacman -S neovim
cargo install toipe
```

## Optional: Claude Code CLI

For AI assistant integration, ensure Claude Code CLI is installed.

## Post-Install

After first launch:
1. Run `:checkhealth` to verify setup
2. Run `:Mason` to verify LSP servers
3. Press `Space` to explore keybindings!

## Quick Start

- `Space + e` - File explorer
- `Space + f f` - Find files
- `Space + c s` - Claude Code side-by-side
- `Space + t t` - Typing practice

See `QUICKSTART.md` for more!
