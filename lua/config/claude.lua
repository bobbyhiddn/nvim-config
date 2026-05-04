-- Claude Code Integration for Neovim
-- Launch Claude Code CLI in terminal splits

local M = {}

-- Launch Claude Code in a split
function M.launch(opts)
  opts = opts or {}

  local cmd = "claude"

  -- Choose split type
  if opts.fullscreen then
    vim.cmd("terminal " .. cmd)
  elseif opts.vsplit then
    vim.cmd("vsplit | terminal " .. cmd)
  else
    -- Default: horizontal split
    vim.cmd("split | terminal " .. cmd)
  end

  vim.cmd("startinsert")
end

-- Quick launchers
function M.horizontal()
  M.launch({ fullscreen = false, vsplit = false })
end

function M.vertical()
  M.launch({ vsplit = true })
end

function M.fullscreen()
  M.launch({ fullscreen = true })
end

-- Launch Claude Code with a specific prompt
function M.with_prompt(prompt)
  vim.cmd("split | terminal claude")
  vim.cmd("startinsert")
  -- Note: User will need to type the prompt after Claude starts
end

-- Ask Claude about current file
function M.ask_about_current_file()
  local filepath = vim.fn.expand("%:p")
  local filename = vim.fn.expand("%:t")

  if filepath == "" then
    vim.notify("No file open in current buffer", vim.log.levels.WARN)
    return
  end

  vim.cmd("split | terminal claude")
  vim.cmd("startinsert")
  vim.notify("Claude Code opened. Ask about: " .. filename, vim.log.levels.INFO)
end

-- Open Claude Code in a larger split (for better readability)
function M.large_split()
  vim.cmd("split | terminal claude")
  vim.cmd("resize 30")  -- 30 lines tall
  vim.cmd("startinsert")
end

-- Open Claude Code in vertical split (side-by-side with code)
function M.side_by_side()
  vim.cmd("vsplit | terminal claude")
  vim.cmd("vertical resize 80")  -- 80 columns wide
  vim.cmd("startinsert")
end

return M
