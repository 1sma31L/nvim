-- [mapleader]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [Escape Key]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- [Diagnostics]
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- [Disable Arrow Keys]
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!"<CR>')

-- [Windows]
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [Lines]
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- [Skip Lines]
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = 'Add line below' })
vim.keymap.set('n', '<leader>O', 'O<Esc>', { desc = 'Add line above' })

-- vim.keymap.set('i', ':w', '<C-o>:w<CR><Esc>', { desc = 'Save file' })
