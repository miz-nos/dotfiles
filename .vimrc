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
