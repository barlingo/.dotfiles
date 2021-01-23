syntax on
set exrc

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Leader key
let mapleader = " "

call plug#begin('~/.vim/plugged')
" lsp plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'honza/vim-snippets'

Plug 'SirVer/ultisnips'
Plug 'unblevable/quick-scope'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'chiel92/vim-autoformat'
Plug 'brooth/far.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jremmen/vim-ripgrep'
Plug 'sheerun/vim-polyglot'
call plug#end()

if executable('rg')
	let g:rg_derive_root='true'
endif


function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun


" Command calls on write
autocmd BufWritePre * :call TrimWhitespace()
au BufWrite * :Autoformat


