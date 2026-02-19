-- ~/.config/nvim/lua/custom/plugins.lua
return {
  {
    'romgrk/barbar.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    keys = {
      -- Navigate buffers
      { '<Tab>', '<Cmd>BufferNext<CR>', desc = 'Next buffer' },
      { '<S-Tab>', '<Cmd>BufferPrevious<CR>', desc = 'Previous buffer' },

      -- Close buffer
      { '<leader><CR>', '<Cmd>BufferClose<CR>', desc = 'Close buffer' },

      -- Go to buffer by number
      { '<A-1>', '<Cmd>BufferGoto 1<CR>', desc = 'Go to buffer 1' },
      { '<A-2>', '<Cmd>BufferGoto 2<CR>', desc = 'Go to buffer 2' },
      { '<A-3>', '<Cmd>BufferGoto 3<CR>', desc = 'Go to buffer 3' },
      { '<A-4>', '<Cmd>BufferGoto 4<CR>', desc = 'Go to buffer 4' },
      { '<A-5>', '<Cmd>BufferGoto 5<CR>', desc = 'Go to buffer 5' },
      { '<A-6>', '<Cmd>BufferGoto 6<CR>', desc = 'Go to buffer 6' },
      { '<A-7>', '<Cmd>BufferGoto 7<CR>', desc = 'Go to buffer 7' },
      { '<A-8>', '<Cmd>BufferGoto 8<CR>', desc = 'Go to buffer 8' },
      { '<A-9>', '<Cmd>BufferGoto 9<CR>', desc = 'Go to buffer 9' },

      -- Reorder buffers
      { '<A-h>', '<Cmd>BufferMovePrevious<CR>', desc = 'Move buffer left' },
      { '<A-l>', '<Cmd>BufferMoveNext<CR>', desc = 'Move buffer right' },
    },
  },
}
