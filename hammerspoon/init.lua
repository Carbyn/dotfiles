---@diagnostic disable-next-line: undefined-global
local hs = hs

require("hotkey")
require("input")

hs.window.filter.default:subscribe(hs.window.filter.windowCreated, function(win)
	if win:isStandard() then
		win:centerOnScreen()
	end
end)
