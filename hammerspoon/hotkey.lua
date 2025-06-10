-- Reload config
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "R", function()
	hs.reload()
end)
hs.alert.show("HS Config Reloaded")

-- Window
hs.hotkey.bind({ "cmd", "ctrl", "shift" }, "C", function()
	local win = hs.window.frontmostWindow()
	if win and win:isStandard() then
		win:centerOnScreen()
	end
end)

hs.hotkey.bind({ "cmd", "ctrl", "shift" }, "F", function()
	local win = hs.window.frontmostWindow()
	if win then
		win:maximize()
	end
end)

-- App Launcher
hs.hotkey.bind({ "ctrl" }, "space", function()
	hs.application.launchOrFocus("ChatGPT")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "C", function()
	hs.application.launchOrFocus("ChatGPT")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "F", function()
	hs.application.launchOrFocus("Finder")
end)
hs.hotkey.bind({ "cmd", "ctrl" }, "I", function()
	hs.application.launchOrFocus("iTerm")
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
