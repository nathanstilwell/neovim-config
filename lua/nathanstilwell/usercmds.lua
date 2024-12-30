-- ▄• ▄▌.▄▄ · ▄▄▄ .▄▄▄       ▄▄· • ▌ ▄ ·. ·▄▄▄▄  .▄▄ ·
-- █▪██▌▐█ ▀. ▀▄.▀·▀▄ █·    ▐█ ▌▪·██ ▐███▪██▪ ██ ▐█ ▀.
-- █▌▐█▌▄▀▀▀█▄▐▀▀▪▄▐▀▀▄     ██ ▄▄▐█ ▌▐▌▐█·▐█· ▐█▌▄▀▀▀█▄
-- ▐█▄█▌▐█▄▪▐█▐█▄▄▌▐█•█▌    ▐███▌██ ██▌▐█▌██. ██ ▐█▄▪▐█
--  ▀▀▀  ▀▀▀▀  ▀▀▀ .▀  ▀    ·▀▀▀ ▀▀  █▪▀▀▀▀▀▀▀▀•  ▀▀▀▀
--  :Fig <font> <text> - Run figlet command with <font> and <text> arguments
vim.api.nvim_create_user_command(
  'Fig',
  function(opts)
    -- parse arguments
    local fargs = opts.fargs
    local font = fargs[1]
    local text = table.concat(vim.list_slice(fargs, 2, #fargs), " ")

    -- run figlet command, read output into lines
    local handle = assert(io.popen("figlet -d ~/.local/share/figlet/fonts -w 120 -f " .. font .. " " .. text))
    local result = handle:lines()
    local lines = {}
    for line in result do
      table.insert(lines, line)
    end
    assert(handle:close())

    --put lines into current buffer at cursor
    vim.api.nvim_put(lines, "", false, true)
  end,
  { nargs = "*" }
)
