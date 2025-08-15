local M = {}

local chineseAppList = {
	"ChatGPT",
	"iPhone Mirroring",
	"Music",
	"Notes",
	"QQ",
	"Safari",
	"WeChat",
	"富途牛牛",
	"豆包",
	"抖音",
	"小红书",
}

local inputMethod = {
	english = "com.apple.keylayout.US",
	chinese = "com.apple.inputmethod.SCIM.ITABC",
}

local function switchInputTo(sourceId)
	local current = hs.keycodes.currentSourceID()
	if current ~= sourceId then
		hs.keycodes.currentSourceID(sourceId)
	end
end

local wf = hs.window.filter.new()
wf:subscribe(hs.window.filter.windowFocused, function(win, appName)
	if hs.fnutils.contains(chineseAppList, appName) then
		switchInputTo(inputMethod.chinese)
	else
		switchInputTo(inputMethod.english)
	end
end)

return M
