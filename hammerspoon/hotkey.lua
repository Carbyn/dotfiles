---@diagnostic disable-next-line: undefined-global
local hs = hs

local M = {}

hs.hotkey.bind({ "ctrl", "cmd" }, "T", function()
	hs.application.launchOrFocus("WezTerm")
end)

return M
