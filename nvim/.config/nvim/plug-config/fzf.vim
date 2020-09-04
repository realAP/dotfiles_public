" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" TODO: make default FZF and project specified FZF
" fzf.vim Ignore files specified by .gitignore #121
" https://github.com/junegunn/fzf.vim/issues/121
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore $PWD/.gitignore -g ""'

" Custom Mappings
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
