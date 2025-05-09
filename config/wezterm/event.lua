local wezterm = require("wezterm")

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = "[" .. (tab.tab_index + 1) .. "] " .. tab.active_pane.title
	local width = #title
	local pad = math.max(0, (max_width - width) // 2)
	return string.rep(" ", pad) .. title .. string.rep(" ", pad)
end)

local opaque = 1.0
local transparent = 0.9
local is_transparent = true

wezterm.on("toggle-opacity", function(window, pane)
	is_transparent = not is_transparent
	local overrides = window:get_config_overrides() or {}

	if is_transparent then
		overrides.window_background_opacity = transparent
	else
		overrides.window_background_opacity = opaque
	end

	window:set_config_overrides(overrides)
end)
