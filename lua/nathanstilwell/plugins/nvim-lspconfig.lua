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

local lspconfig_init = function()
  local lsp_zero = require('lsp-zero')

  -- lsp_attach is where you enable features that only work
  -- if there is a language server active in the file
  local lsp_attach = function(_, bufnr)
    local o = { buffer = bufnr }
    -- [INFO] Key bindings for IDE features
    vim.keymap.set('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<cr>', o)
    vim.keymap.set('n', '<leader>ref', '<cmd>lua vim.lsp.buf.references()<cr>', o)
    vim.keymap.set('n', '<leader>fs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', o)
    vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', o)
    vim.keymap.set('n', '<leader>eo', '<cmd>lua vim.diagnostic.open_float()<cr>', o)

    lsp_zero.buffer_autoformat()
  end

  lsp_zero.extend_lspconfig({
    sign_text = {
      error = '󰚌',
      warn = '󰈸',
      hint = '⛥',
      info = '†',
    },
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  })


  -- language server setup
  lsp_zero.setup_servers({ 'ts_ls', 'lua_ls', 'eslint' })
end

return {
  {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    },
    init = lspconfig_init
  }
}
