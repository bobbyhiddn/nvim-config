-- Keymaps Configuration
local keymap = vim.keymap.set

-- File explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })

-- Telescope fuzzy finder
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" })
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Recent files" })

-- Buffer navigation
keymap("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Window resizing
keymap("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase window height" })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Split windows
keymap("n", "<leader>sv", ":vsplit<CR>", { desc = "Split vertical" })
keymap("n", "<leader>sh", ":split<CR>", { desc = "Split horizontal" })

-- Save and quit
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("n", "<leader>Q", ":qa!<CR>", { desc = "Quit all without saving" })

-- Better indenting
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Clear search highlight
keymap("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- LSP keymaps
keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
keymap("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
keymap("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
keymap("n", "<leader>f", vim.lsp.buf.format, { desc = "Format document" })

-- Diagnostic keymaps
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })

-- Git (gitsigns)
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame line" })

-- Trouble (diagnostics viewer)
keymap("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Toggle diagnostics" })
keymap("n", "<leader>xw", ":Trouble workspace_diagnostics<CR>", { desc = "Workspace diagnostics" })
keymap("n", "<leader>xd", ":Trouble document_diagnostics<CR>", { desc = "Document diagnostics" })
keymap("n", "<leader>xl", ":Trouble loclist<CR>", { desc = "Location list" })
keymap("n", "<leader>xq", ":Trouble quickfix<CR>", { desc = "Quickfix list" })

-- Terminal and Toipe
keymap("n", "<leader>tt", function()
  vim.cmd("split | terminal toipe")
  vim.cmd("startinsert")
end, { desc = "Toipe typing test" })

keymap("n", "<leader>tv", function()
  vim.cmd("vsplit | terminal toipe")
  vim.cmd("startinsert")
end, { desc = "Toipe typing test (vertical)" })

keymap("n", "<leader>tf", function()
  vim.cmd("terminal toipe")
  vim.cmd("startinsert")
end, { desc = "Toipe typing test (fullscreen)" })

keymap("n", "<leader>tc", function()
  vim.cmd("split | terminal toipe -w 50")
  vim.cmd("startinsert")
end, { desc = "Toipe custom (50 words)" })

keymap("n", "<leader>to", ":split | terminal ", { desc = "Open terminal" })

-- Terminal mode escape
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Claude Code integration
keymap("n", "<leader>cc", function()
  require("config.claude").horizontal()
end, { desc = "Claude Code horizontal split" })

keymap("n", "<leader>cv", function()
  require("config.claude").vertical()
end, { desc = "Claude Code vertical split" })

keymap("n", "<leader>cf", function()
  require("config.claude").fullscreen()
end, { desc = "Claude Code fullscreen" })

keymap("n", "<leader>cs", function()
  require("config.claude").side_by_side()
end, { desc = "Claude Code side-by-side (80 cols)" })

keymap("n", "<leader>cl", function()
  require("config.claude").large_split()
end, { desc = "Claude Code large split (30 lines)" })

keymap("n", "<leader>ca", function()
  require("config.claude").ask_about_current_file()
end, { desc = "Claude Code - ask about current file" })
