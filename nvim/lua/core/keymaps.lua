vim.keymap.set("n", "<leader>l", ":set list!<cr>", {})


--[[
  => VIM key mappings
]]--

-- Set the leader keymap
vim.g.mapleader = ","

-- Fast saving
vim.keymap.set("n", "<leader>w", ":w!<cr>", {})

 -- Fast editing
vim.keymap.set("n", "<leader>e<space>", ":e<cr>", {})
vim.keymap.set("n", "<leader>ev", ":e ~/.vimrc<cr>", {})
vim.keymap.set("n", "<leader>ez", ":e ~/.zshrc<cr>", {})
vim.keymap.set("n", "<leader>et", ":e ~/.tmux.conf<cr>", {})

 -- Fast source rc
vim.keymap.set("n", "<leader>sv", ":so ~/.vimrc<cr>", {})

--[[
  => Visual mode
]]--

 -- Visual mode pressing * or # searches for the current selection
 -- Super useful! From an idea by Michael Naumann
vim.keymap.set("v", "<silent> *", ":call VisualSelection('f')<CR>", {})
vim.keymap.set("v", "<silent> #", ":call VisualSelection('b')<CR>", {})

--[[
  => Moving around, tabs, windows and buffers
]]--
 -- Treat long lines as break lines (useful when moving around in them)
vim.keymap.set("n", "j", "gj", {})
vim.keymap.set("n", "k", "gk", {})

 -- Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
vim.keymap.set("n", "<space>", "/", {})
vim.keymap.set("n", "<c-space>", "?", {})

 -- Disable highlight when <leader><cr> is pressed
vim.keymap.set("n", "<silent> <leader><cr>", ":noh<cr>", {})

 -- Smart way to move between windows
vim.keymap.set("n", "<C-j>", "<C-W>j", {})
vim.keymap.set("n", "<C-k>", "<C-W>k", {})
vim.keymap.set("n", "<C-h>", "<C-W>h", {})
vim.keymap.set("n", "<C-l>", "<C-W>l", {})

 -- Useful mappings for managing  buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<cr>", {})
vim.keymap.set("n", "<leader>ba", ":bufdo bdelete!<cr>", {})
vim.keymap.set("n", "<leader>bw", ":bufdo w<cr>", {})
vim.keymap.set("n", "<leader>bn", ":bn<cr>", {})
vim.keymap.set("n", "<leader>bp", ":bp<cr>", {})

 -- Useful mappings for managing tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", {})
vim.keymap.set("n", "<leader>to", ":tabonly<cr>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<cr>", {})
vim.keymap.set("n", "<leader>tm", ":tabmove ", { noremap = true, silent = false })
