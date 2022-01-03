if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdtree'
    Plug 'lifepillar/vim-solarized8'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'numToStr/Comment.nvim'
   
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
call plug#end()

set background=dark
autocmd vimenter * ++nested colorscheme solarized8

runtime! conf.d/*.nvim
runtime! conf.d/*.vim
runtime! conf.d/*.lua

let g:airline_theme='solarized_flood'
autocmd BufNewFile,BufRead *.nvim setfiletype vim

