return {
	"saghen/blink.cmp",
	dependencies = { "L3MON4D3/LuaSnip", "archie-judd/blink-cmp-words" },

	version = "1.*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "iosevka",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = true } },

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },

			per_filetype = {
				text = { "dictionary", "thesaurus" },
				markdown = { "dictionary", "thesaurus" },
			},

			providers = {
				thesaurus = {
					name = "blink-cmp-words",
					module = "blink-cmp-words.thesaurus",
					-- All available options
					opts = {
						-- A score offset applied to returned items.
						-- By default the highest score is 0 (item 1 has a score of -1, item 2 of -2 etc..).
						score_offset = 0,

						-- Default pointers define the lexical relations listed under each definition,
						-- see Pointer Symbols below.
						-- Default is as below ("antonyms", "similar to" and "also see").
						pointer_symbols = { "!", "&", "^" },
					},
				},

				dictionary = {
					name = "blink-cmp-words",
					module = "blink-cmp-words.dictionary",
					-- All available options
					opts = {
						-- The number of characters required to trigger completion.
						-- Set this higher if completion is slow, 3 is default.
						dictionary_search_threshold = 3,
						score_offset = 0,
						pointer_symbols = { "!", "&", "^" },
					},
				},
			},
		},

		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	opts_extend = { "sources.default" },
}
