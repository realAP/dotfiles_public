" install vim plug when not found
if empty(glob('~/.vim/autoload/plug.vim')) 
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"""""""""""""""PLUGINS"""""""""""""""
call plug#begin()
" Some fancy FileBrowser
Plug 'scrooloose/nerdtree'
" Show git changes in NERDTREE
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fancy statusbar
Plug 'vim-airline/vim-airline'
" Some themes for statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'

" some linter
"Plug 'w0rp/ale'

" R plugin
"Plug 'jalvesaq/nvim-r'
"
" If you don't have nodejs and yarn
" use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" easy comment/uncomment
Plug 'tpope/vim-commentary'

" Show indents in file with symbols 
Plug 'yggdroot/indentline'

" Adds some fancy icons
Plug 'ryanoasis/vim-devicons'

" Imba file finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

  
"Plug 'andreypopp/vim-colors-plain'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Some fancy rainbow_parentheses
Plug 'junegunn/rainbow_parentheses.vim'

"Plug 'luochen1990/rainbow'

" LSP for neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'master'}

" Fancy CPP style 
Plug 'octol/vim-cpp-enhanced-highlight'

" Tool to format C/C++ code for given configuration
Plug 'rhysd/vim-clang-format'

" Change root files
Plug 'chrisbra/sudoedit.vim'

"Plug 'vim-scripts/sudo.vim'
"Plug 'altercation/vim-colors-solarized'

" Adding multiple TODOs
Plug 'vim-scripts/TaskList.vim'

"Plug 'pseewald/vim-anyfold'

" adds C include guards
Plug 'drmikehenry/vim-headerguard'

" some theme
"Plug 'dracula/vim', { 'as': 'dracula' }

"
"Plug 'voldikss/vim-floaterm'

" Showing git changes
Plug 'mhinz/vim-signify'
" Basic git integration
Plug 'tpope/vim-fugitive'


"Tagbar is a plugin for browsing the tags of source code files. It provides a
"sidebar that displays the ctags-generated tags of the current file, ordered by
"their scope. This means that for example methods in C++ are displayed under
"the class they are defined in.
"Plug 'majutsushi/tagbar'
"Plug 'scrooloose/syntastic'
"Plug 'blahgeek/neovim-colorcoder'


"Plug 'xolox/vim-notes'
"Plug 'xolox/vim-misc'
"
Plug 'unblevable/quick-scope'

Plug 'mhinz/vim-startify'

Plug 'justinmk/vim-dirvish'

Plug 'tpope/vim-surround'

Plug 'tommcdo/vim-exchange' 


Plug 'wellle/context.vim' 

Plug 'vim-scripts/DrawIt'

" Plug 'kdheepak/lazygit.vim'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

Plug 'samoshkin/vim-mergetool'

Plug 'honza/vim-snippets'

call plug#end()
"""""""""""""""""""""""""""""""""""""
