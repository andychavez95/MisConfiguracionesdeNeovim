-- Desactivar el navegador de archivos por defecto de Neovim.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status, nvimtree = pcall(require, "nvim-tree")
if not status then
  return
end

-- Configuración de nvim-tree.
nvimtree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "▶",
                    arrow_open = "▼"
                }
            }
        }
    }
})


