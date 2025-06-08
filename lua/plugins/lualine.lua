return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		sections = {
			lualine_x = {},
			lualine_y = {  "filetype" },
			lualine_z = { "lsp_status" }
		},
		-- tabline = {
		-- 	lualine_c = { "tabs" },
		-- 	lualine_x = { "filetype" }
		-- },
	}
}
