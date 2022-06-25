local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt

autocmd("FileType", {
    pattern = "norg",
    callback = function()
        opt.number = false
        opt.showtabline = 0
        opt.cole = 1
        opt.foldlevel = 10
    end,
})
