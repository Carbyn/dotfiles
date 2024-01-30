local opt = vim.opt
local g = vim.g

g.toggle_theme_icon = ""

opt.clipboard = ""

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.listchars = "trail:"
opt.list = true

opt.ignorecase = false
opt.mouse = ""

opt.foldmethod = "indent"
opt.foldlevel = 1
opt.foldlevelstart = 99

vim.cmd [[
  augroup RememberFolds
    autocmd!
    autocmd BufWinLeave ?* mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
]]


vim.cmd [[
  augroup FileTypeSpecificTabs
    autocmd!
    autocmd FileType lua,vim,json,html,javascript,css set tabstop=2
    autocmd FileType lua,vim,json,html,javascript,css set softtabstop=2
    autocmd FileType lua,vim,json,html,javascript,css set shiftwidth=2
  augroup END
]]

vim.cmd [[
  autocmd BufWritePre * :%s/\s\+$//e
]]
