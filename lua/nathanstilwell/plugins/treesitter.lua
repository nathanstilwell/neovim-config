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
      -- the main branch compiles parsers with the `tree-sitter` CLI, which is
      -- a separate install from the tree-sitter library (e.g. `brew install
      -- tree-sitter-cli`). Without it every parser build fails and `install`
      -- re-downloads on each startup, so skip and warn instead.
      if vim.fn.executable("tree-sitter") == 1 then
        require("nvim-treesitter").install(ensure_installed)
      else
        vim.notify(
          "nvim-treesitter: `tree-sitter` CLI not found; install tree-sitter-cli to build parsers",
          vim.log.levels.WARN
        )
      end

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
