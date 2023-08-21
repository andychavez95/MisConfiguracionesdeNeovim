-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Importar packer de forma segura.
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- Agregar la lista de plugins a instalar
return packer.startup(function(use)

    -- Packer puede autogestionarse
    use("wbthomason/packer.nvim")

    -- Colorscheme nightfly
    use("bluz71/vim-nightfly-guicolors")

    -- Colorscheme tokyonight
    use("folke/tokyonight.nvim")

    -- Colorscheme moonfly
    use("bluz71/vim-moonfly-colors")

    -- Colorscheme gruvbox
    use("ellisonleao/gruvbox.nvim")

    -- Colorscheme github
    use("projekt0n/github-nvim-theme")

    -- Iconos para una interfaz más intuitiva.
    use("nvim-tree/nvim-web-devicons")

    -- Barra de estado para Neovim.
    use("nvim-lualine/lualine.nvim")

    -- Autoguardado de archivos.
    use("Pocco81/auto-save.nvim")

    -- Comenta tu código.
    use("numToStr/Comment.nvim")

    -- Explorador de archivos para Neovim.
    use("nvim-tree/nvim-tree.lua")

    -- Dependencia para instalar Telescope
    use("nvim-lua/plenary.nvim")

    -- Busca archivos de forma rápida con Telescope.
    use({ "nvim-telescope/telescope.nvim", tag = "0.1.1" })

    -- Autocompletado.
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- Fragmentos de código reutilizable.
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- Instalación y administración de servidores LSP.
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- Configuración de los servidores LSP
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("glepnir/lspsaga.nvim")
    use("onsails/lspkind.nvim")

    use("nvim-treesitter/nvim-treesitter")

    if packer_bootstrap then
        require("packer").sync()
    end
end)

