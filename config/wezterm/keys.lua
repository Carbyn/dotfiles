local wezterm = require("wezterm")

return {
	{
		key = ",",
		mods = "SUPER",
		action = wezterm.action.SpawnCommandInNewTab({ args = { "/opt/homebrew/bin/nvim", wezterm.config_file } }),
	},

	{ key = "Enter", mods = "SUPER", action = wezterm.action.ToggleFullScreen },

	{ key = "u", mods = "SUPER", action = wezterm.action.EmitEvent("toggle-opacity") },

	{ key = "d", mods = "SUPER", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "D", mods = "SUPER|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },

	{ key = "h", mods = "SUPER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "l", mods = "SUPER", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "k", mods = "SUPER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "j", mods = "SUPER", action = wezterm.action.ActivatePaneDirection("Down") },
}
