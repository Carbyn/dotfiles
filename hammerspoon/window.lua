local M = {}

M.TOPBAR_HEIGHT = 26

M.centerWindow = function(win)
	if win:isStandard() then
		win:centerOnScreen()
	end
end

-- Automatically center new windows on the screen when they are created
hs.window.filter.default:subscribe(hs.window.filter.windowCreated, function(win)
	hs.timer.doAfter(0.2, function()
		M.centerWindow(win)
	end)
end)

local function getUsableFrame(screen)
	local frame = screen:frame()
	frame.y = frame.y + M.TOPBAR_HEIGHT
	frame.h = frame.h - M.TOPBAR_HEIGHT
	return frame
end

M.adjustWindow = function(win)
	if not win:isStandard() then
		return
	end

	local screen = win:screen()
	local maxFrame = getUsableFrame(screen)
	local f = win:frame()

	local changed = false

	if f.y < maxFrame.y then
		f.y = maxFrame.y
		changed = true
	end
	if f.y + f.h > maxFrame.y + maxFrame.h then
		f.h = maxFrame.h - (f.y - maxFrame.y)
		changed = true
	end

	if changed then
		win:setFrame(f)
	end
end

-- Prevent windows from covering the SketchyBar
local wf = hs.window.filter.new(true)
wf:subscribe({
	"windowMoved",
	-- "windowCreated",
	"windowUnfullscreened",
	"windowFullscreened",
	"windowFocused",
}, function(win, name, event)
	hs.timer.doAfter(0.2, function()
		M.adjustWindow(win)
	end)
end)

return M
