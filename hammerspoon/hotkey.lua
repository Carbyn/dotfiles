local window = require("window")

hs.hotkey.bind({ "cmd", "ctrl" }, "T", function()
	hs.application.launchOrFocus("WezTerm")
end)

hs.hotkey.bind({ "cmd", "ctrl", "alt" }, "C", function()
	local win = hs.window.frontmostWindow()
	if not win or not win:isStandard() then
		return
	end
	win:centerOnScreen()
end)

hs.hotkey.bind({ "cmd", "ctrl", "alt" }, "R", function()
	local win = hs.window.focusedWindow()
	if win then
		window.adjustWindow(win)
	end
end)
