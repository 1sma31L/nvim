return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'

    -- Replace this with your custom ASCII logo
    dashboard.section.header.val = {
      '         .-.',
      '       __/   (',
      "     , '-.____\\",
      "      u=='/  \\",
      '         /_/  \\',
      "       .-''   |",
      '      (  ____/_____',
      '      _>_/.--------',
      '      \\\\\\///',
      '       //',
      '      //',
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', 'New File', ':ene <BAR> startinsert<CR>'),
      dashboard.button('f', 'Find File', ':Telescope find_files<CR>'),
      dashboard.button('r', 'Recent Files', ':Telescope oldfiles<CR>'),
      dashboard.button('t', 'Find Text', ':Telescope live_grep<CR>'),
      dashboard.button('c', 'Configuration', ':cd ~/.config/nvim | e $MYVIMRC<CR>'),
    }
    -- Add footer
    dashboard.section.footer.val = {
      'Enter The Void',
    }
    require('alpha').setup(dashboard.config)
  end,
}
