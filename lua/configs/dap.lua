local dap = require("dap")

local js_langs = {
  "typescript",
  "typescriptreact",
  "javascript",
  "javascriptreact",
}
-- Javascript configurations.
dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8123,
  executable = {
    command = "js-debug-adapter",
  },
}
for _, langauge in ipairs(js_langs) do
  dap.configuration[langauge] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${WorkspaceFolder}",
      runtimeExecutable = "node",
    },
  }
end

-- Rust configurations.
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = "/usr/bin/codelldb",
    args = { "--port", "${port}" },
  },
}
dap.configurations.rust = {
  {
    name = "Rust debug",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
  },
}
