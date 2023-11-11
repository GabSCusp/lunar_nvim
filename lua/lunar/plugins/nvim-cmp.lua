return{
'hrsh7th/nvim-cmp',
event = 'InsertEnter',
dependencies = {
	'hrsh7th/cmp-buffer', --procrura por texto no buffer
	'hrsh7th/cmp-path', --procura por caminhos de arquivos do sistema
	"L3MON4D3/LuaSnip", --sugestões
	'saadparwaiz1/cmp_luasnip', --autocompletar
	'rafamadriz/friendly-snippets',
},
config = function()
	local cmp = require('cmp')
	local luasnip = require('luasnip')
	require('luasnip.loaders.from_vscode').lazy_load()

   cmp.setup({
	completion = {completeopt = 'menu,menuone,preview,noselect',},
	snippet = {expand = function(args)
		luasnip.lsp_expand(args.body)
	end,
	},

	mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({select = false}),
	}),

	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
		{name = 'buffer'},
		{name = 'path'},
	}),
   })
end,
}
