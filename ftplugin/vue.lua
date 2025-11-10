vim.lsp.config("vtsls", {
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	settings = {
		vtsls = { tsserver = { globalPlugins = {} } },
		typescript = {
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				variableTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				enumMemberValues = { enabled = true },
			},
		},
	},
	before_init = function(_, config)
		table.insert(config.settings.vtsls.tsserver.globalPlugins, {
			name = "@vue/typescript-plugin",
			location = vim.fn.expand(
				"$MASON/packages/vue-language-server/node_modules/@vue/language-server"
			),
			languages = { "vue" },
			configNamespace = "typescript",
			enableForWorkspaceTypeScriptVersions = true,
		})
	end,
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
})
