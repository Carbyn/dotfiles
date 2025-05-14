-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local ui = require "ui"

M.base46 = {
  theme = "nimbus",
  transparency = true,
  hl_add = {
    TabLineFill = { bg = "NONE" },
    NvimTreeHeader = { bg = "NONE", fg = "white", bold = true },
    St_Clock = { bg = "nord_blue", fg = "black", bold = true },
  },
}

M.ui = {
  tabufline = {
    order = { "treeHeader", "buffers" },
    modules = { treeHeader = ui.treeHeader },
  },
  statusline = {
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor", "clock" },
    modules = { clock = ui.clock },
  },
}

M.nvdash = { load_on_startup = false }

return M
