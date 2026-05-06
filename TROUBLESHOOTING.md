# Troubleshooting Guide

## Common Issues

### "Toipe is not installed" message

**What happened:** You pressed `Space + t + t` but toipe is not installed.

**Solution:** Toipe is optional! Install it or just don't use the typing practice features.

```bash
# macOS
brew install toipe

# Linux with Rust/Cargo
cargo install toipe

# Or skip it - everything else still works!
```

### "Claude command not found"

**What happened:** You pressed `Space + c + s` but Claude Code CLI is not in your PATH.

**Solution:** 
1. Make sure Claude Code CLI is installed
2. Check: `which claude` should show a path
3. If not installed, the Claude Code integration won't work (but everything else will!)

### Plugins not loading

**Symptoms:** File explorer doesn't work, no syntax highlighting, etc.

**Solution:**
```vim
:Lazy sync
```

Wait for all plugins to install, then restart Neovim.

### LSP not working

**Symptoms:** No autocompletion, no "go to definition", no diagnostics.

**Solution:**
```vim
:Mason
```

Install language servers for your languages (e.g., `lua_ls`, `pyright`, `ts_ls`).

Press `i` to install, `u` to update, `X` to uninstall.

### Syntax highlighting broken

**Solution:**
```vim
:TSUpdate
```

Updates all Tree-sitter parsers.

### "Module not found" errors

**Solution:**
```bash
# Delete plugin cache and reinstall
rm -rf ~/.local/share/nvim
nvim  # Plugins reinstall automatically
```

### Which-key not showing up

**What happened:** You press `Space` but no popup appears.

**Solution:**
1. Make sure you're in **normal mode** (press `Esc`)
2. Wait the full 300ms after pressing `Space`
3. Check: `:WhichKey` to manually trigger it

### File explorer won't open

**Solution:**
```vim
:NvimTreeToggle
```

If that doesn't work:
```vim
:Lazy reload nvim-tree.lua
```

### Git signs not showing

**What happened:** No git blame, no diff indicators in gutter.

**Solution:**
1. Make sure you're in a git repository
2. Check: `:Gitsigns toggle_signs`
3. Verify git is installed: `git --version`

### Terminal mode stuck

**What happened:** Can't exit Claude Code or toipe terminal.

**Solution:**
Press `Esc` **twice**: `Esc Esc`

Then `:q` to close the terminal.

### Colors look wrong

**Solution:**
Make sure your terminal supports 24-bit color (true color).

Most modern terminals do, but you may need to set:
```bash
export TERM=xterm-256color
```

### Mason can't install servers

**Symptoms:** Error messages when installing LSP servers in Mason.

**Common causes:**
1. **No internet connection**
2. **Missing dependencies**:
   ```bash
   # macOS
   brew install node python3 rust
   
   # Linux
   sudo apt install nodejs python3 cargo
   ```

### Performance issues

**Symptoms:** Neovim is slow, laggy typing.

**Solutions:**
1. Disable some plugins temporarily
2. Check Tree-sitter isn't parsing huge files:
   ```vim
   :TSBufDisable highlight
   ```
3. Reduce LSP features for large files

## Checking System Health

Run a full diagnostic:
```vim
:checkhealth
```

This will show issues with:
- Neovim installation
- Python/Node providers
- Clipboard support
- Terminal features
- Plugin health

## Clean Install

If all else fails, start fresh:

```bash
# Backup current config
mv ~/.config/nvim ~/.config/nvim.backup

# Remove plugin data
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Reinstall
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim
nvim
```

## Platform-Specific Issues

### macOS: "xcrun: error"

**Solution:**
```bash
xcode-select --install
```

### Linux: Clipboard not working

**Solution:**
```bash
# Ubuntu/Debian
sudo apt install xclip

# Arch
sudo pacman -S xclip
```

### Windows (WSL)

**Issues:** Clipboard, terminal colors.

**Solutions:**
1. Use Windows Terminal (not cmd.exe)
2. Install win32yank for clipboard:
   ```bash
   curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
   unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
   chmod +x /tmp/win32yank.exe
   sudo mv /tmp/win32yank.exe /usr/local/bin/
   ```

## Getting Help

### Debug Information

When asking for help, include:

```vim
:checkhealth
:version
:Lazy
:Mason
```

### Logs

Check Neovim logs:
```bash
# View logs
tail -f ~/.local/state/nvim/log

# Or in Neovim
:messages
```

### Common Log Locations

- **Neovim logs:** `~/.local/state/nvim/log`
- **LSP logs:** `~/.local/state/nvim/lsp.log`
- **Plugin cache:** `~/.local/share/nvim/lazy`

## Still Having Issues?

1. **Check the docs:** `README.md`, `QUICKSTART.md`
2. **Run `:checkhealth`**
3. **Check GitHub issues:** [nvim-config issues](https://github.com/bobbyhiddn/nvim-config/issues)
4. **Ask for help:** Open an issue with:
   - OS and version
   - Neovim version (`:version`)
   - Output of `:checkhealth`
   - What you tried

## Tips to Avoid Issues

1. **Keep Neovim updated:** `brew upgrade neovim` (macOS)
2. **Update plugins regularly:** `:Lazy sync`
3. **Update LSP servers:** `:Mason` then `U` to update all
4. **Update Tree-sitter:** `:TSUpdate`
5. **Read error messages** - they usually tell you what's wrong!

## Known Limitations

- **Toipe:** Requires separate installation (optional)
- **Claude Code:** Requires CLI (optional)
- **Some LSP servers:** Require Node.js, Python, or Rust
- **Git features:** Require git installation (usually already there)

Remember: The config is designed to work great with just Neovim installed. Everything else is optional enhancements!
