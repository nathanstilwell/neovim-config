-- ▄▄▄█████▓ ██▀███  ▓█████ ▓█████   ██████  ██▓▄▄▄█████▓▄▄▄█████▓▓█████  ██▀███
-- ▓  ██▒ ▓▒▓██ ▒ ██▒▓█   ▀ ▓█   ▀ ▒██    ▒ ▓██▒▓  ██▒ ▓▒▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒
-- ▒ ▓██░ ▒░▓██ ░▄█ ▒▒███   ▒███   ░ ▓██▄   ▒██▒▒ ▓██░ ▒░▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒
-- ░ ▓██▓ ░ ▒██▀▀█▄  ▒▓█  ▄ ▒▓█  ▄   ▒   ██▒░██░░ ▓██▓ ░ ░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄
--   ▒██▒ ░ ░██▓ ▒██▒░▒████▒░▒████▒▒██████▒▒░██░  ▒██▒ ░   ▒██▒ ░ ░▒████▒░██▓ ▒██▒
--   ▒ ░░   ░ ▒▓ ░▒▓░░░ ▒░ ░░░ ▒░ ░▒ ▒▓▒ ▒ ░░▓    ▒ ░░     ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░
--     ░      ░▒ ░ ▒░ ░ ░  ░ ░ ░  ░░ ░▒  ░ ░ ▒ ░    ░        ░     ░ ░  ░  ░▒ ░ ▒░
--   ░        ░░   ░    ░      ░   ░  ░  ░   ▒ ░  ░        ░         ░     ░░   ░
--             ░        ░  ░   ░  ░      ░   ░                       ░  ░   ░
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
    opts = {
      ensure_installed = {
        "c",
        "css",
        "fish",
        "hjson",
        "html",
        "javascript",
        "json",
        "kdl",
        "lua",
        "markdown",
        "query",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true, }
    },
  },
  "nvim-treesitter/playground",
}
