local present, shade = pcall(require, 'shade')

if not present then
    return
end


local options = {

    overlay_opacity = 50,
    opacity_step = 1,
    exclude_filetypes = { "Outline", "lsp-installer"}
}

shade.setup(options)
