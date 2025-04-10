return {
  'akinsho/toggleterm.nvim',
  version = '*',

  opts = {
    open_mapping = [[<C-\>]],
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,

    float_opts = {
      border = 'curved',
      winblend = 3,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
  },
}
