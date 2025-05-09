local wezterm = require("wezterm")

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
	options = {
		theme = "Catppuccin Mocha",
	},
	sections = {
		tabline_b = {},
		tabline_y = { "datetime" },
		tabline_z = {},
	},
})
