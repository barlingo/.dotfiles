" NORMAL MODE REMAPS
" Force to use h l k j
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" Navigate through VIM windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" Resize Window
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" Page up and Down navigation
nnoremap <C-k> <C-B>
nnoremap <C-j> <C-F>
" files navigation
nnoremap <leader>u :UndotreeShow <CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
" RipGrep search pattern on file
nnoremap <Leader>ps :Rg<SPACE>
" Create terminal
nnoremap <leader>t :sp <bar> resize 12 <bar> terminal <CR>

" VISUAL MODE REMAPS
" move lines and delete
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

" INSERT MODE REMAPS
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" TERMINAL REMAPS
" Close terminal with double escape
tnoremap <silent> <C-[><C-[> <C-\><C-n>

" F# MAPPING
map <F2> :setlocal spell! spelllang=en_us<CR>

" ESC keyboard remap
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
