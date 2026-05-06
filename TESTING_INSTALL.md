# Testing the Installation (For New Users)

Quick guide to verify everything works after installing.

## Fresh Install Test

```bash
# Clone the config
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim

# Launch Neovim
nvim
```

**What should happen:**
1. Lazy.nvim plugin manager starts automatically
2. Plugins begin downloading (you'll see progress)
3. Wait for "All plugins installed" message
4. Restart Neovim: `:q` then `nvim` again

## Quick Functionality Test

After installation, test these features:

### 1. File Explorer (Should Always Work)
```
Press: Space + e
Expected: File tree opens on the left
```

### 2. Fuzzy Finder (Should Always Work)
```
Press: Space + f + f
Expected: File finder popup appears
Type: part of a filename
Expected: Matching files show up
```

### 3. Which-Key Help (Should Always Work)
```
Press: Space
Wait: 300ms
Expected: Popup showing available commands
```

### 4. LSP Support (Should Auto-Install)
```
Open a file: nvim test.lua
Expected: Syntax highlighting works
Type: vim.
Expected: Autocomplete suggestions appear
```

### 5. Git Integration (If in Git Repo)
```
Make a change to a file
Expected: Git signs appear in gutter (added/changed lines)
Press: Space + g + p
Expected: Preview of git changes
```

### 6. Toipe (Optional - May Not Work)
```
Press: Space + t + t
Expected: 
  - If installed: Toipe typing test starts
  - If not: Warning message with install instructions
```

### 7. Claude Code (Optional - May Not Work)
```
Press: Space + c + s
Expected:
  - If installed: Claude opens in split
  - If not: Warning message about missing CLI
```

## What Should Work Without Optional Dependencies?

**✅ Works with just Neovim:**
- File explorer
- Fuzzy finder
- Syntax highlighting
- LSP (auto-installs servers)
- Git integration
- Autocompletion
- Diagnostics
- Which-key
- All navigation features

**⚠️ Requires optional installation:**
- Typing practice (needs `toipe`)
- Claude Code (needs `claude` CLI)

## Check System Health

Run a diagnostic:
```vim
:checkhealth
```

Look for:
- ✅ Green checks = Good
- ⚠️ Yellow warnings = Usually OK
- ❌ Red errors = Something needs fixing

## Common First-Time Issues

### "Plugins not loading"
**Solution:** Wait for first install to complete, then:
```vim
:Lazy sync
```

### "No LSP features"
**Solution:** Install language servers:
```vim
:Mason
```
Press `i` next to your language (lua_ls, pyright, etc.)

### "Toipe not found"
**This is normal!** Toipe is optional.
```bash
# Install if you want typing practice
brew install toipe  # macOS
cargo install toipe # Linux
```

### "Claude not found"
**This is normal!** Claude Code CLI is optional.
Only install if you want AI assistant features.

## Minimal Installation Verification

To verify core features work (no optional deps needed):

```bash
# 1. Clone
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim-test

# 2. Test with temporary config
nvim -u ~/.config/nvim-test/init.lua

# 3. Try core features
# Press Space + e (file explorer)
# Press Space + f f (find files)
# Press Space (see which-key)

# 4. Clean up
rm -rf ~/.config/nvim-test
```

## Reporting Installation Issues

If something doesn't work, include:

1. **OS and version:**
   ```bash
   uname -a
   ```

2. **Neovim version:**
   ```vim
   :version
   ```

3. **What you tried:**
   - What keybinding or command?
   - What happened vs. what you expected?

4. **Health check:**
   ```vim
   :checkhealth
   ```
   (Copy relevant errors)

5. **Optional dependencies:**
   ```bash
   which toipe
   which claude
   ```

## Success Checklist

After installation, you should be able to:

- [ ] Open file explorer with `Space + e`
- [ ] Find files with `Space + f f`
- [ ] See which-key help with `Space` (wait)
- [ ] Open and edit files
- [ ] Get syntax highlighting
- [ ] Save files with `Space + w`
- [ ] Navigate between splits with `Ctrl + h/j/k/l`

**Optional features** (if dependencies installed):
- [ ] Start typing test with `Space + t t`
- [ ] Open Claude with `Space + c s`

## Docker Test (Advanced)

Want to test in a clean environment?

```bash
docker run -it --rm ubuntu:latest bash
apt update && apt install -y neovim git curl
git clone https://github.com/bobbyhiddn/nvim-config.git ~/.config/nvim
nvim
```

This proves the config works with ONLY Neovim + Git!

## Next Steps After Successful Install

1. Read `QUICKSTART.md` for a 2-minute tour
2. Try `Space + f f` to find files in a project
3. Open a code file and see LSP features work
4. Explore with `Space` + which-key
5. Customize in `lua/config/` if desired

Happy Vimming! 🎉
