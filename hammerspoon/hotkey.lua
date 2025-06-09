-- App Launcher
hs.hotkey.bind({ "cmd", "ctrl" }, "T", function()
	hs.application.launchOrFocus("WezTerm")
end)

-- Window
hs.hotkey.bind({ "cmd", "ctrl" }, "C", function()
	local win = hs.window.frontmostWindow()
	if not win or not win:isStandard() then
		return
	end
	win:centerOnScreen()
end)

hs.hotkey.bind({ "cmd", "ctrl" }, "F", function()
	local win = hs.window.frontmostWindow()
	if win then
		win:maximize()
	end
end)
