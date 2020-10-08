au CompleteDone * pclose

au BufRead,BufNewFile *.yaml.tpl set filetype=yaml
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au BufRead,BufNewFile *.hcl set filetype=terraform

au Filetype go setlocal tabstop=2 shiftwidth=2 softtabstop=2 listchars=tab:\ \ ,eol:¬,trail:⋅,extends:❯,precedes:❮

au FileType json setlocal ts=2 sts=2 sw=2 expandtab

au FileType html setlocal ts=2 sts=2 sw=2 expandtab

au FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
au FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
au FileType vue setlocal ts=2 sts=2 sw=2 expandtab
