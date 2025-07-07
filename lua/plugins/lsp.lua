-- :h lspconfig-all to see list of all LSP configs
return {
	{
		"mason-org/mason.nvim",
		keys = {
			{ mode = "n", "<leader>M", "<cmd>Mason<cr>", desc = "Open Mason menu" },
		},
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
		},
	},

	"neovim/nvim-lspconfig",

	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				-- indicate linters to use here
				--
				-- markdown = { "markdownlint" },
				bash = { "shellcheck" },
				-- css = { "stylelint" },
				-- groovy = { "npm-groovy-lint" },
				typescript = { "eslint_d" },
				javascript = { "eslint_d" },
			}

			-- automatically try to lint
			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					-- runs the linters specified in linters_by_ft
					require("lint").try_lint()
				end,
			})
		end,
	},

	{
		"rshkarin/mason-nvim-lint",
		opts = {
			-- ensure_installed = {
			-- 	"markdownlint"
			-- }
		},
	},
}
