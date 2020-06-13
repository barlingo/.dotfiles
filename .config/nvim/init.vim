syntax on

let g:python3_host_prog='~/.virtualenv/neovim3/bin/python3'
let g:python_host_prog='~/.virtualenv/neovim2/bin/python'
set complete+=kspell
set path=$PWD/**
set encoding=UTF-8
set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set t_u7=
set t_RV=
" Marking column 80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" Give more space for displaying messages.
set cmdheight=4
" Having longer update time (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
" Color Schemes
Plug 'gruvbox-community/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
"My Plugs
Plug 'https://github.com/tpope/vim-obsession'
Plug 'jmcantrell/vim-virtualenv'
Plug 'vim-syntastic/syntastic'
Plug 'terryma/vim-multiple-cursors'
" Python Specific Plugins
Plug 'nvie/vim-flake8'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'ThePrimeagen/vim-be-good'
Plug 'chiel92/vim-autoformat'
Plug 'brooth/far.vim'
Plug 'skywind3000/asyncrun.vim'
call plug#end()


" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif
" Terminal View
set splitbelow

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Set terminal to only open with 12 rows
augroup myterm | au!
    au TermOpen * if &buftype ==# 'terminal' | resize 12 | endif
augroup end

" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
if &term =~ '256color'
    set t_ut=
endif

"--- indentLine ---
let g:indentLine_char               = "⎸"
let g:indentLine_faster             = 1
" let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar   = '·'
let g:indentLine_setConceal = 0
let g:indentLine_enabled = 1

let python_highlight_all=1
let g:virtualenv_directory = '~/.virtualenv/'
let g:virtualenv_loaded = 1

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" KEYBOARD REMAPS
"
" Force to use h l k j
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
" Page up and Down navigation
nnoremap <C-k> <C-B>
nnoremap <C-j> <C-F>
" New Line inserts in normal mode
nmap <CR> o<Esc>
" VIM TABs navigation
nnoremap <s-k> :tabprevious<CR>
nnoremap <s-j> :tabnext<CR>

" Navigate through VIM windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Resize Window
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Create terminal
nnoremap <leader>t :sp <bar> :terminal <CR>
" Close terminal with double escape
tnoremap <silent> <C-[><C-[> <C-\><C-n>

" ESC keyboard remap
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" FILES navigation
nnoremap <leader>u :UndotreeShow <CR>
nnoremap <leader>pv <bar> :NERDTreeToggle <bar> :vertical resize 30<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
" RipGrep search pattern on file
nnoremap <Leader>ps :Rg<SPACE>

" ColorScheme
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>

" Visual mode move lines and delete
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart


" F# MAPPING
map <F2> :setlocal spell! spelllang=en_us<CR>
" PYTHON specific
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:AsyncRun -mode=term -pos=bottom -rows=10 python2 "$(VIM_FILEPATH)" <CR> <Esc> <Esc>
autocmd Filetype python nnoremap <buffer> <F6>  :w<CR>:AsyncRun -mode=term -pos=bottom -rows=10 python3 "$(VIM_FILEPATH)" <CR> <Esc> <Esc>


" Command calls on write
autocmd BufWritePre * :call TrimWhitespace()
au BufWrite * :Autoformat

" Python specific
" autocmd BufWritePost *.py call Flake8()
