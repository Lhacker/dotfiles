"encodings
set encoding=utf-8
scriptencoding utf-8

if &compatible
  set nocompatible
endif
filetype plugin indent on
"embed plugin for tag moving
runtime macros/matchit.vim

"backup 
set backupdir=~/vim_backup 

"clipboard <-> register
":set guioptions+=a " for gui vim
":set clipboard+=autoselect " for cui vim
set clipboard+=unnamed

"move buffer without saving
set hidden

"set file rename command
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))|:w

"mute
set t_vb=
set visualbell
set noerrorbells

"backspace
set backspace=indent,eol,start

"indent 
set autoindent 
set smartindent

"set line number 
set number 
 
"tab width
set expandtab 
set tabstop=2 shiftwidth=2 softtabstop=2

"set wildmode=longest:full,full
"set wildmode=longest:full,list
set wildmode=longest:list,full
set whichwrap=b,s,h,l,<,>,[,]

"search settings
set ignorecase
set incsearch
set hlsearch
set smartcase

"double byte space hilighting
augroup highlightDoubleByteSpace
  autocmd!
  autocmd VimEnter,Colorscheme * highlight DoubleByteSpace term=underline ctermbg=LightMagenta guibg=LightMagenta
  autocmd VimEnter,WinEnter,BufRead * match DoubleByteSpace /　/
augroup END

"set digits behavior to decimal
set nrformats=

" toggle paste mode
set pastetoggle=<f5>

" cancel highlight
noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"colorscheme
colorscheme molokai
"colorscheme Tomorrow
"colorscheme hybrid-light
syntax on

"#------------------------------
"# netrw.vim
"#------------------------------
" tree view style
let g:netrw_liststyle = 3
" hide CVS, .** file
"let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" open at right
let g:netrw_altv = 1
" open at bottom
let g:netrw_alto = 1

autocmd FileType netrw setl bufhidden=wipe

"#------------------------------
"# key mappings
"#------------------------------
"escape key
noremap <C-k> <Esc>
noremap! <C-k> <Esc>

"swap semicolon <=> colon
noremap ; :
noremap : ;

noremap / /\v

"#------------------------------
"# Status line
"#------------------------------
"set statusline=%t\%=[%{&ff}]\[%{&fileencoding}]
set laststatus=2
"for lightline.vim
set t_Co=256

"#------------------------------
"# NeoBundle Settings 
"#------------------------------
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
"filetype plugin indent on " Required!

"Installation check.
NeoBundleCheck

"lightline.vim
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ }

"colorscheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

"ag.vim
NeoBundle 'rking/ag.vim'

"quick-run 
NeoBundle 'thinca/vim-quickrun' 
 
"neocomplete 
NeoBundle 'Shougo/neocomplete.vim' 
let g:neocomplete#enable_at_startup=1
 
"vim-ref 
NeoBundle 'thinca/vim-ref' 
 
"indent-guides 
NeoBundle 'nathanaelkane/vim-indent-guides.git' 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=darkblue
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkred
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

"html5.vim
NeoBundle 'othree/html5.vim' 

"css3-syntax
NeoBundle 'hail2u/vim-css3-syntax'

"vim-javascript-syntax
NeoBundle 'pangloss/vim-javascript'

"emmet-vim
NeoBundle 'mattn/emmet-vim'

"vim-elixir
NeoBundle 'elixir-lang/vim-elixir' 

"vim-erlang-runtime
NeoBundle 'vim-erlang/vim-erlang-runtime'

"vim-erlang-omnicomplete
NeoBundle 'vim-erlang/vim-erlang-omnicomplete'

filetype plugin indent on 

"java settings
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4

"python settings
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

"golang settings
autocmd Filetype go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

"custom commands
command! Java :!javac % && java %< && rm %<.class
command! Scala :!scalac % && scala %< && rm %<.class
command! Cpp :!clang++ % && ./a.out
command! Perl :!perl %
command! R :!R --vanilla --slave < %
command! Clisp :!clisp %
command! Clispi :!clisp -i %
command! Ghc :!stack ghc % && ./%< && rm %< %<.hi %<.o
command! Go :!go build % && ./%< && rm %<
