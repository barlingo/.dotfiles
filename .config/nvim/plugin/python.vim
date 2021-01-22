let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python3'
let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
let python_highlight_all=1
let g:virtualenv_directory = '~/.virtualenvs/'
"
" PYTHON specific
autocmd Filetype python nnoremap <buffer> <F4> :w<CR>:AsyncRun -mode=term -pos=bottom -rows=12 python2 "$(VIM_FILEPATH)" <CR>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:AsyncRun -mode=term -pos=bottom -rows=12 python3 "$(VIM_FILEPATH)" <CR>
autocmd Filetype python nnoremap <buffer> <F6> :w<CR>:AsyncRun -mode=term -pos=pbottom -rows=12 .env/bin/python3 "$(VIM_FILEPATH)" <CR>
