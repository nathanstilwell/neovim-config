--          ...
--      .xH8%"```"%.                 ..
--      888~ xnHhx. ".              @L             ..    .     :                 .d``
--     X88X 8**8888k `.      .u    9888i   .dL   .888: x888  x888.        u      @8Ne.   .u
--     888X<~  `8888L !   ud8888.  `Y888k:*888. ~`8888~'888X`?888f`    us888u.   %8888:u@88N
--     8888!   .!8*"" ` :888'8888.   888E  888I   X888  888X '888>  .@88 "8888"   `888I  888.
--     `8888!"*888x     d888 '88%"   888E  888I   X888  888X '888>  9888  9888     888I  888I
--      *8888  8888L    8888.+"      888E  888I   X888  888X '888>  9888  9888     888I  888I
--     ..`888X X888X    8888L        888E  888I   X888  888X '888>  9888  9888   uW888L  888'
--     88> %8X !8888..- '8888c. .+  x888N><888'  "*88%""*88" '888!` 9888  9888  '*88888Nu88P
--     88   8  '8888%`   "88888%     "88"  888     `~    "    `"`   "888*""888" ~ '88888F`
--      *=="     ""        "YP'            88F                       ^Y"   ^Y'     888 ^
--                                        98"                                      *8E
--                                      ./"                                        '8>
--                                     ~`                                           "

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clear search highlight on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- file navigation
vim.keymap.set("n", "<leader>e", vim.cmd.Ex) --This one is from Prime, I don't know if it will work for me long term

--    ▄▄▄▄    █    ██   █████▒ █████▒▓█████  ██▀███
--    ▓█████▄  ██  ▓██▒▓██   ▒▓██   ▒ ▓█   ▀ ▓██ ▒ ██▒
--    ▒██▒ ▄██▓██  ▒██░▒████ ░▒████ ░ ▒███   ▓██ ░▄█ ▒
--    ▒██░█▀  ▓▓█  ░██░░▓█▒  ░░▓█▒  ░ ▒▓█  ▄ ▒██▀▀█▄
--    ░▓█  ▀█▓▒▒█████▓ ░▒█░   ░▒█░    ░▒████▒░██▓ ▒██▒
--    ░▒▓███▀▒░▒▓▒ ▒ ▒  ▒ ░    ▒ ░    ░░ ▒░ ░░ ▒▓ ░▒▓░
--    ▒░▒   ░ ░░▒░ ░ ░  ░      ░       ░ ░  ░  ░▒ ░ ▒░
--    ░    ░  ░░░ ░ ░  ░ ░    ░ ░       ░     ░░   ░
--    ░         ░                       ░  ░   ░
--        ░

-- Close buffer
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "[B]uffer [P]revious" })
vim.keymap.set("n", "<leader>w", ":bd<CR>", { desc = "[B]uffer [C]lose" })

-- ~~~~~~~~~~~~~~~~~~
-- From the Primeagen
-- ~~~~~~~~~~~~~~~~~~

-- Move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in place when doing stuff
vim.keymap.set("n", "J", "mzJ`z")       -- appending a new line
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- moving viewport down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- moving viewport up
vim.keymap.set("n", "n", "nzzzv")       -- go to next search term
vim.keymap.set("n", "N", "Nzzzv")       -- go to previous search term

-- Paste without losing copy term
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- I don't know what it does, but I don't think I need it
vim.keymap.set("n", "Q", "<nop>")

--   ▄▄▄█████▓ ▒█████  ▓█████▄  ▒█████
--   ▓  ██▒ ▓▒▒██▒  ██▒▒██▀ ██▌▒██▒  ██▒
--   ▒ ▓██░ ▒░▒██░  ██▒░██   █▌▒██░  ██▒
--   ░ ▓██▓ ░ ▒██   ██░░▓█▄   ▌▒██   ██░
--     ▒██▒ ░ ░ ████▓▒░░▒████▓ ░ ████▓▒░
--     ▒ ░░   ░ ▒░▒░▒░  ▒▒▓  ▒ ░ ▒░▒░▒░
--       ░      ░ ▒ ▒░  ░ ▒  ▒   ░ ▒ ▒░
--     ░      ░ ░ ░ ▒   ░ ░  ░ ░ ░ ░ ▒
--                ░ ░     ░        ░ ░
--                      ░
vim.keymap.set("n", "<leader>tb", "I󰄱 <Esc>");
vim.keymap.set("n", "<leader>ts", "0xi󱗝<Esc>");
vim.keymap.set("n", "<leader>td", "0xi󰱒<Esc>");
vim.keymap.set("n", "<leader>tc", "0xi󰿦<Esc>");
