-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local custom = require "custom"

M.base46 = {
  theme = "nimbus",
  transparency = true,
  hl_add = {
    TabLineFill = { bg = "NONE" },
  },
}

M.ui = {
  tabufline = {
    order = { "treeHeader", "buffers" },
    modules = { treeHeader = custom.treeHeader },
  },
}

M.nvdash = { load_on_startup = false }

return M
