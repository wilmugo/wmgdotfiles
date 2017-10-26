"Wilfredo Murillo
" Apariencia {{{
let mapleader=","	"leader is comma
syntax enable		"Enable syntax
set encoding=utf-8
set backspace=indent,eol,start  "backspace fix
set t_Co=256
set background=dark	"Fondo Oscuro
colorscheme solarized	"ColorScheme Solarized Nicee!!
let g:solarized_termcolors=256
set noswapfile
" }}}
" Tabs {{{
set tabstop=4		"Number of visual space per TAB
set softtabstop=4	"number of spaces in tab when editing
set expandtab		"Tabs are spaces
" }}}
" UI Config {{{
set number		"Show line numbers
set ruler       "linenum
set showcmd		"show command in bottom bar
set cursorline		"Highlight current line
"filetype plugin indent on	"Load filetype-specific indent file
set wildmenu		"visual autocomplete for command menu
set lazyredraw		"redraw only when we need to.
set showmatch		"highlight matching [{()}]
set nowrap 
set laststatus=2
" }}}
" Searching {{{
set incsearch		"search as characters are entered
set hlsearch		"highlight matches
""turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable		"enable folding
set foldlevelstart=10	"open most folds by default
set foldnestmax=10	"10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=marker	"fold based on indent level
set foldlevel=0
set modelines=1
" }}}
" Movement {{{
"move to beginning/end of line
nnoremap B ^
nnoremap E $
"$/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
"highlight last inserted text
nnoremap gV `[v`]
"}}}
" Leader Shortcuts {{{
" jk is escape
inoremap jk <esc>
" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>
" }}}
" Backup {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Functions {{{
"  toggle between number and relativenumber
"function! ToggleNumber()
"    if(&relativenumber == 1)
"        set norelativenumber
"	    set number
"    else
"        set relativenumber
"    endif
"endfunc
"}}}
" Vundle PLugins {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'sirver/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'mhinz/vim-startify'
    Plugin 'scrooloose/syntastic'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'artur-shaik/vim-javacomplete2'
    Plugin 'airblade/vim-rooter'
    Plugin 'tomlion/vim-solidity'
    Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required
filetype plugin indent on    " required
"}}}
" AirlineSettings {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='solarized'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
" }}}
" NerdTreeSettings {{{
map <C-n> :NERDTreeToggle<CR>
" }}}
" WebdevIconSettings {{{
"let g:webdevicons_enable = 1
"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_enable_unite = 1
"let g:webdevicons_enable_vimfiler = 1
"let g:webdevicons_enable_airline_tabline = 1
"let g:webdevicons_enable_airline_statusline = 1
" }}}
" Tabulate shortcuts {{{
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>p :tabprevious<CR>
nnoremap <leader>n :tabnext<CR>
" }}}
" vim:foldmethod=marker:foldlevel=0
