" Basic settings 
set termguicolors
set background=dark
syntax enable
set hidden
set cmdheight=2
set tabstop=4
let g:netrw_dirhistmax = 0
set encoding=utf-8
set softtabstop=4
set shiftwidth=4
set expandtab
set formatoptions+=j
set autoread
set smartindent
set copyindent 
set number     
set showcmd     
set cursorline   
set incsearch      
set hlsearch        
set scrolloff=3
set sidescrolloff=5
set ignorecase
set smartcase     
set guicursor=a:ver50
set wildmenu
set showcmd
set showmatch
set backspace=indent,eol,start
set nostartofline
set undofile
colorscheme color

" Plugins
function! PackInit() abort
    packadd minpac
    call minpac#init()

    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('Yggdroot/indentLine')
    call minpac#add('dense-analysis/ale')
    call minpac#add('ludovicchabant/vim-gutentags')
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('sheerun/vim-polyglot')
    call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
endfunction

" Packages
packadd termdebug
packadd matchit
packadd indentLine
packadd ale
packadd vim-gutentags
packadd lightline.vim
packadd vim-polyglot
packadd coc.nvim

" Plugin commands
command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

" Auto complete bindings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
autocmd CursorHold * silent call CocActionAsync('highlight')

" Auto close mappings
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     <
inoremap <>     <>
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
