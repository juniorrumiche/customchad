local M = {}
local override = require "custom.plugins.override"

M.options = {
    user = function()
        require "custom.options"
    end,
}

M.plugins = {
    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.config.lspconfig",
        },
        statusline = {
            separator_style = "round",
        },
    },

    override = {
        ["hrsh7th/nvim-cmp"] = override.cmp,
        ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
        ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    },

    user = require "custom.plugins",

    remove = {},
}

M.ui = {
    theme = "doomchad",
    hl_override = require "custom.highlights",
}

M.mappings = require "custom.mappings"

return M
