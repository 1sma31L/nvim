return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    -- Setup Gruvbox
    require('gruvbox').setup {
      palette_overrides = {
        dark0 = '#1d1f21',
      },
    }

    -- Set default colorscheme
    vim.cmd [[colorscheme gruvbox]]

    -- Toggle function
    function ToggleGruvbox()
      if vim.o.background == 'dark' then
        vim.o.background = 'light'
      else
        vim.o.background = 'dark'
      end
      vim.cmd [[colorscheme gruvbox]]
    end

    -- Optional: map to a key (e.g., <leader>tg)
    vim.api.nvim_set_keymap('n', '<leader>tt', ':lua ToggleGruvbox()<CR>', { noremap = true, silent = true })
  end,
}
