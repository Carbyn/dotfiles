-- App Launcher
hs.hotkey.bind({ "cmd", "ctrl" }, "C", function()
	hs.application.launchOrFocus("ChatGPT")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "F", function()
	hs.application.launchOrFocus("Finder")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "M", function()
	hs.application.launchOrFocus("Music")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "N", function()
	hs.application.launchOrFocus("富途牛牛")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "S", function()
	hs.application.launchOrFocus("Safari")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "T", function()
	hs.application.launchOrFocus("WezTerm")
end)

-- Window
hs.hotkey.bind({ "cmd", "shift" }, "C", function()
	local win = hs.window.frontmostWindow()
	if not win or not win:isStandard() then
		return
	end
	win:centerOnScreen()
end)

hs.hotkey.bind({ "cmd", "shift" }, "F", function()
	local win = hs.window.frontmostWindow()
	if win then
		win:maximize()
	end
end)
