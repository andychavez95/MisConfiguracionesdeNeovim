-- Asignación de variable
local opt = vim.opt
local cmd = vim.cmd

-- Muestra el nombre del archivo en la ventana del terminal
opt.title = true

-- Muestra el número de linea
opt.number = true

-- Mostrar números de linea relativo
opt.relativenumber = true

-- Integración con el mouse
opt.mouse = "a"

-- Muestra una columna límite a los 80 caracteres
opt.colorcolumn = "80"

-- Identación de 4 espacios
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.shiftround = true

-- Usar espacios en lugar de <TAB>
opt.expandtab = true

-- Ignorar las mayusculas en busquedas
opt.ignorecase = true

-- Activar truecolor en la terminal
opt.termguicolors = true

-- Representación de los caracteres
opt.encoding = "utf-8"

-- Romper la linea si es muy grande
opt.wrap = true

-- No mostrar el modo en Neovim
opt.showmode = false

-- Cambiar el directorio a la ruta donde está mi fichero
opt.autochdir = true

-- Usar el portapapeles del escritorio en Neovim
opt.clipboard:append("unnamedplus")

-- Controlar el ancho de la linea
opt.textwidth = 80

-- Si busco una palabra en mayuscula ignorara las minusculas
opt.smartcase = true

-- Una linea debajo de mi cursor
opt.cursorline = true
cmd("highlight CursorLine guibg=#2e2e2d")

-- Columna al lado izquierdo de los números de linea
opt.signcolumn = "yes"

-- Comportamiento de la división de ventanas
opt.splitright = true
opt.splitbelow = true

-- Considerar al guión como parte de la palabra
opt.iskeyword:append("-")

-- Configurar los colores de las flechas de nvim-tree
cmd("highlight NvimTreeIndentMarker guifg=#2e78a0")

