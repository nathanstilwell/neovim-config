--  ██▓      ██████  ██▓███   ▄████▄   ▒█████   ███▄    █   █████▒██▓  ▄████
-- ▓██▒    ▒██    ▒ ▓██░  ██▒▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██▒ ▀█▒
-- ▒██░    ░ ▓██▄   ▓██░ ██▓▒▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██▒▒██░▄▄▄░
-- ▒██░      ▒   ██▒▒██▄█▓▒ ▒▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░░██░░▓█  ██▓
-- ░██████▒▒██████▒▒▒██▒ ░  ░▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░██░░▒▓███▀▒
-- ░ ▒░▓  ░▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░▓   ░▒   ▒
-- ░ ░ ▒  ░░ ░▒  ░ ░░▒ ░       ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░      ▒ ░  ░   ░
-- ░ ░   ░  ░  ░  ░░       ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░    ▒ ░░ ░   ░
--   ░  ░      ░           ░ ░          ░ ░           ░         ░        ░
--                         ░

local lsp_init = function()
  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = '󰚌',
        [vim.diagnostic.severity.WARN] = '󰈸',
        [vim.diagnostic.severity.HINT] = '⛥',
        [vim.diagnostic.severity.INFO] = '†',
      },
    },
  })

  vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
      local o = { buffer = event.buf }
      vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, o)
      vim.keymap.set('n', '<leader>ref', vim.lsp.buf.references, o)
      vim.keymap.set('n', '<leader>fs', vim.lsp.buf.signature_help, o)
      vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, o)
      vim.keymap.set('n', '<leader>eo', vim.diagnostic.open_float, o)
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, o)
    end,
  })

  -- Disable auto-discovery of stylua/prettier as LSP servers.
  -- nvim-lspconfig includes configs for these formatters but they don't actually support LSP mode.
  -- Without this, NVim tries to start them with --lsp flag which causes "exit code 2" errors.
  -- They remain available as formatters via conform.nvim.
  vim.lsp.config.stylua = { filetypes = {} }
  vim.lsp.config.prettier = { filetypes = {} }

  vim.lsp.config('*', {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
  })
end

return {
  {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    },
    init = lsp_init
  }
}
