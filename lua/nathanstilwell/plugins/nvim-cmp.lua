local cmp_opts = function(_, opts)
  local cmp = require('cmp')
  -- local cmp_action = require('lsp-zero').cmp_action()
  local lspkind = require('lspkind')

  opts.completion = {
    completeopt = 'menu,menuone,noinsert'
  }

  opts.formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 100,
      ellipsis_char = '…'
    })
  }

  opts.preselect = 'item'

  opts.mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.confirm({ select = false }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })

  opts.sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  })

  opts.snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end
  }

  opts.window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }

  return opts
end

return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
      { 'onsails/lspkind.nvim' },
    },
    opts = cmp_opts
  },
}
