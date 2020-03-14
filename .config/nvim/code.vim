
let mapleader = ","
set nu
set rnu
set tabstop=2
set shiftwidth=2
set expandtab
set path+=**
set wildmenu
set incsearch
set smartcase " automatically switch to case-sensitive when using uppercase
set ignorecase
set cursorline
set smarttab
set cindent

" Remaps - Begin  ---------------------
inoremap ii' ''<Esc>i<CR><CR><Esc>k<S-s>
inoremap <leader>' ''<Esc>i
inoremap ii" ""<Esc>i<CR><CR><Esc>k<S-s>
inoremap <leader>" ""<Esc>i
inoremap ii( ()<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii) ()<Esc>i<CR><CR><Esc>k<S-s>
inoremap <leader>( ()<Esc>i
inoremap ii[ []<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii] []<Esc>i<CR><CR><Esc>k<S-s>
inoremap <leader>[ []<Esc>i
inoremap ii{ {}<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii} {}<Esc>i<CR><CR><Esc>k<S-s>
inoremap <leader>{ {}<Esc>i
inoremap jl <Esc>la
inoremap jh <Esc>i
inoremap jj <Esc>A
inoremap jx <Esc>lxi
inoremap jk <Esc>
inoremap jn <Esc>hEa<CR>
inoremap <leader>dd <Esc>ddi
inoremap jt </<Esc>2F<lyiwf/pa><Esc>F<i
inoremap jst </<Esc>2F<lyiwf/pa><Esc>F<i<CR><CR><Esc>kS

" auto close tag
map ; :

nnoremap <leader>ms :mks! ~/.vim/sessions/session.vim<CR>
nnoremap <leader>os :so ~/.vim/sessions/session.vim<CR>

nnoremap <space><space> :noh<CR>
nnoremap <Down>  :resize -2<CR>
"nnoremap <Leader>p :CtrlP<CR>
nnoremap <Left>  :vertical resize +2<CR>
noremap <Right> :vertical resize -2<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Up>    :resize +2<CR>
nnoremap <leader>ag :Ag
nnoremap <space>r :set rnu!<CR>
nnoremap <space>n :set nu!<CR>
" use enter key to repeat last macro
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'
" Easy bindings for its various modes
nnoremap <leader>bb :CtrlPBuffer<cr>
nnoremap <leader>bm :CtrlPMixed<cr>
nnoremap <leader>bs :CtrlPMRU<cr>
nnoremap <leader><leader> :b#<CR>
nnoremap <leader>o :only<CR>
noremap <C-w>h <C-w>H
noremap <C-w>j <C-w>J
noremap <C-w>k <C-w>K
noremap <C-w>l <C-w>L
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-c> <C-w>c
noremap cc <C-w>c
noremap <leader>q :q<CR>
noremap <leader>s :w<CR>
nnoremap go o<Esc>
nnoremap gO O<Esc>j
nnoremap <c-n> :NERDTreeFind<CR>zz<c-w><c-p>
nnoremap <c-space> :NERDTreeToggle<CR>
nnoremap <leader>p "*p<CR> 
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>
tnoremap jk <C-\><C-n>
vnoremap <leader>y "*y<CR> 
nnoremap Y y$
nmap H 0
nmap L $
" operator mappens
" using <c-u> to remove the range that vim may insert
" operators act on the vim range or when using <c-u>, the selected range

onoremap ih i[
onoremap ah a[
" all next bracket
onoremap anh :<c-u>normal! f[va[<cr>
" all last bracket
onoremap alh :<c-u>normal! F[va[<cr>
" inside next bracket
onoremap inh :<c-u>normal! f[vi[<cr>
" inside last bracket
onoremap ilh :<c-u>normal! F[vi[<cr>

onoremap ib i{
onoremap ab a{
" all next bracket
onoremap anb :<c-u>normal! f{va{<cr>
" all last bracket
onoremap alb :<c-u>normal! F{va{<cr>
" inside next bracket
onoremap inb :<c-u>normal! f{vi{<cr>
" inside last bracket
onoremap ilb :<c-u>normal! F{vi{<cr>

onoremap ip i(
onoremap ap a(
" all next parenthesis
onoremap anp :<c-u>normal! f(va(<cr>
" all last parenthesis
onoremap alp :<c-u>normal! F(va(<cr>
" inside next parenthesis
onoremap inp :<c-u>normal! f(vi(<cr>
" inside last parenthesis
onoremap ilp :<c-u>normal! F(vi(<cr>

" all next single quote
onoremap an' :<c-u>normal! f'va'<cr>
" all last single quote
onoremap al' :<c-u>normal! F'va'<cr>
" inside next single quote
onoremap in' :<c-u>normal! f'vi'<cr>
" inside last single quote
onoremap il' :<c-u>normal! F'vi'<cr>

" all next double quote
onoremap an" :<c-u>normal! f"va"<cr>
" all last double quote
onoremap al" :<c-u>normal! F"va"<cr>
" inside next double quote
onoremap in" :<c-u>normal! f"vi"<cr>
" inside last double quote
onoremap il" :<c-u>normal! F"vi"<cr>

"j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j') 
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k') 

" Remaps - End    ---------------------
" Abbreviations - Start -----------------
iabbr joeemail joedbenjamin@gmail.com
iabbr cs2log const {log} = console;

