vim.filetype.add({
  pattern = {
    ['.*/openapi.yaml'] = 'yaml.openapi',
    ['.*/openapi.yml'] = 'yaml.openapi',
  },
})

require('lint').linters_by_ft = {
  markdown = { 'vale' },
  ["yaml.openapi"] = { "vacuum" }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
