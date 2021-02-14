" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

call plug#end()

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

syntax enable
set termguicolors
syntax on
"shows matching braces when the text indicator is over them
set showmatch
"shows the line numbers
set number
"shows the relative line numbers
set relativenumber
"makes searching case insensitive
set ignorecase
"makes the search case insensitive when all in lowercase but becomes case-sensitive if the search contains any capital letters
"set smartcase
"search as you type instead of when you press enter only
set incsearch
"makes backspace work the expected way
set backspace=indent,eol,start

 "Highlights the searched item
"set hls

"moves your cursor an extra space after the end of a line where enters insert mode
set ve+=onemore

"mouse support
set mouse+=a


colorscheme pink-moon
"colorscheme OceanicNext
"set background=dark
"colorscheme solarized8_flat

"auto-indenting
set autoindent
set noexpandtab
set smartindent
set textwidth=0
exec 'set tabstop=4'
exec 'set textwidth=0'
exec 'set shiftwidth=4'
exec 'set softtabstop=4'

"default copy and paste to use the clipboard
if has('unnamedplus')
	set clipboard+=unnamedplus 
else
	set clipboard=unnamed 
endif

"disables audible sounds for errors.
set noerrorbells visualbell t_vb=
