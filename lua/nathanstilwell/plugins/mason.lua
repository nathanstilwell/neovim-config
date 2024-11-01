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
          require('lspconfig')[server_name].setup({})
        end,
        -- Custom handlers can go here, example
        -- tsserver = function()
        --  require('lspconfig').tsserver.setup({
        --      yadda yadda yadda
        --  })
        -- end
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
