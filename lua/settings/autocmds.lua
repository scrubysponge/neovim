local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- highlight on yank
local yank_grp = augroup("Yank", { clear = true })
autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = yank_grp,
	callback = function() vim.hl.on_yank() end,
})

-- open help files in vertical split
local help_grp = augroup("Help", { clear = true })
autocmd("FileType", {
	desc = "Open help in vertical split",
	pattern = { "help", "man" },
	group = help_grp,
	callback = function() vim.cmd("wincmd L") end
})

