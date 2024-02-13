-- Sets how many lines of history VIM has to remember
vim.cmd("set history=700")

-- Enable filetype plugins
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- Set to auto read when a file is changed from the outside
vim.cmd("set autoread")

--[[
  => VIM user interface
]]--
vim.cmd("scrolloff=7")

-- Turn on the WiLd menu
vim.cmd("set wildmenu")

-- Ignore compiled files
vim.cmd("set wildignore+=**/node_modules/**,**/.git/**")

-- Always show current position
vim.cmd("set ruler")

-- Height of the command bar
vim.cmd("set cmdheight=2")
vim.cmd("set shortmess=a")

-- A buffer becomes hidden when it is abandoned
vim.cmd("set hidden")

-- Configure backspace so it acts as it should act
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set whichwrap+=<,>,h,l")

-- Ignore case when searching
vim.cmd("set ignorecase")

-- When searching try to be smart about cases
vim.cmd("set smartcase")

-- Highlight search results
vim.cmd("set hlsearch")

-- Makes search act like search in modern browsers
vim.cmd("set incsearch")

-- Don't redraw while executing macros (good performance config)
vim.cmd("set lazyredraw")

-- For regular expressions turn magic on
vim.cmd("set magic")

-- Show matching brackets when text indicator is over them
vim.cmd("set showmatch")

-- How many tenths of a second to blink when matching brackets
vim.cmd("set matchtime=2")

-- No annoying sound on errors
vim.cmd("set noerrorbells")
vim.cmd("set novisualbell")
vim.cmd("set t_vb=")
vim.cmd("set timeoutlen=500")

-- Line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

--[[
  => Colors and Fonts
]]--
 -- Enable syntax highlighting
vim.cmd("syntax enable")

-- colorscheme wombat256mod
vim.cmd("set background=dark")

 -- Set utf8 as standard encoding and en_US as the standard language
vim.cmd("set encoding=utf-8")
vim.cmd("scriptencoding utf-8")
vim.cmd("set fileencoding=utf-8")

-- Use Unix as the standard file type
vim.cmd("set fileformats=unix,dos,mac")

--[[ 
  => Files, backups and undo
]]--
 -- Turn backup off, since most stuff is in SVN, git et.c anyway...
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("set noswapfile")

--[[ 
  => Tabs, indenting, wrapping
]]--
-- Use spaces instead of tabs
vim.cmd("set expandtab")

 -- Be smart when using tabs ;)
vim.cmd("set smarttab")

 -- 1 tab == 2 spaces
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")

 -- Linebreak on 120 characters
vim.cmd("set linebreak")

vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set wrap")

 -- Show invisibles
vim.cmd("set list")
vim.cmd("set list listchars=tab:\|\ ,trail:.,precedes:<,extends:>,eol:$")
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
vim.keymap.set("n", "<leader>bd", ":Bdelete<cr>", {})
vim.keymap.set("n", "<leader>ba", ":bufdo Bdelete!<cr>", {})
vim.keymap.set("n", "<leader>bw", ":bufdo w<cr>", {})
vim.keymap.set("n", "<leader>bn", ":bn<cr>", {})
vim.keymap.set("n", "<leader>bp", ":bp<cr>", {})

 -- Useful mappings for managing tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", {})
vim.keymap.set("n", "<leader>to", ":tabonly<cr>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<cr>", {})
vim.keymap.set("n", "<leader>tm", ":tabmove ", { noremap = true, silent = false })


