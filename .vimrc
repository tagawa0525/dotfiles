"===============================================================================
" General
"===============================================================================
filetype on               " detect the type of file
filetype plugin indent on " Enable filetype-specific indenting and plugins
set nocompatible          " get out of horrible vi-compatible mode
set confirm               " enable error files and error jumping
set history=10000         " How many lines of history to remember
"set viminfo+=!            " make sure it can save viminfo
"===============================================================================
" Visual
"===============================================================================
set number          " turn on line numbers
set nowrap
set ruler           " Always show current positions along the bottom
set wildmenu        " turn on wild menu
set scrolloff=6     " Keep 6 lines (top/bottom) for scope
set laststatus=2
set statusline=%n:\ %<%f\ %m%r%h%w[%{&fileformat}][%{has('multi_byte')&&\ &fileencoding!=''?&fileencoding:&encoding}]\ 0x%B=%b%=%l,%c\ %P
set showmatch       " show matching brackets
set matchtime=5     " how many tenths of a second to blink matching brackets for
set noerrorbells    " don't make noise
set novisualbell    " don't blink
set linespace=0
set showcmd
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:< " what to show when I hit :set list
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/
highlight Pmenu     ctermbg=4
highlight PmenuSel  ctermbg=1
highlight PmenuSbar ctermbg=4
"===============================================================================
" UI
"===============================================================================
set hidden          " you can change buffer without saving
set cmdheight=1     " the command bar is 2 high
set backspace=2     " make backspace work normal
set report=0        " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\
set mouse=a         " use mouse everywhere
set ttymouse=xterm2 " use mouse in screen
set mousehide
set ttyfast
set lazyredraw      " do not redraw while running macros (much faster)
set iminsert=0
set imsearch=0
"===============================================================================
" Path
"===============================================================================
set backup
set swapfile
set backupdir=$HOME/.vim/vimBackup
set directory=$HOME/.vim/vimSwap
"===============================================================================
" Indent
"===============================================================================
set autoindent   " autoindent
set smartindent  " smartindent
set cindent      " do c-style indenting
"set fo=tcrqn     " See Help (complex)
"===============================================================================
" Tab
"===============================================================================
"set expandtab
set tabstop=8
set softtabstop=8
set smarttab     " use tabs at the start of a line, spaces elsewhere
set shiftwidth=4
"===============================================================================
" Search
"===============================================================================
set hlsearch        " do not highlight searched for phrases
set incsearch       " BUT do highlight as you type you search phrase
set ignorecase
set smartcase
"===============================================================================
" Folding
"===============================================================================
set foldenable        " Turn on folding
set foldmethod=indent " Make folding indent sensitive
set foldlevel=100     " Don't autofold anything (but I can still fold manually)
set foldopen-=search  " don't open folds when you search into them
set foldopen-=undo    " don't open folds when you undo stuff
"===============================================================================
" keymap
"===============================================================================
" normal mode
nnoremap <unique> j gj
nnoremap <unique> k gk
nnoremap <unique> ; :
nnoremap <unique> : ;
" quick edit
nnoremap <unique> <CR>    i<CR><Esc>
nnoremap <unique> <Tab>   i<Tab><Esc><Right>
"nnoremap <unique> <Space> i<Space><Esc><Right>
nnoremap <unique> <Space>   <C-f>
" visual mode
vnoremap <unique> j gj
vnoremap <unique> k gk
vnoremap <unique> ; :
vnoremap <unique> : ;
" Buffer
nnoremap <unique> ,x  :bdelete<CR>
nnoremap <unique> ,v  :vsplit<CR>
nnoremap <unique> ,o  :bufdo only<CR>
nnoremap <unique> ,1  :e #1<CR>
nnoremap <unique> ,2  :e #2<CR>
nnoremap <unique> ,3  :e #3<CR>
nnoremap <unique> ,4  :e #4<CR>
nnoremap <unique> ,5  :e #5<CR>
nnoremap <unique> ,6  :e #6<CR>
nnoremap <unique> ,7  :e #7<CR>
nnoremap <unique> ,8  :e #8<CR>
nnoremap <unique> ,9  :e #9<CR>
" FuzzyFinder
nnoremap <silent> <unique> ,b :FuzzyFinderBuffer<CR>
nnoremap <silent> <unique> ,f :FuzzyFinderFile<CR>
nnoremap <silent> <unique> ,m :FuzzyFinderMruFile<CR>
nnoremap <silent> <unique> ,d :FuzzyFinderDir<CR>
nnoremap <silent> <unique> ,c :FuzzyFinderMruCmd<CR>
"===============================================================================
" Syntax
"===============================================================================
syntax on
" scheme
autocmd FileType scheme :let is_gauche=1
"===============================================================================
" Plugins
"===============================================================================
"" QuickRun
let g:mapleader=","
