return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim", ft = "lua", opts = {} },
		"saghen/blink.cmp",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		vim.lsp.config("dexter", {
			cmd = { "dexter", "lsp" },
			root_markers = { ".dexter/dexter.db", ".dexter.db", ".git", "mix.exs" },
			filetypes = { "elixir", "eelixir", "heex" },
			init_options = {
				followDelegates = true,
			},
		})

		vim.lsp.enable("dexter")
	end,
}
