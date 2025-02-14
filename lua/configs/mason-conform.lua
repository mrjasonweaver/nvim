require("mason-conform").setup({
  -- List of formatters to ignore during install
  ignore_install = {},
  -- We want prettierd formatter installed.
  ensure_installed = {
    "prettierd",
  },
})
