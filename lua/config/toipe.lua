-- Toipe Integration for Neovim
-- Terminal-based typing test integration

local M = {}

-- Check if toipe is installed
function M.is_installed()
  return vim.fn.executable("toipe") == 1
end

-- Launch toipe with custom options
function M.launch(opts)
  opts = opts or {}

  -- Check if toipe is installed
  if not M.is_installed() then
    vim.notify(
      "Toipe is not installed. Install with: brew install toipe (macOS) or cargo install toipe",
      vim.log.levels.WARN
    )
    return
  end

  local cmd = "toipe"

  -- Build command with options
  if opts.words then
    cmd = cmd .. " -w " .. opts.words
  end

  if opts.time then
    cmd = cmd .. " -t " .. opts.time
  end

  if opts.language then
    cmd = cmd .. " -l " .. opts.language
  end

  -- Choose split type
  local split_cmd = opts.fullscreen and "terminal" or (opts.vsplit and "vsplit | terminal" or "split | terminal")

  -- Execute
  vim.cmd(split_cmd .. " " .. cmd)
  vim.cmd("startinsert")
end

-- Quick presets
function M.quick_test()
  M.launch({ words = 25 })
end

function M.medium_test()
  M.launch({ words = 50 })
end

function M.long_test()
  M.launch({ words = 100 })
end

function M.timed_test(seconds)
  M.launch({ time = seconds or 60 })
end

-- Practice session (multiple rounds)
function M.practice_session()
  vim.ui.input({ prompt = "Number of rounds (default 3): " }, function(input)
    local rounds = tonumber(input) or 3
    vim.notify("Starting " .. rounds .. " round practice session!", vim.log.levels.INFO)

    for i = 1, rounds do
      vim.defer_fn(function()
        vim.notify("Round " .. i .. " of " .. rounds, vim.log.levels.INFO)
        M.launch({ words = 30 })
      end, (i - 1) * 100)
    end
  end)
end

-- Custom toipe with user input
function M.custom()
  vim.ui.input({ prompt = "Toipe options (e.g., '-w 50 -l english'): " }, function(input)
    if input and input ~= "" then
      vim.cmd("split | terminal toipe " .. input)
      vim.cmd("startinsert")
    end
  end)
end

return M
