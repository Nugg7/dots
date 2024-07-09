return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",   -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<C-n>', '<Cmd>Neotree toggle<CR>', {})
    -- keymap for copying to clipboard
    vim.keymap.set('v', '<leader>y', '"+y<CR>', {})
    -- keymap to paste without losing the word in the buffer
    vim.keymap.set('v', '<leader>p', '"_dP', {})
    -- <C-w>*2 to swtich between neotree and buffer
  end
}
