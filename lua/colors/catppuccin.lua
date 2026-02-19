-- ~/.config/nvim/lua/colors/catppuccin.lua
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    init = function()
      -- Set initial theme
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
    opts = {
      flavour = 'mocha', -- mocha, macchiato, frappe, latte
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        neotree = true,
        which_key = true,
        -- For more integrations, see: https://github.com/catppuccin/nvim#integrations
      },
    },
    keys = {
      -- Toggle between dark and light
      {
        '<leader>tt',
        function()
          local current = vim.g.colors_name or ''
          if current == 'catppuccin-latte' then
            vim.cmd.colorscheme 'catppuccin-mocha'
            vim.o.background = 'dark'
            print '🌙 Switched to Dark theme (Mocha)'
          else
            vim.cmd.colorscheme 'catppuccin-latte'
            vim.o.background = 'light'
            print '🌞 Switched to Light theme (Latte)'
          end
        end,
        desc = 'Toggle dark/light theme',
      },
      -- Direct dark theme
      {
        '<leader>td',
        '<cmd>colorscheme catppuccin-mocha<CR>',
        desc = 'Dark theme (Mocha)',
      },
      -- Direct macchiato (darker than mocha)
      {
        '<leader>tm',
        '<cmd>colorscheme catppuccin-macchiato<CR>',
        desc = 'Dark theme (Macchiato)',
      },
      -- Direct light theme
      {
        '<leader>tl',
        '<cmd>colorscheme catppuccin-latte<CR>',
        desc = 'Light theme (Latte)',
      },
      -- Frappe (another dark variant)
      {
        '<leader>tf',
        '<cmd>colorscheme catppuccin-frappe<CR>',
        desc = 'Dark theme (Frappe)',
      },
    },
  },
}
