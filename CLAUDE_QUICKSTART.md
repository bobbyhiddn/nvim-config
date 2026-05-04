# Claude Code in Neovim - Quick Start

## Try It Right Now!

### Option 1: Side-by-Side (Recommended)
```bash
nvim
```
Then press: `Space` + `c` + `s`

**You'll see:**
```
┌──────────────────────┬─────────────────────┐
│                      │                     │
│  Your Code           │  Claude Code        │
│                      │                     │
│                      │  > Hi! How can I    │
│                      │    help you today?  │
│                      │                     │
└──────────────────────┴─────────────────────┘
```

### Option 2: Quick Question
```bash
nvim myfile.py
```
Then press: `Space` + `c` + `c`

**You'll see:**
```
┌─────────────────────────────────────────┐
│  myfile.py                              │
│  def hello():                           │
│      pass                               │
├─────────────────────────────────────────┤
│  Claude Code                            │
│  > What would you like to know?         │
└─────────────────────────────────────────┘
```

## All Launch Methods

| Keys | Layout | Best For |
|------|--------|----------|
| `Space c s` | Side-by-side (80 cols) | Long coding sessions ⭐ |
| `Space c c` | Horizontal split | Quick questions |
| `Space c l` | Large split (30 lines) | Detailed explanations |
| `Space c v` | Vertical split | Flexible layout |
| `Space c f` | Fullscreen | Learning/reading |
| `Space c a` | Auto-context | Questions about current file |

## How to Use

### 1. Ask Questions
```
1. Open Claude: Space + c + s
2. Type your question in Claude's terminal
3. Read response
4. Switch back to code: Ctrl + h
```

### 2. Get Code Help
```
1. Open your file: nvim app.js
2. Open Claude: Space + c + c
3. Ask: "How do I add error handling here?"
4. Claude responds with suggestions
5. Implement in your code
```

### 3. Let Claude Edit Your File
```
1. Save your file: Space + w
2. Open Claude: Space + c + c
3. Ask: "Add comments to all functions"
4. Claude edits the file
5. Your Neovim auto-reloads! ✨
6. Review the changes
```

### 4. Pair Programming
```
1. Open Claude side-by-side: Space + c + s
2. Ask: "Let's build a REST API"
3. Claude gives step-by-step instructions
4. Code in left window, read in right
5. Ask follow-ups as you go
```

## Navigation Tips

**Switch between windows:**
- `Ctrl + h` - Go to left (your code)
- `Ctrl + l` - Go to right (Claude)
- `Ctrl + j` - Go down
- `Ctrl + k` - Go up

**Exit terminal mode:**
- `Esc Esc` - Back to normal mode

**Close Claude:**
- `Esc Esc` then `:q`

**Resize Claude's window:**
- `Ctrl + Left/Right` - Make wider/narrower
- `Ctrl + Up/Down` - Make taller/shorter

## Example Session

```bash
# 1. Open Neovim
nvim calculator.py

# 2. Open Claude side-by-side
# Press: Space + c + s

# 3. In Claude, ask:
"Can you review this calculator code for bugs?"

# 4. Read Claude's response (right side)
# View your code (left side)

# 5. Make fixes in your code
# Press: Ctrl + h (switch to code)
# Edit the code

# 6. Ask follow-up
# Press: Ctrl + l (switch to Claude)
# Ask: "How can I add unit tests?"

# 7. Close Claude when done
# Press: Esc Esc
# Type: :q
```

## Commands Reference

```vim
:Claude              " Quick horizontal split
:ClaudeSideBySide    " Best for coding ⭐
:ClaudeAsk           " Auto-loads current file context
:ClaudeFullscreen    " Full screen for learning
```

## Why This Is Awesome

✅ **Keep your context** - No alt-tabbing between terminal and editor
✅ **See code + Claude** - Side-by-side view
✅ **Auto-reload** - Claude's edits appear instantly
✅ **Full terminal** - All Claude features work
✅ **Git integration** - See Claude's changes with `Space + gp`
✅ **Multi-session** - Open multiple Claude terminals if needed

## Troubleshooting

**Claude won't open?**
- Check: `which claude` in terminal
- Make sure Claude Code CLI is installed

**Can't type in Claude?**
- You might be in normal mode
- Just start typing (it auto-enters insert mode)

**Wrong split size?**
- Resize with `Ctrl + Arrow keys`

**Lost in splits?**
- Close all but current: `:only`

## Next Steps

1. **Try it now:** `nvim` → `Space c s`
2. **Read full guide:** `CLAUDE_TERMINAL.md`
3. **Customize:** Edit `~/.config/nvim/lua/config/claude.lua`

Happy coding with your AI pair programmer! 🤖✨
