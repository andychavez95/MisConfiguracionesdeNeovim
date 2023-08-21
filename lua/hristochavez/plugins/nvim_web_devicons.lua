local status, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if not status then
    return
end

-- Configuración de nvim-web-devicons
nvim_web_devicons.setup()

