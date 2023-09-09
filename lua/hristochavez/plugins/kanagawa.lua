local status, kanagawa = pcall(require, "kanagawa")
if not status then
    return
end

-- Configuración de kanagawa
kanagawa.setup({
    transparent = true
})

