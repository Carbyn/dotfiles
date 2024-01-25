-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.listchars = "trail:"
vim.opt.list = true

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 1
vim.opt.foldlevelstart = 99

vim.cmd [[
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave ?* mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
]]

vim.cmd [[ 
  autocmd BufWritePre * :%s/\s\+$//e 
]]

