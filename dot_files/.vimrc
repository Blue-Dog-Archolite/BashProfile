
set nocompatible              " be iMproved, required
filetype off                  " required


" Set up Plug for fzf finder
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" markdown
Plugin 'greyblake/vim-preview'
Bundle "shime/vim-livedown"

" Color Scheme
Plugin 'altercation/solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'freeo/vim-kalisi'
Plugin 'twerth/ir_black'
Plugin 'vim-scripts/Wombat'
Plugin 'w0ng/vim-hybrid'

" Floobits
Plugin 'floobits/floobits-neovim'

Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'burnettk/vim-angular'
Bundle 'eiginn/netrw'
Bundle 'ervandew/eclim'
Bundle 'gabesoft/vim-ags'
Bundle 'gcmt/wildfire.vim'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'rhysd/committia.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'skalnik/vim-vroom'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-abolish.git'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vadv/vim-chef'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/matchit.zip'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Before merge of files these existed
set cf                  " Enable error files & error jumping.

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
  set clipboard+=unnamed  " Yanks go on clipboard instead.
endif

set history=1024        " Number of things to remember in history.
set autowrite           " Writes on make/shell commands
set timeoutlen=250      " Time to wait after ESC (default causes an annoying delay)


" Status Bar
set laststatus=2  " Always show status line.

" #######################################################################
" Airline Vim Tagbar Setup
let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 30,
      \ 'b': 150,
      \ 'x': 100,
      \ 'c': 0,
      \ 'y': 100,
      \ 'z': 10,
      \ }
  let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c'],
      \ [ 'x', 'z', 'warning' ]
      \ ]

"  let g:airline_section_a       (mode, paste, iminsert)
"  let g:airline_section_b       (hunks, branch)
"  let g:airline_section_c       (bufferline or filename)
"  let g:airline_section_gutter  (readonly, csv)
"  let g:airline_section_x       (tagbar, filetype, virtualenv)
"  let g:airline_section_y       (fileencoding, fileformat)
"  let g:airline_section_z       (percentage, line number, column number)
"  let g:airline_section_warning (syntastic, whitespace)
"
" #######################################################################

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

"Set Mapping to ,
"**********************************************************
let mapleader = ","
"Use jj as escape .. Eaiser?
" imap jj <ESC>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>r :edit!<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "bundle exec rspec --drb {spec}"

" Hack to fix vim-fugitive
let g:netrw_browsex_viewer = 'gnome-open'

" Set you complete me options
" Use :lopen to open list window
let g:EclimCompletionMethod = 'omnifunc'
map <Leader>l :lopen<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces
function! Tabstyle_tabs()
  "" Using 4 column tabs
  "set softtabstop=4
  "set shiftwidth=4
  "set tabstop=4
  "set noexpandtab
  "autocmd User Rails set softtabstop=4
  "autocmd User Rails set shiftwidth=4
  "autocmd User Rails set tabstop=4
  "autocmd User Rails set noexpandtab
endfunction

au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Removes trailing spaces
autocmd BufWritePre *.rb :%s/\s\+$//e
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>

" Format hash
nnoremap <F8> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>

function! Tabstyle_spaces()
  "" Use 2 spaces
  "set softtabstop=2
  "set shiftwidth=2
  "set tabstop=2
  "set expandtab
endfunction

call Tabstyle_spaces()

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indenting

" Set javascript indents for 4
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab


"Ctags and other shortcuts
"***********************************************
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>rt :!ctags -R --extra=+f --exclude=@$HOME/.ctags_ignore .<CR><CR>

" --exclude=.git --exclude=public/assets --exclude=log -R * --exclude=build --exclude=node_modules<CR><CR>

"Sets the tags directory to look backwards till it finds a tags dir
set tags=tags;/

" associate  with ruby filetype
au BufRead,BufNewFile ^M^W^W    setfiletype ruby
au BufRead,BufNewFile Guardfile setfiletype ruby
au BufRead,BufNewFile *.prawn setfiletype ruby

"Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)

" Indents
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

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



" Cursor cross-hairs highlights ***********************************************************
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
" set cursorline
" set cursorcolumn

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase
map <Leader>nh :nohlsearch<CR>
" for different plugin
"map <Leader>g :Ag 
map <Leader>g :Ags 

" map <F8> to reindent file
noremap <F8> mzgg=G`z
inoremap <F8> <ESC>mzgg=G`z<Insert>

" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark
syntax on " syntax highlighting

if has('gui_running')
  colorscheme ir_black
  set mouse=a
  set nofoldenable " Turn off folding
  set lazyredraw "faster processing
else
 "colorscheme kalisi
 " colorscheme wombat
  colorscheme hybrid
""  colorscheme ir_black
end



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
  "autocmd GUIEnter * set visualbell t_vb=
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

" Hard to type *****************************************************************
imap hh =>
imap kk ->
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


:map <Leader>c :Commentary<CR>

" CommandT ********************************************************
"" To compile:
"" cd ~/cl/etc/vim/ruby/command-t
"" ruby extconf.rb
"" make
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.orig,*/public/assets/*
map <Leader>f :FZF<CR>


" fuzzyfinder ********************************************************
" I'm using CommandT for main searching, but it doesn't do buffers, so I'm
" using FuzzyFinder for that
map <Leader>b :FufBuffer<CR>
let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db;.orig;.sql;.doc'
"
"
"set Directory for swap and backup files
set dir=/tmp
