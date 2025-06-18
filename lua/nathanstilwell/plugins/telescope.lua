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
  },
}
