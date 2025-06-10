require("hotkey")
require("input")
local window = require("window")

-- open "hammerspoon://center_window"
hs.urlevent.bind("center_window", function()
	local win = hs.window.frontmostWindow()
	window.centerWindow(win)
end)
