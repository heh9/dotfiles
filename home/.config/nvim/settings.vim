set termguicolors
set backspace=indent,eol,start
set synmaxcol=800
set nocursorline
set relativenumber number
set showcmd
set hidden
set wildmenu
set wildmode=longest:full,full
set completeopt=menuone,longest,preview
set mouse=a
set showmatch
set mat=5
set laststatus=2
set nofoldenable
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set smarttab
set autoindent
set incsearch
set hlsearch
set listchars=tab:\ \ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set ignorecase
set smartcase
set list
set notimeout
set ttimeout
set ttimeoutlen=100
set updatetime=100
set showbreak=?
set clipboard+=unnamedplus
set viminfo+=n~/.vim/viminfo
set noswapfile
set noshowmode
set splitbelow
set splitright

" Plugins settings
let g:terraform_fmt_on_save=1

let g:tmux_navigator_no_mappings=1

let g:go_gopls_enabled=0
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_operators=1
let g:go_highlight_extra_types=1
let g:go_highlight_build_constraints=1
