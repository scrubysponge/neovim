return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		chunk = {
			enable = true,
			duration = 50,
			delay = 1,
		},
		indent = { enable = true },
	}
}
