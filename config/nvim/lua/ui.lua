local M = {}

M.treeHeader = function()
  if not require("nvim-tree.api").tree.is_visible() then
    return ""
  end

  local header = "EXPLORER"
  local tree_width = 30
  local pos = "left" -- "left|center"
  local left_padding = pos == "left" and 2 or math.floor((tree_width - #header) / 2)
  local right_padding = tree_width - left_padding - #header
  header = "%#NvimTreeHeader#"
    .. string.rep(" ", left_padding)
    .. header
    .. string.rep(" ", right_padding)
    .. "%#NvimTreeWinSeparator#"
    .. "│"
  return header
end

M.clock = function()
  return "%#St_Clock#" .. os.date " %H:%M "
end

M.toggle_transparency = function()
  local opts = require("nvconfig").base46
  local colors = dofile(vim.g.base46_cache .. "colors")
  if opts.transparency then
    vim.api.nvim_set_hl(0, "NvimTreeHeader", { bg = "NONE", fg = colors.white, bold = true })
  else
    vim.api.nvim_set_hl(0, "NvimTreeHeader", { bg = colors.darker_black, fg = colors.white, bold = true })
  end
end

local timer = vim.loop.new_timer()
if timer ~= nil then
  timer:start(
    0,
    1000,
    vim.schedule_wrap(function()
      vim.cmd "redrawstatus"
    end)
  )
end

return M
