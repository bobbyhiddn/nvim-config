# Claude Code Integration with Neovim

Claude Code can work with Neovim through the terminal and file system.

## How It Works

Claude Code integrates with Neovim by:
1. **Reading files** you're editing
2. **Writing/editing files** through the file system
3. **Running Neovim commands** via terminal

## Usage Patterns

### Open Files in Neovim
From your terminal with Claude Code running:
```bash
nvim <file>
```

Claude Code can see what you're working on and help you edit.

### Let Claude Edit Files
When Claude Code edits a file, you can reload it in Neovim:
- `:e` - Reload current file
- `:checktime` - Check for external changes

### Terminal Integration
Open a terminal split in Neovim:
```
:split | terminal
```
or with keybinding `<leader>t` (if you add it).

From there you can run Claude Code CLI commands.

## Recommended Workflow

1. **Open Neovim** in your project directory
2. **Use file explorer** (`Space + e`) to navigate
3. **When you need Claude's help**:
   - Save your work (`:w` or `Space + w`)
   - Switch to terminal (or open a split)
   - Ask Claude Code to help with the file
4. **Reload files** Claude modifies (`:e` or `:checktime`)

## Useful Neovim Commands for Integration

- `:e!` - Force reload file (discard changes)
- `:checktime` - Check all buffers for external changes
- `:bufdo e` - Reload all open buffers
- `:set autoread` - Auto-reload files changed externally (add to init.lua)

## Auto-reload Setup

Add to your `init.lua` for automatic file reloading:

```lua
-- Auto-reload files changed outside Neovim
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  pattern = "*",
  command = "checktime",
})
```

## Tips

1. **Save often** before asking Claude to edit
2. **Use version control** (git) so you can review Claude's changes
3. **Keep file explorer open** to see file changes in real-time
4. **Use `:diff`** to compare changes after Claude edits

## Future: Native MCP Support

MCP (Model Context Protocol) support for Neovim is in development. When available, Claude Code will be able to:
- Directly control your editor
- Navigate buffers programmatically
- Execute editor commands on your behalf

For now, file system and terminal integration works great!
