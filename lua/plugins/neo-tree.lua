return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
    { '<leader>e', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
  },
  opts = {
    close_if_last_window = false,
    event_handlers = {
      {
        event = 'file_opened',
        handler = function()
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },

    window = {
      position = 'left',
      width = 25,
    },

    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = 'open_default',
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        never_show = {
          '.gitOld',
          '.git',
          '.next',
          'node_modules',
          '.cache',
          'dist',
        },
      },
    },
  },
}
