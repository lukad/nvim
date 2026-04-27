return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"cssls",
				"emmet_ls",
				"eslint",
				"graphql",
				"html",
				"lua_ls",
				"rust_analyzer",
				"tailwindcss",
				"ts_ls",
			},
			automatic_enable = true,
		},
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"black",
				"eslint_d",
				"prettier",
				"pylint",
				"stylua",
			},
		},
		dependencies = {
			"mason-org/mason.nvim",
		},
	},
}
