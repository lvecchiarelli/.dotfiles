" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'phanviet/vim-monokai-pro' 
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'sts10/vim-pink-moon'
Plug 'dense-analysis/ale'
call plug#end()

" Disable YouCompleteMe
" let g:loaded_youcompleteme = 1

"Instaled Themes
"Plug 'arcticicestudio/nord-vim'
"Plug 'junegunn/seoul256.vim'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'sts10/vim-pink-moon'
"Plug 'nightsense/carbonized'
"Plug 'sainnhe/sonokai'
"Plug 'lifepillar/vim-solarized8'
"Plug 'glepnir/oceanic-material'
"Plug 'mhartington/oceanic-next'

set encoding=utf-8
syntax enable
set termguicolors
syntax on
" shows matching braces when the text indicator is over them
set showmatch
" shows the line numbers
set number
" shows the relative line numbers
set number relativenumber
" makes searching case insensitive
set ignorecase
" makes the search case insensitive when all in lowercase but becomes case-sensitive if the search contains any capital letters
"set smartcase
" search as you type instead of when you press enter only
set incsearch
" makes backspace work the expected way
set backspace=indent,eol,start
" Highlights the searched item
set cursorline
 

 " Highlights the searched item
"set hls

" moves your cursor an extra space after the end of a line where enters insert mode
set ve+=onemore

" mouse support
"set mouse+=a

" Set colorscheme
colorscheme pink-moon

" auto-indenting
set autoindent
set expandtab
set smartindent
set textwidth=0
exec 'set tabstop=2'
exec 'set textwidth=0'
exec 'set shiftwidth=2'
exec 'set softtabstop=2'

"Use system clipboard
"set clipboard=unnamed
"default copy and paste to use the clipboard
if has('unnamedplus')
	set clipboard+=unnamedplus 
else
	set clipboard=unnamed 
endif

"disables audible sounds for errors.
set noerrorbells visualbell t_vb=

" -----------------
" IMPORTED SETTINGS
" -----------------
" Automatically source vimrc on save
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost vimrc source ~/.vimrc
    " autocmd BufWritePost vimrc AirlineRefresh
augroup END

" Restore cursor position on buffer navigation
:autocmd BufEnter * silent! normal! g`"

" cursor to the last line when reopening a file
augroup line_jump_on_open
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Change <leader>
let mapleader = "|"
let g:mapleader = "|"

"
" Keys for splitting windows
nmap <leader>sv :vsplit<cr>
nmap <leader>sh :split<cr>

" Keys for wrapping text in quotes and other stuff
nmap <leader>' ciw'<C-r>"'<esc>
nmap <leader>" ciw"<C-r>""<esc>
nmap <leader>` ciw`<C-r>"`<esc>

autocmd bufread *.md nmap <leader>* ciw**<C-r>"**<esc>
autocmd bufread *.md nmap <leader>_ ciw*<C-r>"*<esc>

autocmd bufread *.html nmap <leader>s ciw<strong><C-r>"</strong><esc>
autocmd bufread *.html nmap <leader>l ciw<li><C-r>"</li><esc>

autocmd bufread *.js nmap <leader>l iconsole.log();<esc>
autocmd bufread *.ts nmap <leader>l iconsole.log();<esc>

vmap <leader>' c'<C-r>"'<esc>
vmap <leader>" c"<C-r>""<esc>
vmap <leader>` c`<C-r>"`<esc>

autocmd bufread *.md vmap <leader>* c**<C-r>"**<esc>
autocmd bufread *.md vmap <leader>_ c*<C-r>"*<esc>

autocmd bufread *.html vmap <leader>s c<strong><C-r>"</strong><esc>
autocmd bufread *.html vmap <leader>l c<li><C-r>"</li><esc>
autocmd bufread *.html vmap <leader>p c<p><C-r>"</p><esc>

" Key to toggle NERDTree
nmap <leader>1 :NERDTreeToggle<cr>
let g:NERDTreeWinSize=60
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Turn off preview for autompleters
set completeopt-=preview

" Keys for Fuzzy Finder
nnoremap <C-p> :Files<cr>
nnoremap <C-r> :BLines<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>ff :Rg<cr>

let g:fzf_history_dir = '~/.fzf-history'

" Keys to navigate buffers using Buftabline
set hidden
nnoremap } :bnext<cr>
nnoremap { :bprev<cr>
nmap <leader>w :bw<cr>

" Keys for navigating windows
nmap <leader>nw <C-w>w
nmap <leader>cw <C-w>c

" Keys and settings for Fugitive
nmap <leader>gd :Git diff<cr>

" Fix issues with commenting script in Vue files
autocmd FileType vue setlocal commentstring=//\ %s

" Keys to move lines and blocks up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Remember marks
set viminfo='100,f1

" Disable beeping and flashing
set noerrorbells visualbell t_vb=
if has('autocmd')
	autocmd GUIEnter * set visualbell t_vb=
endif

" :let &pythonthreedll = 'C:\Users\Tap\AppData\Local\Programs\Python\Python38\python38.dll'
" :let &pythonthreedll = '/c/Users/Tap/AppData/Local/Programs/Python/Python38/python38.dll'

" Set The Language Of The Vim"
set langmenu=en_US
let $LANG = 'en_US'

" Show hidden files/dir in NERD Tree
let NERDTreeShowHidden=1

" Statusline configuration. Using lightline
set laststatus=2
set noshowmode

let g:lightline = {
			\ 'active': {
			\		'left': [ [ 'mode', 'paste' ],
			\					[ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
			\ },
			\ 'component_function': {
			\		'gitbranch': 'FugitiveHead',
			\ },
			\ 'colorscheme': 'monokai_pro',
			\ }

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Space_Mono_for_Powerline:h11:cDEFAULT
  endif
endif

" ALE Linters+Fixers
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
