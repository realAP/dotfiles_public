let g:startify_custom_header = [
        \ '       _  __     _         __  ___         __     ___ ',
        \ '      / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        \ '     /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
        \ '    /_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        \]

" Set where to place sessions
let g:startify_session_dir = '~/.config/nvim/session'


" List what to see with start up
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1


" Bookmarks
let g:startify_bookmarks = [
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 's': '~/.config/i3/status.toml' },
            \ { 'z': '~/.zshrc' },
            \ ]
