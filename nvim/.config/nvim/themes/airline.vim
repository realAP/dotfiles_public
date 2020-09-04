"set powerline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" enable tabline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#tabs_label = ''

" Disable tabline close button
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''

" Just show the file name
let g:airline#extensions#tabline#fnamemod = ':t'

" dont know what it does
let g:airline#extensions#tabline#formatter = 'unique_tail'

" always show tab
set showtabline=2
" no mode like insert or
set noshowmode


" Sections
"let g:airline_section_c = ''
let g:airline_section_a = ""
let g:airline_section_y = ''
let g:webdevicons_enable_airline_tabline = 1


" IMPORTANT: ORDER MATTERS, 1: colorscheme 2: background 
"set vim airline scheme
let g:airline_theme='bubblegum'
colorscheme one 
set background=dark

" IMPORTANT: Enables 24-bit RGB color in the |TUI|.  Uses gui |:highlight|
" attributes instead of cterm attributes. |highlight-guifg|
" Requires an ISO-8613-3 compatible terminal.
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" enable plugins for colorscheme
let g:airline#extensions#ale#enabled = 1

" enable/disable coc integration 
let g:airline#extensions#coc#enabled = 1
" change error symbol: 
let airline#extensions#coc#error_symbol = 'E:'
" change warning symbol: 
let airline#extensions#coc#warning_symbol = 'W:'
" change error format: 
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" change warning format: 
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
