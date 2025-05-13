local M = {}

M.treeHeader = function()
  if not require("nvim-tree.api").tree.is_visible() then
    return ""
  end

  local header = "Explorer"
  local tree_width = 30
  local left_padding = math.floor((tree_width - #header) / 2)
  local right_padding = tree_width - left_padding - #header
  header = "%#NvimTreeNormal#"
    .. string.rep(" ", left_padding)
    .. header
    .. string.rep(" ", right_padding)
    .. "%#NvimTreeWinSeparator#"
    .. "│"
  return header
end

return M
