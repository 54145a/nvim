return {
	{
		"folke/tokyonight.nvim",
		opts = {
			on_colors = function(colors)
				colors.bg = "NONE"
			end,
		},
	},
	{
		"f-person/auto-dark-mode.nvim",
		opts = {},
	},
	{
		"lambdalisue/suda.vim",
		cmd = { "SudaRead", "SudaWrite" },
	},
	{
		--"github/copilot.vim",
	},
	{
	 "tpope/vim-sleuth",
	},
}
