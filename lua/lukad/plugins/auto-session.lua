return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		{ "<leader>wr", "<cmd>AutoSession search<CR>", desc = "Session search" },
		{ "<leader>ws", "<cmd>AutoSession save<CR>", desc = "Save session" },
		{ "<leader>wa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
	},

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		session_lens = {
			load_on_setup = true,
			previewer = false,
			mappings = {
				delete_session = { "i", "<C-D>" },
				alternate_session = { "i", "<C-S>" },
			},
			theme_conf = {
				border = true,
			},
		},
	},
}
