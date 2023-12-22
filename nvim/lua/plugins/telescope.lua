return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        local telescope = require("telescope")

        telescope.setup({
          defaults = {
            path_display = { "truncate" },
          },
        })

        telescope.load_extension("fzf")
      end,
    },
  },
}
