if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

set termguicolors

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-file-browser.nvim'

    Plug 'numToStr/Comment.nvim'
   
    " LSP 
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " Colorscheme
    Plug 'EdenEast/nightfox.nvim'

call plug#end()

" runtime! conf.d/*.nvim
" runtime! conf.d/*.vim
" runtime! conf.d/*.lua

set background=dark
colorscheme nordfox
let g:airline_theme='base16'
autocmd BufNewFile,BufRead *.nvim setfiletype vim

