""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""
" FRONT-END Plugin
""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""
if has('nvim')
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" coc
" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes



