local augend = require("dial.augend")

require("dial.config").augends:register_group {
  default = {
    augend.integer.alias.decimal,  -- nonnegative decimal number (0, 1, 2, 3, ...)
    augend.integer.alias.hex,      -- nonnegative hex number  (0x01, 0x1a1f, etc.)
    augend.integer.alias.decimal,
    augend.constant.alias.bool,    -- boolean value (true <-> false)
    augend.date.alias["%d/%m/%Y"], -- date (02/19/2022, etc.)
  }
}
