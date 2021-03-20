" vim-plug section
call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
call plug#end()


"""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""
" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Ignore case when searching
set  ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set  hlsearch

" Show matching brackets when text indicator is over them
set  showmatch


" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""

"Set colorscheme
set termguicolors
let ayucolor='dark'
colorscheme ayu
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" Enable syntax highlightning
syntax enable


"""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Autoindent
set autoindent

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlith current line
set cursorline

" Visual  autocomplete for command menu
set wildmenu

" Redraw only when we need to
set lazyredraw


  
"""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
        if &paste
                return 'PASTE MODE  '
        endif
        return ''
endfunction
