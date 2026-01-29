return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"cssls",
				"emmet_ls",
				"eslint",
				"expert",
				"graphql",
				"html",
				"lua_ls",
				"rust_analyzer",
				"tailwindcss",
				"ts_ls",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
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
			"williamboman/mason.nvim",
		},
	},
}
