return {
  -- GitHub Copilot plugin
  {
    'github/copilot.vim',
    config = function()
      -- Enable tab completion
      vim.g.copilot_no_tab_map = false -- This re-enables the use of Tab for Copilot

      -- Optional: Customize the key mappings for Copilot
      vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { expr = true, silent = true }) -- Tab key will now accept Copilot's suggestion
      vim.api.nvim_set_keymap('i', '<S-Tab>', 'copilot#Next()', { expr = true, silent = true }) -- Shift+Tab to cycle through suggestions
    end,
  },
}
