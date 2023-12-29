return {
  {
    "rcarriga/nvim-notify",
    init = function()
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
}
