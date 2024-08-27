return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    lazy = true,
    config = false,
    init = function()
      local lsp_zero = require('lsp-zero')

      lsp_zero.format_on_save({
        format_opt = {
          async = false,
          timeout_ms = 10000,
        },
        servers = {
          ['lua_ls'] = { 'lua' },
          ['tsserver'] = { 'javascript', 'typescript' },
        }
      })
    end,
  },

}
