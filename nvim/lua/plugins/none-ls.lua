return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua, --lua
        null_ls.builtins.formatting.prettier, -- js
        null_ls.builtins.formatting.csharpier, --c#
        null_ls.builtins.formatting.biome, --java/json
        null_ls.builtins.formatting.isort, --python
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.trivy,
        null_ls.builtins.diagnostics.pylint
      }
    })
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
