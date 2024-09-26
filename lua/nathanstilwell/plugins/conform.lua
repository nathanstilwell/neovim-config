--  ▄████▄   ▒█████   ███▄    █   █████▒▒█████   ██▀███   ███▄ ▄███▓
-- ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▒██▒  ██▒▓██ ▒ ██▒▓██▒▀█▀ ██▒
-- ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██░  ██▒▓██ ░▄█ ▒▓██    ▓██░
-- ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░▒██   ██░▒██▀▀█▄  ▒██    ▒██
-- ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░ ████▓▒░░██▓ ▒██▒▒██▒   ░██▒
-- ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░   ░  ░
--   ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░       ░ ▒ ▒░   ░▒ ░ ▒░░  ░      ░
-- ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░   ░ ░ ░ ▒    ░░   ░ ░      ░
-- ░ ░          ░ ░           ░            ░ ░     ░            ░

local conform_init = function()
  local conform = require("conform")

  conform.setup({
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      tyepscript = { "prettier" },
      tyepscriptreact = { "prettier" },
      css = { "prettier" },
      lua = { "stylelua" }
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout = 500
    }
  })
end

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  init = conform_init,
  keys = {
    {
      "<leader>lf",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = true,
          timeout_ms = 500
        })
      end,
      mode = "n",
      desc = "Format file or range (in visual mode)"
    }
  }
}
