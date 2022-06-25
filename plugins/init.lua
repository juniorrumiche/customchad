return {

    -- redimenziona la venta de acuerdo al contenido del buffer
    ["camspiers/lens.vim"] = {},

    -- glow previsualizar archivos md
    ["ellisonleao/glow.nvim"] = {},

    -- formatea el codigo
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.config.null-ls"
        end,
    },

    ["nvim-neorg/neorg"] = {
        ft = "norg",
        after = "nvim-treesitter",
        config = function()
            require "custom.plugins.config.neorg"
        end,
    },

    ["nvim-treesitter/playground"] = {
        cmd = "TSCaptureUnderCursor",
        config = function()
            require("nvim-treesitter.configs").setup()
        end,
    },

    -- opaca las ventas inactivas
    ["andreadev-it/shade.nvim"] = {
        module = "shade",
        config = function()
            require "custom.plugins.config.shade"
        end,
    },

    -- animacion cuando salta el cursos
    ["edluffy/specs.nvim"] = {
        config = function()
            require "custom.plugins.config.specs"
        end,
    },

    -- escapa del modo insertar al pulsar jk
    ["max397574/better-escape.nvim"] = {
        config = function()
            require("better_escape").setup()
        end,
    },

    -- ejecuta codigo en una terminal flotante
    ["is0n/jaq-nvim"] = {
        config = function()
            require "custom.plugins.config.jaq-nvim"
        end,
    },

    -- bonito diseño para los diagnosticos
    ["folke/trouble.nvim"] = {
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require "custom.plugins.config.trouble"
        end,
    },
    ["weilbith/nvim-code-action-menu"] = {
        cmd = "CodeActionMenu",
    },
    ["rmagatti/goto-preview"] = {
        config = function()
            require("goto-preview").setup {
                width = 90,
                height = 20,
                default_mappings = true,
            }
        end,
    },
}
