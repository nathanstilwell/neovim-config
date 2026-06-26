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

-- Subtle dark colorcolumn (overrides whatever the colorscheme sets)
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#111111" })
  end,
})

-- 80-column guide for prose
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.colorcolumn = "80"
  end,
})

-- Remove traing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
