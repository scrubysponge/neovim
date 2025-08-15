-- NOTE: switch to main branch when ready
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	event = "BufReadPre",

	-- nvim-treesitter requires config instead of opts
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
			highlight = { enable = true },
			incremental_selection = { enable = true },
		})
	end,
}
