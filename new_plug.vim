call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
" Themes
Plug 'sainnhe/sonokai'
"Plug 'morhetz/gruvbox'

" Icons
Plug 'ryanoasis/vim-devicons'

" plugin of auto complete
Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'cohama/lexima.vim'
" Plug 'tpope/vim-surround'
" Plug 'tommcdo/vim-lion'
Plug 'lewis6991/spellsitter.nvim'

" Copy outside of vim <cp>
Plug 'christoomey/vim-system-copy'

" Compile the code and give warnings
Plug 'dense-analysis/ale'

" Tabline status
Plug 'powerline/powerline'
Plug 'itchyny/lightline.vim'
Plug 'tribela/vim-transparent'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
"Plug 'romgrk/barbar.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'universal-ctags/ctags'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug '42Paris/42header'
"Plug 'vim-syntastic/syntastic'
"Plug 'Shirk/vim-gas'
call plug#end()
