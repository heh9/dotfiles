nnoremap ; :
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>r :Rg<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
