require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both"                    -- to enable cursorline!

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- fix docker-compose files
function docker_fix()
  local filename = vim.fn.expand "%:t"

  if
      filename == "docker-compose.yml"
      or filename == "compose.yml"
      or filename == "docker-compose.yaml"
      or filename == "compose.yaml"
  then
    vim.bo.filetype = "yaml.docker-compose"
    print "matched!"
  else
    print(filename)
  end
end

vim.cmd [[au BufRead * lua docker_fix()]]

-- fix something with obsidian
vim.opt.conceallevel = 1
