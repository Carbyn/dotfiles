local wezterm = require("wezterm")
local keys = require("keys")

local bg = "#151515"
local fg = "#cacaca"
local tab_bg = "rgba(50,50,50,0.6)"
local active_tab_bg = "rgba(19,19,19,0.9)"
local inactive_tab_fg = "#6f737b"

local config = {
	-- font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Regular" }),
	font = wezterm.font_with_fallback({
		{ family = "FiraMono Nerd Font Mono", weight = "Regular" },
		"Apple Symbols",
	}),
	font_size = 14.0,
	line_height = 1.0,

	color_scheme = "iTerm2 Smoooooth",
	colors = {
		background = bg,
		foreground = fg,
		tab_bar = {
			background = tab_bg,
			active_tab = {
				bg_color = active_tab_bg,
				fg_color = fg,
			},
			inactive_tab = {
				bg_color = tab_bg,
				fg_color = inactive_tab_fg,
			},
			new_tab = {
				bg_color = tab_bg,
				fg_color = fg,
			},
		},
	},

	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	show_new_tab_button_in_tab_bar = true,
	tab_max_width = 999,

	window_background_opacity = 0.8,
	macos_window_background_blur = 20,
	native_macos_fullscreen_mode = true,
	window_close_confirmation = "NeverPrompt",

	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
	window_decorations = "RESIZE",

	initial_cols = 168,
	initial_rows = 48,

	scrollback_lines = 10000,

	keys = keys,
}

require("event")

return config
