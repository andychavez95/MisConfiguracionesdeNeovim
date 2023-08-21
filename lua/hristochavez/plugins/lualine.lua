local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- Configuración de lualine
lualine.setup({
  options = {
    theme = 'auto'
  },
})

