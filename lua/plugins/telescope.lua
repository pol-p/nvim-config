return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { "Telescope" }, -- Only load when used
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
    },
    config = function()
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = require('telescope.actions').move_selection_previous,
              ["<C-j>"] = require('telescope.actions').move_selection_next,
            }
          }
        }
      })
    end
  }
}