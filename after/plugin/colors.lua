-- Mimicking the Primeagen for starters
-- I don't know why this is necessary or really what 'after' does at all
function ApplyColor(color)
  color = color or "dracula"
  vim.cmd.colorscheme(color)
end

ApplyColor()
