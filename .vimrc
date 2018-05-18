execute pathogen#infect()

filetype plugin indent on
"show syntax highlighting
syntax on


"show line numbers
set number
"change line number margin width
"set numberwidth=5
"Backspace deletes like most programs in insert mode
set backspace=2

"start searching when I begin typing
set incsearch
"highlight all matches of search subject
set hlsearch
"search without Case Sensitivity
set ignorecase "to disable temporarily, search with \C (force sensitivity)
"consider case if an Uppercase letter is used in query
set smartcase

"Adjust tabs so that they are two space characters
"but don't mess with the Linux default tab, 8 tabstop
set softtabstop=2
"do the same for moving text and deleting spaces
set shiftwidth=2

"show current row/column at bottom corner of screen
set ruler

"Set Red Marker for 80 Characters
"set textwidth=80
"set colorcolumn=+1

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"Spell check set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

"Don't think this is doing anything at the moment...
set background=dark

"=======Out-Dated======="
"===See Below for Cleaner Code==="
"augroup collumnLimit
"  autocmd!
"  autocmd BufEnter,WinEnter,Filetype javascript,markdown
"        \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
"  let collumnLimit = 79 " feel free to customize
"  let pattern =
"        \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
"  autocmd BufEnter,WinEnter,Filetype javascript,markdown
"        \ let w:m1=matchadd('CollumnLimit', pattern, -1)
"augroup END

"Upgraded Version
"highlights 1st char over 79
highlight ColorColumn cterm=reverse ctermbg=black
call matchadd('ColorColumn', '\%80v', 1)
