return {
  {
    "sindrets/diffview.nvim",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
    },
    init = function()
      require("diffview").setup({
        enhanced_diff_hl = true,
      })
    end,
  },
}
