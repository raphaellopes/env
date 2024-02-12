return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function ()
    local treesitterconfig = require('nvim-treesitter.configs')
    treesitterconfig.setup({
      ensure_installed = { "typescript", "javascript", "html", "css", "json", "lua", "yaml", "tsx", "graphql", "bash", "json", "jsonc", "vim", "vue" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
