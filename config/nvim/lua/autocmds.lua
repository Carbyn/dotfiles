local fold_group = vim.api.nvim_create_augroup("RememberFolds", { clear = true })
vim.api.nvim_create_autocmd("BufWinLeave", {
  group = fold_group,
  pattern = "?*",
  callback = function()
    vim.cmd "mkview"
  end,
  desc = "Make folds view",
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = fold_group,
  pattern = "*",
  callback = function()
    vim.cmd "silent! loadview"
  end,
  desc = "Load folds view",
})

local tab_group = vim.api.nvim_create_augroup("FileTypeSpecificTabs", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = tab_group,
  pattern = { "lua", "vim", "json", "html", "javascript", "css" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
  desc = "Set ts,sts,sw in specified file types",
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd [[%s/\s\+$//e]]
  end,
  desc = "Trim trailing spaces",
})

-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup#always-open-nvim-tree
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function(data)
    local is_dir = vim.fn.isdirectory(data.file) == 1
    if is_dir then
      require("nvim-tree.api").tree.open()
      return
    end

    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
    if no_name then
      vim.cmd "Nvdash"
    end
  end,
  desc = "Open nvim-tree when path is a dir.\n Show Nvdash when no name file opened",
})

vim.api.nvim_create_autocmd({ "VimEnter", "VimResized" }, {
  callback = function()
    require("ui").toggle_transparency(true)
  end,
  desc = "Toggle transparency automatically",
})
