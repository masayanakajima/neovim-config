" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存

" escape key
imap <C-j> <esc>
noremap! <C-j> <esc>

" encode setting
set encoding=utf-8
" edita setting
set number                                                      " 行番号表示
set relativenumber
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
" cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト

" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=4                                                   " tabは半角2文字
set shiftwidth=4                                                " tabの幅
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

" highlight LineNr cterm=none ctermfg=none
" highlight CursorLineNr ctermfg=black ctermbg=cyan

" highlight CursorLine ctermfg=black ctermbg=cyan
" highlight Cursor ctermfg=black ctermbg=cyan
"set clipboard=unnamed,autoselect
"yankをクリップボードにコピー

" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent

" 検索結果をハイライト"
set hlsearch
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" nmap sf :VimFiler<Return>
nmap rg :Rgrep<CR>
nmap qq :q!

nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-


if &compatible
  set nocompatible               " Be iMproved
endif

" Pluginディレクトリのパス
let s:dein_dir = expand('~/.vim/dein')
" dein.vimのパス
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
" tomlのディレクトリへのパス
let s:toml_dir = expand('~/.config/nvim')

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 起動時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

"  call dein#add('altercation/vim-colors-solarized')

"  let g:solarized_termcolors=256
" syntax enable
"  set background=dark
"  colorscheme solarized

"  call dein#add('morhetz/gruvbox')
  " Required:
  call dein#end()
  call dein#save_state()
endif

syntax enable

" === gruvbox ===
"let g:gruvbox_contrast_dark = "medium"
"let g:gruvbox_color_column = "bg4"
"colorscheme gruvbox
"
"set background=dark
"set t_Co=256            " gruvboxをカラースキーマにするときに必要！
"let g:lightline = { 'colorscheme': 'gruvbox' }
" === gruvbox ===

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
