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
vim.cmd("set scrolloff=7")

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
-- vim.cmd("scriptencoding utf-8")
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
vim.opt.listchars:append({
  tab = "| ",
  trail = ".",
  precedes = "<",
  extends = ">",
  eol = "$",
})

-- setup some tabs
local setupTabs = function()
  vim.cmd("set switchbuf=useopen,usetab,newtab")
  vim.cmd("set showtabline=2")
end
pcall(setupTabs)

-- Remember info about open buffers on close
vim.cmd("set viminfo^=%")

-- Return to last edit position when opening files (You want this!)
vim.api.nvim_create_autocmd("BufReadPost", {
  command = [[if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]
})

-- Always show the status line
vim.cmd("set laststatus=2")
