" Basic settings
set termguicolors
set background=dark
syntax enable
set hidden
set cmdheight=2
set tabstop=4
match Error /\s\+$/
let g:netrw_dirhistmax = 0
let g:indentLine_char = '▏'
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

let g:ale_disable_lsp = 1

" Plugins
function! PackInit() abort
    packadd minpac
    call minpac#init()

    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('dense-analysis/ale')
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('github/copilot.vim')
    call minpac#add('sheerun/vim-polyglot')
    call minpac#add('lervag/vimtex')
    call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
    call minpac#add('Mofiqul/vscode.nvim')
    call minpac#add('lukas-reineke/indent-blankline.nvim')
    call minpac#add('sakhnik/nvim-gdb')
endfunction

" Plugin commands
command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

" Debugger bindings
function! NvimGdbNoTKeymaps()
  tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  \ }

" Color theme
lua vim.o.background = 'dark'
lua require('vscode').setup({transparent = true, italic_comments = true})

" Auto complete bindings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
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
