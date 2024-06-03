return {
  "aurum77/live-server.nvim",
  run = function()
    require("live_server.util").install()
  end,
  cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  port = 8080,
  browser_command = "edge",
}
