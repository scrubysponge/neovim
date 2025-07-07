-- NOTE: neovim treesitter is experimental
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
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
