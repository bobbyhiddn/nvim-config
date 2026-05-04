# Neovim + Toipe Cheatsheet

## Essential Keybindings

```
┌─────────────────────────────────────────────────────────┐
│              LEADER KEY = SPACE                         │
└─────────────────────────────────────────────────────────┘

FILES & NAVIGATION
  Space e           Toggle file explorer
  Space f f         Find files (fuzzy)
  Space f g         Live grep (search in files)
  Space f r         Recent files
  Space w           Save file
  Space q           Quit

TYPING PRACTICE (TOIPE)
  Space t t         Toipe horizontal split
  Space t v         Toipe vertical split  
  Space t f         Toipe fullscreen
  Space t c         Toipe custom (50 words)

CLAUDE CODE (AI ASSISTANT)
  Space c c         Claude horizontal split
  Space c v         Claude vertical split
  Space c f         Claude fullscreen
  Space c s         Claude side-by-side ⭐
  Space c l         Claude large split
  Space c a         Ask about current file
  
TERMINAL
  Esc Esc           Exit terminal mode

WINDOWS
  Ctrl h/j/k/l      Navigate windows (←↓↑→)
  Space s v         Split vertical
  Space s h         Split horizontal
  Ctrl ↑↓←→         Resize window

CODE NAVIGATION
  g d               Go to definition
  g r               Find references
  K                 Show documentation
  Space c a         Code actions
  Space r n         Rename symbol

DIAGNOSTICS
  Space x x         Toggle diagnostics
  [ d               Previous diagnostic
  ] d               Next diagnostic

GIT
  Space g p         Preview hunk
  Space g b         Git blame

BUFFERS
  Space b n         Next buffer
  Space b p         Previous buffer
  Space b d         Delete buffer
```

## Quick Commands

```vim
" Claude Code Commands
:Claude             " Horizontal split
:ClaudeVertical     " Vertical split
:ClaudeFullscreen   " Fullscreen
:ClaudeSideBySide   " 80-column split ⭐
:ClaudeLarge        " 30-line split
:ClaudeAsk          " Ask about current file

" Toipe Commands
:Toipe              " Standard typing test
:ToipeQuick         " 25 words
:ToipeMedium        " 50 words  
:ToipeLong          " 100 words
:ToipeTimed 60      " 60-second test
:ToipeCustom        " Custom options
:ToipePractice      " Multiple rounds

" Plugin Management
:Lazy               " Plugin manager
:Mason              " LSP installer

" LSP
:LspInfo            " Show LSP status
:LspRestart         " Restart LSP

" Tree-sitter
:TSUpdate           " Update parsers
:TSInstall python   " Install parser
```

## Common Workflows

### Morning Warm-up
```
nvim
Space t t
[complete typing test]
Esc Esc
:q
[start coding]
```

### Side-by-side Practice
```
nvim mycode.py
Space t v
[practice while viewing code]
```

### Custom Language Practice  
```
:ToipeCustom
-l python
[practice Python typing]
```

### Quick File Navigation
```
Space f f
[type filename]
Enter
```

### Code Navigation
```
g d          " Go to definition
Ctrl o       " Jump back
g r          " Find all references
```

## Tips

1. **Press Space and wait** - See all available commands!
2. **Use which-key** - Shows keybindings as you type
3. **Terminal mode** - Always `Esc Esc` to exit first
4. **Learn gradually** - Start with basic navigation, add more over time

## Help System

```vim
:help <topic>       " Built-in help
:checkhealth        " Diagnose issues
:Telescope help_tags  " Search help
```

## Documentation Files

- `QUICKSTART.md` - Start here
- `README.md` - Full documentation  
- `KEYBINDINGS.md` - Complete keybinding reference
- `TOIPE_QUICKREF.md` - Toipe quick reference
- `TOIPE_INTEGRATION.md` - Complete toipe guide
- `CLAUDE_INTEGRATION.md` - Claude Code workflow

Happy typing and coding! 🚀
