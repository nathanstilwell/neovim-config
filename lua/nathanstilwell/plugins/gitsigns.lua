--  ▄████  ██▓▄▄▄█████▓  ██████  ██▓  ▄████  ███▄    █   ██████
-- ██▒ ▀█▒▓██▒▓  ██▒ ▓▒▒██    ▒ ▓██▒ ██▒ ▀█▒ ██ ▀█   █ ▒██    ▒
--▒██░▄▄▄░▒██▒▒ ▓██░ ▒░░ ▓██▄   ▒██▒▒██░▄▄▄░▓██  ▀█ ██▒░ ▓██▄
--░▓█  ██▓░██░░ ▓██▓ ░   ▒   ██▒░██░░▓█  ██▓▓██▒  ▐▌██▒  ▒   ██▒
--░▒▓███▀▒░██░  ▒██▒ ░ ▒██████▒▒░██░░▒▓███▀▒▒██░   ▓██░▒██████▒▒
-- ░▒   ▒ ░▓    ▒ ░░   ▒ ▒▓▒ ▒ ░░▓   ░▒   ▒ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░
--  ░   ░  ▒ ░    ░    ░ ░▒  ░ ░ ▒ ░  ░   ░ ░ ░░   ░ ▒░░ ░▒  ░ ░
--░ ░   ░  ▒ ░  ░      ░  ░  ░   ▒ ░░ ░   ░    ░   ░ ░ ░  ░  ░
--      ░  ░                 ░   ░        ░          ░       ░

local gitsigns_init = function()
  local gitsigns = require("gitsigns")

  gitsigns.setup({
    signcolumn = true,
    numhl = true,
    current_line_blame = true,
    linehl = false,
    word_diff = false,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "right_align",
      delay = 500,
    },
  })
end
return {
  "lewis6991/gitsigns.nvim",
  init = gitsigns_init,
}
