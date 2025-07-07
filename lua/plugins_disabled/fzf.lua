-- requires fzf to be installed
return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	keys = {
		{ mode = "n", "<leader>bl", "<cmd>FzfLua blines<cr>", desc = "fzf - Buffer lines" },
		{ mode = "n", "<leader>bl", "<cmd>FzfLua blines<cr>", desc = "fzf - Buffer lines" },
		{ mode = "n", "<leader>bg", "<cmd>FzfLua grep_curbuf<cr>", desc = "fzf - Buffer grep" },
		{ mode = "n", "<leader>f:", "<cmd>FzfLua<cr>", desc = "fzf - fzf commands" },
		{ mode = "n", "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "fzf - resume search" },
		{ mode = "n", "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "fzf - help tags" },
		{ mode = "n", "<leader>fm", "<cmd>FzfLua manpages<cr>", desc = "fzf - man pages" },
		{ mode = "n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "fzf - keymaps" },
		{ mode = "n", "<leader>ff", "<cmd>FzfLua files<cr>", desc = "fzf - files in current working directory" },
		{ mode = "n", "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "fzf - open buffers" },
		{ mode = "n", "<leader>fg", "<cmd>FzfLua live_grep_glob<cr>", desc = "fzf - grep globally" },
		{ mode = "n", "<leader>ft", "<cmd>FzfLua tabs<cr>", desc = "fzf - tabs" },
		-- requires plugins in lsp.lua
		{ mode = "n", "<leader>gsd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Search definitions" },
		{ mode = "n", "<leader>gsD", "<cmd>FzfLua lsp_declarations<cr>", desc = "Search declarations" },
		{ mode = "n", "<leader>gsi", "<cmd>FzfLua lsp_implementations<cr>", desc = "Search implementations" },
		{ mode = "n", "<leader>gsr", "<cmd>FzfLua lsp_references<cr>", desc = "Search references" },
		{ mode = "n", "<leader>gsa", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Search code actions" },
		{ mode = "n", "<leader>gsk", "<cmd>FzfLua diagnostics_document<cr>", desc = "Search diagnostics" },
		{ mode = "n", "<leader>gsK", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Search diagnostics (workspace)" },
	},
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
			},
		},
	},
}
