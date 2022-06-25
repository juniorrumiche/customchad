local present, null_ls = pcall(require, "null-ls")

if not present then
    return
end

local b = null_ls.builtins
local sources = {
    -- php format
    b.formatting.phpcsfixer,

    -- js, css, html, sass, json, yaml
    b.formatting.prettierd,

    -- Lua
    b.formatting.stylua,

    --python
    b.formatting.autopep8,
    b.formatting.djlint,

    -- Shell
    b.formatting.shfmt,
    b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

    -- cpp
    b.formatting.clang_format,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
