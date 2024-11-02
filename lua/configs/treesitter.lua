local options = {
  ensure_installed = {
    "bash",
    "node",
    "javascript",
    "typescript",
    "rust",
    "css",
    "html",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
