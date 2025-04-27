local M = {}

M.base_30 = {
	white = "#cacaca",
	darker_black = "#1e2026",
	black = "#212329",
	black2 = "#24262c",
	one_bg = "#282c34",
	one_bg2 = "#353b45",
	one_bg3 = "#373b43",
	grey = "#42464e",
	grey_fg = "#565c64",
	grey_fg2 = "#6f737b",
	light_grey = "#6f737b",

	red = "#ff4f79",
	baby_pink = "#ff8a8a",
	pink = "#eb4691",
	line = "#292e32",
	green = "#b3e896",
	vibrant_green = "#7eca9c",
	nord_blue = "#81a1c1",
	blue = "#86c9ff",
	yellow = "#fcde78",
	sun = "#ebcb8b",
	purple = "#da8cf7",
	dark_purple = "#c882e7",
	teal = "#519aba",
	orange = "#ffb35c",
	cyan = "#73fafd",

	statusline_bg = "#22262e",
	lightbg = "#2d3139",
	pmenu_bg = "#61afef",
	folder_bg = "#61afef",
}

M.base_16 = {
	base00 = "#1b1d23",
	base01 = "#353b45",
	base02 = "#3e4451",
	base03 = "#545862",
	base04 = "#565c64",
	base05 = "#abb2bf",
	base06 = "#b6bdca",
	base07 = "#c8ccd4",
	base08 = "#ff4f79",
	base09 = "#ffb35c",
	base0A = "#fcde78",
	base0B = "#b3e896",
	base0C = "#73fafd",
	base0D = "#86c9ff",
	base0E = "#da8cf7",
	base0F = "#eb4691",
}

M.type = "dark"

M = require("base46").override_theme(M, "nimbus")

return M
