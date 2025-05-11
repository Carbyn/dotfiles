local wezterm = require("wezterm")
local keys = require("keys")

local config = {
	font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Regular" }),
	font_size = 14.0,
	line_height = 1.1,

	color_scheme = "iTerm2 Smoooooth",
	colors = {
		background = "#131313",
		foreground = "#c7c7c7",

		tab_bar = {
			background = "rgba(50,50,50,0.6)",
			active_tab = {
				bg_color = "rgba(19,19,19,0.90)",
				fg_color = "#ffffff",
			},
			inactive_tab = {
				bg_color = "rgba(50,50,50,0.6)",
				fg_color = "#a6a6a6",
			},
			new_tab = {
				bg_color = "rgba(50,50,50,0.6)",
				fg_color = "#ffffff",
			},
		},
	},

	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	show_new_tab_button_in_tab_bar = true,
	tab_max_width = 999,

	window_background_opacity = 0.9,
	macos_window_background_blur = 10,
	native_macos_fullscreen_mode = true,
	window_close_confirmation = "NeverPrompt",

	window_padding = { left = 5, right = 5, top = 0, bottom = 0 },
	window_decorations = "RESIZE",

	initial_cols = 168,
	initial_rows = 48,

	scrollback_lines = 10000,

	keys = keys,
}

require("event")

return config
