local status, auto_save = pcall(require, 'auto-save')
if not status then
    return
end

-- Configuración de auto-save
auto_save.setup({
    execution_message = {
        dim = 0.05
    }
})


