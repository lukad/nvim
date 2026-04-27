return {
	settings = {
		["rust-analyzer"] = {
			cargo = { allFeatures = true },
			checkOnSave = true,
			check = { command = "clippy" },
			inlayHints = {
				closingBraceHints = { enable = true, minLines = 25 },
				parameterHints = { enable = true },
				typeHints = { enable = true },
			},
		},
	},
}
