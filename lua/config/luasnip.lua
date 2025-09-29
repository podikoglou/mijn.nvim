require("luasnip").setup({ enable_autosnippets = true })
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

require("vim-react-snippets").lazy_load()

local config = require("vim-react-snippets.config")

config.readonly_props = false
config.test_framework = "vitest"
