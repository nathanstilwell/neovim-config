-- ███▄ ▄███▓ ▄▄▄        ██████  ▒█████   ███▄    █
-- ▓██▒▀█▀ ██▒▒████▄    ▒██    ▒ ▒██▒  ██▒ ██ ▀█   █
-- ▓██    ▓██░▒██  ▀█▄  ░ ▓██▄   ▒██░  ██▒▓██  ▀█ ██▒
-- ▒██    ▒██ ░██▄▄▄▄██   ▒   ██▒▒██   ██░▓██▒  ▐▌██▒
-- ▒██▒   ░██▒ ▓█   ▓██▒▒██████▒▒░ ████▓▒░▒██░   ▓██░
-- ░ ▒░   ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒
-- ░  ░      ░  ▒   ▒▒ ░░ ░▒  ░ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░
-- ░      ░     ░   ▒   ░  ░  ░  ░ ░ ░ ▒     ░   ░ ░
--        ░         ░  ░      ░      ░ ░           ░

return {
  { 'williamboman/mason.nvim', opts = {} },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'ts_ls',
        'lua_ls',
        'yamlls',
        'eslint',
      },
      handlers = {
        function(server_name)
          local formatters = { 'stylua', 'prettier' }
          for _, formatter in ipairs(formatters) do
            if server_name == formatter then
              return
            end
          end
          vim.lsp.enable(server_name)
        end,
      },
    },
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        'prettier',
        'stylua',
      },
    },
  },
}
