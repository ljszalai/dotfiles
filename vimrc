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

" Set some fancy if gui applied
if has("gui_running")
  set lines=30 columns=162
  set guifont=Consolas
endif

" Draw a margin in the 81th column
set colorcolumn=120

" Show current line and column numbers
set ruler

" Command line is 2 lines, so it's easier to type complex commands
set cmdheight=2

" change the mapleader from \ to ,
let mapleader=","

" Highlight syntax
syntax on

" Some nice colorscheme
colors evening

" Make constants readable on projector as well
highlight Constant ctermbg=black ctermfg=green

" Always highlight tabs and trailing spaces.
set list
set listchars=tab:>\ ,trail:.,nbsp:.

" Key bindings for function keys
nnoremap <F2> :set nu!<CR>
nnoremap <F3> :set rnu!<CR>
nnoremap <F4> :set hlsearch!<CR>
vnoremap <S-F5> :'<,'>w !cmd<CR>
vnoremap <F5> :'<,'>w !cmd
nnoremap <C-F5> :!"%:p"
nnoremap <F5> :exec '!'.getline('.')<CR>
nnoremap <F8> :%d

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
    endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" Remove ^M from file
"NNOREMAP <SILENt> <leader>rtm :%s///g<CR>
nnoremap <silent> <Leader>rmm :e ++ff=dos<CR>

" Marks trailing whitespace as an error
match ErrorMsg '\s\+$'

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" My keyboard mappings
nmap <silent> <leader>sbn :echo "File " @% " is in buffer #" bufnr('%')<CR>
nmap <leader>q :qa!
nmap <leader>w :w<CR>
nmap <leader>wq :wq
nmap <leader>b :bp<CR>
nmap <leader>n :bn<CR>
nmap <leader>m :bd
nmap <leader>l :ls<CR>
nmap <leader>o :browse oldfiles
nmap <leader>eho :e c:/Windows/System32/drivers/etc/hosts

