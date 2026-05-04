# Neovim Quick Start Guide

## ✅ Installation Complete!

Your Neovim is configured with modern Neovim 0.12 features including the new `vim.lsp.config` API.

## First Steps

### 1. Test Your Setup
```bash
nvim ~/test_nvim.lua
```

### 2. Essential Keybindings to Try

**File Explorer:**
- `Space` then `e` - Toggle file tree

**Find Files:**
- `Space` then `f` then `f` - Fuzzy find files
- `Space` then `f` then `g` - Search in files (live grep)

**Save & Quit:**
- `Space` then `w` - Save file
- `Space` then `q` - Quit

**AI Assistant (Claude Code):**
- `Space` then `c` then `s` - Claude Code side-by-side

**Typing Practice:**
- `Space` then `t` then `t` - Launch toipe typing test

**Help (Which-Key):**
- Press `Space` and **wait 300ms** - Popup shows all available commands!
- Press `Space` then `c` - See all Claude Code options
- Press `Space` then `t` - See all Toipe options

### 3. Try Toipe Integration
Warm up your fingers:
```
Space + t + t
```
Type the words, then press `Esc Esc` to exit, and `:q` to close.

### 4. Navigate the File Explorer
When you press `Space + e`:
- `Enter` - Open file
- `a` - Create new file
- `d` - Delete file
- `r` - Rename file
- `g?` - Show all commands

## What's Working

✅ **File Explorer** (nvim-tree)
✅ **Syntax Highlighting** (treesitter with lazy loading)
✅ **LSP Support** (using modern vim.lsp.config API)
✅ **Fuzzy Finder** (telescope)
✅ **Autocompletion** (nvim-cmp)
✅ **Git Integration** (gitsigns)
✅ **Diagnostics** (trouble.nvim)
✅ **Toipe Integration** (typing practice with custom presets)
✅ **Auto-reload** for Claude Code integration

## Fixes Applied

1. ✅ Removed non-existent mcp.nvim
2. ✅ Updated to modern `vim.lsp.config` API (no more deprecation warnings)
3. ✅ Updated tsserver → ts_ls
4. ✅ Added lazy loading for treesitter to avoid initial load errors
5. ✅ Proper LSP capabilities configuration

## LSP Servers Installed

The following language servers will auto-install when you open relevant files:

- **lua_ls** - Lua (including Neovim config)
- **pyright** - Python
- **ts_ls** - TypeScript/JavaScript

## Common Commands

### Plugin Management
```vim
:Lazy          " Open plugin manager
:Lazy sync     " Install/update plugins
:Lazy clean    " Remove unused plugins
```

### LSP
```vim
:Mason         " Install more language servers
:LspInfo       " Show LSP status
```

### Treesitter
```vim
:TSInstall <language>    " Install parser
:TSUpdate                " Update all parsers
```

## Troubleshooting

### If LSP isn't working:
1. Open Mason: `:Mason`
2. Install your language server
3. Restart Neovim

### If syntax highlighting is off:
1. Run `:TSInstall <language>`
2. Example: `:TSInstall python`

### Check health:
```vim
:checkhealth
```

## Next Steps

1. **Customize colors**: Edit `lua/config/plugins.lua`, change `tokyonight-night` to `tokyonight-storm` or `tokyonight-day`

2. **Add more keybindings**: Edit `lua/config/keymaps.lua`

3. **Install more LSP servers**: Run `:Mason` and browse available servers

4. **Learn more**: 
   - `README.md` - Full documentation
   - `KEYBINDINGS.md` - Complete keybinding reference
   - `TOIPE_QUICKREF.md` - Toipe quick reference
   - `TOIPE_INTEGRATION.md` - Complete toipe guide
   - `CLAUDE_INTEGRATION.md` - Claude Code workflow guide

## Tips

- **Use which-key**: Just press `Space` and wait - it shows available commands!
- **Learn gradually**: Start with file navigation, then add more commands
- **Check `:help`**: Neovim's built-in help is excellent

Enjoy your new Neovim setup! 🎉
