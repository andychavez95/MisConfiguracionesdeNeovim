-- La tecla lider será el espacio.
vim.g.mapleader = " "

-- Para abreviar se creará una variable.
local keymap = vim.keymap

-------------------------------
-- Mapas de teclas generales --
-------------------------------

-- Nueva linea con identación.
keymap.set("n", "<leader>o", "ddO", { silent = true })

-- Borra un caracter pero no lo guarda en el registro.
keymap.set("n", "x", '"_x')

-- Abre una terminal en modo horizontal.
keymap.set("n", "<leader>tv", ":split term://bash<CR>", { silent = true })

-- Oculta los números de linea.
keymap.set("n", "<leader>nn", ":set invrelativenumber invnumber<CR>", { silent = true })

-- Cierra el buffer.
keymap.set("n", "<leader>bx", ":bd<CR>", { silent = true })

-- Cierra la pestaña actual.
keymap.set("n", "<leader>tx", ":tabclose<CR>", { silent = true })

-- Salir del modo terminal
keymap.set("t", "<ESC>", "<C-\\><C-n>", { silent = true })

------------------------------------
-- Mapas de teclas para nvim-tree --
------------------------------------

-- Abre o cierra el explorador de archivos nvim-tree
keymap.set("n", "<F2>", ":NvimTreeToggle<CR>", { silent = true })

------------------------------------
-- Mapas de teclas para Telescope --
------------------------------------
keymap.set("n", "<leader>tf", ":Telescope find_files<CR>", { silent = true })
keymap.set("n", "<leader>tg", ":Telescope live_grep<CR>", { silent = true })

