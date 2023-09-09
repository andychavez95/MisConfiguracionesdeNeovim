local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap.set

-- Configuración de atajos de teclado.
local on_attach = function(client, bufnr)
    local opts = { silent = true, buffer = bufnr }
    keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opts)
    keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
    keymap("n", "<leader>hd", "<cmd>Lspsaga hover_doc<CR>", opts)
    keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
    keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
end

-- Habilitar el autocompletado.
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configuración de lo servidores de los lenguajes.
lspconfig["html"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["tsserver"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["cssls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["lua_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["omnisharp"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["jdtls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["bashls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["emmet_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["sqlls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["lemminx"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

