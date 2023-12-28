return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
      require("catppuccin").setup({
        -- flavour = "latte",
        transparent_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
