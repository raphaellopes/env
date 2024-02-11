--[[ 
  => General
]]--
-- Sets how many lines of history VIM has to remember
vim.cmd("set history=700")

-- Enable filetype plugins
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- Set to auto read when a file is changed from the outside
vim.cmd("set autoread")

-- Set the leader keymap
vim.g.mapleader = ","

--[[
  => Install lazy nvim for package manager
     Basically it will install lazy.nvim if it's not installed
]]--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- it loads lazy
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}
require("lazy").setup(plugins, opts)

-- setup the theme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- setup telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})

-- setup treesitter
local treesitterconfig = require('nvim-treesitter.configs')
treesitterconfig.setup({
  ensure_installed = { "typescript", "javascript", "html", "css", "json", "lua", "yaml", "tsx", "graphql", "bash", "json", "jsonc", "scss", "vim", "vue" },
  highlight = { enable = true },
  indent = { enable = true },
})
