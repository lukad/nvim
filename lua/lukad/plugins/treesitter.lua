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
      "clojure",
      "commonlisp",
      "css",
      "csv",
      "diff",
      "dockerfile",
      "dot",
      "editorconfig",
      "elixir",
      "erlang",
      "fennel",
      "gleam",
      "glsl",
      "go",
      "heex",
      "helm",
      "html",
      "http",
      "javascript",
      "json",
      "julia",
      "lua",
      "make",
      "nix",
      "php",
      "proto",
      "python",
      "r",
      "racket",
      "regex",
      "rescript",
      "ruby",
      "rust",
      "scheme",
      "sql",
      "swift",
      "toml",
      "typescript",
      "vim",
      "wgsl",
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
