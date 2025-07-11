return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
      { "<leader>o", "<cmd>Neotree focus<cr>", desc = "Focus Neo-tree" },
    },
    config = function()
      require("neo-tree").setup({})
      
      -- Window navigation shortcuts
      vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
      vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
      vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
      vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
      vim.keymap.set('n', '<leader>x', ':close<CR>', { desc = 'Close current window' })
    end
  }
}