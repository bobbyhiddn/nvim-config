# Neovim Configuration

A modern Neovim setup with file explorer, Claude Code integration, and essential development tools.

## Features

### Core Functionality
- **File Explorer**: nvim-tree with icons
- **Fuzzy Finder**: Telescope for files, grep, buffers
- **Syntax Highlighting**: Tree-sitter for better syntax parsing
- **LSP Support**: Language servers for code intelligence (updated to ts_ls)
- **Autocompletion**: nvim-cmp with LSP integration
- **Git Integration**: Gitsigns for inline git blame and diff
- **Diagnostics Viewer**: Trouble.nvim for better error/warning display
- **Indent Guides**: Visual indent lines
- **Typing Practice**: Integrated toipe with custom presets and commands
- **Claude Code Integration**: Run Claude directly in Neovim terminal splits! Side-by-side coding with AI pair programmer

### Installed Plugins
- **tokyonight.nvim**: Beautiful color scheme
- **nvim-tree.lua**: File explorer
- **telescope.nvim**: Fuzzy finder
- **nvim-treesitter**: Syntax highlighting
- **nvim-lspconfig**: LSP configuration
- **mason.nvim**: LSP server manager
- **nvim-cmp**: Autocompletion
- **gitsigns.nvim**: Git integration
- **lualine.nvim**: Status line
- **nvim-autopairs**: Auto close brackets
- **Comment.nvim**: Easy commenting
- **which-key.nvim**: Keybinding helper
- **trouble.nvim**: Better diagnostics/quickfix viewer
- **indent-blankline.nvim**: Visual indent guides

## Getting Started

### First Launch
```bash
nvim
```

On first launch, plugins will automatically install. Wait for completion.

### Basic Usage

1. **Open Neovim**: `nvim` or `nvim <file>`
2. **File Explorer**: Press `Space` then `e`
3. **Find Files**: Press `Space` then `f` then `f`
4. **Search in Files**: Press `Space` then `f` then `g`
5. **Typing Practice**: Press `Space` then `t` then `t`
6. **Help**: Press `Space` and wait to see available commands

### Learn Keybindings
See `KEYBINDINGS.md` for a complete reference.

Press `Space` and wait ~300ms to see available keybindings (thanks to which-key).

## Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Main config entry point
├── lua/
│   └── config/
│       ├── plugins.lua         # Plugin definitions
│       └── keymaps.lua         # Key mappings
├── KEYBINDINGS.md             # Keybinding reference
└── README.md                  # This file
```

## Language Server Setup

LSP servers are managed by Mason. Included by default:
- **lua_ls**: Lua
- **pyright**: Python  
- **ts_ls**: TypeScript/JavaScript (updated from deprecated tsserver)

Install more servers in Neovim:
```vim
:Mason
```

## Claude Code Integration

Run Claude Code directly inside Neovim! Just like toipe, you can launch Claude in terminal splits.

**Quick Start:**
Press `Space + c + s` for side-by-side coding with Claude!

**Features:**
- **Terminal integration**: Claude runs in Neovim splits (horizontal, vertical, fullscreen)
- **Side-by-side coding**: Code in one split, ask Claude in the other
- **Auto-reload**: Files automatically reload when Claude edits them
- **Multiple launchers**: 6 different ways to open Claude for different workflows
- **Git integration**: Review Claude's changes with gitsigns

**Documentation:**
- `CLAUDE_QUICKSTART.md` - Try it in 2 minutes!
- `CLAUDE_TERMINAL.md` - Complete terminal integration guide
- `CLAUDE_INTEGRATION.md` - File system workflow tips

## Customization

### Change Color Scheme
Edit `lua/config/plugins.lua`, find the tokyonight section:
```lua
vim.cmd([[colorscheme tokyonight-night]])
```
Options: `tokyonight-night`, `tokyonight-storm`, `tokyonight-day`

### Add More Plugins
Edit `lua/config/plugins.lua` and add plugin specs:
```lua
{
  "author/plugin-name",
  config = function()
    -- plugin setup
  end,
}
```

Then run `:Lazy sync` in Neovim.

### Modify Keybindings
Edit `lua/config/keymaps.lua` and add/modify mappings:
```lua
keymap("n", "<leader>x", ":YourCommand<CR>", { desc = "Description" })
```

## Common Commands

### Plugin Management
- `:Lazy` - Open plugin manager
- `:Lazy sync` - Install/update plugins
- `:Lazy clean` - Remove unused plugins

### LSP Commands
- `:Mason` - Open LSP server manager
- `:LspInfo` - Show LSP server info
- `:LspRestart` - Restart LSP servers

### Tree-sitter
- `:TSInstall <language>` - Install language parser
- `:TSUpdate` - Update all parsers

## Troubleshooting

### Plugins not loading
```vim
:Lazy sync
```

### LSP not working
```vim
:Mason
```
Install required language servers.

### Tree-sitter highlighting issues
```vim
:TSUpdate
```

## Tips

1. **Learn gradually**: Start with basic file navigation, then add more commands
2. **Use which-key**: Press `Space` and wait to discover commands
3. **Check health**: Run `:checkhealth` to diagnose issues
4. **Read help**: `:help <topic>` for any Neovim topic

## Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
