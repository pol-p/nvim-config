-- My Neovim configuration
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.wrap = false
vim.opt.scrolloff = 8

require("config.lazy")

-- Current line number in golden color
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e5c07b", bold = true })