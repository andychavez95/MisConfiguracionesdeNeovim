local status, github_theme = pcall(require, 'github-theme')
if not status then
    return
end

-- Configuración de github-theme
github_theme.setup({
    options = {
        transparent = true
    }
})

