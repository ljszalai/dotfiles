set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
source c:/cygwin/home/lszalai/.vimrc

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

nnoremap <F2> :!dir /b /s > delete.me<CR>:e delete.me<CR>
nnoremap <F4> :set rnu!<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

map ,bt :bufdo tab split<CR><CR>:q<CR>
map ,tn :tabnew<CR>

"Put vim files in the temp directory instead of the current directory
set dir=%TMP%
set backupdir=%TMP%
""let mapleader=","
set timeout timeoutlen=1500
autocmd BufNewFile,BufReadPost *.scr,*.ctl,*.cfg set filetype=cpp
autocmd BufNewFile,BufReadPost *.spml,*.xsd set filetype=xml
autocmd GUIEnter * winsize 100 47

