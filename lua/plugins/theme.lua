return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      light_style = "day",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {},
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_light_mode = function()
        vim.o.background = "light"
        vim.cmd("colorscheme tokyonight")
      end,
    },
  },
}
