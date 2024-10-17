local dap = require("dap")

dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8123,
  executable = {
    command = "js-debug-adapter",
  },
}

for _, langauge in ipairs({ "typescript", "javascript" }) do
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
