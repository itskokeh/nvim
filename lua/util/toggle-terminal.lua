local function toggle_terminal()
  local bufnr = vim.fn.bufnr('terminal')
  if bufnr == -1 then
    vim.cmd('botright split | terminal')
    vim.cmd('startinsert')
  else
    local winid = vim.fn.bufwinid(bufnr)
    if winid == -1 then
      vim.cmd('botright split | buffer' ..butnr)
      vim.cmd('startinsert')
    else
      vim.api.nvim_win_hide(winid)
    end
  end
end

vim.api.nvim_set_keymap('n', '<C-`>', '<cmd>lua toggle_terminal()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-`>', '<cmd>lua toggle_terminal()<CR>', { noremap = true, silent = true })

