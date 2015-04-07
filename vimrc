" Turn on line numbers
set number

" Tabs are displayed as 4 characters wide
set tabstop=4

" Indentation is 4 spaces
set shiftwidth=4

" Insert 4 spaces instead of tabs
set expandtab

" Automatic indentation
set autoindent
set smartindent

" Search while typing pattern
set incsearch

" Highlight search pattern matches
set hlsearch

" Automatically format doxygen style comments
set comments=sl:/**,mb:\ *,elx:\ */

" Insert comment leader when hitting enter in insert mode
set formatoptions+=r

" Insert comment leader when hitting o in normal mode
set formatoptions+=o

" Font name for gVim
set guifont=Monaco

" Draw a margin in the 81th column
set colorcolumn=81

" Show current line and column numbers
set ruler

" Command line is 2 lines, so it's easier to type complex commands
set cmdheight=2

" Highlight syntax
syntax on

" Some nice colorscheme
colors evening

" Make constants readable on projector as well
highlight Constant ctermbg=black ctermfg=green

" Always highlight tabs and trailing spaces.
set list
set listchars=tab:>\ ,trail:.,nbsp:.

nnoremap <F3> :set hlsearch!<CR>
nnoremap <F2> :!ls -al<CR>:e

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

map ,sbn :echo "File " @% " is in buffer #" bufnr('%')<CR>

" Marks trailing whitespace as an error
match ErrorMsg '\s\+$'
