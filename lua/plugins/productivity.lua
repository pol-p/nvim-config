return {
  -- Surround text objects - for changing/deleting quotes, brackets, etc.
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Default keymaps:
        -- ys{motion}{char} - Add surround
        -- ds{char} - Delete surround  
        -- cs{target}{replacement} - Change surround
        -- Example: cs"' changes "hello" to 'hello'
      })
    end
  },

  -- Additional keymaps as a "virtual" plugin
  {
    "productivity-keymaps",
    dir = vim.fn.stdpath("config"), -- Use config directory as source
    name = "productivity-keymaps",
    event = "VeryLazy",
    config = function()
      -- Duplicate line
      vim.keymap.set('n', '<leader>d', function() vim.cmd("copy .") end, { desc = "Duplicate line" })
      
      -- Clear search highlighting
      vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<CR>', { desc = "Clear search highlight" })
      
      -- Quick save
      vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = "Save file" })
      
      -- Select all
      vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = "Select all" })
      
      -- Move lines in Normal mode (Ctrl+J/K to avoid LSP conflict)
      vim.keymap.set('n', '<C-j>', ':move .+1<CR>==', { desc = "Move line down" })
      vim.keymap.set('n', '<C-k>', ':move .-2<CR>==', { desc = "Move line up" })
      
      -- Visual mode keymaps (these work well)
      vim.keymap.set('v', '<C-j>', ":move '>+1<CR>gv=gv", { desc = "Move selection down" })
      vim.keymap.set('v', '<C-k>', ":move '<-2<CR>gv=gv", { desc = "Move selection up" })
      vim.keymap.set('v', '<', '<gv', { desc = "Indent left (stay selected)" })
      vim.keymap.set('v', '>', '>gv', { desc = "Indent right (stay selected)" })
    end,
  },
}
