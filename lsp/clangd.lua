local root_markers = {
	".clangd",
	".clang-tidy",
	".clang-format",
	"compile_commands.json",
	"compile_flags.txt",
	"configure.ac",
	".git",
}

local function build_compile_commands_dir(root_dir)
	if not root_dir then
		return nil
	end

	local build_dir = vim.fs.joinpath(root_dir, "build")
	if vim.uv.fs_stat(vim.fs.joinpath(build_dir, "compile_commands.json")) then
		return build_dir
	end

	return nil
end

return {
	cmd = function(dispatchers, config)
		local cmd = { "clangd" }
		local compile_commands_dir = build_compile_commands_dir(config.root_dir)

		if compile_commands_dir then
			table.insert(cmd, "--compile-commands-dir=" .. compile_commands_dir)
		end

		return vim.lsp.rpc.start(cmd, dispatchers, {
			cwd = config.cmd_cwd or config.root_dir,
			env = config.cmd_env,
			detached = config.detached,
		})
	end,
	root_dir = function(bufnr, on_dir)
		local filename = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(filename, function(name, path)
			return name == "build" and vim.uv.fs_stat(vim.fs.joinpath(path, name, "compile_commands.json")) ~= nil
		end) or vim.fs.root(filename, root_markers)

		on_dir(root)
	end,
}
