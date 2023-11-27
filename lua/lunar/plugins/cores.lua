local one_monokai = {
"cpea2506/one_monokai.nvim",
config = function()
  require("one_monokai").setup({
    italics = true,
    transparent = true,
})
end,
}

local kana = {
"rebelot/kanagawa.nvim",
config = function ()
    require("kanagawa").setup({transparent = false})
    require("kanagawa").load("wave") -- Opções: dragon, wave ou lotus
end,
}

local fluoromachine = {
    {
        'maxmx03/fluoromachine.nvim',
        config = function ()
         local fm = require 'fluoromachine'

         fm.setup {
            glow = false,
            transparent = "full",
            theme = 'fluoromachine', -- Opções: fluoromachine, retrowave, delta
         }

         vim.cmd.colorscheme 'fluoromachine'
        end
    }
}

return fluoromachine
