set number
set title
set smartindent
syntax on
set vb t_vb=


if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

set wildmenu
set noerrorbells
set showcmd
set virtualedit=onemore
imap <C-j> <esc>
noremap! <C-j> <esc>


if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/nakajimaseiya/.cache/deinls/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/nakajimaseiya/.cache/deinls')
  call dein#begin('/Users/nakajimaseiya/.cache/deinls')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/nakajimaseiya/.cache/deinls/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('simeji/winresizer')
  " Required:
  call dein#end()
  
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
call dein#install()
endif

map <C-d> :NERDTreeToggle<CR>
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
