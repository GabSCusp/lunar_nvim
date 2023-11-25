vim.g.mapleader = " "
vim.keymap.set("n","<leader> ",vim.cmd.NvimTreeToggle)
vim.keymap.set('n','<leader>/',vim.cmd.noh)
vim.api.nvim_set_keymap('x', '<leader>c', '"+y', { noremap = true, silent = true })
