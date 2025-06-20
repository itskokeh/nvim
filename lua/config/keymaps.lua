local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
keymap.set("t", "<C-h>", "[[<Cmd>wincmd h<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-j>", "[[<Cmd>wincmd j<CR>]]", opts) -- Navigate Down
keymap.set("t", "<C-k>", "[[<Cmd>wincmd k<CR>]]", opts) -- Navigate Up
keymap.set("t", "<C-l>", "[[<Cmd>wincmd l<CR>]]", opts) -- Navigate Right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navigate Right



-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false })

vim.api.nvim_set_keymap("n", "<C-`>", "<cmd>:terminal<CR>", opts)
vim.api.nvim_set_keymap("t", "<C-`>", "<cmd>:terminal<CR>", opts)
