return {
	"folke/flash.nvim",
	event = "VeryLazy",

	opts = {
		search = { multi_window = false },
		jump = { nohlsearch = true },
		-- label = { rainbow = { enabled = true, shade = 7 } }
	},

	keys = {
		{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
		{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
		{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" }
	}
}
