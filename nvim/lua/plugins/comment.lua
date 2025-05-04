return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      opleader = {
        line = "<leader>c<space>",
      },
      toggler = {
        line = "<leader>c<space>",
      },
    })
  end,
}
