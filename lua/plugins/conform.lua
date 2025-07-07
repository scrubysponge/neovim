return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			typescript = { "prettierd" },
			javascript = { "prettierd" },
			yaml = { "prettierd" },
			groovy = { "npm-groovy-lint" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
