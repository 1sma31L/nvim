return {
  'olimorris/onedarkpro.nvim',
  config = function()
    vim.cmd 'colorscheme onedark'
  end,
  priority = 1000, -- Ensure it loads first
}
