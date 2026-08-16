return {
	{
	  "LazyVim/LazyVim",
		opts = {
			colorscheme = "default",
		},
	},
	{
		"lambdalisue/suda.vim",
		cmd = { "SudaRead", "SudaWrite" },
	},
	{
		"github/copilot.vim",
	},
	{
	 "tpope/vim-sleuth",
	},
	{
		"WieeRd/auto-lsp.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		event = "VeryLazy",
		opts = {},
	},
}
