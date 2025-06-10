return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			-- transparent_background = true,

			styles = {
				comments = { "nocombine" },
			},

			color_overrides = {
				mocha = {
					lavender = "#f558d3",
					base = "#1e1e2e"
				},
			},

			default_integrations = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
