return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 
    "nvim-tree/nvim-web-devicons", 
  },
  config = function()
    require("lualine").setup {
      options = {
        theme = "dracula",
      },
      tabline = {
        lualine_a = {"buffers"},
        lualine_z = {"tabs"}
      }
    }
  end,
}
