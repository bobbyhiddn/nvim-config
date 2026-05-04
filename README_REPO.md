# My Neovim Configuration

A modern Neovim setup with LSP, fuzzy finding, Git integration, typing practice (toipe), and Claude Code AI assistant integration.

## ✨ Features

- 🎨 **Modern UI**: Tokyo Night theme with beautiful statusline
- 📁 **File Explorer**: nvim-tree with icons
- 🔍 **Fuzzy Finder**: Telescope for files and live grep
- 🧠 **LSP Support**: Language servers for Lua, Python, TypeScript/JavaScript
- ⚡ **Autocompletion**: nvim-cmp with LSP integration
- 🌳 **Syntax Highlighting**: Tree-sitter with lazy loading
- 🔧 **Git Integration**: Gitsigns for inline blame and diff
- 🩺 **Diagnostics**: Trouble.nvim for better error viewing
- ⌨️ **Typing Practice**: Integrated toipe for improving typing speed
- 🤖 **AI Assistant**: Claude Code integration with terminal splits
- 🗝️ **Which-Key**: Interactive keybinding helper

## 📦 Installation

### Prerequisites

```bash
# macOS
brew install neovim toipe

# Ubuntu/Debian
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt install neovim
cargo install toipe  # or download from releases

# Arch Linux
sudo pacman -S neovim
cargo install toipe
```

### Install Config

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this repo
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim

# Launch Neovim (plugins auto-install)
nvim
```

On first launch, Lazy.nvim will automatically install all plugins. Wait for it to complete, then restart Neovim.

## 🚀 Quick Start

### Essential Keybindings

All commands start with `Space` (leader key):

| Keys | Action |
|------|--------|
| `Space` + wait | Show all keybindings (which-key) |
| `Space e` | Toggle file explorer |
| `Space f f` | Find files |
| `Space f g` | Search in files |
| `Space c s` | Claude Code side-by-side |
| `Space t t` | Toipe typing test |
| `Space w` | Save file |
| `Space q` | Quit |

### Claude Code Integration

Run Claude Code directly in Neovim:

```
Space + c + s   → Side-by-side coding with AI
Space + c + c   → Horizontal split
Space + c + f   → Fullscreen
```

### Typing Practice

Improve your typing speed:

```
Space + t + t   → Start typing test
Space + t + c   → Custom test (50 words)
```

## 📚 Documentation

Comprehensive guides included in the repo:

- **QUICKSTART.md** - Get started in 2 minutes
- **KEYBINDINGS.md** - Complete keybinding reference
- **CHEATSHEET.md** - Visual cheatsheet
- **CLAUDE_QUICKSTART.md** - Claude Code integration intro
- **CLAUDE_TERMINAL.md** - Complete Claude integration guide
- **TOIPE_INTEGRATION.md** - Typing practice guide
- **WHICH_KEY_GUIDE.md** - How to use which-key

## 🛠️ Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Main configuration
├── lua/
│   └── config/
│       ├── plugins.lua      # Plugin definitions
│       ├── keymaps.lua      # Keybindings
│       ├── toipe.lua        # Toipe integration
│       └── claude.lua       # Claude Code integration
└── *.md                     # Documentation
```

## 🎨 Customization

### Change Color Scheme

Edit `lua/config/plugins.lua`:

```lua
vim.cmd([[colorscheme tokyonight-night]])
-- Options: tokyonight-night, tokyonight-storm, tokyonight-day
```

### Add More LSP Servers

Run `:Mason` in Neovim and install servers interactively.

### Modify Keybindings

Edit `lua/config/keymaps.lua` to add or change keybindings.

## 🔧 Requirements

- **Neovim** 0.12+ (uses modern `vim.lsp.config` API)
- **Git** for plugin management
- **Node.js** (optional, for some LSP servers)
- **Python 3** (optional, for Python LSP)
- **Toipe** (optional, for typing practice)
- **Claude Code CLI** (optional, for AI integration)

## 🐛 Troubleshooting

### Plugins not loading?

```vim
:Lazy sync
```

### LSP not working?

```vim
:Mason
```
Install required language servers.

### Check health

```vim
:checkhealth
```

## 📝 Commands Reference

### Plugin Management
- `:Lazy` - Plugin manager
- `:Mason` - LSP installer

### Claude Code
- `:Claude` - Open Claude Code
- `:ClaudeSideBySide` - Side-by-side view

### Toipe
- `:Toipe` - Start typing test
- `:ToipeQuick` - Quick 25-word test

## 🤝 Contributing

This is a personal config, but feel free to fork and customize for your needs!

## 📜 License

MIT License - Feel free to use and modify!

## 🙏 Credits

Built with these amazing plugins:
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- And many more!

---

**Note**: This config uses the modern Neovim 0.12+ `vim.lsp.config` API (no deprecated lspconfig framework).
