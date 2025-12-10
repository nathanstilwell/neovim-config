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
