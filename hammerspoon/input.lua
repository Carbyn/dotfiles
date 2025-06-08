local M = {}

local chineseAppList = {
	"ChatGPT",
	"Music",
	"Notes",
	"QQ",
	"Safari",
	"WeChat",
	"富途牛牛",
	"小红书",
	"抖音",
	"豆包",
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

M.appWatcher = hs.application.watcher.new(function(appName, eventType, appObject)
	if eventType == hs.application.watcher.activated then
		if hs.fnutils.contains(chineseAppList, appName) then
			switchInputTo(inputMethod.chinese)
		else
			switchInputTo(inputMethod.english)
		end
	end
end)

M.appWatcher:start()

return M
