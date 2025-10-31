-- ▄▄▄█████▓ ██░ ██ ▓█████     ██▓███   ▒█████   ██▓███  ▓█████
-- ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀    ▓██░  ██▒▒██▒  ██▒▓██░  ██▒▓█   ▀
-- ▒ ▓██░ ▒░▒██▀▀██░▒███      ▓██░ ██▓▒▒██░  ██▒▓██░ ██▓▒▒███
-- ░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄    ▒██▄█▓▒ ▒▒██   ██░▒██▄█▓▒ ▒▒▓█  ▄
--   ▒██▒ ░ ░▓█▒░██▓░▒████▒   ▒██▒ ░  ░░ ████▓▒░▒██▒ ░  ░░▒████▒
--   ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░   ▒▓▒░ ░  ░░ ▒░▒░▒░ ▒▓▒░ ░  ░░░ ▒░ ░
--     ░     ▒ ░▒░ ░ ░ ░  ░   ░▒ ░       ░ ▒ ▒░ ░▒ ░      ░ ░  ░
--   ░       ░  ░░ ░   ░      ░░       ░ ░ ░ ▒  ░░          ░
--           ░  ░  ░   ░  ░                ░ ░              ░  ░

return {
  "tpope/vim-commentary",
  "tpope/vim-surround",
  "tpope/vim-fugitive",
  "tpope/vim-abolish", -- Case coercion and more
  "tpope/vim-repeat",  -- Repeat tpope-isms
  "tpope/vim-vinegar", -- Better netrw
  "tpope/vim-jdaddy",  -- JSON manipulation, `gqaj` to format JSON
  "github/copilot.vim",
}


-- Quick vim-abolish cheatsheet: (I'm only really here for the coercions)
-- to camelCase -- crc
-- to snake_case -- crs
-- to UPPER_SNAKE_CASE -- cru
-- to kebab-case -- cr-
