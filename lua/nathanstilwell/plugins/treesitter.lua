-- ▄▄▄█████▓ ██▀███  ▓█████ ▓█████   ██████  ██▓▄▄▄█████▓▄▄▄█████▓▓█████  ██▀███
-- ▓  ██▒ ▓▒▓██ ▒ ██▒▓█   ▀ ▓█   ▀ ▒██    ▒ ▓██▒▓  ██▒ ▓▒▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒
-- ▒ ▓██░ ▒░▓██ ░▄█ ▒▒███   ▒███   ░ ▓██▄   ▒██▒▒ ▓██░ ▒░▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒
-- ░ ▓██▓ ░ ▒██▀▀█▄  ▒▓█  ▄ ▒▓█  ▄   ▒   ██▒░██░░ ▓██▓ ░ ░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄
--   ▒██▒ ░ ░██▓ ▒██▒░▒████▒░▒████▒▒██████▒▒░██░  ▒██▒ ░   ▒██▒ ░ ░▒████▒░██▓ ▒██▒
--   ▒ ░░   ░ ▒▓ ░▒▓░░░ ▒░ ░░░ ▒░ ░▒ ▒▓▒ ▒ ░░▓    ▒ ░░     ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░
--     ░      ░▒ ░ ▒░ ░ ░  ░ ░ ░  ░░ ░▒  ░ ░ ▒ ░    ░        ░     ░ ░  ░  ░▒ ░ ▒░
--   ░        ░░   ░    ░      ░   ░  ░  ░   ▒ ░  ░        ░         ░     ░░   ░
--             ░        ░  ░   ░  ░      ░   ░                       ░  ░   ░
local ensure_installed = {
  "bash",
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
  "markdown_inline",
  "mermaid",
  "query",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    -- main branch does not support lazy-loading, per its README
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install(ensure_installed)

      -- main branch replaces `highlight.enable`: start highlighting per
      -- filetype ourselves. pcall guards filetypes with no parser.
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}
