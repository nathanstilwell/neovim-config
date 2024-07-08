vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clear search highlight on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- file navigation
vim.keymap.set("n", "<leader>e", vim.cmd.Ex) --This one is from Prime, I don't know if it will work for me long term


-- buffer navigation

-- Close buffer
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "[B]uffer [P]revious" })
vim.keymap.set("n", "<leader>bc", ":bd<CR>", { desc = "[B]uffer [C]lose" })

-- From the Primeagen
-- =================

-- Move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in place when doing stuff
vim.keymap.set("n", "J", "mzJ`z") -- appending a new line
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- moving viewport down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- moving viewport up
vim.keymap.set("n", "n", "nzzzv") -- go to next search term
vim.keymap.set("n", "N", "Nzzzv") -- go to previous search term

-- Paste without losing copy term
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- I don't know what it does, but I don't think I need it
vim.keymap.set("n", "Q", "<nop>")

-- Todos in Markdown
vim.keymap.set("n", "<A-b>", "I[ ] <Esc>");
vim.keymap.set("i", "<A-b>", "[ ] ");
vim.keymap.set("n", "<A-s>", "0f[lrSA<Space>@started <C-r>=strftime('%F %T')<CR><Esc>");
vim.keymap.set("i", "<A-s>", "<Esc>0f[lrSA<space>@started <C-r>=strftime('%F %T')<CR>");
vim.keymap.set("n", "<A-.>", "0f[lrXf@DA<space>@done <C-r>=strftime('%F %T')<CR><Esc>");
vim.keymap.set("i", "<A-.>", "<Esc>0f[lrXf@DA<space>@done <C-r>=strftime('%F %T')<CR>");
vim.keymap.set("n", "<A-c>", "0f[lr-f@DA<space>@cancelled");
vim.keymap.set("i", "<A-c>", "<Esc>0f[lr-f@DA<space>@cancelled");


