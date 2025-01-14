-- ██░ ██  ▄▄▄       ██▀███   ██▓███   ▒█████   ▒█████   ███▄    █
-- ▓██░ ██▒▒████▄    ▓██ ▒ ██▒▓██░  ██▒▒██▒  ██▒▒██▒  ██▒ ██ ▀█   █
-- ▒██▀▀██░▒██  ▀█▄  ▓██ ░▄█ ▒▓██░ ██▓▒▒██░  ██▒▒██░  ██▒▓██  ▀█ ██▒
-- ░▓█ ░██ ░██▄▄▄▄██ ▒██▀▀█▄  ▒██▄█▓▒ ▒▒██   ██░▒██   ██░▓██▒  ▐▌██▒
-- ░▓█▒░██▓ ▓█   ▓██▒░██▓ ▒██▒▒██▒ ░  ░░ ████▓▒░░ ████▓▒░▒██░   ▓██░
-- ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒▓ ░▒▓░▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒
-- ▒ ░▒░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░░▒ ░       ░ ▒ ▒░   ░ ▒ ▒░ ░ ░░   ░ ▒░
-- ░  ░░ ░  ░   ▒     ░░   ░ ░░       ░ ░ ░ ▒  ░ ░ ░ ▒     ░   ░ ░
-- ░  ░  ░      ░  ░   ░                  ░ ░      ░ ░           ░

local harpoon_init = function()
  local harpoon = require("harpoon")

  -- REQUIRED
  harpoon:setup()
end

return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = harpoon_init,
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon"):list():add()
        end,
        mode = "n",
        desc = "Harpoon add"
      },
      {
        "<leader>hr",
        function()
          require("harpoon"):list():remove()
        end,
        mode = "n",
        desc = "Harpoon remove",
      },
      {
        "<leader>h1",
        function()
          require("harpoon"):list():select(1)
        end,
        mode = "n",
        desc = "Harpoon go to 1"
      },
      {
        "<leader>h2",
        function()
          require("harpoon"):list():select(2)
        end,
        mode = "n",
        desc = "Harpoon go to 2"
      },
      {
        "<leader>h3",
        function()
          require("harpoon"):list():select(3)
        end,
        mode = "n",
        desc = "Harpoon go to 3"
      },
      {
        "<leader>h4",
        function()
          require("harpoon"):list():select(4)
        end,
        mode = "n",
        desc = "Harpoon go to 4"
      },
      {
        "<leader>hp",
        function()
          require("harpoon"):list():prev()
        end,
        mode = "n",
        desc = "Harpoon go to previous"
      },
      {
        "<leader>hn",
        function()
          require("harpoon"):list():next()
        end,
        mode = "n",
        desc = "Harpoon go to next"
      },
      {
        "<leader>hh",
        function()
          local harpoon = require("harpoon")
          harpoon.setup({})
          -- basic telescope configuration
          local conf = require("telescope.config").values
          local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
              prompt_title = "Harpoon",
              finder = require("telescope.finders").new_table({
                results = file_paths,
              }),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
            }):find()
          end

          toggle_telescope(harpoon:list())
        end,
        mode = "n",
        desc = "Harpoon list in Telescope"
      }
    }
  }
}
