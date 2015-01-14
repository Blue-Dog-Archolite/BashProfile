set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'bling/vim-airline'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-abolish.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-fugitive'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'skalnik/vim-vroom'
Bundle 'gcmt/wildfire.vim'
Bundle 'eiginn/netrw'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/Align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Hack to fix vim-fugitive
let g:netrw_browsex_viewer = 'gnome-open-fixed'

"Before merge of files these existed

set cf                  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=1024        " Number of things to remember in history.
set autowrite           " Writes on make/shell commands
set timeoutlen=250      " Time to wait after ESC (default causes an annoying delay)

if has('gui_running')
  set mouse=a
  set nofoldenable " Turn off folding
end

set nocp
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
set wrap

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
"set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                   (see gvimrc for gui vim settings)                       |
" |                                                                           |
" | Some highlights:                                                          |
" |   jj = <esc>  Very useful for keeping your hands on the home row          |
" |   ,n = toggle NERDTree off and on                                         |
" |                                                                           |
" |   ,f = fuzzy find all files                                               |
" |   ,b = fuzzy find in all buffers                                          |
" |   ,p = go to previous file                                                |
" |                                                                           |
" |   hh = inserts '=>'                                                       |
" |   aa = inserts '@'                                                        |
" |                                                                           |
" |   ,h = new horizontal window                                              |
" |   ,v = new vertical window                                                |
" |                                                                           |
" |   ,i = toggle invisibles                                                  |
" |                                                                           |
" |   enter and shift-enter = adds a new line after/before the current line   |
" |                                                                           |
" |   :call Tabstyle_tabs = set tab to real tabs                              |
" |   :call Tabstyle_spaces = set tab to 2 spaces                             |
" |                                                                           |
" | Put machine/user specific settings in ~/.vimrc.local                      |
" |  CTAGS  C-] - go to definition                                            |
" |  C-T - Jump back from the definition.                                     |
" |  C-W C-] - Open the definition in a horizontal split                      |
" |  C-\ - Open the definition in a new tab                                   |
" |  A-] - Open the definition in a vertical split                            |
" |
" |  After the tags are generated. You can use the following keys to tag into and tag out of functions:
" |
" |  Ctrl-Left_MouseClick - Go to definition                                  |
" |  Ctrl-Right_MouseClick - Jump back from definition                        |
"

set nocompatible " We're running Vim, not Vi!

"Set Mapping to ,
"**********************************************************
let mapleader = ","
"Use jj as escape .. Eaiser?
imap jj <ESC>


" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces
function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set noexpandtab
  autocmd User Rails set softtabstop=4
  autocmd User Rails set shiftwidth=4
  autocmd User Rails set tabstop=4
  autocmd User Rails set noexpandtab
endfunction

au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"


" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>

" Format hash
nnoremap <F8> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>

function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

call Tabstyle_spaces()

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indenting

"Ctags and other shortcuts
"***********************************************
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=public/assets --exclude=log -R *<CR><CR>


"Sets the tags directory to look backwards till it finds a tags dir
set tags=tags;/

" au BufWritePost *.rb silent! !ctags -a --recurse -f ~/dev/tags/cuttlefish &

" associate  with ruby filetype
au BufRead,BufNewFile ^M^W^W    setfiletype ruby
au BufRead,BufNewFile Guardfile setfiletype ruby

"Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)

"JS Indent
"set g:js_indent=~/.vim/indent/javascript.vim

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Turn off Ex mode forever
nnoremap Q <nop>

" Vertical and horizontal split then hop to a new buffer
:noremap <Leader>v :vsp^M^W^W<cr>
:noremap <Leader>h :split^M^W^W<cr>

:noremap <Leader>\ :TagbarToggle<CR>
:noremap <Leader>j :TagbarToggle<CR>



" Cursor highlights ***********************************************************
set cursorline
set cursorcolumn

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase
map <Leader>nh :nohlsearch<CR>
map <Leader>g :Ag 

" map <F8> to reindent file
noremap <F8> mzgg=G`z
inoremap <F8> <ESC>mzgg=G`z<Insert>

" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark
syntax on " syntax highlighting
colorscheme ir_black
set lazyredraw "faster processing


" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high
match LongLineWarning '\%120v.*' " Error format when a line is longer than 120


" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word

"Line Number
"*****************************************
set nu  " Line numbers on

" Misc settings ***************************************************************
set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
"set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

set noerrorbells
set spell

" File Stuff ******************************************************************
syntax enable
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins

" Ruby stuff ******************************************************************
compiler ruby         " Enable compiler support for ruby
map <F5> :!ruby %<CR>

" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" May require ruby compiled in
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Hard to type *****************************************************************
imap hh =>
imap aa @
imap ;; <%= %>

" Change which file opens after executing :Rails command
" ****************************************
let g:rails_default_file='config/database.yml'

" Insert New Line *************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>
"set fo-=r " do not insert a comment leader after an enter, (no work, fix!!)


" -----------------------------------------------------------------------------
" |                              Plug-ins                                     |
" -----------------------------------------------------------------------------

" NERDTree ********************************************************************
:noremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1 " User instead of Netrw when doing an edit /foobar
let NERDTreeMouseMode=1 " Single click for everything
let NERDTreeShowHidden=1
let g:vroom_map_keys = 0

:noremap <Leader>z :NERDTreeFind<CR>
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

" wildfire  ******************************************************************
" This selects the next closest text object.
let g:wildfire_fuel_map = "<TAB>"

" This selects the previous closest text object.
let g:wildfire_water_map = "<BS>"

" SplitJoin ******************************************************************
nmap <Leader>sj :SplitjoinJoin<cr>
nmap <Leader>ss :SplitjoinSplit<cr>

" syntastic ******************************************************************
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" This makes things quite slow as each save runs through rubocop
" let g:syntastic_ruby_checkers = ['rubocop']


" NERD Commenter **************************************************************
let NERDCreateDefaultMappings=0 " I turn this off to make it simple

" Toggle commenting on 1 line or all selected lines. Wether to comment or not
" is decided based on the first line; if it's not commented then all lines
" will be commented
:map <Leader>c :call NERDComment(0, "toggle")<CR>

" CommandT ********************************************************
  " To compile:
  " cd ~/cl/etc/vim/ruby/command-t
  " ruby extconf.rb
  " make
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.orig,*/public/assets/*
map <Leader>f :CtrlP<CR>


" fuzzyfinder ********************************************************
" I'm using CommandT for main searching, but it doesn't do buffers, so I'm
" using FuzzyFinder for that
map <Leader>b :FufBuffer<CR>
let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db;.orig;.sql;.doc'
"
"
"set Directory for swap and backup files
set dir=/tmp

