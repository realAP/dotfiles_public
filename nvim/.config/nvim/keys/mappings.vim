" define leader
let mapleader=","

" toggle search highlighting
map <leader>n :noh<cr>h

" toggle spell check
map <leader>s :setlocal spell!<cr>

" yank current file in standard buffer and system clipboard(strg+p)
map <leader>y :%y+<cr>:%y<cr>

" close current window
map <leader>q :q<cr>

" need further inspection to work with
" function s:QuitWindow()

"   " If we're in merge mode, exit
"   if get(g:, 'mergetool_in_merge_mode', 0)
"     call mergetool#stop()
"     return
"   endif

"   if &diff
"     " Quit diff mode intelligently...
"   endif

"   quit
" endfunction
" command QuitWindow call s:QuitWindow()
" nnoremap <silent> <leader>q :QuitWindow<CR>
"
map <leader>d :bdelete %<cr>

" bind save to F2 from every mode
map <f2> :w<cr>
imap <f2> <esc>:w<cr>l
vmap <f2> <esc>:w<cr>

" change buffers
map gb :bn<cr>
map gB :bp<cr>

" easy window direction
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" terminal movements
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" With this maps you can now toggle the terminal
nnoremap <F4> :call MonkeyTerminalToggle()<cr>
tnoremap <F4> <C-\><C-n>:call MonkeyTerminalToggle()<cr>

"""""""""""""""CUSTOM PLUGINS"""""""""""""""
" OLD: USE COC
" generate new ctags file from current dir and sub dirs by pressing f5
" nnoremap <F5> :!ctags -R --exclude=build .<CR><CR>
" looks for a tags file in the current directory first and up and up until it finds it
" set tags=tags;/

" Used for C/C++
" looking for scripts folder and calls script to generade
" compile_commands.json for LSP server
nnoremap <F5> :!(cd scripts; ./compile_commands.sh)<CR><CR>
""""""""""""""""""""""""""""""""""""""""""""

" FOR MARKDOWN COLORS
" map red
map <leader>mr i<span style="color:red"></span><ESC>F<i
imap <leader>mr <span style="color:red"></span><ESC>F<i
vmap <leader>mr S<span style="color:red">
" map blue
map <leader>mb i<span style="color:blue"></span><ESC>F<i
imap <leader>mb <span style="color:blue"></span><ESC>F<i
vmap <leader>mb S<span style="color:blue">
" map green
map <leader>mg i<span style="color:green"></span><ESC>F<i
imap <leader>mg <span style="color:green"></span><ESC>F<i
vmap <leader>mr S<span style="color:green">

" MARKDOWN VORTEIL/NACHTEIL
map <leader>mn i<span style="color:red">**Nachteil:**</span><ESC>o
imap <leader>mn <span style="color:red">**Nachteil:**</span><ESC>o

map <leader>mv i<span style="color:green">**Vorteil:**</span><ESC>o
imap <leader>mv <span style="color:green">**Vorteil:**</span><ESC>o

" execute build.sh script in current folder
nnoremap <F6> :call MonkeyTerminalToggle()<CR>isudo ./build_in_docker.sh<CR><ESC>
nnoremap <F7> :! ./clean.sh<CR>
