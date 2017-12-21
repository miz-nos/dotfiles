"-----------------------------------------------------------
" dein 
"-----------------------------------------------------------
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dotfiles/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif


"-----------------------------------------------------------
" キーマッピング
"-----------------------------------------------------------
nmap <silent> <C-a>      :NERDTreeFind<CR>
vmap <silent> <C-a> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-a>      :NERDTreeToggle<CR>
imap <silent> <C-a> <Esc>:NERDTreeFind<CR>
cmap <silent> <C-a> <C-u>:NERDTreeToggle<CR>

"map <silent> <C-w>       :NERDTreeFind<CR>
imap <silent> <C-s>      <Esc>:w!<CR>
map <silent> <C-q>       <Esc>:quit<CR>
map <silent> <Tab>       <C-w><C-w>
inoremap <silent> jj     <ESC>


"-----------------------------------------------------------
"colorsheme
"-----------------------------------------------------------
colorscheme koehler

"-----------------------------------------------------------
syntax on
set autoindent
set backspace=indent,eol,start
set showmatch
set wildmenu
set formatoptions+=mM
set number
set title
set list
set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%
set clipboard=unnamed,autoselect
set guioptions+=a
set directory=~/.vim/swp
set viewdir=~/.vim/view
set scrolloff=10



"-----------------------------------------------------------
" tab
"-----------------------------------------------------------
au FileType php  set ts=4 sw=4 softtabstop=4 expandtab
au FileType html set ts=4 sw=4 softtabstop=2 expandtab
au FileType js set ts=2 sw=2 softtabstop=2 expandtab
au FileType javascript set ts=2 sw=2 softtabstop=2 expandtab
au! BufNewFile,BufRead *.as :set filetype=actionscript
au! BufNewFile,BufRead *.thtml :set filetype=html
au! BufNewFile,BufRead *.phtml :set filetype=html
au! BufNewFile,BufRead *.twig :set filetype=html


