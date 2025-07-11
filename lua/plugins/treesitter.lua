return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" }, -- Load when opening a file
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Basic languages to install
        ensure_installed = { "lua", "vim", "go", "javascript", "html", "css", "python", "java", "c", "cpp" },
        
        -- Auto install when opening a file
        auto_install = true,
        
        -- Syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        
        -- Indentation
        indent = {
          enable = true,
        },
      })
    end,
  },
}
