return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = false
    vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<S-Tab>', 'copilot#Next()', { expr = true, silent = true })
  end,
}
