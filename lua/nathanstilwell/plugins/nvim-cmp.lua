local cmp_opts = function(_, opts)
  local cmp = require('cmp')

  opts.sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  })

  opts.mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  })

  opts.snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end
  }

  return opts
end

return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    opts = cmp_opts
  },
}
