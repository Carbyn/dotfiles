local fold_group = vim.api.nvim_create_augroup("RememberFolds", { clear = true })

vim.api.nvim_create_autocmd("BufWinLeave", {
	group = fold_group,
	pattern = "?*",
	callback = function()
		vim.cmd("mkview")
	end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	group = fold_group,
	pattern = "*",
	callback = function()
		vim.cmd("silent! loadview")
	end,
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
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})

-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup#always-open-nvim-tree
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function(data)
		if vim.fn.isdirectory(data.file) == 1 then
			require("nvim-tree.api").tree.open()
		end
	end,
})
