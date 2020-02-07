set noshowmode

let g:airline_theme='heh9'

call airline#parts#define_raw('pp', '%3p%%')
call airline#parts#define_accent('pp', 'bold')
call airline#parts#define_raw('ll', '%l/%L')
call airline#parts#define_accent('ll', 'bold')
call airline#parts#define_raw('cc', '%c')
call airline#parts#define_accent('cc', 'bold')
let g:airline_section_a=airline#section#create(['mode'])
let g:airline_section_b=airline#section#create(['path'])
let g:airline_section_c=''
let g:airline_section_z=airline#section#create(['pp', ' | ', 'll' , ' | ', 'cc'])
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#right_alt_sep=''
