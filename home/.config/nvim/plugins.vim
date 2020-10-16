call plug#begin(stdpath('data') . '/plugged')

" Functional plugins
Plug 'arcticicestudio/nord-vim'
Plug '/opt/local/share/fzf/vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'wellle/targets.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Syntax extensions
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'herringtondarkholme/yats.vim'

" Language server extensions
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
