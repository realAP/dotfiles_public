set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" To get correct comment highlighting in json
autocmd FileType json syntax match Comment +\/\/.\+$+

" setup $MYVIMRC
let $MYNVIMRC=$MYVIMRC
let $MYVIMRC="$HOME/.vimrc"

" with shit+k Run a program to lookup the keyword under the cursor.

" Stop newline continution of comments
"set formatoptions-=cro                  

" hide menubar in gvim
set guioptions=agit

" no backward comatbility to vi
set nocompatible

" switches on syntax highlighting
syntax enable

" :h filetype-overview
" https://vi.stackexchange.com/questions/10124/what-is-the-difference-between-filetype-plugin-indent-on-and-filetype-indent#10125
" Checks Filetype for syntax checking and some other stuff
filetype plugin indent on

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the 'o' or 'O' command)
set autoindent

" Makes indenting smart
set smartindent

" insert space characters whenever the tab key is pressed
set expandtab

" Use the appropriate number of spaces to insert a <Tab>
set tabstop=2

"Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.  It 'feels' like
"<Tab>s are being inserted, while in fact a mix of spaces and <Tab>s is used
"set softtabstop=4 

" auto indent after '{' for functions
set shiftwidth=2

set smarttab


" buffer becomes hidden when it is abandoned
set hidden

" set encoding to utf-8
set encoding=utf-8

" highligth search pattern
set hlsearch

" saves the last 1000 commands
set history=1000

" shows line numbers relative
set relativenumber
"set number

" scroll space to dont reach the bottom thorugh scrolling
set scrolloff=7

" enables a menu at the bottom of vim window
set wildmenu

" (on the first tab)a list of completions will be shown and the command will be completed to the longest common command 
" (on second tab) the wildmenu will show up with all the completions that were listed before 
set wildmode=full

" When non-zero, a column with the specified width is shown at the side
" of the window which indicates open and closed folds
set foldcolumn=1

" set undo history
set undofile

" location for temp file for undo
set undodir=$HOME/vimundo/ 

" set undo history to 1000 changes
set undolevels=1000

" When on, splitting a window will put the new window below the current one
set splitbelow

" When on, splitting a window will put the new window right of the current one
set splitright

" Highlight the screen line of the cursor with CursorLine
set cursorline

" This is recommended by coc
set nobackup

" This is recommended by coc
set nowritebackup

set signcolumn=yes

set ruler

set mouse=a

set laststatus=2

set cmdheight=2

set pumheight=10

" breaking the line not in middle of word
set wrap
set linebreak
