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

  vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    conform.format({
      lsp_fallback = true,
      async = true,
      timeout_ms = 500
    })
  end, { desc = "Format file or range (in visual mode)" })
end

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = conform_init
}
