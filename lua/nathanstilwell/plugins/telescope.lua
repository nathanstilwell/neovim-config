-- ▄▄▄█████▓▓█████  ██▓    ▓█████   ██████  ▄████▄   ▒█████   ██▓███  ▓█████
-- ▓  ██▒ ▓▒▓█   ▀ ▓██▒    ▓█   ▀ ▒██    ▒ ▒██▀ ▀█  ▒██▒  ██▒▓██░  ██▒▓█   ▀
-- ▒ ▓██░ ▒░▒███   ▒██░    ▒███   ░ ▓██▄   ▒▓█    ▄ ▒██░  ██▒▓██░ ██▓▒▒███
-- ░ ▓██▓ ░ ▒▓█  ▄ ▒██░    ▒▓█  ▄   ▒   ██▒▒▓▓▄ ▄██▒▒██   ██░▒██▄█▓▒ ▒▒▓█  ▄
--   ▒██▒ ░ ░▒████▒░██████▒░▒████▒▒██████▒▒▒ ▓███▀ ░░ ████▓▒░▒██▒ ░  ░░▒████▒
--   ▒ ░░   ░░ ▒░ ░░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ▒▓▒░ ░  ░░░ ▒░ ░
--     ░     ░ ░  ░░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░  ░  ▒     ░ ▒ ▒░ ░▒ ░      ░ ░  ░
--   ░         ░     ░ ░      ░   ░  ░  ░  ░        ░ ░ ░ ▒  ░░          ░
--             ░  ░    ░  ░   ░  ░      ░  ░ ░          ░ ░              ░  ░
--                                         ░

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- Set up keybindings
    keys = {
      {
        "<C-p>",
        function()
          require('telescope.builtin').find_files()
        end,
        mode = "n",
        desc = "Find files",
      },
      {
        "<leader>tg",
        function()
          require('telescope.builtin').git_files()
        end,
        mode = "n",
        desc = "Find files in git"
      },
      {
        "<leader>tgs",
        function()
          require('telescope.builtin').git_status()
        end,
        mode = "n",
        desc = "List current changes in git"
      },
      {
        "<leader>tgc",
        function()
          require('telescope.builtin').git_commits()
        end,
        mode = "n",
        desc = "Find git commits"
      },
      {
        "<leader>ts",
        function()
          require('telescope.builtin').grep_string({
            search = vim.fn.input("Grep ‣ "),
            use_regex = true,
          })
        end,
        mode = "n",
        desc = "Find string in git"
      },
      {
        "<leader>tq",
        function()
          require('telescope.builtin').quickfix()
        end,
        mode = "n",
        desc = "Find quickfix",
      },
      {
        "<leader><leader>",
        function()
          require('telescope.builtin').buffers()
        end,
        mode = "n",
        desc = "Find existing buffers"
      },
    },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        pickers = {
          buffers = {
            mappings = {
              i = {
                -- In insert mode, map <C-d> to delete_buffer
                ["<C-b>"] = actions.delete_buffer,
              },
              n = {
                -- In normal mode, map dd to delete_buffer
                ["dd"] = actions.delete_buffer,
              },
            },
          },
          find_files = {
            hidden = true,     -- include dotfiles
            no_ignore = false, -- still respect .gitignore
          },
        },
      })
    end,
  },
}
