vim.g.mapleader = " "
vim.keymap.set("n","<leader> ",vim.cmd.NvimTreeToggle)
vim.keymap.set('n','<leader>/',vim.cmd.noh)

-- Copiar para a área de transferência do sistema
vim.keymap.set('x', '<leader>c', '"+y', { noremap = true, silent = true })

-- Remapear os movimentos entre splits
vim.keymap.set('n', '<leader>h', '<C-W>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>j', '<C-W>j', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', '<C-W>k', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '<C-W>l', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', '<C-W>w', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', '<C-W>p', { noremap = true, silent = true })
