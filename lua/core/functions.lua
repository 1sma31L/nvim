local M = {}

function M.run_current_file()
  local filetype = vim.bo.filetype
  local cmd = ''
  if filetype == 'python' then
    cmd = 'python3 ' .. vim.fn.expand '%'
  elseif filetype == 'javascript' then
    cmd = 'node ' .. vim.fn.expand '%'
  elseif filetype == 'typescript' then
    cmd = 'ts-node ' .. vim.fn.expand '%'
  else
    print('No run command configured for filetype: ' .. filetype)
    return
  end

  local Terminal = require('toggleterm.terminal').Terminal
  local runner = Terminal:new {
    cmd = cmd,
    direction = 'float',
    close_on_exit = false,
  }

  runner:toggle()
end

return M
