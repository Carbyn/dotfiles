require("nvchad.configs.lspconfig").defaults()

local servers = { "bashls", "lua_ls", "pyright" }
vim.lsp.enable(servers)

vim.lsp.config("bashls", {
	filetypes = { "sh", "bash", "zsh" },
})
