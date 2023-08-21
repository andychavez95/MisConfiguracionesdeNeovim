local status, tokyonight = pcall(require, "tokyonight")
if not status then
    return
end

-- Configuración de tokyonight
tokyonight.setup({
    style = "moon",
})

