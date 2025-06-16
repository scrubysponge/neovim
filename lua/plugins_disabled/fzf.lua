-- requires fzf to be installed
return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {
		keymap = {
			fzf = {
				true, -- uncomment to inherit all the below in your custom config
				["ctrl-z"] = "abort",
				["ctrl-]"] = "unix-line-discard",
				["ctrl-f"] = "half-page-down",
				["ctrl-b"] = "half-page-up",
				["ctrl-a"] = "beginning-of-line",
				["ctrl-e"] = "end-of-line",
				["alt-a"] = "toggle-all",
				["alt-g"] = "first",
				["alt-G"] = "last",
				-- Only valid with fzf previewers (bat/cat/git/etc)
				["f3"] = "toggle-preview-wrap",
				["f4"] = "toggle-preview",
				["shift-down"] = "preview-page-down",
				["shift-up"] = "preview-page-up",
			}
		}
	},
}
