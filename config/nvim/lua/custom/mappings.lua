---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- show current time
    ["<leader>tt"] = {
      function()
        print(vim.fn.strftime("%Y-%m-%d %H:%M"))
      end,
      "Show current time",
    },

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
