local one_monokai = {
"cpea2506/one_monokai.nvim",
config = function()
  require("one_monokai").setup({
    italics = true,
    transparent = true,
})
end,
}

local gruvbox = {
"ellisonleao/gruvbox.nvim",
config = function ()
    require('gruvbox').setup({inverse = true, transparent_mode = true, bold = true})
end
}

return one_monokai
