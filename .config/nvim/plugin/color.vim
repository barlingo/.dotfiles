" Highlight column 80 light grey

highlight ColorColumn ctermbg=0 guibg=lightgrey

" Do not highlight matching parenthesis
let loaded_matchparen = 1
" Glorious gruvbox color scheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
"
" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
if &term =~ '256color'
	set t_ut=
endif
"
" ColorScheme
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
