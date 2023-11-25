vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.laststatus = 3


-- Mostrar a barra de comando quando gravando um macro --
vim.api.nvim_create_autocmd({ "RecordingEnter" }, {
  callback = function()
               vim.opt.cmdheight = 1
             end,
})
vim.api.nvim_create_autocmd({ "RecordingLeave" }, {
  callback = function()
               vim.opt.cmdheight = 0
             end,
})
----------------------------------------------------------

-- Mostrar a barra de comando quando entrar em modo de comando --
vim.cmd[[
  augroup CmdHeight
    autocmd!
    autocmd VimEnter * set cmdheight=0 
    autocmd CmdlineEnter * set cmdheight=1
    autocmd CmdlineLeave * set cmdheight=0
  augroup END
]]
-----------------------------------------------------------------

