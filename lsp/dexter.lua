return {
	cmd = { "dexter", "lsp" },
	filetypes = { "elixir", "eelixir", "heex" },
	root_markers = { ".dexter/dexter.db", ".dexter.db", "mix.exs", ".git" },
	init_options = {
		followDelegates = true,
	},
}
