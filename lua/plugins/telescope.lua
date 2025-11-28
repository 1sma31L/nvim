return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',

      build = 'make',

      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require 'telescope.builtin'

    vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]uzzy Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]uzzy [S]elect Telescope' })
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]uzzy current [W]ord' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]uzzy [D]iagnostics' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]uzzy by [G]rep' })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]uzzy [F]iles' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]uzzy [K]eymaps' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]uzzy [H]elp' })
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]uzzy [R]esume' })
    vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Delete buffer' })
    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    vim.keymap.set('n', '<leader>f/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[F]uzzy [/] in Open Files' })

    vim.keymap.set('n', '<leader>fn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[F]uzzy [N]eovim files' })
  end,
}
