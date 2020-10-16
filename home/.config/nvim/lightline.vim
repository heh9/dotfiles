set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [  'gitbranch', 'readonly', 'buffers' ] ],
    \   'right': [ [ 'lineinfo' ], [ 'coc_errors', 'coc_warnings' ], [ 'fileformat', 'filetype' ] ]
    \ },
    \ 'component': {
    \   'lineinfo': ' %2l:%-2v%<'
    \ },
    \ 'component_function': {
    \   'readonly': 'LightlineReadonly',
    \   'gitbranch': 'gitbranch#name'
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
