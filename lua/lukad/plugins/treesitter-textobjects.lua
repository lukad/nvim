return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	branch = "main",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("nvim-treesitter-textobjects").setup({
			select = { lookahead = true },
			move = { set_jumps = true },
		})

		local select = require("nvim-treesitter-textobjects.select")
		local move = require("nvim-treesitter-textobjects.move")

		local map = function(mode, lhs, fn, desc)
			vim.keymap.set(mode, lhs, fn, { desc = desc })
		end

		map({ "x", "o" }, "af", function()
			select.select_textobject("@function.outer", "textobjects")
		end, "Select around function")
		map({ "x", "o" }, "if", function()
			select.select_textobject("@function.inner", "textobjects")
		end, "Select inside function")
		map({ "x", "o" }, "ac", function()
			select.select_textobject("@class.outer", "textobjects")
		end, "Select around class")
		map({ "x", "o" }, "ic", function()
			select.select_textobject("@class.inner", "textobjects")
		end, "Select inside class")
		map({ "x", "o" }, "aa", function()
			select.select_textobject("@parameter.outer", "textobjects")
		end, "Select around parameter")
		map({ "x", "o" }, "ia", function()
			select.select_textobject("@parameter.inner", "textobjects")
		end, "Select inside parameter")

		map({ "n", "x", "o" }, "]m", function()
			move.goto_next_start("@function.outer", "textobjects")
		end, "Next function start")
		map({ "n", "x", "o" }, "[m", function()
			move.goto_previous_start("@function.outer", "textobjects")
		end, "Prev function start")
		map({ "n", "x", "o" }, "]M", function()
			move.goto_next_end("@function.outer", "textobjects")
		end, "Next function end")
		map({ "n", "x", "o" }, "[M", function()
			move.goto_previous_end("@function.outer", "textobjects")
		end, "Prev function end")
		map({ "n", "x", "o" }, "]]", function()
			move.goto_next_start("@class.outer", "textobjects")
		end, "Next class start")
		map({ "n", "x", "o" }, "[[", function()
			move.goto_previous_start("@class.outer", "textobjects")
		end, "Prev class start")
	end,
}
