# Which-Key Guide - Discover Keybindings

Which-key shows you available keybindings as you type!

## How It Works

Press `Space` and **wait ~300ms**. You'll see a popup showing all available commands.

## What You'll See

When you press `Space`, which-key shows:

```
┌─────────────────────────────────────────────┐
│  <leader> key                               │
├─────────────────────────────────────────────┤
│  b    +Buffers                              │
│  c    +Claude Code                          │
│  e     Toggle file explorer                 │
│  f    +Find                                 │
│  g    +Git                                  │
│  s    +Split                                │
│  t    +Toipe/Terminal                       │
│  x    +Diagnostics                          │
│  w     Save file                            │
│  q     Quit                                 │
└─────────────────────────────────────────────┘
```

**Note:** The `+` means there are more keybindings in that group!

## Exploring Groups

### Claude Code (`Space + c`)
Press `Space`, then `c`, you'll see:

```
┌─────────────────────────────────────────────┐
│  <leader>c                                  │
├─────────────────────────────────────────────┤
│  c    Claude horizontal split               │
│  v    Claude vertical split                 │
│  f    Claude fullscreen                     │
│  s    Claude side-by-side (80 cols)         │
│  l    Claude large split (30 lines)         │
│  a    Claude ask about current file         │
└─────────────────────────────────────────────┘
```

### Toipe/Terminal (`Space + t`)
Press `Space`, then `t`:

```
┌─────────────────────────────────────────────┐
│  <leader>t                                  │
├─────────────────────────────────────────────┤
│  t    Toipe horizontal split                │
│  v    Toipe vertical split                  │
│  f    Toipe fullscreen                      │
│  c    Toipe custom (50 words)               │
│  o    Open terminal                         │
└─────────────────────────────────────────────┘
```

### Find (`Space + f`)
Press `Space`, then `f`:

```
┌─────────────────────────────────────────────┐
│  <leader>f                                  │
├─────────────────────────────────────────────┤
│  f    Find files                            │
│  g    Live grep                             │
│  b    Find buffers                          │
│  h    Help tags                             │
│  r    Recent files                          │
└─────────────────────────────────────────────┘
```

### Git (`Space + g`)
Press `Space`, then `g`:

```
┌─────────────────────────────────────────────┐
│  <leader>g                                  │
├─────────────────────────────────────────────┤
│  p    Preview hunk                          │
│  b    Blame line                            │
└─────────────────────────────────────────────┘
```

### Buffers (`Space + b`)
Press `Space`, then `b`:

```
┌─────────────────────────────────────────────┐
│  <leader>b                                  │
├─────────────────────────────────────────────┤
│  n    Next buffer                           │
│  p    Previous buffer                       │
│  d    Delete buffer                         │
└─────────────────────────────────────────────┘
```

### Diagnostics (`Space + x`)
Press `Space`, then `x`:

```
┌─────────────────────────────────────────────┐
│  <leader>x                                  │
├─────────────────────────────────────────────┤
│  x    Toggle diagnostics                    │
│  w    Workspace diagnostics                 │
│  d    Document diagnostics                  │
│  l    Location list                         │
│  q    Quickfix list                         │
└─────────────────────────────────────────────┘
```

## How to Use Which-Key

### Method 1: Explore (Recommended for Learning)
1. Press `Space`
2. Wait and read the popup
3. Choose a group (e.g., `c` for Claude)
4. Wait again to see sub-options
5. Choose your command

### Method 2: Direct (When You Know What You Want)
Just type the full sequence quickly:
- `Space` + `c` + `s` (Claude side-by-side)
- `Space` + `f` + `f` (Find files)
- No need to wait!

### Method 3: Search
If which-key is open and you can't find what you want:
- Type `/` to search
- Or just scroll through

## Tips

### 1. Use It to Learn
When starting out, **let which-key show you options**. After a few days, you'll memorize the common ones.

### 2. No Need to Wait When You Know
If you already know `Space + c + s`, just type it quickly. Which-key won't interrupt you.

### 3. Close the Popup
If you opened which-key by accident:
- Press `Esc` to close
- Or just press `Space` again

### 4. Timing
The popup appears after **300ms** (0.3 seconds). This is configured in `init.lua`:
```lua
vim.opt.timeoutlen = 300
```

Want it faster? Change to `200`. Slower? Change to `500`.

## Common Sequences You'll Use Daily

Once you learn these, you'll type them without thinking:

```
Space e         File explorer
Space f f       Find files
Space c s       Claude side-by-side
Space t t       Toipe practice
Space w         Save
Space q         Quit
```

## Visual Learning Mode

### First Week
```
You: [Press Space]
Which-key: [Shows options]
You: "Oh, 'c' is for Claude!"
You: [Press c]
Which-key: [Shows Claude options]
You: [Press s for side-by-side]
```

### Second Week
```
You: [Press Space c s quickly]
Neovim: [Opens Claude immediately]
You: "I got this!"
```

## Customization

Want to change how which-key looks or behaves?

Edit: `~/.config/nvim/lua/config/plugins.lua`

Find the `which-key.nvim` section and modify the `setup()` call.

## Troubleshooting

**Which-key not appearing?**
- Make sure you're in normal mode (press `Esc`)
- Wait the full 300ms
- Check: `:WhichKey` to manually trigger it

**Popup too fast/slow?**
Edit `~/.config/nvim/init.lua`:
```lua
vim.opt.timeoutlen = 300  -- Change this number
```

**Can't see Claude/Toipe options?**
- Make sure plugins are loaded: `:Lazy sync`
- Restart Neovim

## Why Which-Key Is Awesome

✅ **No memorization needed** - Just press Space and explore
✅ **Self-documenting** - See what's available as you type
✅ **Learn by doing** - Discover features naturally
✅ **Speed up over time** - Type sequences faster as you learn
✅ **Never forget** - If you forget a binding, just press Space

Happy exploring! 🗝️
