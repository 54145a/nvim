return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_colors = function(colors)
        if vim.o.background == "dark" then
          --colors.bg = "NONE"
        end
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
    "github/copilot.vim",
  },
  {
    "tpope/vim-sleuth",
  },
}
