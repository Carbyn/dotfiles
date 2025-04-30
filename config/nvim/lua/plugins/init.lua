return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"bash-language-server",
				"lua-language-server",
				"mdformat",
				"prettier",
				"pyright",
				"shfmt",
				"stylua",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"vim",
				"vimdoc",
			},
		},
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { ignore = false },
			filters = {
				custom = {
					".DS_Store",
					"__pycache__",
					"*.log",
					"\\.log\\..*",
				},
			},
		},
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup()
		end,
		event = "BufReadPost",
	},
}
