local present, specs = pcall(require, "specs")

if not present then
   return
end

local options = {
   show_jumps = true,
   min_jump = 30,
   popup = {
      delay_ms = 1, -- delay before popup displays
      inc_ms = 10, -- time increments used for fade/resize effects
      blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
      width = 30,
      winhl = "PMenu",
      fader = require("specs").linear_fader,
      resizer = require("specs").shrink_resizer,
   },
   ignore_filetypes = {},
   ignore_buftypes = {
      nofile = true,
   },
}

specs.setup(options)
