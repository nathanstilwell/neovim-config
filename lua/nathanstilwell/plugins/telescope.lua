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
        "<leader>f",
        function()
          require('telescope.builtin').find_files()
        end,
        mode = "n",
        desc = "Find files",
      },
      {
        "<leader>g",
        function()
          require('telescope.builtin').git_files()
        end,
        mode = "n",
        desc = "Find files in git"
      },
      {
        "<leader>s",
        function()
          require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
        end,
        mode = "n",
        desc = "Find string in git"
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
