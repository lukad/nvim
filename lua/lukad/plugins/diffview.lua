return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	cmd = {
		"DiffviewOpen",
		"DiffviewClose",
		"DiffviewFileHistory",
		"DiffviewFocusFiles",
		"DiffviewToggleFiles",
		"DiffviewRefresh",
	},
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff view" },
		{ "<leader>gD", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Git diff previous commit" },
		{ "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
		{ "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Git history" },
		{ "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Git file history" },
	},
	opts = {
		enhanced_diff_hl = true,
		view = {
			default = {
				layout = "diff2_horizontal",
				winbar_info = true,
			},
			merge_tool = {
				layout = "diff3_horizontal",
				disable_diagnostics = true,
				winbar_info = true,
			},
			file_history = {
				layout = "diff2_horizontal",
				winbar_info = true,
			},
		},
		file_panel = {
			listing_style = "tree",
			win_config = {
				position = "left",
				width = 35,
			},
		},
		file_history_panel = {
			win_config = {
				position = "bottom",
				height = 16,
			},
		},
	},
}
