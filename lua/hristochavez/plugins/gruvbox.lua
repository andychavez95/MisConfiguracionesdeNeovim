local status, gruvbox = pcall(require, "gruvbox")
if not status then
    return
end

-- Configuración de gruvbox
gruvbox.setup()

