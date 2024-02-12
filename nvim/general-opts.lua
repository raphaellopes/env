-- Sets how many lines of history VIM has to remember
vim.cmd("set history=700")

-- Enable filetype plugins
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- Set to auto read when a file is changed from the outside
vim.cmd("set autoread")

-- Set the leader keymap
vim.g.mapleader = ","
