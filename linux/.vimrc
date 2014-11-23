
"clipboard <-> register
"set guioptions+=a " for gui vim
"set clipboard+=autoselect " for cui vim
"set clipboard+=unnamed
set clipboard=unnamedplus

"default encoding utf-8
set encoding=utf-8

"set file rename command
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))|:w

"move buffer without saving
set hidden

"backspace
set backspace=indent,eol,start

"indent 
set autoindent 
set smartindent

"set line number 
set number 
 
"tab width
set expandtab 
set ts=2 sw=2 sts=2 

set wildmode=longest:full,list 
set whichwrap=b,s,h,l,<,>,[,]

"search settings
set ignorecase
set incsearch
set hlsearch
set smartcase

"double byte space hilighting
scriptencoding utf-8
augroup highlightDoubleByteSpace
  autocmd!
  autocmd VimEnter,Colorscheme * highlight DoubleByteSpace term=underline ctermbg=LightMagenta guibg=LightMagenta
  autocmd VimEnter,WinEnter,BufRead * match DoubleByteSpace /　/
augroup END

"set digits behavior to decimal
"set nrformats=

colorscheme default
colorscheme molokai
"colorscheme hybrid
"colorscheme Tomorrow
syntax on

"#------------------------------ 
"# key mappings
"#------------------------------ 
"escape key
inoremap <C-k> <Esc>

"swap semicolon <=> colon
noremap ; :
noremap : ;

"#------------------------------ 
"# Status line
"#------------------------------ 
"set statusline=%t\%=[%{&ff}]\[%{&fileencoding}]
set laststatus=2
" for lightline.vim
set t_Co=255

"#------------------------------ 
"# NeoBundle Settings 
"#------------------------------ 
if !1 | finish | endif
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

filetype plugin indent on     " Required!

"Installation check.
NeoBundleCheck

" lightline.vim 
NeoBundle 'itchyny/lightline.vim'

" color schemes
NeoBundle 'tomasr/molokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

" ag.vim 
NeoBundle 'rking/ag.vim'

"quick-run 
NeoBundle 'thinca/vim-quickrun' 
 
"neocomplcache 
NeoBundle 'Shougo/neocomplcache' 
 
"vim-ref 
NeoBundle 'thinca/vim-ref' 
 
"indent-guides 
NeoBundle 'nathanaelkane/vim-indent-guides.git' 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=darkblue
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

"html5.vim
NeoBundle 'taichouchou2/html5.vim' 
"html5 tags
syn keyword htmlTagName contained article aside audio bb canvas command
syn keyword htmlTagName contained datalist details dialog embed figure
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time
syn keyword htmlTagName contained source figcaption
syn keyword htmlArg contained autofocus autocomplete placeholder min max
syn keyword htmlArg contained contenteditable contextmenu draggable hidden
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget
syn keyword htmlArg contained formaction formenctype formmethod
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"

"css3-syntax
NeoBundle 'hail2u/vim-css3-syntax'

"vim-javascript-syntax
NeoBundle 'taichouchou2/vim-javascript'

"emmet-vim
NeoBundle 'mattn/emmet-vim'

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?" ":""}'
  \ },
  \ 'separator': { 'left': '>', 'right': '<' },
  \ 'subseparator': { 'left': '>', 'right': '<' }
  \ }
