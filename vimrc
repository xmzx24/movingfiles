if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    set dictionary-=/etc/vim/php_funclist.txt dictionary+=/etc/vim/php_funclist.txt
    set complete-=k complete+=k
endfunction
set nu

nnoremap <silent><F2> :TlistToggle<CR>
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType php setlocal et sta sw=4 sts=4

set list
set lcs=tab:+-,trail:$
hi Normal ctermbg=NONE


set pastetoggle=<F9>

set tags=tags;
    set autochdir

set autoindent
