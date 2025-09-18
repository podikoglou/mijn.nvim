function setup()
  vim.g.coq_settings = {
    auto_start = "shut-up",
  }

  require("coq_3p")({
    { src = "nvimlua", short_name = "nLUA" },
    { src = "vimtex", short_name = "vTEX" },
    { src = "builtin/c" },
    { src = "builtin/css" },
    { src = "builtin/html" },
    { src = "builtin/js" },
    { src = "builtin/syntax" },
    -- { src = "copilot", short_name = "COP", accept_key = "<c-f>" },
    -- { src = "codeium", short_name = "COD" },
  })
end
