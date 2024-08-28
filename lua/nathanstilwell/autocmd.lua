--  ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████   ▄████▄   ███▄ ▄███▓▓█████▄
--▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒▒██▀ ▀█  ▓██▒▀█▀ ██▒▒██▀ ██▌
--▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒▒▓█    ▄ ▓██    ▓██░░██   █▌
--░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░▒▓▓▄ ▄██▒▒██    ▒██ ░▓█▄   ▌
-- ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░▒ ▓███▀ ░▒██▒   ░██▒░▒████▓
-- ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░ ░ ░▒ ▒  ░░ ▒░   ░  ░ ▒▒▓  ▒
--  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░   ░  ▒   ░  ░      ░ ░ ▒  ▒
--  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒  ░        ░      ░    ░ ░  ░
--      ░  ░   ░                  ░ ░  ░ ░             ░      ░
--                                     ░                    ░

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("nathanstilwell-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Remove traing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
