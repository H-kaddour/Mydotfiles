runtime ./plug.vim
autocmd!

" Theme
set background=dark
colorscheme sonokai
"colorscheme gruvbox

"true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use sonokai
  "let g:gruvbox_contrast_dark = ''
  colorscheme sonokai
endif

" auto complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

" folding
set foldmethod=manual
"set foldmethod=indent
"set foldmethod=syntax
"set foldlevel=99
"set nofoldenable

" smart indent
filetype indent on
set filetype=html 
set smartindent       

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=UTF-8

" Line wrap
set wrap
set laststatus=2

" Highlight search results
set hlsearch
set incsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
""""set expandtab this one that missed up the norminette
set lazyredraw
set ignorecase
set smarttab
set rnu
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set title
set autoindent
set nocompatible
set nohlsearch

" Add asterisks in block comments
set formatoptions+=r

" auto + smart indent for code
set autoindent
set smartindent

set t_Co=256

" Mouse support
set mouse=a

" Map F8 to Tagbar
nmap <F8> :TagbarToggle<CR>
map <F2> :NERDTreeToggle<CR>

" CTags config
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" disable backup files
set nobackup
set nowritebackup

" no delays!
set updatetime=300
set cmdheight=1
set shortmess+=c
set signcolumn=yes

let b:sonokai_style = 'shusia'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" add cocstatus into lightline
let g:lightline = {
      \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Change between places of window CTRL+w big R
" vs filename
" sp filename
" vs or sp | terminal

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <Esc> <C-\><C-n>
" autocmd TermOpen * startinsert

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:█

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

let g:completor_clang_binary = '/usr/bin/clang'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}
let g:user42 = 'hkaddour'
let g:mail42 = 'hkaddour@student.1337.ma'
