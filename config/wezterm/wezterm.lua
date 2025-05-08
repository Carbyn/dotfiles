local wezterm = require("wezterm")

return {
	font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Regular" }),
	font_size = 14.0,
	line_height = 1,

	color_scheme = "iTerm2 Smoooooth",
	colors = {
		background = "#131313",
		foreground = "#c7c7c7",
	},
	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,

	window_background_opacity = 0.9,
	macos_window_background_blur = 10,

	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	window_decorations = "RESIZE",

	native_macos_fullscreen_mode = true,

	scrollback_lines = 10000,

	keys = {
		{
			key = "Enter",
			mods = "CMD",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "d",
			mods = "CMD",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "D",
			mods = "CMD|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "h",
			mods = "CMD",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CMD",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CMD",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CMD",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
	},

	initial_cols = 180,
	initial_rows = 60,
}
