return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		picker = { enabled = true },
		lazygit = { enabled = true },
	},

	keys = {
		-- pickers
		{ "<leader>:", function() Snacks.picker.pickers() end, desc = "snacks - list all pickers" },
		{ "<leader>\\", function() Snacks.picker.files({ hidden = true }) end, desc = "find files" },
		{ "<leader>,", function() Snacks.picker.buffers() end, desc = "buffers" },
		{ "<leader>.", function() Snacks.picker.resume() end, desc = "snacks - resume search" },

		-- search buffer/workspace
		{ "<leader>bl", function() Snacks.picker.lines() end, desc = "buffer lines" },
		{ "<leader>bg", function() Snacks.picker.grep_buffers() end, desc = "grep buffers" },
		{ "<leader>gg", function() Snacks.picker.grep() end, desc = "grep globally" },

		-- search resources
		{ "<leader>fh", function() Snacks.picker.help() end, desc = "help pages" },
		{ "<leader>fm", function() Snacks.picker.man() end, desc = "man pages" },
		{ "<leader>fk", function() Snacks.picker.keymaps() end, desc = "search keymaps" },

		-- lsp
		{ "<leader>gk", function() Snacks.picker.diagnostics_buffer() end, desc = "search diagnostics" },
		{ "<leader>gK", function() Snacks.picker.diagnostics() end, desc = "search diagnostics in workspace" },
		{ "<leader>gd", function() Snacks.picker.lsp_definitions() end, desc = "goto definition" },
		{ "<leader>gD", function() Snacks.picker.lsp_declarations() end, desc = "goto declaration" },
		{ "<leader>gi", function() Snacks.picker.lsp_implementations() end, desc = "goto implementations" },
		{ "<leader>gr", function() Snacks.picker.lsp_references() end, desc = "references" },

		-- misc
		{ "<leader>u", function() Snacks.picker.undo() end, desc = "undo history" },
		{ "<leader>n", function() Snacks.picker.notifications() end, desc = "notifications" },

		-- lazygit
		{ "<leader>z", function() Snacks.lazygit() end, desc = "open lazygit" },
	},
}
