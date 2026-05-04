# Toipe Integration for Neovim

Integrated terminal typing test with multiple launch modes and presets.

## Quick Start

### Keybindings

**Launch Toipe:**
- `<Space>tt` - Horizontal split typing test
- `<Space>tv` - Vertical split typing test
- `<Space>tf` - Fullscreen typing test
- `<Space>tc` - Custom test (50 words)

**Terminal Navigation:**
- `<Esc><Esc>` - Exit terminal mode (back to normal mode)
- `<Space>to` - Open blank terminal

## Commands

You can also use Vim commands:

### Basic Commands
```vim
:Toipe          " Standard typing test
:ToipeQuick     " Quick test (25 words)
:ToipeMedium    " Medium test (50 words)
:ToipeLong      " Long test (100 words)
```

### Advanced Commands
```vim
:ToipeTimed 60  " 60-second timed test
:ToipeTimed 120 " 2-minute timed test
:ToipeCustom    " Prompt for custom options
:ToipePractice  " Multi-round practice session
```

## Usage Examples

### Quick Practice Break
1. Press `<Space>tt`
2. Complete the typing test
3. Press `<Esc><Esc>` to return
4. Press `:q` to close terminal

### Vertical Split (Side-by-Side)
1. Open your code file
2. Press `<Space>tv`
3. Practice typing while viewing your code
4. `<Esc><Esc>` and `<Ctrl-w>h` to return to code

### Custom Test
1. Run `:ToipeCustom`
2. Enter options like: `-w 100 -l english`
3. Start typing!

### Practice Session
1. Run `:ToipePractice`
2. Enter number of rounds (default 3)
3. Complete each round
4. Track your improvement!

## Toipe Options Reference

Common toipe command-line options:

- `-w <number>` - Number of words (default: 30)
- `-t <seconds>` - Time limit in seconds
- `-l <language>` - Language (english, python, rust, etc.)
- `-n <number>` - Number of letters for random words

### Example Custom Commands
```vim
:ToipeCustom
" Then enter: -w 50 -l python
" Types Python code!

:ToipeCustom
" Then enter: -t 120 -l rust
" 2-minute Rust typing test
```

## Workflows

### Warm-Up Before Coding
```vim
:ToipeQuick
```
Get your fingers warmed up with a quick 25-word test.

### Break Timer
```vim
:ToipeTimed 300
```
5-minute typing break to rest your eyes from code.

### Language-Specific Practice
```vim
:ToipeCustom
" Enter: -w 100 -l python
```
Practice typing in your current programming language.

### Speed Training
```vim
:ToipePractice
```
Multiple rounds with progress tracking.

## Terminal Tips

### Navigate Between Windows
- `<Ctrl-w>h` - Move to left window
- `<Ctrl-w>j` - Move to bottom window
- `<Ctrl-w>k` - Move to top window
- `<Ctrl-w>l` - Move to right window

### Close Terminal
1. Exit terminal mode: `<Esc><Esc>`
2. Quit terminal: `:q`

Or just: `<Esc><Esc>` then `:q`

### Resize Terminal Split
In normal mode:
- `<Ctrl-Up>` - Increase height
- `<Ctrl-Down>` - Decrease height
- `<Ctrl-Left>` - Decrease width
- `<Ctrl-Right>` - Increase width

## Integration with Coding Workflow

### Pattern 1: Warm-up
```
1. Open Neovim
2. :ToipeQuick
3. Complete test
4. Start coding with warmed-up fingers
```

### Pattern 2: Pomodoro Break
```
1. Code for 25 minutes
2. <Space>tt
3. Take 5-minute typing break
4. Return to code refreshed
```

### Pattern 3: Language Practice
```
1. Working on Python project
2. :ToipeCustom
3. Enter: -l python
4. Practice Python syntax typing
```

## Customization

### Add Your Own Presets

Edit `~/.config/nvim/lua/config/toipe.lua` to add custom functions:

```lua
function M.my_custom_test()
  M.launch({ words = 75, language = "rust" })
end
```

Then add a command in `init.lua`:

```lua
vim.api.nvim_create_user_command("ToipeRust", function()
  toipe.my_custom_test()
end, { desc = "Rust typing test" })
```

### Change Default Keybindings

Edit `~/.config/nvim/lua/config/keymaps.lua` to modify the `<leader>t*` keybindings.

## Available Languages in Toipe

- `english` - English words
- `python` - Python code
- `rust` - Rust code
- `javascript` - JavaScript code
- `c` - C code
- `csharp` - C# code
- `go` - Go code
- `java` - Java code

Check `toipe --help` for the full list!

## Tips for Typing Practice

1. **Consistency** - Practice daily, even just 5 minutes
2. **Accuracy First** - Speed comes with accuracy
3. **Use Language Mode** - Practice typing in your coding language
4. **Warm Up** - Start each coding session with a quick test
5. **Track Progress** - Use `:ToipePractice` to see improvement

## Troubleshooting

### Terminal not closing?
- Press `<Esc><Esc>` first to exit insert mode
- Then `:q` to close

### Wrong split size?
- Use `<Ctrl-w>=` to equalize all splits
- Or resize with `<Ctrl-Arrow>` keys

### Toipe not found?
```bash
brew install toipe
```

Enjoy improving your typing speed while using Neovim! 🚀⌨️
