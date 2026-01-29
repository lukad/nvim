return {
	"goolord/alpha-nvim",
	dependencies = {
		{
			"MaximilianLloyd/ascii.nvim",
			dependencies = {
				"MunifTanjim/nui.nvim",
			},
		},
	},
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local ascii = require("ascii")

		dashboard.section.header.val = ascii.art.text.neovim.dos_rebel

		dashboard.section.buttons.val = {
			dashboard.button("e", "New file", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("q", "Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
