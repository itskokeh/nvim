local keymap = vim.keymap
local vapiset = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true}

-- Directory navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Terminal
function toggle_terminal()
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

vim.api.nvim_set_keymap('n', '<C-`>', '<cmd>lua toggle_terminal()<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-`>', '<cmd>lua toggle_terminal()<CR>', opts)
