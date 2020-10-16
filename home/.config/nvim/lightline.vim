set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'buffers' ] ],
    \   'right': [ [ 'lineinfo' ], [ 'coc_errors', 'coc_warnings' ], [ 'fileformat', 'filetype' ] ]
    \ },
    \ 'component': {
    \   'lineinfo': ' %3l:%-2v%<',
    \ },
    \ 'component_function': {
    \   'readonly': 'LightlineReadonly'
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers',
    \   'coc_errors': 'LightlineCocErrors',
    \   'coc_warnings': 'LightlineCocWarnings'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel',
    \   'coc_errors': 'error',
    \   'coc_warnings': 'warning'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': {'left': '', 'right': '' }
    \ }

" Funcs
function! s:count(level) abort
    let info = get(b:, 'coc_diagnostic_info', {})
    return get(info, a:level, 0)
endfunction

function! LightlineCocErrors() abort
    let l:counts = s:count('error')
    return l:counts == 0 ? '' : printf('× %d', l:counts)
endfunction

function! LightlineCocWarnings() abort
    let l:counts = s:count('warning')
    return l:counts == 0 ? '' : printf('• %d', l:counts)
endfunction

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
"       \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
"       \ },
"       \ 'component_function': {
"       \   'fugitive': 'LightlineFugitive',
"       \   'filename': 'LightlineFilename',
"       \   'fileformat': 'LightlineFileformat',
"       \   'filetype': 'LightlineFiletype',
"       \   'fileencoding': 'LightlineFileencoding',
"       \   'mode': 'LightlineMode',
"       \   'ctrlpmark': 'CtrlPMark',
"       \ },
"       \ 'component_expand': {
"       \   'syntastic': 'SyntasticStatuslineFlag',
"       \ },
"       \ 'component_type': {
"       \   'syntastic': 'error',
"       \ },
"       \ 'subseparator': { 'left': '|', 'right': '|' }
"       \ }
" function! LightlineModified()
"   return &ft ==# 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
" endfunction
" function! LightlineReadonly()
"   return &ft !~? 'help' && &readonly ? 'RO' : ''
" endfunction
" function! LightlineFilename()
"   let fname = expand('%:t')
"   return fname ==# 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
"         \ fname =~# '^__Tagbar__\|__Gundo\|NERD_tree' ? '' :
"         \ &ft ==# 'vimfiler' ? vimfiler#get_status_string() :
"         \ &ft ==# 'unite' ? unite#get_status_string() :
"         \ &ft ==# 'vimshell' ? vimshell#get_status_string() :
"         \ (LightlineReadonly() !=# '' ? LightlineReadonly() . ' ' : '') .
"         \ (fname !=# '' ? fname : '[No Name]') .
"         \ (LightlineModified() !=# '' ? ' ' . LightlineModified() : '')
" endfunction
" function! LightlineFugitive()
"   try
"     if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*FugitiveHead')
"       let mark = ''  " edit here for cool mark
"       let branch = FugitiveHead()
"       return branch !=# '' ? mark.branch : ''
"     endif
"   catch
"   endtry
"   return ''
" endfunction
" function! LightlineFileformat()
"   return winwidth(0) > 70 ? &fileformat : ''
" endfunction
" function! LightlineFiletype()
"   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction
" function! LightlineFileencoding()
"   return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
" endfunction
" function! LightlineMode()
"   let fname = expand('%:t')
"   return fname =~# '^__Tagbar__' ? 'Tagbar' :
"         \ fname ==# 'ControlP' ? 'CtrlP' :
"         \ fname ==# '__Gundo__' ? 'Gundo' :
"         \ fname ==# '__Gundo_Preview__' ? 'Gundo Preview' :
"         \ fname =~# 'NERD_tree' ? 'NERDTree' :
"         \ &ft ==# 'unite' ? 'Unite' :
"         \ &ft ==# 'vimfiler' ? 'VimFiler' :
"         \ &ft ==# 'vimshell' ? 'VimShell' :
"         \ winwidth(0) > 60 ? lightline#mode() : ''
" endfunction
" function! CtrlPMark()
"   if expand('%:t') ==# 'ControlP' && has_key(g:lightline, 'ctrlp_item')
"     call lightline#link('iR'[g:lightline.ctrlp_regex])
"     return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
"           \ , g:lightline.ctrlp_next], 0)
"   else
"     return ''
"   endif
" endfunction
" let g:ctrlp_status_func = {
"   \ 'main': 'CtrlPStatusFunc_1',
"   \ 'prog': 'CtrlPStatusFunc_2',
"   \ }
" function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
"   let g:lightline.ctrlp_regex = a:regex
"   let g:lightline.ctrlp_prev = a:prev
"   let g:lightline.ctrlp_item = a:item
"   let g:lightline.ctrlp_next = a:next
"   return lightline#statusline(0)
" endfunction
" function! CtrlPStatusFunc_2(str)
"   return lightline#statusline(0)
" endfunction
" let g:tagbar_status_func = 'TagbarStatusFunc'
" function! TagbarStatusFunc(current, sort, fname, ...) abort
"   return lightline#statusline(0)
" endfunction
" " Syntastic can call a post-check hook, let's update lightline there
" " For more information: :help syntastic-loclist-callback
" function! SyntasticCheckHook(errors)
"   call lightline#update()
" endfunction
" let g:unite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0
" let g:vimshell_force_overwrite_statusline = 0
