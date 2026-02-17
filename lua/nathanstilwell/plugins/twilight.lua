-- ▄▄▄█████▓ █     █░ ██▓ ██▓     ██▓  ▄████  ██░ ██ ▄▄▄█████▓
-- ▓  ██▒ ▓▒▓█░ █ ░█░▓██▒▓██▒    ▓██▒ ██▒ ▀█▒▓██░ ██▒▓  ██▒ ▓▒
-- ▒ ▓██░ ▒░▒█░ █ ░█ ▒██▒▒██░    ▒██▒▒██░▄▄▄░▒██▀▀██░▒ ▓██░ ▒░
-- ░ ▓██▓ ░ ░█░ █ ░█ ░██░▒██░    ░██░░▓█  ██▓░▓█ ░██ ░ ▓██▓ ░
--   ▒██▒ ░ ░░██▒██▓ ░██░░██████▒░██░░▒▓███▀▒░▓█▒░██▓  ▒██▒ ░
--   ▒ ░░   ░ ▓░▒ ▒  ░▓  ░ ▒░▓  ░░▓   ░▒   ▒  ▒ ░░▒░▒  ▒ ░░
--     ░      ▒ ░ ░   ▒ ░░ ░ ▒  ░ ▒ ░  ░   ░  ▒ ░▒░ ░    ░
--   ░        ░   ░   ▒ ░  ░ ░    ▒ ░░ ░   ░  ░  ░░ ░  ░
--              ░     ░      ░  ░ ░        ░  ░  ░  ░

return {
  "folke/twilight.nvim",
  opts = {
    dimming = {
      alpha = 0.3,
    },
    context = 10,

    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    expand = {
      -- Typescript
      "function_declaration",
      "method_definition",
      "arrow_function",
      "generator_function",
      "class_declaration",
      "abstract_class_declaration",
      "interface_declaration",
      "type_alias_declaration",
      "enum_declaration",
      "jsx_element",
      "jsx_self_closing_element",

      -- CSS / SCSS
      "rule_set",
      "media_statement",
      "keyframes_statement",

      -- HTML
      "element",

      -- JSON
      "object",
      "array",
      "object_literal", -- TS/JS
      "array_literal",  -- TS/JS

      -- General
      "if_statement",
      "for_statement",
      "while_statement",
      "switch_statement",
    },
  },
  config = function(_, opts)
    require("twilight").setup(opts)
    require("twilight").enable()
  end,
}
