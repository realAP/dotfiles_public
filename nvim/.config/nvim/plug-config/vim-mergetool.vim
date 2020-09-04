let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

nmap <expr> <C-Left> &diff? '<Plug>(MergetoolDiffExchangeLeft)' : '<C-Left>'
nmap <expr> <C-Right> &diff? '<Plug>(MergetoolDiffExchangeRight)' : '<C-Right>'
nmap <expr> <C-Down> &diff? '<Plug>(MergetoolDiffExchangeDown)' : '<C-Down>'
nmap <expr> <C-Up> &diff? '<Plug>(MergetoolDiffExchangeUp)' : '<C-Up>'
nmap <leader>mt <plug>(MergetoolToggle)

nnoremap <silent> <leader>mb :call mergetool#toggle_layout('mr,b')<CR>
nnoremap <silent> <leader>m3 :call mergetool#toggle_layout('bmr')<CR>

function s:on_mergetool_set_layout(split)
  if a:split["layout"] ==# 'mr,b' && a:split["split"] ==# 'b'
    set nodiff
    set syntax=on

    resize 15
  endif
endfunction

let g:MergetoolSetLayoutCallback = function('s:on_mergetool_set_layout')
