local M = {}

local vpnName = "Shadowrocket"
local targetApp = "迅雷"

local function disconnectVPN()
	hs.task.new("/usr/sbin/networksetup", nil, { "-disconnectpppoeservice", vpnName }):start()
	hs.alert("VPN Disconnected")
end

local function connectVPN()
	hs.task.new("/usr/sbin/networksetup", nil, { "-connectpppoeservice", vpnName }):start()
	hs.alert("VPN Connected")
end

M.appWatcher = hs.application.watcher.new(function(appName, eventType, appObject)
	if appName ~= targetApp then
		return
	end

	if eventType == hs.application.watcher.launched then
		disconnectVPN()
	elseif eventType == hs.application.watcher.terminated then
		connectVPN()
	end
end)

M.appWatcher:start()

return M
