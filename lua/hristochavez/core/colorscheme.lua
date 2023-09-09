local status, _  = pcall(vim.cmd, "colorscheme kanagawa-dragon")
if not status then
    print("Colorscheme no encontrado.")
    return
end

