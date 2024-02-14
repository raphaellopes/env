return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({
      line_mapping = "<leader>c<space>",
      operator_mapping = "<leader><leader>c<space>",
    })
  end,
}
