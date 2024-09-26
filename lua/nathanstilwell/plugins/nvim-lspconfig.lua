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

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', o)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', o)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', o)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', o)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', o)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', o)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', o)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', o)
    vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', o)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', o)

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
  lsp_zero.setup_servers({ 'tsserver', 'lua_ls', 'eslint' })
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
