"------------------------------------"
"============WSB's VIMRC============="
"=======Current as of ~May 2018======"
"------------------------------------"

"=======PATHOGEN PLUGIN MANAGER======="
execute pathogen#infect()

filetype plugin indent on     "required I believe..?


" Pathogen Plugins
" ----------------
" delimitMate
" Livedown
" surround.vim
" repeat.vim
" vim-markdown (gabrielelana)


"=======WHITESPACE ELIMINATION======="
" Eliminate trailing whitespace (restrict to only markdown files)
" see: http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre *.md %s/\s\+$//e


"=======SEARCHING======="
set incsearch "start searching when I begin typing
set hlsearch "highlight all matches of search subject
set smartcase "consider case if an Uppercase letter is used in query

" Search without Case Sensitivity
set ignorecase "to disable temporarily, search with \C (force sensitivity)


"=======FORMATTING======="
"Adjust tabs so that they are two space characters
"but don't mess with the Linux default tab, 8 tabstop
set softtabstop=2
set shiftwidth=2       "do the same for moving text and deleting spaces
set ruler              "show current Row / Column at bottom corner of screen
set number             "show line numbers
set backspace=2        "Backspace deletes like most programs in insert mode
"set numberwidth=5     "change line number margin width
syntax on              "show syntax highlighting
filetype plugin indent on     "I hope this still works
set background=dark    "Don't think this is doing anything at the moment...

" Highlights 1st char over 79
highlight ColorColumn cterm=reverse ctermbg=black
call matchadd('ColorColumn', '\%80v', 1)



"=======HARDCORE========"
" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


"=======SPELLCHECK=======" 
"Spell check set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

"not sure what this currently does..
autocmd FileType gitcommit setlocal spell textwidth=72 



"=======MOUSE and SCROLLING======="
set mouse=a                       " Enable mouse
set mousehide                     " Hide mouse when typing


"----------------------------------------"
"=======OLD OUTDATED VIMRC SECTION======="
"----------------------------------------"

"=======OUTDATED======="
"Set Red Marker for 80 Characters
"set textwidth=80
"set colorcolumn=+1

"=========OUTDATED========"
"===Highlight 79th Char==="
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

"=======OUTDATED======="
"autocmd FileType markdown setlocal spell       "enable spellcheck automatically for markdown files


"-----------------------------------------------"
"=======END OF OLD OUTDATED VIMRC SECTION======="
"-----------------------------------------------"


"===================================="
"------------------------------------"
 "		  /\		    "
 "		 /  \		    "
 "		/____\	    	    "
 "	       /\    /\	            "
 "	      /  \  /  \	    "
 "	     /____\/____\	    "
"------------------------------------"
"===================================="

