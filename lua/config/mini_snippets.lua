local snippets = require('mini.snippets')

local gen_loader = snippets.gen_loader

snippets.setup({
  snippets = {
    -- -- Load custom file with global snippets first (adjust for Windows)
    -- gen_loader.from_file('~/.config/nvim/snippets/global.json'),

    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },
})

vim.api.nvim_create_autocmd('ModeChanged', {
  pattern = '*:n',
  callback = function()
    while snippets.session.get() do
      snippets.session.stop()
    end
  end,
})
