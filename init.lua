-- Neovim Configuration
-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8

-- Auto-reload files changed outside Neovim (useful for Claude Code integration)
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  pattern = "*",
  command = "checktime",
})

-- Auto-launch toipe when opening nvim with no arguments
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Only run if no files were opened and buffer is empty
    if vim.fn.argc() == 0 and vim.fn.line('$') == 1 and vim.fn.getline(1) == '' then
      vim.cmd("terminal toipe")
      vim.cmd("startinsert")
      -- Mark this buffer as the ephemeral toipe buffer
      vim.b.is_ephemeral_toipe = true
    end
  end,
})

-- Auto-close ephemeral toipe when opening other windows
vim.api.nvim_create_autocmd({ "WinNew", "BufWinEnter" }, {
  callback = function()
    -- Find and close any ephemeral toipe buffers
    for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_valid(bufnr) then
        local ok, is_ephemeral = pcall(vim.api.nvim_buf_get_var, bufnr, "is_ephemeral_toipe")
        if ok and is_ephemeral then
          -- Find windows showing this buffer and close them
          for _, winid in ipairs(vim.fn.win_findbuf(bufnr)) do
            if vim.api.nvim_win_is_valid(winid) and vim.api.nvim_get_current_win() ~= winid then
              vim.api.nvim_win_close(winid, true)
            end
          end
        end
      end
    end
  end,
})

-- Load plugins
require("config.plugins")
require("config.keymaps")

-- Load toipe integration
local toipe = require("config.toipe")

-- Create user commands for toipe
vim.api.nvim_create_user_command("Toipe", function()
  toipe.launch({})
end, { desc = "Start Toipe typing test" })

vim.api.nvim_create_user_command("ToipeQuick", function()
  toipe.quick_test()
end, { desc = "Quick toipe test (25 words)" })

vim.api.nvim_create_user_command("ToipeMedium", function()
  toipe.medium_test()
end, { desc = "Medium toipe test (50 words)" })

vim.api.nvim_create_user_command("ToipeLong", function()
  toipe.long_test()
end, { desc = "Long toipe test (100 words)" })

vim.api.nvim_create_user_command("ToipeTimed", function(opts)
  local seconds = tonumber(opts.args) or 60
  toipe.timed_test(seconds)
end, { nargs = "?", desc = "Timed toipe test (default 60s)" })

vim.api.nvim_create_user_command("ToipeCustom", function()
  toipe.custom()
end, { desc = "Custom toipe with user options" })

vim.api.nvim_create_user_command("ToipePractice", function()
  toipe.practice_session()
end, { desc = "Toipe practice session (multiple rounds)" })

-- Load Claude Code integration
local claude = require("config.claude")

-- Create user commands for Claude Code
vim.api.nvim_create_user_command("Claude", function()
  claude.horizontal()
end, { desc = "Open Claude Code in horizontal split" })

vim.api.nvim_create_user_command("ClaudeVertical", function()
  claude.vertical()
end, { desc = "Open Claude Code in vertical split" })

vim.api.nvim_create_user_command("ClaudeFullscreen", function()
  claude.fullscreen()
end, { desc = "Open Claude Code fullscreen" })

vim.api.nvim_create_user_command("ClaudeSideBySide", function()
  claude.side_by_side()
end, { desc = "Open Claude Code side-by-side (80 cols)" })

vim.api.nvim_create_user_command("ClaudeLarge", function()
  claude.large_split()
end, { desc = "Open Claude Code in large split (30 lines)" })

vim.api.nvim_create_user_command("ClaudeAsk", function()
  claude.ask_about_current_file()
end, { desc = "Ask Claude Code about current file" })
