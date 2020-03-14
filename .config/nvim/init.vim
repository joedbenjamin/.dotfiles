" Plugins - Start ---------------------
call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mlaursen/vim-react-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ianks/vim-tsx'
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Search tool for vim
Plug 'rking/ag.vim'
" Edit selected text in new window/tab/region
Plug 'chrisbra/NrrwRgn'
" Initialize plugin system
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal.vim'
Plug 'mhartington/oceanic-next'
Plug 'wadackel/vim-dogrun'
Plug 'arzg/vim-colors-xcode'
Plug 'altercation/vim-colors-solarized'
call plug#end()
" Plugins - End ---------------------

" Settings - Start --------------------
set nocompatible
" enable syntax and plugins (for netrw)
syntax enable
syntax on
filetype plugin on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

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
set noswapfile
set cursorline
set smarttab
set cindent
" always uses spaces instead of tab characters
set formatoptions+=j
"set omnifunc=syntaxcomplete#Complete
"set indentexpr=
"set cindent
"set smartindent
" Settings - End   --------------------

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

" Git-Gutter ----------------------------------------
nmap <leader>gn ]c
nmap <leader>gp [c
nmap <leader>gs <leader>hs
nmap <leader>gu <leader>hu
nmap <leader>gl <leader>hp
" Git-Gutter ----------------------------------------

" Abbreviations - End -----------------
" ------------------ NERDTree Mappings & Settings Start ------------------

let g:NERDTreeIgnore = ['^node_modules$']
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && g:NERDTree.IsOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

augroup NerdTreeSettings
  autocmd! 
  autocmd VimEnter * NERDTree "opens NerdTree when vim stars
  autocmd VimEnter * wincmd p "sets to Prev Window
  "autocmd BufEnter * call SyncTree()
  autocmd FileType nerdtree setlocal relativenumber
augroup END

" Highlight currently open buffer in NERDTree

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "m",
    \ "Staged"    : "s",
    \ "Untracked" : "u",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "u",
    \ "Deleted"   : "d",
    \ "Dirty"     : "m",
    \ "Clean"     : "c",
    \ 'Ignored'   : 'i',
    \ "Unknown"   : "?"
    \ }
" ------------------ NERDTree Mappings & Settings End --------------------

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'm'
let g:gitgutter_sign_removed = 'd'
let g:gitgutter_sign_removed_first_line = 'rf'
let g:gitgutter_sign_modified_removed = 'mr'

":NW           - Open the current visual window in a new narrowed window
nnoremap <leader>nw :NW<CR>

let g:coc_global_extensions = [ 'coc-eslint', 'coc-json', 'coc-tsserver', 'coc-emmet', 'coc-prettier']
" coc plugins
" if hidden is not set, TextEdit might fail.
set hidden

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'results:50' " overcome limit imposed by max height

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=750

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"" Trigger configuration. Do not use <tab> if you use
"" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger='<c-space>'

"" shortcut to go to next position
"let g:UltiSnipsJumpForwardTrigger='<c-j>'

"" shortcut to go to previous position
"let g:UltiSnipsJumpBackwardTrigger='<c-k>'


let g:ctrlp_regexp = 1
" Buffers go back to prev
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  :Format<CR>
nmap <leader>f  :Format<CR>
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)


" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Visual Text Macros - Start
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
" Visual Text Macros - End
set list
set termguicolors 
set background=dark
let g:gruvbox_italic=1
" let g:gruvbox_improved_strings=1
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_contrast_dark='soft'

" colorscheme solarized
colorscheme gruvbox
" colorscheme dracula
" colorscheme dogrun
" colorscheme xcodedarkhc
" colorscheme onehalfdark
" colorscheme nord
" colorscheme one
" colorscheme OceanicNext
" colorscheme wal
set encoding=UTF-8
 "dark red
hi tsxTagName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

augroup SetFileType
  autocmd!
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
augroup END

" Vimscript file settings toggle fold with za ----------- {{{
augroup filtetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
 \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
 \,sm:block-blinkwait175-blinkoff150-blinkon175

"FOLDS:
"------
" Automatically save folds
"augroup AutoSaveFolds
  "autocmd!
  "au BufWinLeave ?* mkview 1
  "au BufWinEnter ?* silent loadview 1
"augroup END
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '>'

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

hi Normal guibg=NONE ctermbg=NONE
