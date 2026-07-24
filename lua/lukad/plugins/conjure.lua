return {
  "Olical/conjure",
  config = function()
    local rust = require("conjure.client.rust.evcxr")
    local auto_start = rust["on-load"]
    rust["on-load"] = nil

    rust["on-load"] = function()
      if vim.fn.executable("evcxr") == 1 then
        return auto_start()
      end
    end
  end,
}
