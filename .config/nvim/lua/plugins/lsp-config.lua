return {
	"neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
		"hrsh7th/cmp-nvim-lsp",  -- needed for capabilities
    },
	config = function()
	   require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"eslint",
				"jdtls",
				"pyright",
				"clangd",
			}
		})
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		vim.lsp.config('pyright', {
			capabilities = capabilities,	
		})
		vim.lsp.enable('pyright')
	end
}
