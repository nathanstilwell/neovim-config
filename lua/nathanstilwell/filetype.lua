vim.filetype.add({
  pattern = {
    -- dotfiles specific accomodations
    [".*.lua.dotfile"] = "lua",
    [".*.fish.*"] = "fish"
  },
})