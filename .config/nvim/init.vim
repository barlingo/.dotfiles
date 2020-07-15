syntax on
" Maximize NVIM on open
" autocmd VimEnter * set lines=999 columns=999
let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python3'
let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
set complete+=kspell
set path=$PWD/**
set encoding=UTF-8
set guicursor=
set guifont=Bitstream_Vera_Sans_Mono:h14
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
set cmdheight=3
" Having longer update time (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'unblevable/quick-scope'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'gruvbox-community/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vim-syntastic/syntastic'
Plug 'mhinz/vim-startify'
Plug 'nvie/vim-flake8'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'chiel92/vim-autoformat'
Plug 'brooth/far.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Raimondi/delimitMate'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()


let g:startify_session_dir = '~/.vim/sessions'
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
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
autocmd ColorScheme gruvbox highlight QuickScopePrimary guifg='#cc241d' gui=underline ctermfg=81 cterm=underline
autocmd ColorScheme gruvbox highlight QuickScopeSecondary guifg='#d79921' gui=underline ctermfg=155 cterm=underline
let g:qs_max_chars=150


if executable('rg')
    let g:rg_derive_root='true'
endif
" Terminal View
set splitbelow

let loaded_matchparen = 1
let mapleader = " "

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
imap <silent><expr> <CR> pumvisible()
                 \ ? "\<C-Y>"
                 \ : "<Plug>delimitMateCR"
inoremap <silent><expr> <C-space> coc#refresh()
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Set terminal to only open with 12 rows
" augroup myterm | au!
"     au TermOpen * if &buftype ==# 'terminal' | resize 12 | endif
" augroup end

" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
if &term =~ '256color'
    set t_ut=
endif


" indentLine
let g:indentLine_char = "▏"
let g:indentLine_faster = 1
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar   = '•'
let g:indentLine_setConceal = 1
let g:indentLine_enabled = 1

let python_highlight_all=1
let g:virtualenv_directory = '~/.virtualenvs/'

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

" Navigate through VIM windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Resize Window
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Create terminal
nnoremap <leader>t :sp <bar> resize 12 <bar> terminal <CR>
" Close terminal with double escape
tnoremap <silent> <C-[><C-[> <C-\><C-n>

" ESC keyboard remap
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" FILES navigation
nnoremap <leader>u :UndotreeShow <CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
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

" Save File
nnoremap <C-S> :update<cr>

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
nnoremap <leader>cr :CocRestart <CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

let g:syntastic_python_checkers = ['pylint']

" F# MAPPING
map <F2> :setlocal spell! spelllang=en_us<CR>
" PYTHON specific
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
autocmd Filetype python nnoremap <buffer> <F4> :w<CR>:AsyncRun -mode=term -pos=bottom -rows=12 python2 "$(VIM_FILEPATH)" <CR>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:AsyncRun -mode=term -pos=bottom -rows=12 python3 "$(VIM_FILEPATH)" <CR>
autocmd Filetype python nnoremap <buffer> <F6> :w<CR>:AsyncRun -mode=term -pos=pbottom -rows=12 .env/bin/python3 "$(VIM_FILEPATH)" <CR>
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.']

" Command calls on write
autocmd BufWritePre * :call TrimWhitespace()
au BufWrite * :Autoformat

set noshowmode
set showtabline=2
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" Python specific
" autocmd BufWritePost *.py call Flake8()
