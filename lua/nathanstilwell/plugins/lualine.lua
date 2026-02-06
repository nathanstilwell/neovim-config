return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local function lint_progress()
      local linter_names = {}

      -- Add active LSP clients
      local buf_clients = vim.lsp.get_clients({ bufnr = 0 })
      for _, client in ipairs(buf_clients) do
        table.insert(linter_names, client.name)
      end

      -- Deduplicate
      local unique_linters = {}
      local hash = {}
      for _, v in ipairs(linter_names) do
        if not hash[v] then
          table.insert(unique_linters, v)
          hash[v] = true
        end
      end

      if #unique_linters == 0 then
        return ""
      end

      return "󱉶 " .. table.concat(unique_linters, ", ")
    end

    require("lualine").setup({
      options = {
        theme = 'dracula',
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 4,
          }
        },
        lualine_x = {
          lint_progress,
          "filetype",
        },
      },
    })
  end,
}
