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

### Required: Neovim Only!

```bash
# macOS
brew install neovim

# Ubuntu/Debian
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && apt install neovim

# Arch Linux
sudo pacman -S neovim
```

**That's it!** The config will work without any other dependencies.

## Optional Dependencies

### Typing Practice (Toipe)
If you want the typing practice feature:

```bash
# macOS
brew install toipe

# Linux (requires Rust/Cargo)
cargo install toipe

# Or download from releases
# https://github.com/Samyak2/toipe/releases
```

**Note:** If toipe is not installed, the typing practice keybindings will show a helpful message explaining how to install it.

### Claude Code CLI

For AI assistant integration (`Space + c + s`):
- Requires Claude Code CLI
- If you're reading this, you probably already have it!

## What Works Without Optional Dependencies?

**Everything core works with just Neovim!**

✅ File explorer (nvim-tree)
✅ Fuzzy finder (Telescope)
✅ LSP support (auto-installs language servers)
✅ Syntax highlighting (Tree-sitter)
✅ Git integration (Gitsigns)
✅ Autocompletion
✅ Diagnostics viewer
✅ Which-key helper
✅ All keybindings

**Optional features:**
- `Space + t` commands (requires toipe)
- `Space + c` commands (requires Claude Code CLI)

## Post-Install

After first launch:
1. Run `:checkhealth` to verify setup
2. Run `:Mason` to verify LSP servers
3. Press `Space` to explore keybindings!

## Quick Start

**Core Features (work immediately):**
- `Space + e` - File explorer
- `Space + f f` - Find files
- `Space + w` - Save file
- `Space` (wait) - See all commands

**Optional Features:**
- `Space + c s` - Claude Code side-by-side (requires Claude CLI)
- `Space + t t` - Typing practice (requires toipe)

See `QUICKSTART.md` for more!
