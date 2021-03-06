" Easy
nnoremap ; :

" Fzf integrated
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>t :Tags<CR>

" Code helpers
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Show docs
nnoremap <silent> K :call show_documentation()<CR>

" Switch buffs
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
