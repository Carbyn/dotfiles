-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local ui = require "ui"

M.base46 = {
  theme = "nimbus",
  transparency = true,
  hl_add = {
    TabLineFill = ui.hl_groups.TabLineFill,
    NvimTreeHeader = ui.hl_groups.NvimTreeHeader,
    St_Clock = ui.hl_groups.St_Clock,
  },
}

M.ui = {
  tabufline = {
    order = { "tree_header", "buffers" },
    modules = { tree_header = ui.tree_header },
  },
  statusline = {
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor", "clock" },
    modules = { clock = ui.clock },
  },
}

M.nvdash = { load_on_startup = false }

return M
