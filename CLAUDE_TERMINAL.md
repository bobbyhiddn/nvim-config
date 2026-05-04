# Claude Code Terminal Integration

Run Claude Code directly inside Neovim, just like toipe!

## Quick Start

### Keybindings (Fastest Way)

| Key | Action |
|-----|--------|
| `<Space>cc` | Claude Code horizontal split |
| `<Space>cv` | Claude Code vertical split |
| `<Space>cf` | Claude Code fullscreen |
| `<Space>cs` | Claude Code side-by-side (80 cols) |
| `<Space>cl` | Claude Code large split (30 lines) |
| `<Space>ca` | Ask Claude about current file |
| `<Esc><Esc>` | Exit terminal mode |

### Commands

```vim
:Claude              " Horizontal split
:ClaudeVertical      " Vertical split
:ClaudeFullscreen    " Fullscreen
:ClaudeSideBySide    " 80-column vertical split
:ClaudeLarge         " 30-line horizontal split
:ClaudeAsk           " Opens Claude with current file context
```

## Common Workflows

### 1. Side-by-Side Coding (Recommended!)
```
1. Open your code file: nvim myfile.py
2. Press: Space + c + s
3. Claude opens in right split (80 columns)
4. Ask Claude questions while viewing your code
5. Switch between: Ctrl+h (code) / Ctrl+l (Claude)
```

**Visual Layout:**
```
┌─────────────────────┬──────────────────────┐
│                     │                      │
│   Your Code         │   Claude Code        │
│   (main window)     │   (80 cols)          │
│                     │                      │
│   def main():       │   > How can I help?  │
│       pass          │                      │
│                     │                      │
└─────────────────────┴──────────────────────┘
```

### 2. Quick Question
```
1. Working on code
2. Press: Space + c + c
3. Ask Claude your question
4. Get answer
5. Esc Esc → :q (close Claude)
6. Continue coding
```

### 3. Code Review Workflow
```
1. Open file: nvim feature.js
2. Press: Space + c + a (ask about current file)
3. Claude opens with context about your file
4. Ask: "Review this code for bugs"
5. View code in top split, Claude in bottom
6. Make changes based on feedback
```

### 4. Learning Mode (Fullscreen)
```
1. Press: Space + c + f
2. Ask Claude to teach you something
3. Full screen for comfortable reading
4. Esc Esc → :q when done
```

## Terminal Navigation Tips

### Switch Between Splits
- `Ctrl+h` - Move to left window (your code)
- `Ctrl+l` - Move to right window (Claude)
- `Ctrl+j` - Move to bottom window
- `Ctrl+k` - Move to top window

### Resize Claude's Window
In normal mode (after `Esc Esc`):
- `Ctrl+Left/Right` - Resize vertical split
- `Ctrl+Up/Down` - Resize horizontal split

### Multiple Claude Sessions
You can open multiple Claude terminals:
```
1. Space + c + v (first Claude session)
2. Ctrl+h (back to code)
3. Space + c + c (second Claude session)
4. Now you have 2 Claude sessions open!
```

## Advanced Workflows

### Pair Programming with Claude
```
┌─────────────────────────────────────────────┐
│  mycode.py (top)                           │
│  ─────────────────────────────────────────  │
│  Claude Code (bottom 30 lines)             │
└─────────────────────────────────────────────┘

1. nvim mycode.py
2. Space + c + l (large split, 30 lines)
3. Ask Claude: "Let's build a REST API"
4. Claude gives instructions
5. You code in top window
6. Ask follow-up questions in bottom
7. Ctrl+k/j to switch between windows
```

### Debugging Assistant
```
1. Open buggy code
2. Space + c + s (side-by-side)
3. Ask: "Why is this function failing?"
4. Read Claude's analysis while viewing code
5. Fix bugs
6. Files auto-reload when Claude edits them!
```

### Documentation Writer
```
1. Open your code
2. Space + c + c
3. Ask: "Add docstrings to all functions"
4. Claude edits the file
5. Your Neovim auto-reloads
6. Review the docstrings
```

## Best Practices

### 1. Use Side-by-Side for Long Sessions
The 80-column vertical split (`Space + cs`) is perfect for extended coding sessions with Claude.

### 2. Save Before Asking Claude to Edit
```vim
Space + w  (save file)
Space + c + c (open Claude)
"Please refactor this function"
```

### 3. Use Git to Track Claude's Changes
```bash
git diff  # See what Claude changed
```

Or in Neovim:
```vim
Space + g + p  (preview git hunks)
```

### 4. Close Claude When Not Needed
Don't let terminal buffers pile up:
```
Esc Esc  (exit terminal mode)
:q       (close terminal)
```

### 5. Keep File Explorer Open
```
Space + e  (toggle file explorer)
```
See when Claude creates new files!

## Troubleshooting

### Claude won't open?
Check if `claude` command works:
```bash
which claude
claude --version
```

### Can't exit terminal mode?
Press `Esc` twice: `Esc Esc`

### Terminal split is wrong size?
Resize with:
- `Ctrl + Arrow keys`
- Or manually: `:resize 20` or `:vertical resize 60`

### Lost in multiple splits?
Close all but current:
```vim
:only
```

## Keyboard Shortcut Summary

```
OPENING CLAUDE
  Space c c    Horizontal split (default)
  Space c v    Vertical split
  Space c f    Fullscreen
  Space c s    Side-by-side (80 cols) ⭐ Recommended
  Space c l    Large split (30 lines)
  Space c a    Ask about current file

NAVIGATION
  Ctrl h/j/k/l Navigate between splits
  Esc Esc      Exit terminal mode
  :q           Close terminal

WINDOW MANAGEMENT
  Ctrl + Arrows  Resize split
  :resize N      Set height to N lines
  :vertical resize N  Set width to N columns
  :only          Close all other splits
```

## Pro Tips

1. **Alias for quick access:** Add to your shell config:
   ```bash
   alias nv="nvim +'Claude'"  # Opens nvim with Claude
   ```

2. **Start with Claude ready:** 
   ```bash
   nvim -c "ClaudeSideBySide"
   ```

3. **Multiple monitors?** Use fullscreen Claude on second monitor:
   ```vim
   :ClaudeFullscreen
   ```

4. **Quick consulting:** Map a single key (requires config edit):
   ```lua
   vim.keymap.set("n", "<F12>", function()
     require("config.claude").side_by_side()
   end)
   ```

## Integration with File Auto-Reload

Claude Code edits → File changes → Neovim auto-reloads

**This is already configured!** When Claude edits files:
- Neovim detects the change
- Reloads automatically
- You see updates immediately

No manual `:e` needed! 🎉

Happy coding with your AI pair programmer! 🤖💻
