return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = {
				exclude = { "expert" },
			},
			ensure_installed = {
				"clangd",
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
				"clang-format",
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
