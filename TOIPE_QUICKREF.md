# Toipe Quick Reference

## Keybindings (Fastest Way)

| Key | Action |
|-----|--------|
| `<Space>tt` | Horizontal split typing test |
| `<Space>tv` | Vertical split typing test |
| `<Space>tf` | Fullscreen typing test |
| `<Space>tc` | Custom test (50 words) |
| `<Space>to` | Open terminal |
| `<Esc><Esc>` | Exit terminal mode |

## Commands (Most Flexible)

| Command | Description |
|---------|-------------|
| `:Toipe` | Standard test |
| `:ToipeQuick` | 25 words |
| `:ToipeMedium` | 50 words |
| `:ToipeLong` | 100 words |
| `:ToipeTimed 60` | 60-second test |
| `:ToipeCustom` | Enter custom options |
| `:ToipePractice` | Multiple rounds |

## Common Workflows

**Quick warm-up before coding:**
```
<Space>tt → type → <Esc><Esc> → :q
```

**Side-by-side practice:**
```
<Space>tv → practice while viewing code
```

**Language-specific practice:**
```
:ToipeCustom → enter: -l python
```

## Custom Options Examples

When using `:ToipeCustom`, try:
- `-w 100` - 100 words
- `-l python` - Python code
- `-l rust` - Rust code
- `-t 120` - 2-minute timer
- `-w 50 -l javascript` - 50 words of JS

See `TOIPE_INTEGRATION.md` for full documentation.
