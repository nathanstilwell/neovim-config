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
        'biome',
        'ts_ls',
        'lua_ls',
        'yamlls',
      },
      handlers = {
        function(server_name)
          -- Don't set up these LSPs
          local excluded_lsps = { 'eslint' }
          for _, excluded in ipairs(excluded_lsps) do
            if server_name == excluded then
              return
            end
          end
          require('lspconfig')[server_name].setup({})
        end,
      },
    },
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        'stylua',
      },
    },
  },
}
