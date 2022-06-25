local M = {}

M.treesitter = {
    n = {
        ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
    },
}

-- show cursor animated
M.specs = {
    n = {
        ["<leader>cs"] = { "<cmd> :lua require('specs').show_specs()<CR>", "  Show Scpec" },
    },
}

-- run riles in editor
M.jaq = {
    n = {
        ["<leader>jf"] = { "<cmd> Jaq <CR>", "  Jaq Run Float" },
    },
}

-- preview markdown files
M.glow = {
    n = {
        ["<leader>gl"] = { "<cmd> Glow <CR>", "  Glow Preview" },
    },
}

-- pretty diagnostics
M.trouble = {
    n = {
        ["<leader>q"] = { "<cmd> TroubleToggle <CR>", "  Trouble Diagnostics Toggle" },
    },
}

-- pretty code action lsp
M.nvim_code_action = {
    n = {
        ["<leader>ca"] = { "<cmd> CodeActionMenu <CR>", "  Code Action" },
    },
}

-- show opacity inactive buffers
M.shade = {
    n = {
        ["<leader>s"] = {
            function()
                require("shade").toggle()
            end,
            "   Shade Toggle",
        },
    },
}

return M
