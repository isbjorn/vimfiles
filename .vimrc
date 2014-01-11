" General "{{{
set nocompatible " be iMproved

set history=256 " Number of things to remember in history.
set timeoutlen=250 " Time to wait after ESC (default causes an annoying delay)
set clipboard+=unnamed " Yanks go on clipboard instead.
set pastetoggle=<F10> " toggle between paste and normal: for 'safer' pasting from keyboard
set shiftround " round indent to multiple of 'shiftwidth'
set tags=.git/tags;$HOME " consider the repo tags first, then
" walk directory tree upto $HOME looking for tags
" note `;` sets the stop folder. :h file-search

set modeline
set modelines=5 " default numbers of lines to read for modeline instructions

set autowrite " Writes on make/shell commands
set autoread

set nobackup
set nowritebackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
set noswapfile "

set hidden " The current buffer can be put to the background without writing to disk

set hlsearch " highlight search
set ignorecase " be case insensitive when searching
set smartcase " be case sensitive when input has a capital letter
set incsearch " show matches while typing

let g:is_posix = 1 " vim's default is archaic bourne shell, bring it up to the 90s
let mapleader = ','
let maplocalleader = '        ' " Tab as a local leader
" "}}}

" Formatting "{{{
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0 " Don't wrap lines by default

set tabstop=2 " tab size eql 2 spaces
set softtabstop=2
set shiftwidth=2 " default shift width for indents
set expandtab " replace tabs with ${tabstop} spaces
set smarttab "

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0# " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case
" "}}}

" Visual "{{{
syntax on " enable syntax

" set synmaxcol=250 " limit syntax highlighting to 128 columns

set mouse=a "enable mouse in GUI mode
set mousehide " Hide mouse after chars typed

set number " line numbers On
set showmatch " Show matching brackets.
set matchtime=2 " Bracket blinking.

set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set completeopt+=preview

set novisualbell " No blinking
set noerrorbells " No noise.
set vb t_vb= " disable any beeps or flashes on error

set laststatus=2 " always show status line.
set shortmess=atI " shortens messages
set showcmd " display an incomplete command in statusline

set statusline=%<%f\ " custom statusline
set stl+=[%{&ff}] " show fileformat
set stl+=%y%m%r%=
set stl+=%-14.(%l,%c%V%)\ %P


set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)

set foldopen=block,hor,tag " what movements open folds
set foldopen+=percent,mark
set foldopen+=quickfix

set virtualedit=block

set splitbelow
set splitright

set list " display unprintable characters f12 - switches
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F12> :set invlist<CR>

if has('gui_running')
  set guioptions=cMg " console dialogs, do not show menu and toolbar
  set gfn=Terminus\ 12
endif
" "}}}

" Scripts and Bundles " {{{
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'

Bundle 'nanotech/jellybeans.vim'
colo jellybeans

filetype plugin indent on     " required!
" "}}}
