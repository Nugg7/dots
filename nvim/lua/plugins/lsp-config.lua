return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "html", "markdown_oxide", "basedpyright", "jsonls", "jdtls", "quick_lint_js", "omnisharp", "csharp_ls", "clangd", "cssls", "biome", "eslint", "tsserver", "unocss" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            }) --lua
            lspconfig.csharp_ls.setup({
                capabilities = capabilities
            }) --c#
            lspconfig.clangd.setup({
                capabilities = capabilities
            }) --c++ and c
            lspconfig.html.setup({
                capabilities = capabilities
            }) --html
            lspconfig.cssls.setup({
                capabilities = capabilities
            }) --css
            lspconfig.unocss.setup({
                capabilities = capabilities
            }) --css
            lspconfig.markdown_oxide.setup({
                capabilities = capabilities
            }) --markdown
            lspconfig.basedpyright.setup({
                capabilities = capabilities
            }) --python
            lspconfig.jsonls.setup({
                capabilities = capabilities
            }) --json
            lspconfig.jdtls.setup({
                capabilities = capabilities
            }) --java
            lspconfig.biome.setup({
                capabilities = capabilities
            }) --javascript
            lspconfig.eslint.setup({
                capabilities = capabilities
            }) --javascript
            lspconfig.tsserver.setup({
                capabilities = capabilities
            }) --typescript
            lspconfig.omnisharp.setup({
                capabilities = capabilities
            })                      -- c#
            lspconfig.sourcekit.setup({
                cmd = { "/bin/sourcekit-lsp" }, -- Path to sourcekit-lsp executable
                root_dir = function(fname)
                    return lspconfig.util.root_pattern("Package.swift", ".git")(fname) or
                    lspconfig.util.find_git_ancestor(fname)
                end,
                capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Use nvim-cmp capabilities
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
        end
    }
}
