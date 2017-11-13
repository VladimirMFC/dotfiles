set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'matze/vim-move'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Shougo/unite.vim'

Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/tComment'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

call vundle#end()
filetype plugin indent on

set shell=/bin/sh

let g:jellybeans_overrides = { 'background': { 'ctermbg': 'none', '256ctermbg': 'none' }, }

"nmap <C-o> :tabnew<cr>
"nmap <C-tab> :tabnext<cr>

nmap <F5> <Esc>:NERDTreeToggle<cr>
vmap <F5> <esc>:NERDTreeToggle<cr>
imap <F5> <esc>:NERDTreeToggle<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i


set mouse-=a
set noundofile
set hidden

set fileencodings=utf-8
set termencoding=utf-8
set fileformat=unix

set background=dark

"set t_Co=256
"set t_Co=16
if (&t_Co == 256 || &t_Co == 88)
    colorscheme jellybeans
else
    colorscheme base16-default-dark
endif

set autoindent
set copyindent
"set smartindent

set tabstop=8
"set shiftwidth=8
"set softtabstop=2
"set smarttab
"set expandtab

set backspace=indent,eol,start

syntax on

if &term=="xterm"
"    set t_Co=8
    set t_Sb=ESC[4%dm
    set t_Sf=ESC[3%dm
endif

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

"set showcmd
set number

set laststatus=2 " Make it appear without splitting
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'jellybeans'
let g:airline_skip_empty_sections = 1

let g:airline#extensions#tabline#enabled = 1 " Enable buffer tabs
let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#left_sep = ' ' " Different separators
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#whitespace#enabled = 1 " Detect whitespace
let g:airline#extensions#whitespace#show_message = 1 " Warn about whitespace
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ] " Toggle whitespace warnings
let g:airline#extensions#whitespace#symbol = '!'
"let g:airline#extensions#tabline#left_sep = ' ' " Different separators
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tmuxline#enabled = 0

let g:airline#extensions#syntastic#enabled = 0

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

let g:airline#extensions#tagbar#enabled = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.maxlinenr = 'Ξ'

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Автоматический insert mode
let g:unite_enable_start_insert = 1

" Отображаем Unite в нижней части экрана
let g:unite_split_rule = "botright"

" Отключаем замену статус строки
let g:unite_force_overwrite_statusline = 0

" Размер окна Unite
let g:unite_winheight = 10

" Красивые стрелочки
let g:unite_candidate_icon = ""

"let g:signify_vcs_list = [ 'git', 'svn' ]
"let g:signify_update_on_bufenter = 1
"let g:signify_update_on_focusgained = 1

let g:move_key_modifier = 'C'

" for plugin fzf:

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nmap ; :Buffers<cr>
let g:fzf_prefer_tmux = 1
