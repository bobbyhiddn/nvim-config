# Neovim Keybindings Quick Reference

**Leader key: SPACE**

## File Explorer (nvim-tree)
- `<Space>e` - Toggle file explorer
- `<Space>ef` - Focus file explorer
- Inside explorer:
  - `a` - Create new file/folder
  - `d` - Delete
  - `r` - Rename
  - `x` - Cut
  - `c` - Copy
  - `p` - Paste
  - `Enter` - Open file
  - `g?` - Show help

## Fuzzy Finder (Telescope)
- `<Space>ff` - Find files
- `<Space>fg` - Live grep (search in files)
- `<Space>fb` - Find buffers
- `<Space>fh` - Help tags
- `<Space>fr` - Recent files

## Buffer Management
- `<Space>bn` - Next buffer
- `<Space>bp` - Previous buffer
- `<Space>bd` - Delete buffer

## Window Navigation
- `Ctrl+h` - Move to left window
- `Ctrl+j` - Move to bottom window
- `Ctrl+k` - Move to top window
- `Ctrl+l` - Move to right window

## Window Splits
- `<Space>sv` - Split vertical
- `<Space>sh` - Split horizontal

## Window Resizing
- `Ctrl+Up` - Decrease height
- `Ctrl+Down` - Increase height
- `Ctrl+Left` - Decrease width
- `Ctrl+Right` - Increase width

## File Operations
- `<Space>w` - Save file
- `<Space>q` - Quit
- `<Space>Q` - Quit all without saving

## LSP (Language Server)
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `<Space>ca` - Code actions
- `<Space>rn` - Rename symbol
- `<Space>f` - Format document

## Diagnostics
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `<Space>d` - Show diagnostic

## Git (Gitsigns)
- `<Space>gp` - Preview hunk
- `<Space>gb` - Blame line

## Trouble (Diagnostics Viewer)
- `<Space>xx` - Toggle diagnostics
- `<Space>xw` - Workspace diagnostics
- `<Space>xd` - Document diagnostics
- `<Space>xl` - Location list
- `<Space>xq` - Quickfix list

## Comments
- `gcc` - Toggle line comment
- `gbc` - Toggle block comment
- Visual mode: `gc` - Comment selection

## Editing
- Visual mode: `<` then `<` - Indent left (stays in visual mode)
- Visual mode: `>` then `>` - Indent right (stays in visual mode)
- Visual mode: `J` - Move text down
- Visual mode: `K` - Move text up

## Search
- `<Space>h` - Clear search highlight

## Completion (nvim-cmp)
- `Ctrl+Space` - Trigger completion
- `Ctrl+b` - Scroll docs backward
- `Ctrl+f` - Scroll docs forward
- `Enter` - Confirm selection
- `Ctrl+e` - Abort completion

## Toipe (Typing Practice)
- `<Space>tt` - Toipe horizontal split
- `<Space>tv` - Toipe vertical split
- `<Space>tf` - Toipe fullscreen
- `<Space>tc` - Toipe custom (50 words)
- `<Space>to` - Open terminal

## Claude Code (AI Assistant)
- `<Space>cc` - Claude horizontal split
- `<Space>cv` - Claude vertical split
- `<Space>cf` - Claude fullscreen
- `<Space>cs` - Claude side-by-side (80 cols) ⭐
- `<Space>cl` - Claude large split (30 lines)
- `<Space>ca` - Ask Claude about current file

## Terminal Mode
- `Esc Esc` - Exit terminal mode

## Which-Key
- Press `<Space>` and wait - shows available keybindings

## Claude Code Integration
Claude Code can interact with Neovim through file system and terminal.
Files auto-reload when Claude edits them.
