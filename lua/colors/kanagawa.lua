-- ~/.config/nvim/lua/colors/kanagawa.lua
return {
  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa-paper').setup {
        -- Optional: add your customization here
        transparent = false,
        terminal_colors = true,
      }

      -- Set dark theme by default
      vim.cmd.colorscheme 'kanagawa-paper-ink'
    end,
    keys = {
      {
        '<leader>tt',
        function()
          local current = vim.g.colors_name or ''
          if current == 'kanagawa-paper-ink' then
            vim.cmd.colorscheme 'kanagawa-paper-canvas'
            vim.o.background = 'light'
            print '🌞 Switched to Light theme (Canvas)'
          else
            vim.cmd.colorscheme 'kanagawa-paper-ink'
            vim.o.background = 'dark'
            print '🌙 Switched to Dark theme (Ink)'
          end
        end,
        desc = 'Toggle dark/light theme',
      },
    },
  },
}
