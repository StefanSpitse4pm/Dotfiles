return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	dependencies = {
    "rafamadriz/friendly-snippets", 
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		local ls = require("luasnip")
		vim.keymap.set({"i", "s"}, "<C-K>", function()
		  if ls.expand_or_jumpable() then
			ls.expand_or_jump()
		  end
		end, { silent = true })

		vim.keymap.set({"i", "s"}, "<C-J>", function()
		  if ls.jumpable(-1) then
			ls.jump(-1)
		  end
		end, { silent = true })

		vim.keymap.set({"i", "s"}, "<C-L>", function()
		  if ls.jumpable(1) then
			ls.jump(1)
		  end
		end, { silent = true })

		vim.keymap.set({"i", "s"}, "<C-E>", function()
		  if ls.choice_active() then
			ls.change_choice(1)
		  end
		end, { silent = true })
	end
}
