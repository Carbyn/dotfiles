local M = {}

local chineseAppList = {
	"ChatGPT",
	"iPhone Mirroring",
	"Music",
	"Notes",
	"QQ",
	"Safari",
	"WeChat",
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
