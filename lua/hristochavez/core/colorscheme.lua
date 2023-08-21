local status, _  = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
    print("colorscheme no encontrado.")
    return
end

