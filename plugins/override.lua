local M = {}

M.cmp = {
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lua" },
        { name = "neorg" },
    },
    formatting = {
        format = function(entry, vim_item)
            local icons = require("ui.icons").lspkind
            local source_mapping = {
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                path = "[Path]",
            }
            vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
            vim_item.menu = source_mapping[entry.source.name]

            return vim_item
        end,
    },
}

M.treesitter = {
    ensure_installed = {
        "vim",
        "css",
        "javascript",
        "json",
        "toml",
        "markdown",
        "c",
        "bash",
        "lua",
        "norg",
        "python",
        "php",
    },
}
M.blankline = {
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "nvchad_cheatsheet",
        "lsp-installer",
        "norg",
        "",
    },
}
M.nvimtree = {
    git = {
        enable = true,
    },
}

return M
