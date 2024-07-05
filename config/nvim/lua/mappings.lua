require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>i", function()
	require("nvchad.term").new({ pos = "float" })
end, { desc = "terminal new float term" })
