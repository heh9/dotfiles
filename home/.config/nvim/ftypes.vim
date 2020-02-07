autocmd CompleteDone * pclose

au BufRead,BufNewFile *.yaml.tpl set filetype=yaml
au BufRead,BufNewFile *.hcl set filetype=terraform
au Filetype go setlocal tabstop=8 shiftwidth=8 softtabstop=8
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType json setlocal ts=2 sts=2 sw=2 expandtab
