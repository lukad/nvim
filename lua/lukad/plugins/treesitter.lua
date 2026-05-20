return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	dependencies = {
		{ "windwp/nvim-ts-autotag", opts = {} },
	},
	opts = {
		parsers = {
			"asm",
			"astro",
			"bash",
			"c",
			"cmake",
			"css",
			"csv",
			"diff",
			"dockerfile",
			"dot",
			"editorconfig",
			"elixir",
			"erlang",
			"gleam",
			"glsl",
			"go",
			"heex",
			"helm",
			"html",
			"http",
			"javascript",
			"json",
			"lua",
			"make",
			"nix",
			"proto",
			"python",
			"regex",
			"rescript",
			"ruby",
			"rust",
			"sql",
			"swift",
			"toml",
			"typescript",
			"vim",
			"xml",
			"yaml",
			"zig",
		},
	},
	config = function(_, opts)
		local treesitter = require("nvim-treesitter")

		treesitter.setup()
		treesitter.install(opts.parsers)

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("lukad-treesitter", { clear = true }),
			callback = function(ev)
				pcall(vim.treesitter.start, ev.buf)
			end,
		})
	end,
}
