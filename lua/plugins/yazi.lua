---@type LazySpec
return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = {},

	keys = {
		-- 👇 in this section, choose your own keymappings!
		{
			"\\",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<leader>cw",
			mode = { "n", "x" },
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		{
			"<m-m>",
			"<cmd>Yazi toggle<cr>",
			desc = "Resume the last yazi session",
		},
	},

	---@type YaziConfig | {}
	opts = {
		-- if you want to open yazi instead of netrw, see below for more info
		open_for_directories = true,
		keymaps = {
			show_help = "~",
			cycle_open_buffers = "<f2>",
			open_file_in_vertical_split = "<c-s>",
			grep_in_directory = "<c-f>",
		},
	},

	-- 👇 if you use `open_for_directories=true`, this is recommended
	-- init = function()
	-- 	-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
	-- 	-- vim.g.loaded_netrw = 1
	-- 	vim.g.loaded_netrwPlugin = 1
	-- end,
}
